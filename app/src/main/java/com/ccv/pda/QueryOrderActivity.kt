package com.ccv.pda

import android.app.DatePickerDialog
import android.content.Context
import android.content.Intent
import android.graphics.Rect
import android.os.Bundle
import android.view.KeyEvent
import android.view.View
import android.view.inputmethod.EditorInfo
import android.widget.ArrayAdapter
import android.widget.RadioGroup
import android.widget.Spinner
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.ayma.base.widget.ClearEditText
import java.text.SimpleDateFormat
import java.util.Calendar
import java.util.Locale

class QueryOrderActivity : AppCompatActivity() {

    private lateinit var titleView: TextView
    private lateinit var leftView: TextView
    private lateinit var rightView: TextView
    private lateinit var boxInfoView: TextView
    private lateinit var trainNoView: TextView
    private lateinit var roadDateView: TextView
    private lateinit var payTypeSpinner: Spinner
    private lateinit var orderTypeSpinner: Spinner
    private lateinit var trainNameEdit: ClearEditText
    private lateinit var tvStartTime: TextView
    private lateinit var tvEndTime: TextView
    private lateinit var rgDateSort: RadioGroup
    private lateinit var recyclerView: RecyclerView
    private lateinit var noDataView: TextView

    private val adapter by lazy { QueryOrderAdapter() }
    private val payTypeOptions = FakeQueryOrderRepository.payTypes
    private val orderTypeOptions = FakeQueryOrderRepository.orderTypes

