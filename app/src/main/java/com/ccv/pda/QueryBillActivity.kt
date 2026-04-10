package com.ccv.pda

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.KeyEvent
import android.view.View
import android.view.inputmethod.EditorInfo
import android.widget.AdapterView
import android.widget.ArrayAdapter
import android.widget.Spinner
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.ayma.base.widget.ClearEditText

class QueryBillActivity : AppCompatActivity() {

    private lateinit var titleView: TextView
    private lateinit var leftView: TextView
    private lateinit var rightView: TextView
    private lateinit var userNameView: TextView
    private lateinit var trainNoView: TextView
    private lateinit var roadDateView: TextView

    private lateinit var bigTypeSpinner: Spinner
    private lateinit var smallTypeSpinner: Spinner
    private lateinit var saleTypeSpinner: Spinner
    private lateinit var goodsNameEdit: ClearEditText

    // 顶部汇总区
    private lateinit var tvInCount: TextView
    private lateinit var tvInAmount: TextView
    private lateinit var tvOutCount: TextView
    private lateinit var tvOutAmount: TextView
    private lateinit var tvSaleCount: TextView
    private lateinit var tvSaleAmount: TextView

    // 小计行
    private lateinit var tvFromStockCount: TextView
    private lateinit var tvAddCount: TextView
    private lateinit var tvTransferInCount: TextView
    private lateinit var tvTransferOutCount: TextView
    private lateinit var tvReturnCount: TextView
    private lateinit var tvScrappedCount: TextView
    private lateinit var tvLostCount: TextView
    private lateinit var tvSaleOutCount: TextView
    private lateinit var tvSaleInCount: TextView
    private lateinit var tvSale12306Count: TextView

    private lateinit var tvFromStockAmount: TextView
    private lateinit var tvAddAmount: TextView
    private lateinit var tvTransferInAmount: TextView
    private lateinit var tvTransferOutAmount: TextView
    private lateinit var tvReturnAmount: TextView
    private lateinit var tvScrappedAmount: TextView
    private lateinit var tvLostAmount: TextView
    private lateinit var tvSaleOutAmount: TextView
    private lateinit var tvSaleInAmount: TextView
    private lateinit var tvSale12306Amount: TextView

    private lateinit var recyclerView: RecyclerView
    private lateinit var noDataView: TextView

    private val adapter = QueryBillAdapter()

