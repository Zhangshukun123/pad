package com.ccv.pda

import android.content.Intent
import android.graphics.Color
import android.graphics.drawable.ColorDrawable
import android.os.Bundle
import android.view.KeyEvent
import android.view.View
import android.view.WindowManager
import android.view.inputmethod.EditorInfo
import android.widget.ArrayAdapter
import android.widget.Button
import android.widget.CheckBox
import android.widget.PopupWindow
import android.widget.TextView
import android.widget.Toast
import androidx.activity.result.contract.ActivityResultContracts
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.appcompat.widget.AppCompatEditText
import androidx.appcompat.widget.AppCompatSpinner
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.ayma.base.widget.ClearEditText
import java.text.DecimalFormat

class SellActivity : AppCompatActivity() {

    private lateinit var rootView: View
    private lateinit var titleView: TextView
    private lateinit var leftView: TextView
    private lateinit var rightView: TextView
    private lateinit var boxInfoView: TextView
    private lateinit var trainNoView: TextView
    private lateinit var roadDateView: TextView
    private lateinit var sellTypeSpinner: AppCompatSpinner
    private lateinit var sellCountEdit: ClearEditText
    private lateinit var cashReturnCheckBox: CheckBox
    private lateinit var scanCodeEdit: ClearEditText
    private lateinit var selectGoodsButton: Button
    private lateinit var deleteAllButton: Button
    private lateinit var cameraPayButton: Button
    private lateinit var laserPayButton: Button
    private lateinit var totalView: TextView
    private lateinit var goodsRecyclerView: RecyclerView

    private val goodsAdapter = SellGoodsAdapter()
    private val goodsList = mutableListOf<FakeSellGood>()
    private val amountFormatter = DecimalFormat("0.##")
    private val payAmountFormatter = DecimalFormat("0.00")
    private var loadingDialog: AlertDialog? = null
    private var onlinePayDialog: AlertDialog? = null
    private var submitMenuPopup: PopupWindow? = null
    private var onlinePayOrderAmountView: TextView? = null
    private var onlinePayReceivableAmountView: TextView? = null
    private var onlinePayCodeEdit: AppCompatEditText? = null
    private val settingsStore by lazy { FakePdaSettingsStore(this) }

    private lateinit var employeeCode: String
    private lateinit var userName: String
    private lateinit var trainNo: String
    private lateinit var roadDate: String
    private var ignoreCashReturnChange = false

