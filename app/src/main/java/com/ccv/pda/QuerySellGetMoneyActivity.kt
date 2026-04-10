package com.ccv.pda

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.CheckBox
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import com.ayma.base.widget.ClearEditText

class QuerySellGetMoneyActivity : AppCompatActivity() {

    private lateinit var titleView: TextView
    private lateinit var leftView: TextView
    private lateinit var rightView: TextView
    private lateinit var boxInfoView: TextView
    private lateinit var trainNoView: TextView
    private lateinit var roadDateView: TextView
    private lateinit var onlySelfCheckBox: CheckBox
    private lateinit var discountContainer: View
    private lateinit var unusualOrderButton: Button

    private lateinit var totalSaleMoneyView: TextView
    private lateinit var codeSaleMoneyView: TextView
    private lateinit var normalSaleMoneyView: TextView
    private lateinit var onlineSaleAmountView: TextView
    private lateinit var sale12306MoneyView: TextView
    private lateinit var cashSaleMoneyView: TextView
    private lateinit var crewBreakfastSaleMoneyView: TextView
    private lateinit var crewMealSaleMoneyView: TextView
    private lateinit var alipaySaleMoneyView: TextView
    private lateinit var wechatSaleMoneyView: TextView
    private lateinit var cashGetView: TextView
    private lateinit var scrappedView: TextView
    private lateinit var cashToAlipayView: TextView
    private lateinit var lostView: TextView
    private lateinit var cashToWechatView: TextView
    private lateinit var teamMealSaleMoneyView: TextView
    private lateinit var vipSaleMoneyView: TextView
    private lateinit var receptionSaleMoneyView: TextView
    private lateinit var scrappedLostToOnlineView: TextView
    private lateinit var waijuSaleMoneyView: TextView
    private lateinit var alipayGetView: TextView
    private lateinit var wechatGetView: TextView
    private lateinit var crewMealView: TextView
    private lateinit var workMealView: TextView
    private lateinit var discountAmountView: TextView
    private lateinit var cashToOnlineButton: TextView
    private lateinit var lostScrappedToOnlineButton: TextView

