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
import android.widget.Spinner
import android.widget.TextView
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.core.content.ContextCompat
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.ayma.base.widget.ClearEditText
import com.google.android.material.appbar.AppBarLayout
import kotlin.math.abs

class SaleAnalysisActivity : AppCompatActivity() {

    private lateinit var appBarLayout: AppBarLayout
    private lateinit var titleView: TextView
    private lateinit var leftView: TextView
    private lateinit var rightView: TextView
    private lateinit var boxInfoView: TextView
    private lateinit var trainNoView: TextView
    private lateinit var roadDateView: TextView
    private lateinit var bigTypeSpinner: Spinner
    private lateinit var smallTypeSpinner: Spinner
    private lateinit var sellTypeSpinner: Spinner
    private lateinit var goodsNameEdit: ClearEditText
    private lateinit var goodsCodeHeaderView: TextView
    private lateinit var goodsNameHeaderView: TextView
    private lateinit var goodsAddHeaderView: TextView
    private lateinit var goodsSaleHeaderView: TextView
    private lateinit var trainStockHeaderView: TextView
    private lateinit var tableContainer: View
    private lateinit var noDataView: TextView
    private lateinit var tipsView: TextView
    private lateinit var recyclerView: RecyclerView
    private lateinit var countViews: List<TextView>
    private lateinit var amountViews: List<TextView>

    private val adapter by lazy {
        SaleAnalysisAdapter(
            onGoodsNameClick = ::showGoodsNameDialog,
            onAbnormalClick = ::showAbnormalDialog
        )
    }

    private var bigTypeOptions = FakeSaleAnalysisRepository.bigTypes
    private var smallTypeOptions =
        FakeSaleAnalysisRepository.smallTypesFor(FakeSaleAnalysisRepository.ALL_ID)
    private val sellTypeOptions = FakeSaleAnalysisRepository.sellTypes

    private var lastQueryResult: FakeSaleAnalysisResult? = null
    private var currentSortColumn: SortColumn? = null
    private var currentSortAscending = false
    private lateinit var sortableHeaderViews: List<TextView>