    private val selectGoodsLauncher = registerForActivityResult(
        ActivityResultContracts.StartActivityForResult()
    ) { result ->
        if (result.resultCode != RESULT_OK) {
            return@registerForActivityResult
        }
        val selectedGoods = SelectGoodsActivity.readSelectedGoods(result.data)
        if (selectedGoods.isEmpty()) {
            return@registerForActivityResult
        }
        mergeGoodsList(selectedGoods)
        toast(
            getString(
                R.string.sell_select_goods_added_count,
                selectedGoods.sumOf { it.quantity }
            )
        )
    }
    private val scanPayLauncher = registerForActivityResult(
        ActivityResultContracts.StartActivityForResult()
    ) { result ->
        if (result.resultCode != RESULT_OK) {
            return@registerForActivityResult
        }
        val payCode = ScanPayActivity.readScanResult(result.data)
        if (payCode.isBlank()) {
            return@registerForActivityResult
        }
        fillOnlinePayCode(payCode)
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_sell)
        bindViews()
        bindContent()
        initTitleBar()
        initSpinner()
        initGoodsList()
        initListeners()
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
        sellTypeSpinner = findViewById(R.id.asa_sp_sell_type)
        sellCountEdit = findViewById(R.id.asa_et_sell_count)
        cashReturnCheckBox = findViewById(R.id.asa_cb_cash_return)
        scanCodeEdit = findViewById(R.id.asa_et_scanning_code)
        selectGoodsButton = findViewById(R.id.asa_btn_select_goods)
        deleteAllButton = findViewById(R.id.asa_btn_delete_all)
        cameraPayButton = findViewById(R.id.asa_btn_online_camera)
        laserPayButton = findViewById(R.id.asa_btn_online_pay_laser)
        totalView = findViewById(R.id.asa_tv_goods_total_price)
        goodsRecyclerView = findViewById(R.id.asa_rv_goods)
    }

    private fun bindContent() {
        employeeCode = intent.getStringExtra(MenuActivity.EXTRA_EMPLOYEE_CODE)
            .orEmpty()
            .ifBlank { FakeLoginDataRepository.defaultLoginUser.employeeCode }
        userName = intent.getStringExtra(MenuActivity.EXTRA_USER_NAME)
            .orEmpty()
            .ifBlank { getString(R.string.sell_default_user_name) }
        trainNo = intent.getStringExtra(MenuActivity.EXTRA_TRAIN_NO)
            .orEmpty()
            .ifBlank { DEFAULT_TRAIN_NO }
        roadDate = intent.getStringExtra(MenuActivity.EXTRA_ROAD_DATE)
            .orEmpty()
            .ifBlank { DEFAULT_ROAD_DATE }

        boxInfoView.text = getString(R.string.sell_fake_box_info)
        trainNoView.text = trainNo
        roadDateView.text = roadDate
        sellCountEdit.setText(DEFAULT_SELL_COUNT.toString())
        sellCountEdit.setSelection(sellCountEdit.text?.length ?: 0)
        scanCodeEdit.setClearIconEnabled(false)
        cashReturnCheckBox.isChecked = false
    }

    private fun initTitleBar() {
        titleView.text = getString(R.string.sell_normal_title)
        leftView.visibility = View.VISIBLE
        rightView.visibility = View.VISIBLE
        rightView.text = getString(R.string.sell_action_submit)
    }

    private fun initSpinner() {
        val adapter = ArrayAdapter(
            this,
            R.layout.item_sell_type_spinner,
            listOf(getString(R.string.sell_type_normal))
        )
        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
        sellTypeSpinner.adapter = adapter
    }

    private fun initGoodsList() {
        goodsRecyclerView.layoutManager = LinearLayoutManager(this)
        goodsRecyclerView.adapter = goodsAdapter
    }

    private fun initListeners() {
        leftView.setOnClickListener { finish() }
        rightView.setOnClickListener { toggleSubmitMenu() }
        cashReturnCheckBox.setOnCheckedChangeListener { _, isChecked ->
            if (ignoreCashReturnChange || !isChecked) {
                return@setOnCheckedChangeListener
            }
            handleCashReturnChecked()
        }
        selectGoodsButton.setOnClickListener { openSelectGoodsPage() }
        deleteAllButton.setOnClickListener { confirmDeleteAllGoods() }
        cameraPayButton.setOnClickListener {
            openCameraOnlinePay()
        }
        laserPayButton.setOnClickListener {
            openLaserOnlinePay()
        }
        scanCodeEdit.setOnEditorActionListener { _, actionId, event ->
            val isDoneAction = actionId == EditorInfo.IME_ACTION_DONE
            val isEnterDown =
                event?.keyCode == KeyEvent.KEYCODE_ENTER && event.action == KeyEvent.ACTION_DOWN
            if (isDoneAction || isEnterDown) {
                addGoodsFromScan()
                true
            } else {
                false
            }
        }
    }

    private fun handleCashReturnChecked() {
        if (settingsStore.skipCashReturnHint) {
            return
        }
        showCashReturnHintDialog()
    }

    private fun openSelectGoodsPage() {
        selectGoodsLauncher.launch(
            Intent(this, SelectGoodsActivity::class.java).apply {
                putExtra(MenuActivity.EXTRA_EMPLOYEE_CODE, employeeCode)
                putExtra(MenuActivity.EXTRA_USER_NAME, userName)
                putExtra(MenuActivity.EXTRA_TRAIN_NO, trainNo)
                putExtra(MenuActivity.EXTRA_ROAD_DATE, roadDate)
                putExtra(
                    SelectGoodsActivity.EXTRA_SALE_TYPE_NAME,
                    getString(R.string.sell_type_normal)
                )
            }
        )
    }

    private fun openLaserOnlinePay() {
        if (goodsList.isEmpty()) {
            toast(getString(R.string.sell_submit_empty))
            return
        }
        showOnlinePayDialog(resetInput = true)
        onlinePayCodeEdit?.requestFocus()
    }

    private fun openCameraOnlinePay() {
        if (goodsList.isEmpty()) {
            toast(getString(R.string.sell_submit_empty))
            return
        }
        showOnlinePayDialog(resetInput = true, openScannerAfterShow = true)
    }

    private fun addGoodsFromScan() {
        val scanCode = scanCodeEdit.text?.toString()?.trim().orEmpty()
        if (scanCode.isBlank()) {
            toast(getString(R.string.sell_scan_code_empty))
            return
        }
        val template = FakeSellGoodsRepository.findByScanCode(scanCode)
        mergeGoods(
            FakeSellGoodsRepository.toSellGood(
                template = template,
                quantity = readSellQuantity(),
                codeOverride = scanCode
            )
        )
        scanCodeEdit.setText("")
        toast(getString(R.string.sell_scan_add_success, template.name))
    }

    private fun mergeGoodsList(items: List<FakeSellGood>) {
        items.forEach(::mergeGoodsInternal)
        refreshGoodsTable()
    }

    private fun mergeGoods(item: FakeSellGood) {
        mergeGoodsInternal(item)
        refreshGoodsTable()
    }

    private fun mergeGoodsInternal(item: FakeSellGood) {
        val existingIndex = goodsList.indexOfFirst { it.code == item.code }
        if (existingIndex >= 0) {
            val existing = goodsList[existingIndex]
            goodsList[existingIndex] = existing.copy(quantity = existing.quantity + item.quantity)
        } else {
            goodsList += item
        }
    }

    private fun refreshGoodsTable() {
        goodsAdapter.items = goodsList.toList()
        updateSummary()
    }

    private fun confirmDeleteAllGoods() {
        if (goodsList.isEmpty()) {
            toast(getString(R.string.sell_goods_empty))
            return
        }
        AlertDialog.Builder(this)
            .setTitle(R.string.dialog_notice)
            .setMessage(R.string.sell_delete_all_confirm_message)
            .setNegativeButton(R.string.action_cancel, null)
            .setPositiveButton(R.string.action_confirm) { _, _ ->
                deleteAllGoods()
            }
            .show()
    }

    private fun showCashReturnHintDialog() {
        val dialogView = layoutInflater.inflate(R.layout.dialog_cash_return_hint, null)
        val skipHintCheckBox = dialogView.findViewById<CheckBox>(R.id.dcrh_cb_skip_hint)
        val cancelView = dialogView.findViewById<TextView>(R.id.dcrh_tv_cancel)
        val confirmView = dialogView.findViewById<TextView>(R.id.dcrh_tv_confirm)

        val dialog = AlertDialog.Builder(this)
            .setView(dialogView)
            .setCancelable(true)
            .create()

        var confirmed = false

        cancelView.setOnClickListener {
            dialog.cancel()
        }
        confirmView.setOnClickListener {
            settingsStore.skipCashReturnHint = skipHintCheckBox.isChecked
            confirmed = true
            dialog.dismiss()
        }
        dialog.setOnCancelListener {
            if (!confirmed) {
                updateCashReturnChecked(false)
            }
        }
        dialog.setOnShowListener {
            dialog.window?.apply {
                setBackgroundDrawable(ColorDrawable(Color.TRANSPARENT))
                setLayout(
                    (resources.displayMetrics.widthPixels * CASH_RETURN_DIALOG_WIDTH_RATIO).toInt(),
                    WindowManager.LayoutParams.WRAP_CONTENT
                )
            }
        }
        dialog.show()
    }

    private fun toggleSubmitMenu() {
        val currentPopup = submitMenuPopup
        if (currentPopup?.isShowing == true) {
            currentPopup.dismiss()
            return
        }
        showSubmitMenuPopup()
    }

    private fun showSubmitMenuPopup() {
        val popupView = layoutInflater.inflate(R.layout.popup_sell_submit_options, null, false)
        val cashView = popupView.findViewById<TextView>(R.id.psso_tv_cash)
        val popupWidth = resources.getDimensionPixelSize(R.dimen.dp_88)
        val popup = PopupWindow(
            popupView,
            popupWidth,
            WindowManager.LayoutParams.WRAP_CONTENT,
            true
        )
        popup.setBackgroundDrawable(ColorDrawable(Color.TRANSPARENT))
        popup.isOutsideTouchable = true
        cashView.setOnClickListener {
            popup.dismiss()
            submitSale()
        }
        popup.setOnDismissListener {
            if (submitMenuPopup === popup) {
                submitMenuPopup = null
            }
        }
        submitMenuPopup = popup
        popup.showAsDropDown(
            rightView,
            rightView.width - popupWidth,
            0
        )
    }

    private fun deleteAllGoods() {
        goodsList.clear()
        refreshGoodsTable()
        toast(getString(R.string.sell_delete_all_success))
    }

    private fun fillOnlinePayCode(payCode: String) {
        showOnlinePayDialog(payCode = payCode)
    }

    private fun showOnlinePayDialog(
        resetInput: Boolean = false,
        openScannerAfterShow: Boolean = false,
        payCode: String? = null
    ) {
        if (goodsList.isEmpty()) {
            toast(getString(R.string.sell_submit_empty))
            return
        }
        val dialog = onlinePayDialog ?: createOnlinePayDialog().also {
            onlinePayDialog = it
        }
        bindOnlinePayDialog(resetInput = resetInput, payCode = payCode)
        if (!dialog.isShowing && !isFinishing && !isDestroyed) {
            dialog.show()
            dialog.window?.apply {
                setBackgroundDrawable(ColorDrawable(Color.TRANSPARENT))
                setLayout(
                    (resources.displayMetrics.widthPixels * ONLINE_PAY_DIALOG_WIDTH_RATIO).toInt(),
                    WindowManager.LayoutParams.WRAP_CONTENT
                )
            }
        }
        if (openScannerAfterShow) {
            rootView.post {
                if (!isFinishing && !isDestroyed && dialog.isShowing) {
                    scanPayLauncher.launch(ScanPayActivity.createIntent(this))
                }
            }
        }
    }

    private fun createOnlinePayDialog(): AlertDialog {
        val dialogView = layoutInflater.inflate(R.layout.dialog_sell_online_pay, null, false)
        val orderAmountView = dialogView.findViewById<TextView>(R.id.dsop_tv_order_amount)
        val receivableAmountView =
            dialogView.findViewById<TextView>(R.id.dsop_tv_receivable_amount)
        val payCodeEdit = dialogView.findViewById<AppCompatEditText>(R.id.dsop_et_pay_code)
        val closeButton = dialogView.findViewById<Button>(R.id.dsop_btn_close)
        val payButton = dialogView.findViewById<Button>(R.id.dsop_btn_pay)
        val scanActionView = dialogView.findViewById<View>(R.id.dsop_iv_scan)

        val dialog = AlertDialog.Builder(this)
            .setView(dialogView)
            .setCancelable(false)
            .create()

        onlinePayOrderAmountView = orderAmountView
        onlinePayReceivableAmountView = receivableAmountView
        onlinePayCodeEdit = payCodeEdit

        closeButton.setOnClickListener { dialog.dismiss() }
        payButton.setOnClickListener { submitOnlinePay() }
        scanActionView.setOnClickListener {
            if (goodsList.isEmpty()) {
                toast(getString(R.string.sell_submit_empty))
                return@setOnClickListener
            }
            scanPayLauncher.launch(ScanPayActivity.createIntent(this))
        }
        dialog.setOnDismissListener {
            onlinePayDialog = null
            onlinePayOrderAmountView = null
            onlinePayReceivableAmountView = null
            onlinePayCodeEdit = null
        }
        return dialog
    }

    private fun bindOnlinePayDialog(resetInput: Boolean, payCode: String?) {
        val amountText = buildPayAmount(goodsList.sumOf { it.amount })
        onlinePayOrderAmountView?.text = amountText
        onlinePayReceivableAmountView?.text = amountText
        if (resetInput) {
            onlinePayCodeEdit?.setText("")
        }
        if (payCode != null) {
            onlinePayCodeEdit?.setText(payCode)
            onlinePayCodeEdit?.setSelection(payCode.length)
        }
    }

    private fun buildPayAmount(totalAmount: Double): String {
        return getString(
            R.string.sell_online_pay_amount_value,
            payAmountFormatter.format(totalAmount)
        )
    }

    private fun submitOnlinePay() {
        val payCode = onlinePayCodeEdit?.text?.toString()?.trim().orEmpty()
        if (payCode.isBlank()) {
            toast(getString(R.string.sell_pay_code_empty))
            onlinePayCodeEdit?.requestFocus()
            return
        }
        onlinePayDialog?.dismiss()
        showLoadingDialog(
            getString(R.string.sell_pay_loading),
            getString(R.string.sell_pay_loading_hint)
        )
        rootView.postDelayed({
            if (isFinishing || isDestroyed) {
                return@postDelayed
            }
            hideLoadingDialog()
            goodsList.clear()
            refreshGoodsTable()
            toast(
                getString(
                    R.string.sell_pay_success,
                    payCode.takeLast(6)
                )
            )
        }, SUBMIT_DELAY)
    }

    private fun submitSale() {
        if (goodsList.isEmpty()) {
            toast(getString(R.string.sell_submit_empty))
            return
        }
        showLoadingDialog(
            getString(R.string.sell_submit_loading),
            getString(R.string.sell_submit_loading_hint)
        )
        rootView.postDelayed({
            if (isFinishing || isDestroyed) {
                return@postDelayed
            }
            hideLoadingDialog()
            goodsList.clear()
            refreshGoodsTable()
            toast(getString(R.string.sell_submit_success, userName, trainNo))
        }, SUBMIT_DELAY)
    }

    private fun readSellQuantity(): Int {
        val quantity = sellCountEdit.text?.toString()?.trim()?.toIntOrNull() ?: DEFAULT_SELL_COUNT
        val safeQuantity = quantity.coerceAtLeast(DEFAULT_SELL_COUNT)
        if (safeQuantity != quantity) {
            sellCountEdit.setText(safeQuantity.toString())
            sellCountEdit.setSelection(sellCountEdit.text?.length ?: 0)
        }
        return safeQuantity
    }

    private fun updateSummary() {
        val totalCount = goodsList.sumOf { it.quantity }
        val totalAmount = goodsList.sumOf { it.amount }
        totalView.text = getString(
            R.string.sell_total_summary,
            totalCount,
            amountFormatter.format(totalAmount)
        )
    }

    private fun showLoadingDialog(message: String, hint: String?) {
        val dialog = loadingDialog ?: AlertDialog.Builder(this)
            .setView(layoutInflater.inflate(R.layout.dialog_login_loading, null, false))
            .setCancelable(false)
            .create()
            .also {
                it.window?.setBackgroundDrawable(ColorDrawable(Color.TRANSPARENT))
                it.window?.attributes = it.window?.attributes?.apply {
                    windowAnimations = R.style.ProgressAnim
                }
                loadingDialog = it
            }

        if (!dialog.isShowing && !isFinishing && !isDestroyed) {
            dialog.show()
        }
        dialog.findViewById<TextView>(R.id.tv_loading_title)?.text = message
        dialog.findViewById<TextView>(R.id.tv_loading_hint)?.apply {
            text = hint
            visibility = if (hint.isNullOrBlank()) View.GONE else View.VISIBLE
        }
    }

    private fun hideLoadingDialog() {
        loadingDialog?.dismiss()
    }

    private fun toast(message: String) {
        Toast.makeText(this, message, Toast.LENGTH_SHORT).show()
    }

    private fun updateCashReturnChecked(checked: Boolean) {
        ignoreCashReturnChange = true
        cashReturnCheckBox.isChecked = checked
        ignoreCashReturnChange = false
    }

    override fun onDestroy() {
        submitMenuPopup?.dismiss()
        submitMenuPopup = null
        onlinePayDialog?.dismiss()
        onlinePayDialog = null
        hideLoadingDialog()
        loadingDialog = null
        super.onDestroy()
    }

    companion object {
        private const val DEFAULT_SELL_COUNT = 1
        private const val SUBMIT_DELAY = 650L
        private const val DEFAULT_TRAIN_NO = "DJ5902"
        private const val DEFAULT_ROAD_DATE = "20260408"
        private const val CASH_RETURN_DIALOG_WIDTH_RATIO = 0.9f
        private const val ONLINE_PAY_DIALOG_WIDTH_RATIO = 0.82f
    }
}
