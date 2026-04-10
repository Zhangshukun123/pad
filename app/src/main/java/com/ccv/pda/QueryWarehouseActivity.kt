package com.ccv.pda

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.KeyEvent
import android.view.View
import android.view.inputmethod.EditorInfo
import android.widget.AdapterView
import android.widget.ArrayAdapter
import android.widget.Button
import android.widget.Spinner
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.ayma.base.widget.ClearEditText

class QueryWarehouseActivity : AppCompatActivity() {

    private lateinit var titleView: TextView
    private lateinit var leftView: TextView
    private lateinit var rightView: TextView
    private lateinit var userNameView: TextView
    private lateinit var trainNoView: TextView
    private lateinit var roadDateView: TextView

    private lateinit var bigTypeSpinner: Spinner
    private lateinit var smallTypeSpinner: Spinner
    private lateinit var goodsNameEdit: ClearEditText
    private lateinit var btnQuery: Button

    private lateinit var tvTotalCount: TextView
    private lateinit var tvTotalPrice: TextView

    private lateinit var recyclerView: RecyclerView

    private val adapter = QueryWarehouseAdapter()

    private var bigTypeOptions = FakeQueryWarehouseRepository.bigTypes
    private var smallTypeOptions = FakeQueryWarehouseRepository.smallTypesFor(FakeQueryWarehouseRepository.ALL_ID)

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_query_warehouse)
        bindViews()
        bindContent()
        initTitleBar()
        initRecyclerView()
        initSpinners()
        initListeners()
        runQuery() // Initial query
    }

    private fun bindViews() {
        titleView = findViewById(R.id.app_title_tv_title)
        leftView = findViewById(R.id.app_title_tv_left)
        rightView = findViewById(R.id.app_title_tv_right)
        
        userNameView = findViewById(R.id.aui_tv_user_name)
        trainNoView = findViewById(R.id.aui_tv_train_name)
        roadDateView = findViewById(R.id.aui_tv_train_date)

        bigTypeSpinner = findViewById(R.id.aqw_spinner_warebigtype)
        smallTypeSpinner = findViewById(R.id.aqw_spinner_waresmalltype)
        goodsNameEdit = findViewById(R.id.aqw_et_warename)
        btnQuery = findViewById(R.id.aqw_bt_query)

        tvTotalCount = findViewById(R.id.aqw_tv_total_count)
        tvTotalPrice = findViewById(R.id.aqw_tv_total_price)

        recyclerView = findViewById(R.id.aqw_rlv_data)
    }

    private fun bindContent() {
        userNameView.text = getString(R.string.sell_fake_box_info)
        trainNoView.text = intent.getStringExtra(MenuActivity.EXTRA_TRAIN_NO).orEmpty()
        roadDateView.text = intent.getStringExtra(MenuActivity.EXTRA_ROAD_DATE).orEmpty()
    }

    private fun initTitleBar() {
        titleView.text = "库存查询" // Replace with actual string resource if it exists
        leftView.visibility = View.VISIBLE
        leftView.text = getString(R.string.title_back)
        rightView.visibility = View.INVISIBLE
    }

    private fun initRecyclerView() {
        recyclerView.layoutManager = LinearLayoutManager(this)
        recyclerView.adapter = adapter
    }

    private fun initSpinners() {
        bindSpinner(bigTypeSpinner, bigTypeOptions.map { it.name })
        refreshSmallTypeSpinner(FakeQueryWarehouseRepository.ALL_ID)
    }

    private fun initListeners() {
        leftView.setOnClickListener { finish() }
        btnQuery.setOnClickListener { runQuery() }

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
        smallTypeOptions = FakeQueryWarehouseRepository.smallTypesFor(bigTypeId)
        bindSpinner(smallTypeSpinner, smallTypeOptions.map { it.name })
        smallTypeSpinner.setSelection(0, false)
    }

    private fun bindSpinner(spinner: Spinner, labels: List<String>) {
        spinner.adapter = ArrayAdapter(this, android.R.layout.simple_spinner_dropdown_item, labels)
    }

    private fun runQuery() {
        val (records, summary) = FakeQueryWarehouseRepository.query(
            bigTypeId = selectedBigTypeId(),
            smallTypeId = selectedSmallTypeId(),
            keyword = goodsNameEdit.text?.toString().orEmpty()
        )
        adapter.items = records
        tvTotalCount.text = summary.totalCount.toString()
        tvTotalPrice.text = FakeQueryWarehouseRepository.fmt(summary.totalAmount)
    }

    private fun selectedBigTypeId() =
        bigTypeOptions.getOrNull(bigTypeSpinner.selectedItemPosition)?.id ?: FakeQueryWarehouseRepository.ALL_ID

    private fun selectedSmallTypeId() =
        smallTypeOptions.getOrNull(smallTypeSpinner.selectedItemPosition)?.id ?: FakeQueryWarehouseRepository.ALL_ID

    companion object {
        fun createIntent(
            context: Context,
            employeeCode: String,
            userName: String,
            roadId: String,
            trainNo: String,
            teamName: String,
            roadDate: String
        ): Intent = Intent(context, QueryWarehouseActivity::class.java).apply {
            putExtra(MenuActivity.EXTRA_EMPLOYEE_CODE, employeeCode)
            putExtra(MenuActivity.EXTRA_USER_NAME, userName)
            putExtra(MenuActivity.EXTRA_ROAD_ID, roadId)
            putExtra(MenuActivity.EXTRA_TRAIN_NO, trainNo)
            putExtra(MenuActivity.EXTRA_TEAM_NAME, teamName)
            putExtra(MenuActivity.EXTRA_ROAD_DATE, roadDate)
        }
    }
}