    private var bigTypeOptions = FakeQueryBillRepository.bigTypes
    private var smallTypeOptions = FakeQueryBillRepository.smallTypesFor(FakeQueryBillRepository.ALL_ID)
    private val saleTypeOptions = FakeQueryBillRepository.saleTypes

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_query_bill)
        bindViews()
        bindContent()
        initTitleBar()
        initRecyclerView()
        initSpinners()
        initListeners()
        bindSummary(QueryBillSummary())
    }

    private fun bindViews() {
        titleView = findViewById(R.id.app_title_tv_title)
        leftView = findViewById(R.id.app_title_tv_left)
        rightView = findViewById(R.id.app_title_tv_right)
        userNameView = findViewById(R.id.aui_tv_user_name)
        trainNoView = findViewById(R.id.aui_tv_train_name)
        roadDateView = findViewById(R.id.aui_tv_train_date)

        bigTypeSpinner = findViewById(R.id.aqb_sp_big_type)
        smallTypeSpinner = findViewById(R.id.aqb_sp_small_type)
        saleTypeSpinner = findViewById(R.id.aqb_sp_sale_type)
        goodsNameEdit = findViewById(R.id.aqb_et_goods_name)

        tvInCount = findViewById(R.id.aqb_tv_in_count)
        tvInAmount = findViewById(R.id.aqb_tv_in_amount)
        tvOutCount = findViewById(R.id.aqb_tv_out_count)
        tvOutAmount = findViewById(R.id.aqb_tv_out_amount)
        tvSaleCount = findViewById(R.id.aqb_tv_sale_count)
        tvSaleAmount = findViewById(R.id.aqb_tv_sale_amount)

        tvFromStockCount = findViewById(R.id.aqb_tv_goods_from_stock_count)
        tvAddCount = findViewById(R.id.aqb_tv_goods_add_count)
        tvTransferInCount = findViewById(R.id.aqb_tv_goods_transfer_in_count)
        tvTransferOutCount = findViewById(R.id.aqb_tv_goods_transfer_out_count)
        tvReturnCount = findViewById(R.id.aqb_tv_goods_return_count)
        tvScrappedCount = findViewById(R.id.aqb_tv_goods_scrapped_count)
        tvLostCount = findViewById(R.id.aqb_tv_goods_lost_count)
        tvSaleOutCount = findViewById(R.id.aqb_tv_goods_sale_out_count)
        tvSaleInCount = findViewById(R.id.aqb_tv_goods_sale_in_count)
        tvSale12306Count = findViewById(R.id.aqb_tv_goods_sale_12306_count)

        tvFromStockAmount = findViewById(R.id.aqb_tv_goods_from_stock_amount)
        tvAddAmount = findViewById(R.id.aqb_tv_goods_add_amount)
        tvTransferInAmount = findViewById(R.id.aqb_tv_goods_transfer_in_amount)
        tvTransferOutAmount = findViewById(R.id.aqb_tv_goods_transfer_out_amount)
        tvReturnAmount = findViewById(R.id.aqb_tv_goods_return_amount)
        tvScrappedAmount = findViewById(R.id.aqb_tv_goods_scrapped_amount)
        tvLostAmount = findViewById(R.id.aqb_tv_goods_lost_amount)
        tvSaleOutAmount = findViewById(R.id.aqb_tv_goods_sale_out_amount)
        tvSaleInAmount = findViewById(R.id.aqb_tv_goods_sale_in_amount)
        tvSale12306Amount = findViewById(R.id.aqb_tv_goods_sale_12306_amount)

        recyclerView = findViewById(R.id.aqb_rlv_data)
        noDataView = findViewById(R.id.aqb_tv_no_data)
    }

    private fun bindContent() {
        userNameView.text = getString(R.string.sell_fake_box_info)
        trainNoView.text = intent.getStringExtra(MenuActivity.EXTRA_TRAIN_NO).orEmpty()
        roadDateView.text = intent.getStringExtra(MenuActivity.EXTRA_ROAD_DATE).orEmpty()
    }

    private fun initTitleBar() {
        titleView.text = getString(R.string.query_bill_title)
        leftView.visibility = View.VISIBLE
        leftView.text = getString(R.string.title_back)
        rightView.visibility = View.VISIBLE
        rightView.text = getString(R.string.online_refund_action_query)
    }

    private fun initRecyclerView() {
        recyclerView.layoutManager = LinearLayoutManager(this)
        recyclerView.adapter = adapter
    }

    private fun initSpinners() {
        bindSpinner(bigTypeSpinner, bigTypeOptions.map { it.name })
        bindSpinner(saleTypeSpinner, saleTypeOptions.map { it.name })
        refreshSmallTypeSpinner(FakeQueryBillRepository.ALL_ID)
    }

    private fun initListeners() {
        leftView.setOnClickListener { finish() }
        rightView.setOnClickListener { runQuery() }

        goodsNameEdit.setOnEditorActionListener { _, actionId, event ->
            val isDone = actionId == EditorInfo.IME_ACTION_DONE
            val isEnter = event?.keyCode == KeyEvent.KEYCODE_ENTER && event.action == KeyEvent.ACTION_DOWN
            if (isDone || isEnter) { runQuery(); true } else false
        }

        bigTypeSpinner.onItemSelectedListener = object : AdapterView.OnItemSelectedListener {
            override fun onItemSelected(parent: AdapterView<*>?, view: View?, position: Int, id: Long) {
                refreshSmallTypeSpinner(selectedBigTypeId())
            }
            override fun onNothingSelected(parent: AdapterView<*>?) = Unit
        }
    }

    private fun refreshSmallTypeSpinner(bigTypeId: String) {
        smallTypeOptions = FakeQueryBillRepository.smallTypesFor(bigTypeId)
        bindSpinner(smallTypeSpinner, smallTypeOptions.map { it.name })
        smallTypeSpinner.setSelection(0, false)
    }

    private fun bindSpinner(spinner: Spinner, labels: List<String>) {
        spinner.adapter = ArrayAdapter(this, android.R.layout.simple_spinner_dropdown_item, labels)
    }

    private fun runQuery() {
        val (records, summary) = FakeQueryBillRepository.query(
            bigTypeId = selectedBigTypeId(),
            smallTypeId = selectedSmallTypeId(),
            saleTypeId = selectedSaleTypeId(),
            keyword = goodsNameEdit.text?.toString().orEmpty()
        )
        adapter.items = records
        bindSummary(summary)
        noDataView.visibility = if (records.isEmpty()) View.VISIBLE else View.GONE
    }

    private fun bindSummary(s: QueryBillSummary) {
        val fmt = FakeQueryBillRepository::fmt
        // 顶部汇总
        tvInCount.text = fmt(s.inCount)
        tvInAmount.text = fmt(s.inAmount)
        tvOutCount.text = fmt(s.outCount)
        tvOutAmount.text = fmt(s.outAmount)
        tvSaleCount.text = fmt(s.saleCount)
        tvSaleAmount.text = fmt(s.saleAmount)
        // 小计明细
        tvFromStockCount.text = fmt(s.fromStockCount)
        tvAddCount.text = fmt(s.addCount)
        tvTransferInCount.text = fmt(s.transferInCount)
        tvTransferOutCount.text = fmt(s.transferOutCount)
        tvReturnCount.text = fmt(s.returnCount)
        tvScrappedCount.text = fmt(s.scrappedCount)
        tvLostCount.text = fmt(s.lostCount)
        tvSaleOutCount.text = fmt(s.saleOutCount)
        tvSaleInCount.text = fmt(s.saleInCount)
        tvSale12306Count.text = fmt(s.sale12306Count)

        tvFromStockAmount.text = fmt(s.fromStockAmount)
        tvAddAmount.text = fmt(s.addAmount)
        tvTransferInAmount.text = fmt(s.transferInAmount)
        tvTransferOutAmount.text = fmt(s.transferOutAmount)
        tvReturnAmount.text = fmt(s.returnAmount)
        tvScrappedAmount.text = fmt(s.scrappedAmount)
        tvLostAmount.text = fmt(s.lostAmount)
        tvSaleOutAmount.text = fmt(s.saleOutAmount)
        tvSaleInAmount.text = fmt(s.saleInAmount)
        tvSale12306Amount.text = fmt(s.sale12306Amount)
    }

    private fun selectedBigTypeId() =
        bigTypeOptions.getOrNull(bigTypeSpinner.selectedItemPosition)?.id ?: FakeQueryBillRepository.ALL_ID

    private fun selectedSmallTypeId() =
        smallTypeOptions.getOrNull(smallTypeSpinner.selectedItemPosition)?.id ?: FakeQueryBillRepository.ALL_ID

    private fun selectedSaleTypeId() =
        saleTypeOptions.getOrNull(saleTypeSpinner.selectedItemPosition)?.id ?: FakeQueryBillRepository.SALE_ALL

    companion object {
        fun createIntent(
            context: Context,
            employeeCode: String,
            userName: String,
            roadId: String,
            trainNo: String,
            teamName: String,
            roadDate: String
        ): Intent = Intent(context, QueryBillActivity::class.java).apply {
            putExtra(MenuActivity.EXTRA_EMPLOYEE_CODE, employeeCode)
            putExtra(MenuActivity.EXTRA_USER_NAME, userName)
            putExtra(MenuActivity.EXTRA_ROAD_ID, roadId)
            putExtra(MenuActivity.EXTRA_TRAIN_NO, trainNo)
            putExtra(MenuActivity.EXTRA_TEAM_NAME, teamName)
            putExtra(MenuActivity.EXTRA_ROAD_DATE, roadDate)
        }
    }
}