    // 日期格式：显示用两行，查询用单行
    private val displayFmt = SimpleDateFormat("yyyy-MM-dd\nHH:mm", Locale.getDefault())
    private val queryFmt = SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.getDefault())

    private var startCal: Calendar = Calendar.getInstance().apply {
        set(Calendar.HOUR_OF_DAY, 0); set(Calendar.MINUTE, 0); set(Calendar.SECOND, 0)
    }
    private var endCal: Calendar = Calendar.getInstance()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_query_order)
        bindViews()
        bindContent()
        initTitleBar()
        initRecyclerView()
        initSpinners()
        initDateRange()
        initListeners()
        runQuery()
    }

    private fun bindViews() {
        titleView = findViewById(R.id.app_title_tv_title)
        leftView = findViewById(R.id.app_title_tv_left)
        rightView = findViewById(R.id.app_title_tv_right)
        boxInfoView = findViewById(R.id.aui_tv_user_name)
        trainNoView = findViewById(R.id.aui_tv_train_name)
        roadDateView = findViewById(R.id.aui_tv_train_date)
        payTypeSpinner = findViewById(R.id.aqo_sp_pay_type)
        orderTypeSpinner = findViewById(R.id.aqo_sp_order_type)
        trainNameEdit = findViewById(R.id.aqo_et_train_name)
        tvStartTime = findViewById(R.id.aqo_tv_start_time)
        tvEndTime = findViewById(R.id.aqo_tv_end_time)
        rgDateSort = findViewById(R.id.aqo_rg_date_sort)
        recyclerView = findViewById(R.id.aqo_rlv_data)
        noDataView = findViewById(R.id.aqo_tv_no_data)
    }

    private fun bindContent() {
        val trainNo = intent.getStringExtra(MenuActivity.EXTRA_TRAIN_NO).orEmpty()
        val roadDate = intent.getStringExtra(MenuActivity.EXTRA_ROAD_DATE).orEmpty()
        boxInfoView.text = getString(R.string.sell_fake_box_info)
        trainNoView.text = trainNo
        roadDateView.text = roadDate
    }

    private fun initTitleBar() {
        titleView.text = getString(R.string.menu_query_order)
        leftView.visibility = View.VISIBLE
        leftView.text = getString(R.string.title_back)
        rightView.visibility = View.VISIBLE
        rightView.text = getString(R.string.online_refund_action_query)
    }

    private fun initRecyclerView() {
        recyclerView.layoutManager = LinearLayoutManager(this)
        recyclerView.adapter = adapter
        val spacing = resources.getDimensionPixelSize(R.dimen.dp_5)
        recyclerView.addItemDecoration(object : RecyclerView.ItemDecoration() {
            override fun getItemOffsets(outRect: Rect, view: View, parent: RecyclerView, state: RecyclerView.State) {
                outRect.set(spacing, spacing, spacing, 0)
                if (parent.getChildAdapterPosition(view) == (parent.adapter?.itemCount ?: 0) - 1) {
                    outRect.bottom = spacing
                }
            }
        })
    }

    private fun initSpinners() {
        payTypeSpinner.adapter = ArrayAdapter(
            this, android.R.layout.simple_spinner_dropdown_item,
            payTypeOptions.map { it.name }
        )
        orderTypeSpinner.adapter = ArrayAdapter(
            this, android.R.layout.simple_spinner_dropdown_item,
            orderTypeOptions.map { it.name }
        )
        // 默认选中"PDA订单"
        orderTypeSpinner.setSelection(FakeQueryOrderRepository.DEFAULT_ORDER_TYPE_INDEX, false)
    }

    private fun initDateRange() {
        updateDateDisplay()
    }

    private fun updateDateDisplay() {
        tvStartTime.text = displayFmt.format(startCal.time)
        tvEndTime.text = displayFmt.format(endCal.time)
    }

    private fun initListeners() {
        leftView.setOnClickListener { finish() }
        rightView.setOnClickListener { runQuery() }

        tvStartTime.setOnClickListener { showDatePicker(isStart = true) }
        tvEndTime.setOnClickListener { showDatePicker(isStart = false) }

        trainNameEdit.setOnEditorActionListener { _, actionId, event ->
            val isDone = actionId == EditorInfo.IME_ACTION_DONE
            val isEnter = event?.keyCode == KeyEvent.KEYCODE_ENTER && event.action == KeyEvent.ACTION_DOWN
            if (isDone || isEnter) { runQuery(); true } else false
        }
    }

    private fun showDatePicker(isStart: Boolean) {
        val cal = if (isStart) startCal else endCal
        DatePickerDialog(this, { _, year, month, day ->
            cal.set(year, month, day)
            if (!isStart) {
                cal.set(Calendar.HOUR_OF_DAY, 23)
                cal.set(Calendar.MINUTE, 59)
            }
            updateDateDisplay()
        }, cal.get(Calendar.YEAR), cal.get(Calendar.MONTH), cal.get(Calendar.DAY_OF_MONTH)).show()
    }

    private fun runQuery() {
        val payTypeId = payTypeOptions.getOrNull(payTypeSpinner.selectedItemPosition)?.id
            ?: FakeQueryOrderRepository.PAY_ALL
        val orderTypeId = orderTypeOptions.getOrNull(orderTypeSpinner.selectedItemPosition)?.id
            ?: FakeQueryOrderRepository.ORDER_TYPE_ALL
        val trainCode = trainNameEdit.text?.toString().orEmpty()
        val startDate = queryFmt.format(startCal.time)
        val endDate = queryFmt.format(endCal.time)
        val sortNewest = rgDateSort.checkedRadioButtonId == R.id.aqo_rb_newest

        val results = FakeQueryOrderRepository.query(payTypeId, orderTypeId, trainCode, startDate, endDate, sortNewest)
        adapter.items = results

        val hasData = results.isNotEmpty()
        recyclerView.visibility = View.VISIBLE
        noDataView.visibility = if (hasData) View.GONE else View.VISIBLE
    }

    companion object {
        fun createIntent(
            context: Context, employeeCode: String, userName: String,
            roadId: String, trainNo: String, teamName: String, roadDate: String
        ): Intent {
            return Intent(context, QueryOrderActivity::class.java).apply {
                putExtra(MenuActivity.EXTRA_EMPLOYEE_CODE, employeeCode)
                putExtra(MenuActivity.EXTRA_USER_NAME, userName)
                putExtra(MenuActivity.EXTRA_ROAD_ID, roadId)
                putExtra(MenuActivity.EXTRA_TRAIN_NO, trainNo)
                putExtra(MenuActivity.EXTRA_TEAM_NAME, teamName)
                putExtra(MenuActivity.EXTRA_ROAD_DATE, roadDate)
            }
        }
    }
}