    private var currentData: FakeSaleGetMoneyData? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_query_sell_getmoney)
        bindViews()
        bindContent()
        initTitleBar()
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
        onlySelfCheckBox = findViewById(R.id.aqsl_cb)
        discountContainer = findViewById(R.id.cl_23)
        unusualOrderButton = findViewById(R.id.aqsg_btn_query_unusual_order)

        totalSaleMoneyView = findViewById(R.id.aqsg_tv_total_sale_money)
        codeSaleMoneyView = findViewById(R.id.aqsg_tv_code_sale)
        normalSaleMoneyView = findViewById(R.id.aqsg_tv_normal_sale_money)
        onlineSaleAmountView = findViewById(R.id.aqsg_tv_online_sale_amount)
        sale12306MoneyView = findViewById(R.id.aqsg_tv_12306_sale_money)
        cashSaleMoneyView = findViewById(R.id.aqsg_tv_cash_sale_money)
        crewBreakfastSaleMoneyView = findViewById(R.id.aqsg_tv_cwzao_sale_money)
        crewMealSaleMoneyView = findViewById(R.id.aqsg_tv_cwzheng_sale_money)
        alipaySaleMoneyView = findViewById(R.id.aqsg_tv_alipay_sale_money)
        wechatSaleMoneyView = findViewById(R.id.aqsg_tv_wechat_sale_money)
        cashGetView = findViewById(R.id.aqsg_tv_cash_get)
        scrappedView = findViewById(R.id.aqsg_tv_scrapped)
        cashToAlipayView = findViewById(R.id.aqsl_tv_cash_to_alipay)
        lostView = findViewById(R.id.aqsl_tv_lost)
        cashToWechatView = findViewById(R.id.aqsl_tv_cash_to_wechat)
        teamMealSaleMoneyView = findViewById(R.id.aqsg_tv_tuancan_sale_money)
        vipSaleMoneyView = findViewById(R.id.aqsg_tv_vip_sale_money)
        receptionSaleMoneyView = findViewById(R.id.aqsg_tv_jiedai_sale_money)
        scrappedLostToOnlineView = findViewById(R.id.aqsl_tv_scrapped_lost_to_online)
        waijuSaleMoneyView = findViewById(R.id.aqsg_tv_waiju_sale_money)
        alipayGetView = findViewById(R.id.aqsl_tv_alipay_get)
        wechatGetView = findViewById(R.id.aqsg_tv_wechat_get)
        crewMealView = findViewById(R.id.aqsl_tv_chengwuc)
        workMealView = findViewById(R.id.aqsl_tv_work)
        discountAmountView = findViewById(R.id.aqsg_tv_discount_amount)
        cashToOnlineButton = findViewById(R.id.aqsg_tv_cash_to_online)
        lostScrappedToOnlineButton = findViewById(R.id.aqsg_tv_lost_scrapped_to_online)
    }

    private fun bindContent() {
        boxInfoView.text = getString(R.string.sell_fake_box_info)
        trainNoView.text = intent.getStringExtra(MenuActivity.EXTRA_TRAIN_NO).orEmpty()
        roadDateView.text = intent.getStringExtra(MenuActivity.EXTRA_ROAD_DATE).orEmpty()
    }

    private fun initTitleBar() {
        titleView.text = getString(R.string.menu_query_sell_get_money)
        leftView.visibility = View.VISIBLE
        leftView.text = getString(R.string.title_back)
        rightView.visibility = View.VISIBLE
        rightView.text = getString(R.string.online_refund_action_query)
    }

    private fun initListeners() {
        leftView.setOnClickListener { finish() }
        rightView.setOnClickListener { runQuery() }
        onlySelfCheckBox.setOnCheckedChangeListener { _, _ -> runQuery() }
        cashToOnlineButton.setOnClickListener { handleCashToOnline() }
        lostScrappedToOnlineButton.setOnClickListener { handleScrappedLostToOnline() }
        unusualOrderButton.setOnClickListener { toast("异常订单查询暂未接入") }
    }

    private fun runQuery() {
        currentData = FakeQuerySellGetMoneyRepository.query(onlySelfCheckBox.isChecked)
        bindData(currentData ?: return)
    }

    private fun bindData(data: FakeSaleGetMoneyData) {
        bindAmount(totalSaleMoneyView, data.totalSaleMoney)
        bindAmount(codeSaleMoneyView, data.codeSaleMoney)
        bindAmount(normalSaleMoneyView, data.normalSaleMoney)
        bindAmount(onlineSaleAmountView, data.onlineSaleAmount)
        bindAmount(sale12306MoneyView, data.sale12306Money)
        bindAmount(cashSaleMoneyView, data.cashSaleMoney)
        bindAmount(crewBreakfastSaleMoneyView, data.crewBreakfastSaleMoney)
        bindAmount(crewMealSaleMoneyView, data.crewMealSaleMoney)
        bindAmount(alipaySaleMoneyView, data.alipaySaleMoney)
        bindAmount(wechatSaleMoneyView, data.wechatSaleMoney)
        bindAmount(cashGetView, data.cashGet)
        bindAmount(scrappedView, data.scrapped)
        bindAmount(cashToAlipayView, data.cashToAlipay)
        bindAmount(lostView, data.lost)
        bindAmount(cashToWechatView, data.cashToWechat)
        bindAmount(teamMealSaleMoneyView, data.teamMealSaleMoney)
        bindAmount(vipSaleMoneyView, data.vipSaleMoney)
        bindAmount(receptionSaleMoneyView, data.receptionSaleMoney)
        bindAmount(scrappedLostToOnlineView, data.scrappedLostToOnline)
        bindAmount(waijuSaleMoneyView, data.waijuSaleMoney)
        bindAmount(alipayGetView, data.alipayGet)
        bindAmount(wechatGetView, data.wechatGet)
        bindAmount(crewMealView, data.crewMeal)
        bindAmount(workMealView, data.workMeal)
        bindAmount(discountAmountView, data.discountAmount)
        discountContainer.visibility = if (data.discountAmount == 0.0) View.INVISIBLE else View.VISIBLE
    }

    private fun bindAmount(view: TextView, amount: Double) {
        view.text = FakeQuerySellGetMoneyRepository.formatAmount(amount)
    }

    private fun handleCashToOnline() {
        val data = currentData
        if (data == null) {
            toast("请先查询收款数据")
            return
        }
        if (data.cashGet <= 0.0) {
            toast("当前无可转线上的现金收款")
            return
        }
        showTransferDialog("现金", data.cashGet) { amount ->
            currentData = currentData?.transferCashToOnline(FakeTransferChannel.ALIPAY, amount)
            bindData(currentData ?: return@showTransferDialog)
            toast("已按假数据完成转线上")
        }
    }

    private fun handleScrappedLostToOnline() {
        val data = currentData
        if (data == null) {
            toast("请先查询收款数据")
            return
        }
        if (data.scrappedLostToOnline <= 0.0) {
            toast("当前无可转线上的金额")
            return
        }
        showTransferDialog("报废丢失", data.scrappedLostToOnline) { amount ->
            currentData = currentData?.transferScrappedLostToOnline(FakeTransferChannel.ALIPAY, amount)
            bindData(currentData ?: return@showTransferDialog)
            toast("已按假数据完成转线上")
        }
    }

    private fun showTransferDialog(
        title: String,
        maxAmount: Double,
        onConfirm: (Double) -> Unit
    ) {
        val dialogView = layoutInflater.inflate(R.layout.dialog_qsma_edit_pay_money, null)
        val titleView = dialogView.findViewById<TextView>(R.id.tv_content)
        val amountInput = dialogView.findViewById<ClearEditText>(R.id.et_money)
        val cancelButton = dialogView.findViewById<Button>(R.id.btn_cancel)
        val commitButton = dialogView.findViewById<Button>(R.id.btn_commit)

        titleView.text = String.format("%s转线上--当前最多可转%s元", title, maxAmount)
        amountInput.setText(maxAmount.toString())
        amountInput.setSelection(amountInput.text?.length ?: 0)

        val dialog = AlertDialog.Builder(this)
            .setView(dialogView)
            .setCancelable(false)
            .create()

        cancelButton.setOnClickListener { dialog.dismiss() }
        commitButton.setOnClickListener {
            val amountText = amountInput.text?.toString()?.trim().orEmpty()
            val amount = amountText.toDoubleOrNull()
            when {
                amountText.isEmpty() -> toast("请输入要转入线上的金额")
                amount == null -> toast("请输入有效金额")
                amount == 0.0 -> toast("转入线上的金额至少要大于0元")
                amount > maxAmount -> toast("将要转线上的金额超过最多可转金额，请重新输入")
                else -> {
                    onConfirm(amount)
                    dialog.dismiss()
                }
            }
        }

        dialog.show()
        dialog.setCanceledOnTouchOutside(false)
        dialog.window?.setLayout(
            (resources.displayMetrics.widthPixels * 0.84f).toInt(),
            ViewGroup.LayoutParams.WRAP_CONTENT
        )
    }

    private fun toast(message: String) {
        Toast.makeText(this, message, Toast.LENGTH_SHORT).show()
    }

    companion object {
        fun createIntent(
            context: Context,
            employeeCode: String,
            userName: String,
            roadId: String,
            trainNo: String,
            teamName: String,
            roadDate: String
        ): Intent {
            return Intent(context, QuerySellGetMoneyActivity::class.java).apply {
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