    private lateinit var trainNo: String
    private lateinit var roadDate: String

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_sale_analysis)
        bindViews()
        bindContent()
        initTitleBar()
        initRecyclerView()
        initSpinners()
        initListeners()
        bindSummary(FakeSaleAnalysisAmount())
        showEmptyState()
    }

    private fun bindViews() {
        appBarLayout = findViewById(R.id.asa_app_bar)
        titleView = findViewById(R.id.app_title_tv_title)
        leftView = findViewById(R.id.app_title_tv_left)
        rightView = findViewById(R.id.app_title_tv_right)
        boxInfoView = findViewById(R.id.aui_tv_user_name)
        trainNoView = findViewById(R.id.aui_tv_train_name)
        roadDateView = findViewById(R.id.aui_tv_train_date)
        bigTypeSpinner = findViewById(R.id.asa_sp_big_name)
        smallTypeSpinner = findViewById(R.id.asa_sp_small_name)
        sellTypeSpinner = findViewById(R.id.asa_sp_sell_type)
        goodsNameEdit = findViewById(R.id.asa_et_goods_name)
        goodsCodeHeaderView = findViewById(R.id.asa_tv_goods_code_hint)
        goodsNameHeaderView = findViewById(R.id.asa_tv_goods_name_hint)
        goodsAddHeaderView = findViewById(R.id.asa_tv_goods_add)
        goodsSaleHeaderView = findViewById(R.id.asa_tv_goods_goods_sale)
        trainStockHeaderView = findViewById(R.id.asa_tv_goods_tran_stock)
        tableContainer = findViewById(R.id.asa_cl_table)
        noDataView = findViewById(R.id.asa_tv_no_data)
        tipsView = findViewById(R.id.asa_tv_tips)
        recyclerView = findViewById(R.id.asa_rlv_data)
        countViews = listOf(
            findViewById(R.id.asa_tv_goods_add_count),
            findViewById(R.id.asa_tv_goods_in_count),
            findViewById(R.id.asa_tv_goods_out_stock_count),
            findViewById(R.id.asa_tv_goods_return_count),
            findViewById(R.id.asa_tv_goods_scrapped_count),
            findViewById(R.id.asa_tv_goods_lost_count),
            findViewById(R.id.asa_tv_goods_goods_sale_count),
            findViewById(R.id.asa_tv_goods_sale_12306_count),
            findViewById(R.id.asa_tv_goods_out_count),
            findViewById(R.id.asa_tv_goods_train_stock_count)
        )
        amountViews = listOf(
            findViewById(R.id.asa_tv_goods_add_amount),
            findViewById(R.id.asa_tv_goods_in_amount),
            findViewById(R.id.asa_tv_goods_out_stock_amount),
            findViewById(R.id.asa_tv_goods_return_amount),
            findViewById(R.id.asa_tv_goods_scrapped_amount),
            findViewById(R.id.asa_tv_goods_lost_amount),
            findViewById(R.id.asa_tv_goods_goods_sale_amount),
            findViewById(R.id.asa_tv_goods_sale_12306_amount),
            findViewById(R.id.asa_tv_goods_out_amount),
            findViewById(R.id.asa_tv_goods_train_stock_amount)
        )
        sortableHeaderViews = listOf(
            goodsCodeHeaderView,
            goodsNameHeaderView,
            goodsAddHeaderView,
            goodsSaleHeaderView,
            trainStockHeaderView
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
        titleView.text = getString(R.string.sale_analysis_title)
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
        bindSpinner(bigTypeSpinner, bigTypeOptions.map { it.name })
        bindSpinner(sellTypeSpinner, sellTypeOptions.map { it.name })
        refreshSmallTypeSpinner(FakeSaleAnalysisRepository.ALL_ID)
    }

    private fun initListeners() {
        leftView.setOnClickListener { finish() }
        rightView.setOnClickListener { runQuery() }
        tipsView.setOnClickListener {
            val tip = tipsView.text?.toString().orEmpty()
            if (tip.isNotBlank()) {
                showMessageDialog(tip)
            }
        }
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
        smallTypeSpinner.onItemSelectedListener = object : AdapterView.OnItemSelectedListener {
            override fun onItemSelected(
                parent: AdapterView<*>?,
                view: View?,
                position: Int,
                id: Long
            ) = Unit

            override fun onNothingSelected(parent: AdapterView<*>?) = Unit
        }
        sellTypeSpinner.onItemSelectedListener = object : AdapterView.OnItemSelectedListener {
            override fun onItemSelected(
                parent: AdapterView<*>?,
                view: View?,
                position: Int,
                id: Long
            ) = Unit

            override fun onNothingSelected(parent: AdapterView<*>?) = Unit
        }
        goodsCodeHeaderView.setOnClickListener {
            handleSortClick(goodsCodeHeaderView, SortColumn.GOODS_CODE)
        }
        goodsNameHeaderView.setOnClickListener {
            handleSortClick(goodsNameHeaderView, SortColumn.GOODS_NAME)
        }
        goodsAddHeaderView.setOnClickListener {
            handleSortClick(goodsAddHeaderView, SortColumn.ADD_COUNT)
        }
        goodsSaleHeaderView.setOnClickListener {
            handleSortClick(goodsSaleHeaderView, SortColumn.SALE_COUNT)
        }
        trainStockHeaderView.setOnClickListener {
            handleSortClick(trainStockHeaderView, SortColumn.TRAIN_STOCK)
        }
    }

    private fun refreshSmallTypeSpinner(bigTypeId: String) {
        smallTypeOptions = FakeSaleAnalysisRepository.smallTypesFor(bigTypeId)
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
        lastQueryResult = FakeSaleAnalysisRepository.query(
            bigTypeId = selectedBigTypeId(),
            smallTypeId = selectedSmallTypeId(),
            sellTypeId = selectedSellTypeId(),
            keyword = goodsNameEdit.text?.toString().orEmpty()
        )
        applyQueryResult()
    }

    private fun applyQueryResult() {
        val result = lastQueryResult
        val records = sortRecords(result?.records.orEmpty())
        adapter.items = records
        bindSummary(result?.amount ?: FakeSaleAnalysisAmount())
        tableContainer.visibility = View.VISIBLE
        noDataView.visibility = View.GONE
        tipsView.text = result?.tip.orEmpty()
        tipsView.visibility = if (!result?.tip.isNullOrBlank()) View.VISIBLE else View.GONE
    }

    private fun showEmptyState() {
        adapter.items = emptyList()
        tableContainer.visibility = View.VISIBLE
        noDataView.visibility = View.GONE
        tipsView.visibility = View.GONE
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
        recyclerView.setOnTouchListener { _, event ->
            gestureDetector.onTouchEvent(event)
            false
        }
    }

    private fun sortRecords(records: List<FakeSaleAnalysisRecord>): List<FakeSaleAnalysisRecord> {
        val column = currentSortColumn ?: return records
        val comparator = when (column) {
            SortColumn.GOODS_CODE -> compareBy<FakeSaleAnalysisRecord> { it.goodsCode }
            SortColumn.GOODS_NAME -> compareBy<FakeSaleAnalysisRecord> { it.goodsName }
            SortColumn.ADD_COUNT -> compareBy<FakeSaleAnalysisRecord> { it.fieldOutQty }
            SortColumn.SALE_COUNT -> compareBy<FakeSaleAnalysisRecord> { it.saleDataQty }
            SortColumn.TRAIN_STOCK -> compareBy<FakeSaleAnalysisRecord> { it.teamNumberQty }
        }
        val sorted = records.sortedWith(comparator)
        return if (currentSortAscending) sorted else sorted.reversed()
    }

    private fun handleSortClick(headerView: TextView, column: SortColumn) {
        currentSortColumn = column
        val ascending = (headerView.tag as? Boolean) ?: false
        currentSortAscending = ascending
        resetSortIcon(headerView, ascending)
        applyQueryResult()
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

    private fun bindSummary(amount: FakeSaleAnalysisAmount) {
        val countValues = listOf(
            amount.addCount,
            amount.inCount,
            amount.outStockCount,
            amount.returnCount,
            amount.scrappedCount,
            amount.lostCount,
            amount.saleCount,
            amount.sale12306Count,
            amount.outCount,
            amount.trainStockCount
        )
        val amountValues = listOf(
            amount.addAmount,
            amount.inAmount,
            amount.outStockAmount,
            amount.returnAmount,
            amount.scrappedAmount,
            amount.lostAmount,
            amount.saleAmount,
            amount.sale12306Amount,
            amount.outAmount,
            amount.trainStockAmount
        )
        countViews.forEachIndexed { index, textView ->
            textView.text = FakeSaleAnalysisRepository.formatQty(countValues[index])
        }
        amountViews.forEachIndexed { index, textView ->
            textView.text = FakeSaleAnalysisRepository.formatAmount(amountValues[index])
        }
    }

    private fun selectedBigTypeId(): String {
        return bigTypeOptions
            .getOrNull(bigTypeSpinner.selectedItemPosition)
            ?.id
            ?: FakeSaleAnalysisRepository.ALL_ID
    }

    private fun selectedSmallTypeId(): String {
        return smallTypeOptions
            .getOrNull(smallTypeSpinner.selectedItemPosition)
            ?.id
            ?: FakeSaleAnalysisRepository.ALL_ID
    }

    private fun selectedSellTypeId(): String {
        return sellTypeOptions
            .getOrNull(sellTypeSpinner.selectedItemPosition)
            ?.id
            ?: FakeSaleAnalysisRepository.ALL_ID
    }

    private fun showGoodsNameDialog(goodsName: String) {
        startActivity(
            QuerySellDetailActivity.createIntent(
                context = this,
                employeeCode = intent.getStringExtra(MenuActivity.EXTRA_EMPLOYEE_CODE).orEmpty(),
                userName = intent.getStringExtra(MenuActivity.EXTRA_USER_NAME).orEmpty(),
                roadId = intent.getStringExtra(MenuActivity.EXTRA_ROAD_ID).orEmpty(),
                trainNo = trainNo,
                teamName = intent.getStringExtra(MenuActivity.EXTRA_TEAM_NAME).orEmpty(),
                roadDate = roadDate,
                goodsName = goodsName
            )
        )
    }

    private fun showAbnormalDialog(record: FakeSaleAnalysisRecord) {
        AlertDialog.Builder(this)
            .setTitle(R.string.dialog_notice)
            .setMessage(
                getString(
                    R.string.sale_analysis_abnormal_message,
                    record.goodsName,
                    FakeSaleAnalysisRepository.formatQty(record.difference())
                )
            )
            .setPositiveButton(R.string.action_confirm, null)
            .show()
    }

    private fun showMessageDialog(message: String) {
        AlertDialog.Builder(this)
            .setTitle(R.string.dialog_notice)
            .setMessage(message)
            .setPositiveButton(R.string.action_confirm, null)
            .show()
    }

    private enum class SortColumn {
        GOODS_CODE,
        GOODS_NAME,
        ADD_COUNT,
        SALE_COUNT,
        TRAIN_STOCK
    }

    companion object {
        private const val DEFAULT_TRAIN_NO = "DJ5902"
        private const val DEFAULT_ROAD_DATE = "20260403"

        fun createIntent(
            context: Context,
            employeeCode: String,
            userName: String,
            roadId: String,
            trainNo: String,
            teamName: String,
            roadDate: String
        ): Intent {
            return Intent(context, SaleAnalysisActivity::class.java).apply {
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
