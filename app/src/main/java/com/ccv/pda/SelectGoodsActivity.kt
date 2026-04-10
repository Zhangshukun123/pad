package com.ccv.pda

import android.content.Intent
import android.graphics.Color
import android.graphics.drawable.ColorDrawable
import android.os.Build
import android.os.Bundle
import android.text.Editable
import android.text.InputFilter
import android.text.TextWatcher
import android.view.KeyEvent
import android.view.View
import android.view.WindowManager
import android.view.inputmethod.EditorInfo
import android.view.inputmethod.InputMethodManager
import android.widget.Button
import android.widget.EditText
import android.widget.ImageView
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout
import com.ayma.base.widget.ClearEditText
import java.io.Serializable
import java.text.DecimalFormat

class SelectGoodsActivity : AppCompatActivity() {

    private lateinit var rootView: View
    private lateinit var titleView: TextView
    private lateinit var leftView: TextView
    private lateinit var rightView: TextView
    private lateinit var boxInfoView: TextView
    private lateinit var trainNoView: TextView
    private lateinit var roadDateView: TextView
    private lateinit var searchEdit: ClearEditText
    private lateinit var typeRecyclerView: RecyclerView
    private lateinit var swipeRefreshLayout: SwipeRefreshLayout
    private lateinit var goodsRecyclerView: RecyclerView
    private lateinit var emptyView: TextView
    private lateinit var refreshLoadingView: View
    private lateinit var shopCarView: ImageView
    private lateinit var selectedCountView: TextView
    private lateinit var totalPriceView: TextView
    private lateinit var submitButton: Button

    private lateinit var typeLayoutManager: LinearLayoutManager
    private lateinit var goodsLayoutManager: LinearLayoutManager

    private val typeAdapter = SelectGoodsTypeAdapter(::handleCategorySelected)
    private val goodsAdapter = SelectGoodsItemAdapter(
        ::showGoodsQuantityDialog,
        ::increaseGoodsCount,
        ::decreaseGoodsCount
    )
    private val selectedCountMap = linkedMapOf<String, Int>()
    private val firstPositionByCategory = linkedMapOf<String, Int>()
    private val formatter = DecimalFormat("0.0#")

    private var currentCategoryId: String =
        FakeSellGoodsRepository.categories.firstOrNull()?.id.orEmpty()
    private var keyword: String = ""

