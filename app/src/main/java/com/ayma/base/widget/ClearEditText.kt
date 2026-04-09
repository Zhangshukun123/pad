package com.ayma.base.widget

import android.content.Context
import android.graphics.drawable.Drawable
import android.text.Editable
import android.text.TextWatcher
import android.util.AttributeSet
import android.view.MotionEvent
import androidx.appcompat.widget.AppCompatEditText
import androidx.core.content.ContextCompat
import com.ccv.pda.R

class ClearEditText @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = android.R.attr.editTextStyle
) : AppCompatEditText(context, attrs, defStyleAttr), TextWatcher {

    private var clearDrawable: Drawable? = null
    private var clearIconEnabled = true

    init {
        initClearIcon()
    }

    private fun initClearIcon() {
        clearDrawable = compoundDrawables[2] ?: ContextCompat.getDrawable(context, R.drawable.clear)
        clearDrawable?.setBounds(
            0,
            0,
            clearDrawable?.intrinsicWidth ?: 0,
            clearDrawable?.intrinsicHeight ?: 0
        )
        setClearIconVisible(false)
        super.setOnFocusChangeListener { _, hasFocus ->
            if (hasFocus) {
                setClearIconVisible((text?.length ?: 0) > 0)
            } else {
                setClearIconVisible(false)
            }
        }
        addTextChangedListener(this)
    }

    override fun onTouchEvent(event: MotionEvent): Boolean {
        if (event.action == MotionEvent.ACTION_UP && compoundDrawables[2] != null) {
            val touchX = event.x.toInt()
            val touchY = event.y.toInt()
            val iconHeight = compoundDrawables[2].bounds.height()
            val top = (height - iconHeight) / 2
            val hitHorizontal = touchX > width - totalPaddingRight && touchX < width - paddingRight
            val hitVertical = touchY > top && touchY < top + iconHeight
            if (hitHorizontal && hitVertical && isEnabled) {
                setText("")
            }
        }
        return super.onTouchEvent(event)
    }

    override fun beforeTextChanged(s: CharSequence?, start: Int, count: Int, after: Int) = Unit

    override fun onTextChanged(s: CharSequence?, start: Int, before: Int, count: Int) {
        setClearIconVisible((s?.length ?: 0) > 0)
    }

    override fun afterTextChanged(s: Editable?) = Unit

    fun setClearIconEnabled(enabled: Boolean) {
        clearIconEnabled = enabled
        setClearIconVisible(enabled && (text?.length ?: 0) > 0 && hasFocus())
    }

    override fun setOnFocusChangeListener(l: OnFocusChangeListener?) {
        // 与原控件保持一致，内部自行管理清空图标显示，外部监听继续透传。
        super.setOnFocusChangeListener { view, hasFocus ->
            if (hasFocus) {
                setClearIconVisible((text?.length ?: 0) > 0)
            } else {
                setClearIconVisible(false)
            }
            l?.onFocusChange(view, hasFocus)
        }
    }

    private fun setClearIconVisible(visible: Boolean) {
        val endDrawable = if (visible && clearIconEnabled) clearDrawable else null
        setCompoundDrawables(compoundDrawables[0], compoundDrawables[1], endDrawable, compoundDrawables[3])
    }
}
