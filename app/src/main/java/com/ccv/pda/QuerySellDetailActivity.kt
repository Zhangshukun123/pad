package com.ccv.pda

import android.content.Context
import android.content.Intent
import android.graphics.drawable.Drawable
import android.os.Bundle
import android.view.GestureDetector
import android.view.KeyEvent
import android.view.MotionEvent
import android.view.View
import android.view.ViewConfiguration
import android.view.inputmethod.EditorInfo
import android.widget.AdapterView
import android.widget.ArrayAdapter
import android.widget.CheckBox
import android.widget.Spinner
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import androidx.core.content.ContextCompat
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.ayma.base.widget.ClearEditText
import com.google.android.material.appbar.AppBarLayout
import kotlin.math.abs

class QuerySellDetailActivity : AppCompatActivity() {

    private lateinit var appBarLayout: AppBarLayout
    private lateinit var titleView: TextView
    private lateinit var leftView: TextView
    private lateinit var rightView: TextView
    private lateinit var boxInfoView: TextView
    private lateinit var trainNoView: TextView
    private lateinit var roadDateView: TextView
    private lateinit var sellTypeSpinner: Spinner
    private lateinit var payTypeSpinner: Spinner
    private lateinit var bigTypeSpinner: Spinner
    private lateinit var smallTypeSpinner: Spinner
    private lateinit var goodsNameEdit: ClearEditText
    private lateinit var onlySelfCheckBox: CheckBox
    private lateinit var summaryView: TextView
    private lateinit var noDataView: TextView
    private lateinit var recyclerView: RecyclerView

    private lateinit var goodsCodeHeaderView: TextView
    private lateinit var goodsNameHeaderView: TextView
    private lateinit var goodsCountHeaderView: TextView
    private lateinit var goodsPriceHeaderView: TextView
    private lateinit var goodsAmountHeaderView: TextView
    private lateinit var sellTypeHeaderView: TextView
    private lateinit var payTypeHeaderView: TextView
    private lateinit var sellTimeHeaderView: TextView
    private lateinit var orderTypeHeaderView: TextView
    private lateinit var sortableHeaderViews: List<TextView>

    private val adapter by lazy { QuerySellDetailAdapter() }

    private var bigTypeOptions = FakeQuerySellDetailRepository.bigTypes
    private var smallTypeOptions =
        FakeQuerySellDetailRepository.smallTypesFor(FakeQuerySellDetailRepository.ALL_ID)
    private val sellTypeOptions = FakeQuerySellDetailRepository.sellTypes
    private val payTypeOptions = FakeQuerySellDetailRepository.payTypes

    private var lastQueryResult: FakeQuerySellDetailResult? = null
    private var currentSortColumn: SortColumn? = null
    private var currentSortAscending = false