    private lateinit var trainNo: String
    private lateinit var roadDate: String
    private lateinit var saleTypeName: String

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_select_goods)
        bindViews()
        bindContent()
        initTitleBar()
        initRecyclerViews()
        initListeners()
        renderGoods(keepPosition = false)
        updateSummary()
    }

    private fun bindViews() {
        rootView = findViewById(android.R.id.content)
        titleView = findViewById(R.id.app_title_tv_title)
        leftView = findViewById(R.id.app_title_tv_left)
        rightView = findViewById(R.id.app_title_tv_right)
        boxInfoView = findViewById(R.id.aui_tv_user_name)
        trainNoView = findViewById(R.id.aui_tv_train_name)
        roadDateView = findViewById(R.id.aui_tv_train_date)
        searchEdit = findViewById(R.id.asg_et_search_condition)
        typeRecyclerView = findViewById(R.id.asg_rlv_type)
        swipeRefreshLayout = findViewById(R.id.sga_srl)
        goodsRecyclerView = findViewById(R.id.sga_rlv_goods)
        emptyView = findViewById(R.id.sga_tv_empty)
        refreshLoadingView = findViewById(R.id.sga_fl_refresh_loading)
        shopCarView = findViewById(R.id.sga_iv_shop_car)
        selectedCountView = findViewById(R.id.sga_tv_goods_count)
        totalPriceView = findViewById(R.id.sga_tv_goods_total_price)
        submitButton = findViewById(R.id.sga_btn_submit)
    }

    private fun bindContent() {
        trainNo = intent.getStringExtra(MenuActivity.EXTRA_TRAIN_NO)
            .orEmpty()
            .ifBlank { DEFAULT_TRAIN_NO }
        roadDate = intent.getStringExtra(MenuActivity.EXTRA_ROAD_DATE)
            .orEmpty()
            .ifBlank { DEFAULT_ROAD_DATE }
        saleTypeName = intent.getStringExtra(EXTRA_SALE_TYPE_NAME)
            .orEmpty()
            .ifBlank { getString(R.string.sell_type_normal) }

        boxInfoView.text = getString(R.string.sell_fake_box_info)
        trainNoView.text = trainNo
        roadDateView.text = roadDate
        searchEdit.setClearIconEnabled(false)
    }

    private fun initTitleBar() {
        titleView.text = getString(R.string.select_goods_title, saleTypeName)
        leftView.visibility = View.VISIBLE
        rightView.visibility = View.VISIBLE
        rightView.text = getString(R.string.select_goods_action_refresh)
    }

    private fun initRecyclerViews() {
        typeLayoutManager = LinearLayoutManager(this)
        goodsLayoutManager = LinearLayoutManager(this)

        typeRecyclerView.layoutManager = typeLayoutManager
        typeRecyclerView.adapter = typeAdapter
        typeAdapter.items = FakeSellGoodsRepository.categories
        typeAdapter.selectedCategoryId = currentCategoryId

        goodsRecyclerView.layoutManager = goodsLayoutManager
        goodsRecyclerView.adapter = goodsAdapter
        goodsRecyclerView.addOnScrollListener(object : RecyclerView.OnScrollListener() {
            override fun onScrolled(recyclerView: RecyclerView, dx: Int, dy: Int) {
                syncCategorySelectionByScroll()
            }
        })

        swipeRefreshLayout.setColorSchemeResources(R.color.colorPrimary)
        swipeRefreshLayout.setOnChildScrollUpCallback { _, _ ->
            goodsRecyclerView.canScrollVertically(-1) || typeRecyclerView.canScrollVertically(-1)
        }
    }

    private fun initListeners() {
        leftView.setOnClickListener { finish() }
        rightView.setOnClickListener { refreshWholePage() }
        submitButton.setOnClickListener { submitSelection() }
        shopCarView.setOnClickListener { showSelectedGoodsDialog() }
        swipeRefreshLayout.setOnRefreshListener { refreshWholePage() }
        searchEdit.addTextChangedListener(object : TextWatcher {
            override fun beforeTextChanged(s: CharSequence?, start: Int, count: Int, after: Int) = Unit

            override fun onTextChanged(s: CharSequence?, start: Int, before: Int, count: Int) = Unit

            override fun afterTextChanged(s: Editable?) {
                keyword = s?.toString().orEmpty()
                renderGoods(keepPosition = false)
            }
        })
    }

    private fun handleCategorySelected(category: FakeGoodsCategory) {
        currentCategoryId = category.id
        typeAdapter.selectedCategoryId = category.id
        val position = firstPositionByCategory[category.id]
        if (position == null) {
            toast(getString(R.string.select_goods_category_empty, category.name))
            return
        }
        goodsLayoutManager.scrollToPositionWithOffset(position, 0)
        scrollTypeListToCategory(category.id)
    }

    private fun renderGoods(keepPosition: Boolean) {
        val anchorPosition = if (keepPosition) {
            goodsLayoutManager.findFirstVisibleItemPosition()
        } else {
            RecyclerView.NO_POSITION
        }
        val items = buildDisplayItems(keyword)
        goodsAdapter.items = items
        emptyView.visibility = if (items.isEmpty()) View.VISIBLE else View.GONE

        if (items.isEmpty()) {
            return
        }
        if (!firstPositionByCategory.containsKey(currentCategoryId)) {
            currentCategoryId = firstPositionByCategory.keys.first()
        }
        typeAdapter.selectedCategoryId = currentCategoryId
        scrollTypeListToCategory(currentCategoryId)

        if (keepPosition && anchorPosition != RecyclerView.NO_POSITION) {
            goodsLayoutManager.scrollToPositionWithOffset(anchorPosition, 0)
        }
    }

    private fun buildDisplayItems(keyword: String): List<SelectGoodsDisplayItem> {
        val result = mutableListOf<SelectGoodsDisplayItem>()
        firstPositionByCategory.clear()
        FakeSellGoodsRepository.categories.forEach { category ->
            val goods = FakeSellGoodsRepository.goodsByCategory(category.id, keyword)
            if (goods.isEmpty()) {
                return@forEach
            }
            firstPositionByCategory[category.id] = result.size
            goods.forEachIndexed { index, template ->
                result += SelectGoodsDisplayItem(
                    template = template,
                    count = selectedCountMap[template.code] ?: 0,
                    headerTitle = if (index == 0) category.name else null
                )
            }
        }
        return result
    }

    private fun syncCategorySelectionByScroll() {
        val position = goodsLayoutManager.findFirstVisibleItemPosition()
        if (position == RecyclerView.NO_POSITION) {
            return
        }
        val item = goodsAdapter.items.getOrNull(position) ?: return
        val visibleCategoryId = item.template.categoryId
        if (visibleCategoryId == currentCategoryId) {
            return
        }
        currentCategoryId = visibleCategoryId
        typeAdapter.selectedCategoryId = visibleCategoryId
        scrollTypeListToCategory(visibleCategoryId)
    }

    private fun scrollTypeListToCategory(categoryId: String) {
        val position = FakeSellGoodsRepository.categories.indexOfFirst { it.id == categoryId }
        if (position >= 0) {
            typeLayoutManager.scrollToPositionWithOffset(position, 0)
        }
    }

    private fun refreshWholePage() {
        swipeRefreshLayout.isRefreshing = false
        showRefreshLoading(true)
        rootView.postDelayed({
            if (isFinishing || isDestroyed) {
                return@postDelayed
            }
            swipeRefreshLayout.isRefreshing = false
            showRefreshLoading(false)
            searchEdit.setText("")
            keyword = ""
            currentCategoryId = firstPositionByCategory.keys.firstOrNull()
                ?: FakeSellGoodsRepository.categories.firstOrNull()?.id.orEmpty()
            typeAdapter.items = FakeSellGoodsRepository.categories
            typeAdapter.selectedCategoryId = currentCategoryId
            renderGoods(keepPosition = false)
            goodsLayoutManager.scrollToPositionWithOffset(0, 0)
            scrollTypeListToCategory(currentCategoryId)
            updateSummary()
            toast(getString(R.string.select_goods_refresh_success))
        }, REFRESH_DELAY)
    }

    private fun showRefreshLoading(show: Boolean) {
        refreshLoadingView.visibility = if (show) View.VISIBLE else View.GONE
    }

    private fun increaseGoodsCount(template: FakeGoodsTemplate) {
        val currentCount = selectedCountMap[template.code] ?: 0
        if (template.stock <= 0 || currentCount >= template.stock) {
            toast(getString(R.string.select_goods_stock_limit, template.name))
            return
        }
        applyGoodsCount(template, currentCount + 1)
    }

    private fun decreaseGoodsCount(template: FakeGoodsTemplate) {
        val currentCount = selectedCountMap[template.code] ?: 0
        if (currentCount <= 0) {
            return
        }
        applyGoodsCount(template, currentCount - 1)
    }

    private fun showGoodsQuantityDialog(template: FakeGoodsTemplate) {
        val currentCount = selectedCountMap[template.code] ?: 0
        val dialogView = layoutInflater.inflate(R.layout.dialog_select_goods_quantity, null)
        val titleText = dialogView.findViewById<TextView>(R.id.dsgq_tv_title)
        val quantityInput = dialogView.findViewById<EditText>(R.id.dsgq_et_quantity)
        val cancelButton = dialogView.findViewById<TextView>(R.id.dsgq_tv_cancel)
        val confirmButton = dialogView.findViewById<TextView>(R.id.dsgq_tv_confirm)

        titleText.text = getString(
            R.string.select_goods_quantity_dialog_title,
            template.name,
            currentCount
        )
        quantityInput.filters = arrayOf(InputFilter.LengthFilter(MAX_QUANTITY_INPUT_LENGTH))
        quantityInput.setText(currentCount.takeIf { it > 0 }?.toString().orEmpty())
        quantityInput.setSelection(quantityInput.text?.length ?: 0)

        val dialog = AlertDialog.Builder(this)
            .setView(dialogView)
            .create()

        val submitAction = {
            val inputValue = quantityInput.text?.toString()?.trim().orEmpty()
            when {
                inputValue.isEmpty() -> {
                    toast(getString(R.string.select_goods_quantity_empty))
                    quantityInput.requestFocus()
                }

                else -> {
                    val quantity = inputValue.toIntOrNull()
                    when {
                        quantity == null || quantity < 0 -> {
                            toast(getString(R.string.select_goods_quantity_invalid))
                            quantityInput.requestFocus()
                        }

                        quantity > template.stock -> {
                            toast(getString(R.string.select_goods_stock_limit, template.name))
                            quantityInput.requestFocus()
                        }

                        else -> {
                            applyGoodsCount(template, quantity)
                            dialog.dismiss()
                        }
                    }
                }
            }
        }

        cancelButton.setOnClickListener { dialog.dismiss() }
        confirmButton.setOnClickListener { submitAction() }
        quantityInput.setOnEditorActionListener { _, actionId, event ->
            if (
                actionId == EditorInfo.IME_ACTION_DONE ||
                (event?.keyCode == KeyEvent.KEYCODE_ENTER && event.action == KeyEvent.ACTION_UP)
            ) {
                submitAction()
                true
            } else {
                false
            }
        }
        dialog.setOnShowListener {
            dialog.window?.apply {
                setBackgroundDrawable(ColorDrawable(Color.TRANSPARENT))
                setLayout(
                    (resources.displayMetrics.widthPixels * DIALOG_WIDTH_RATIO).toInt(),
                    WindowManager.LayoutParams.WRAP_CONTENT
                )
                setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_STATE_ALWAYS_VISIBLE)
            }
            quantityInput.requestFocus()
            showSoftKeyboard(quantityInput)
        }
        dialog.show()
    }

    private fun applyGoodsCount(template: FakeGoodsTemplate, count: Int) {
        if (count <= 0) {
            selectedCountMap.remove(template.code)
        } else {
            selectedCountMap[template.code] = count
        }
        renderGoods(keepPosition = true)
        updateSummary()
    }

    private fun updateSummary() {
        val selectedGoods = buildSelectedGoods()
        val totalCount = selectedGoods.sumOf { it.quantity }
        val totalAmount = selectedGoods.sumOf { it.amount }
        selectedCountView.text = getString(R.string.select_goods_count_summary, totalCount)
        totalPriceView.text = getString(
            R.string.select_goods_total_price,
            formatter.format(totalAmount)
        )
    }

    private fun showSelectedGoodsDialog() {
        val selectedGoods = buildSelectedGoods()
        if (selectedGoods.isEmpty()) {
            toast(getString(R.string.select_goods_cart_empty))
            return
        }
        val message = buildString {
            append(
                selectedGoods.joinToString(separator = "\n") { item ->
                    getString(
                        R.string.select_goods_cart_line,
                        item.name,
                        item.quantity,
                        formatter.format(item.amount)
                    )
                }
            )
            append("\n\n")
            append(
                getString(
                    R.string.select_goods_cart_footer,
                    selectedGoods.sumOf { it.quantity },
                    formatter.format(selectedGoods.sumOf { it.amount })
                )
            )
        }
        AlertDialog.Builder(this)
            .setTitle(R.string.select_goods_cart_title)
            .setMessage(message)
            .setPositiveButton(R.string.action_confirm, null)
            .show()
    }

    private fun submitSelection() {
        val selectedGoods = buildSelectedGoods()
        if (selectedGoods.isEmpty()) {
            toast(getString(R.string.select_goods_submit_empty))
            return
        }
        setResult(
            RESULT_OK,
            Intent().putExtra(EXTRA_SELECTED_GOODS, ArrayList(selectedGoods))
        )
        finish()
    }

    private fun buildSelectedGoods(): List<FakeSellGood> {
        return FakeSellGoodsRepository.allGoods.mapNotNull { template ->
            val count = selectedCountMap[template.code] ?: 0
            if (count > 0) {
                FakeSellGoodsRepository.toSellGood(template, count)
            } else {
                null
            }
        }
    }

    private fun toast(message: String) {
        Toast.makeText(this, message, Toast.LENGTH_SHORT).show()
    }

    private fun showSoftKeyboard(target: View) {
        target.post {
            val inputMethodManager = getSystemService(INPUT_METHOD_SERVICE) as? InputMethodManager
            inputMethodManager?.showSoftInput(target, InputMethodManager.SHOW_IMPLICIT)
        }
    }

    companion object {
        const val EXTRA_SALE_TYPE_NAME = "sale_type_name"
        const val EXTRA_SELECTED_GOODS = "selected_goods"

        private const val DEFAULT_TRAIN_NO = "DJ5902"
        private const val DEFAULT_ROAD_DATE = "20260408"
        private const val REFRESH_DELAY = 420L
        private const val DIALOG_WIDTH_RATIO = 0.86f
        private const val MAX_QUANTITY_INPUT_LENGTH = 5

        @Suppress("DEPRECATION")
        fun readSelectedGoods(intent: Intent?): ArrayList<FakeSellGood> {
            val payload = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                intent?.getSerializableExtra(EXTRA_SELECTED_GOODS, Serializable::class.java)
            } else {
                intent?.getSerializableExtra(EXTRA_SELECTED_GOODS)
            }
            return if (payload is ArrayList<*>) {
                ArrayList(payload.filterIsInstance<FakeSellGood>())
            } else {
                arrayListOf()
            }
        }
    }
}