    private lateinit var trainNo: String
    private lateinit var roadDate: String

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_query_sell_detail)
        bindViews()
        bindContent()
        initTitleBar()
        initRecyclerView()
        initSpinners()
        initListeners()
        renderSummary(FakeQuerySellDetailSummary())
        showEmptyState()
        bindGoodsNameExtra()
    }

    private fun bindViews() {
        appBarLayout = findViewById(R.id.aqsd_app_bar)
        titleView = findViewById(R.id.app_title_tv_title)
        leftView = findViewById(R.id.app_title_tv_left)
        rightView = findViewById(R.id.app_title_tv_right)
        boxInfoView = findViewById(R.id.aui_tv_user_name)
        trainNoView = findViewById(R.id.aui_tv_train_name)
        roadDateView = findViewById(R.id.aui_tv_train_date)
        sellTypeSpinner = findViewById(R.id.aqsd_sp_sell_type)
        payTypeSpinner = findViewById(R.id.aqsd_sp_pay_type)
        bigTypeSpinner = findViewById(R.id.aqsd_sp_big_name)
        smallTypeSpinner = findViewById(R.id.aqsd_sp_small_name)
        goodsNameEdit = findViewById(R.id.aqsd_et_goods_name)
        onlySelfCheckBox = findViewById(R.id.aqs_cb)
        summaryView = findViewById(R.id.aqsd_tv_data_count)
        noDataView = findViewById(R.id.aqsd_tv_no_data)
        recyclerView = findViewById(R.id.aqsd_rlv_data)
        goodsCodeHeaderView = findViewById(R.id.aqsd_tv_goods_code_hint)
        goodsNameHeaderView = findViewById(R.id.aqsd_tv_goods_name_hint)
        goodsCountHeaderView = findViewById(R.id.aqsd_tv_goods_count_hint)
        goodsPriceHeaderView = findViewById(R.id.aqsd_tv_goods_price_hint)
        goodsAmountHeaderView = findViewById(R.id.aqsd_tv_goods_total_money)
        sellTypeHeaderView = findViewById(R.id.aqsd_tv_goods_sell_type_hint)
        payTypeHeaderView = findViewById(R.id.aqsd_tv_goods_pay_type_hint)
        sellTimeHeaderView = findViewById(R.id.aqsd_tv_goods_sell_time_hint)
        orderTypeHeaderView = findViewById(R.id.aqsd_tv_order_type_hint)
        sortableHeaderViews = listOf(
            goodsCodeHeaderView,
            goodsNameHeaderView,
            goodsCountHeaderView,
            goodsPriceHeaderView,
            goodsAmountHeaderView,
            sellTypeHeaderView,
            payTypeHeaderView,
            sellTimeHeaderView,
            orderTypeHeaderView
        )
    }

    private fun bindContent() {
        trainNo = intent.getStringExtra(MenuActivity.EXTRA_TRAIN_NO)
            .orEmpty()
            .ifBlank { DEFAULT_TRAIN_NO }
        roadDate = intent.getStringExtra(MenuActivity.EXTRA_ROAD_DATE)
            .orEmpty()
            .ifBlank { DEFAULT_ROAD_DATE }

        boxInfoView.text = getString(R.string.sell_fake_box_info)
        trainNoView.text = trainNo
        roadDateView.text = roadDate
    }

    private fun initTitleBar() {
        titleView.text = getString(R.string.menu_sell_detail)
        leftView.visibility = View.VISIBLE
        leftView.text = getString(R.string.title_back)
        rightView.visibility = View.VISIBLE
        rightView.text = getString(R.string.online_refund_action_query)
    }

    private fun initRecyclerView() {
        recyclerView.layoutManager = LinearLayoutManager(this)
        recyclerView.adapter = adapter
        installBlankAreaSwipeBridge()
    }

    private fun initSpinners() {
        bindSpinner(sellTypeSpinner, sellTypeOptions.map { it.name })
        bindSpinner(payTypeSpinner, payTypeOptions.map { it.name })
        bindSpinner(bigTypeSpinner, bigTypeOptions.map { it.name })
        refreshSmallTypeSpinner(FakeQuerySellDetailRepository.ALL_ID)
    }

    private fun initListeners() {
        leftView.setOnClickListener { finish() }
        rightView.setOnClickListener { runQuery() }
        goodsNameEdit.setOnEditorActionListener { _, actionId, event ->
            val isDoneAction = actionId == EditorInfo.IME_ACTION_DONE
            val isEnterDown =
                event?.keyCode == KeyEvent.KEYCODE_ENTER && event.action == KeyEvent.ACTION_DOWN
            if (isDoneAction || isEnterDown) {
                runQuery()
                true
            } else {
                false
            }
        }
        bigTypeSpinner.onItemSelectedListener = object : AdapterView.OnItemSelectedListener {
            override fun onItemSelected(
                parent: AdapterView<*>?,
                view: View?,
                position: Int,
                id: Long
            ) {
                refreshSmallTypeSpinner(selectedBigTypeId())
            }

            override fun onNothingSelected(parent: AdapterView<*>?) = Unit
        }
        goodsCodeHeaderView.setOnClickListener {
            handleSortClick(goodsCodeHeaderView, SortColumn.GOODS_CODE)
        }
        goodsNameHeaderView.setOnClickListener {
            handleSortClick(goodsNameHeaderView, SortColumn.GOODS_NAME)
        }
        goodsCountHeaderView.setOnClickListener {
            handleSortClick(goodsCountHeaderView, SortColumn.QTY)
        }
        goodsPriceHeaderView.setOnClickListener {
            handleSortClick(goodsPriceHeaderView, SortColumn.PRICE)
        }
        goodsAmountHeaderView.setOnClickListener {
            handleSortClick(goodsAmountHeaderView, SortColumn.AMOUNT)
        }
        sellTypeHeaderView.setOnClickListener {
            handleSortClick(sellTypeHeaderView, SortColumn.SELL_TYPE)
        }
        payTypeHeaderView.setOnClickListener {
            handleSortClick(payTypeHeaderView, SortColumn.PAY_TYPE)
        }
        sellTimeHeaderView.setOnClickListener {
            handleSortClick(sellTimeHeaderView, SortColumn.SELL_TIME)
        }
        orderTypeHeaderView.setOnClickListener {
            handleSortClick(orderTypeHeaderView, SortColumn.ORDER_TYPE)
        }
    }

    private fun bindGoodsNameExtra() {
        val goodsName = intent.getStringExtra(EXTRA_GOODS_NAME).orEmpty()
        if (goodsName.isBlank()) {
            return
        }
        goodsNameEdit.setText(goodsName)
        goodsNameEdit.setSelection(goodsName.length)
        runQuery()
    }

    private fun refreshSmallTypeSpinner(bigTypeId: String) {
        smallTypeOptions = FakeQuerySellDetailRepository.smallTypesFor(bigTypeId)
        bindSpinner(smallTypeSpinner, smallTypeOptions.map { it.name })
        smallTypeSpinner.setSelection(0, false)
    }

    private fun bindSpinner(spinner: Spinner, labels: List<String>) {
        val spinnerAdapter = ArrayAdapter(
            this,
            android.R.layout.simple_spinner_dropdown_item,
            labels
        )
        spinner.adapter = spinnerAdapter
    }

    private fun runQuery() {
        lastQueryResult = FakeQuerySellDetailRepository.query(
            bigTypeId = selectedBigTypeId(),
            smallTypeId = selectedSmallTypeId(),
            sellTypeId = selectedSellTypeId(),
            payTypeId = selectedPayTypeId(),
            keyword = goodsNameEdit.text?.toString().orEmpty(),
            onlySelf = onlySelfCheckBox.isChecked
        )
        applyQueryResult()
    }

    private fun applyQueryResult() {
        val result = lastQueryResult ?: return
        val records = sortRecords(result.records)
        adapter.items = records
        renderSummary(result.summary)
        val hasData = records.isNotEmpty()
        recyclerView.visibility = if (hasData) View.VISIBLE else View.GONE
        noDataView.visibility = if (hasData) View.GONE else View.VISIBLE
    }

    private fun showEmptyState() {
        adapter.items = emptyList()
        recyclerView.visibility = View.GONE
        noDataView.visibility = View.VISIBLE
    }

    private fun installBlankAreaSwipeBridge() {
        val minSwipeDistance = ViewConfiguration.get(this).scaledTouchSlop * 2
        val gestureDetector = GestureDetector(
            this,
            object : GestureDetector.SimpleOnGestureListener() {
                override fun onDown(e: MotionEvent): Boolean = true

                override fun onScroll(
                    e1: MotionEvent?,
                    e2: MotionEvent,
                    distanceX: Float,
                    distanceY: Float
                ): Boolean {
                    if (adapter.itemCount > 0) {
                        return false
                    }
                    val downEvent = e1 ?: return false
                    if (abs(distanceY) <= abs(distanceX)) {
                        return false
                    }
                    if (abs(e2.y - downEvent.y) < minSwipeDistance) {
                        return false
                    }
                    if (distanceY > 0f) {
                        appBarLayout.setExpanded(false, true)
                    } else if (distanceY < 0f) {
                        appBarLayout.setExpanded(true, true)
                    }
                    return false
                }
            }
        )
        val bridgeTouchListener = View.OnTouchListener { _, event ->
            gestureDetector.onTouchEvent(event)
            false
        }
        recyclerView.setOnTouchListener(bridgeTouchListener)
        noDataView.setOnTouchListener(bridgeTouchListener)
    }

    private fun renderSummary(summary: FakeQuerySellDetailSummary) {
        summaryView.text = getString(
            R.string.query_sell_detail_summary_format,
            FakeQuerySellDetailRepository.formatQty(summary.saleQty),
            FakeQuerySellDetailRepository.formatAmount(summary.saleAmount),
            FakeQuerySellDetailRepository.formatQty(summary.returnQty),
            FakeQuerySellDetailRepository.formatAmount(summary.returnAmount),
            FakeQuerySellDetailRepository.formatAmount(summary.discountAmount)
        )
    }

    private fun sortRecords(records: List<FakeQuerySellDetailRecord>): List<FakeQuerySellDetailRecord> {
        val column = currentSortColumn ?: return records
        val comparator = when (column) {
            SortColumn.GOODS_CODE -> compareBy<FakeQuerySellDetailRecord> { it.goodsCode }
            SortColumn.GOODS_NAME -> compareBy<FakeQuerySellDetailRecord> { it.goodsName }
            SortColumn.QTY -> compareBy<FakeQuerySellDetailRecord> { it.qty }
            SortColumn.PRICE -> compareBy<FakeQuerySellDetailRecord> { it.salePriceReal }
            SortColumn.AMOUNT -> compareBy<FakeQuerySellDetailRecord> { it.qty * it.salePriceReal }
            SortColumn.SELL_TYPE -> compareBy<FakeQuerySellDetailRecord> { it.saleTypeId }
            SortColumn.PAY_TYPE -> compareBy<FakeQuerySellDetailRecord> { it.payTypeId }
            SortColumn.SELL_TIME -> compareBy<FakeQuerySellDetailRecord> { it.saleUploadDate }
            SortColumn.ORDER_TYPE -> compareBy<FakeQuerySellDetailRecord> { it.tradeType }
        }
        val sorted = records.sortedWith(comparator)
        return if (currentSortAscending) sorted else sorted.reversed()
    }

    private fun handleSortClick(headerView: TextView, column: SortColumn) {
        currentSortColumn = column
        val ascending = (headerView.tag as? Boolean) ?: false
        currentSortAscending = ascending
        resetSortIcon(headerView, ascending)
        lastQueryResult?.let { applyQueryResult() }
    }

    private fun resetSortIcon(selectedHeaderView: TextView?, ascending: Boolean) {
        sortableHeaderViews.forEach { headerView ->
            headerView.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0)
        }
        if (selectedHeaderView == null) {
            return
        }
        val icon = getSortIcon(ascending)
        selectedHeaderView.setCompoundDrawablesWithIntrinsicBounds(
            null,
            null,
            icon,
            null
        )
        selectedHeaderView.compoundDrawablePadding = resources.getDimensionPixelSize(R.dimen.dp_3)
        selectedHeaderView.tag = !ascending
    }

    private fun getSortIcon(ascending: Boolean): Drawable? {
        val resId = if (ascending) R.drawable.ic_sort_up else R.drawable.ic_sort_down
        return ContextCompat.getDrawable(this, resId)
    }

    private fun selectedBigTypeId(): String {
        return bigTypeOptions
            .getOrNull(bigTypeSpinner.selectedItemPosition)
            ?.id
            ?: FakeQuerySellDetailRepository.ALL_ID
    }

    private fun selectedSmallTypeId(): String {
        return smallTypeOptions
            .getOrNull(smallTypeSpinner.selectedItemPosition)
            ?.id
            ?: FakeQuerySellDetailRepository.ALL_ID
    }

    private fun selectedSellTypeId(): String {
        return sellTypeOptions
            .getOrNull(sellTypeSpinner.selectedItemPosition)
            ?.id
            ?: FakeQuerySellDetailRepository.ALL_ID
    }

    private fun selectedPayTypeId(): String {
        return payTypeOptions
            .getOrNull(payTypeSpinner.selectedItemPosition)
            ?.id
            ?: FakeQuerySellDetailRepository.ALL_ID
    }

    private enum class SortColumn {
        GOODS_CODE,
        GOODS_NAME,
        QTY,
        PRICE,
        AMOUNT,
        SELL_TYPE,
        PAY_TYPE,
        SELL_TIME,
        ORDER_TYPE
    }

    companion object {
        private const val DEFAULT_TRAIN_NO = "DJ5902"
        private const val DEFAULT_ROAD_DATE = "20260408"
        private const val EXTRA_GOODS_NAME = "goodsName"

        fun createIntent(
            context: Context,
            employeeCode: String,
            userName: String,
            roadId: String,
            trainNo: String,
            teamName: String,
            roadDate: String,
            goodsName: String = ""
        ): Intent {
            return Intent(context, QuerySellDetailActivity::class.java).apply {
                putExtra(MenuActivity.EXTRA_EMPLOYEE_CODE, employeeCode)
                putExtra(MenuActivity.EXTRA_USER_NAME, userName)
                putExtra(MenuActivity.EXTRA_ROAD_ID, roadId)
                putExtra(MenuActivity.EXTRA_TRAIN_NO, trainNo)
                putExtra(MenuActivity.EXTRA_TEAM_NAME, teamName)
                putExtra(MenuActivity.EXTRA_ROAD_DATE, roadDate)
                putExtra(EXTRA_GOODS_NAME, goodsName)
            }
        }
    }
}
