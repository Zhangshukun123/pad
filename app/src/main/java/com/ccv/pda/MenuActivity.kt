package com.ccv.pda

import android.content.Intent
import android.graphics.Color
import android.graphics.drawable.ColorDrawable
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.PopupWindow
import android.widget.TextView
import android.widget.Toast
import androidx.annotation.StringRes
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.google.android.flexbox.FlexboxLayout

class MenuActivity : AppCompatActivity() {

    private lateinit var titleView: TextView
    private lateinit var leftView: TextView
    private lateinit var rightView: TextView
    private lateinit var routeSelectorView: View
    private lateinit var headerUserNameView: TextView
    private lateinit var headerTrainNoView: TextView
    private lateinit var headerRoadDateView: TextView
    private lateinit var otherFoldView: TextView
    private lateinit var otherFlexLayout: FlexboxLayout

    private lateinit var employeeCode: String
    private lateinit var userName: String
    private lateinit var currentRoute: FakeCrossRoad

    private var selectTrainPopup: PopupWindow? = null
    private var loadingDialog: AlertDialog? = null
    private var isOtherExpanded = false

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_menu)
        bindViews()
        initTitleBar()
        bindContent()
        initListeners()
        showEnabledSections()
        bindMenuButtons()
        renderOtherSection()
    }

    private fun bindViews() {
        titleView = findViewById(R.id.app_title_tv_title)
        leftView = findViewById(R.id.app_title_tv_left)
        rightView = findViewById(R.id.app_title_tv_right)
        routeSelectorView = findViewById(R.id.cl_user)
        headerUserNameView = findViewById(R.id.aui_tv_user_name)
        headerTrainNoView = findViewById(R.id.aui_tv_train_name)
        headerRoadDateView = findViewById(R.id.aui_tv_train_date)
        otherFoldView = findViewById(R.id.am_tv_fold_other)
        otherFlexLayout = findViewById(R.id.am_fb_other)
    }

    private fun initTitleBar() {
        titleView.text = getString(R.string.menu_title)
        leftView.visibility = View.INVISIBLE
        rightView.text = getString(R.string.title_setting)
        rightView.visibility = View.VISIBLE
    }

    private fun bindContent() {
        employeeCode = intent.getStringExtra(EXTRA_EMPLOYEE_CODE).orEmpty()
        userName = intent.getStringExtra(EXTRA_USER_NAME).orEmpty()
        currentRoute = FakeCrossRoad(
            roadId = intent.getStringExtra(EXTRA_ROAD_ID).orEmpty(),
            trainNo = intent.getStringExtra(EXTRA_TRAIN_NO).orEmpty(),
            teamName = intent.getStringExtra(EXTRA_TEAM_NAME).orEmpty(),
            roadDate = intent.getStringExtra(EXTRA_ROAD_DATE).orEmpty(),
            employeeCode = employeeCode,
            employeeName = userName
        )
        bindRouteContent()
    }

    private fun initListeners() {
        routeSelectorView.setOnClickListener { showSelectCurrentTrainPopup() }
        rightView.setOnClickListener {
            startActivity(Intent(this, SettingActivity::class.java))
        }
        otherFoldView.setOnClickListener {
            isOtherExpanded = !isOtherExpanded
            renderOtherSection()
        }
    }

    private fun bindRouteContent() {
        headerUserNameView.text = userName
        headerTrainNoView.text = currentRoute.trainNo
        headerRoadDateView.text = currentRoute.roadDate
    }

    private fun showEnabledSections() {
        findViewById<View>(R.id.am_cl_sell).visibility = View.VISIBLE
        findViewById<View>(R.id.am_cl_order).visibility = View.VISIBLE
        findViewById<View>(R.id.cl_query_sell).visibility = View.VISIBLE
        findViewById<View>(R.id.am_cl_query_other).visibility = View.VISIBLE
        findViewById<View>(R.id.am_cl_receipt).visibility = View.GONE
        findViewById<View>(R.id.cl_other).visibility = View.VISIBLE

        val visibleButtons = intArrayOf(
            R.id.am_btn_common_sell,
            R.id.am_btn_online_return,
            R.id.am_btn_sell_table,
            R.id.am_btn_query_sell_detail,
            R.id.am_btn_query_bill,
            R.id.am_btn_query_order,
            R.id.am_btn_query_sell_getmoney,
            R.id.am_btn_query_warehouse,
            R.id.am_btn_down_common_data,
            R.id.am_btn_quitsystem
        )
        visibleButtons.forEach { findViewById<View>(it).visibility = View.VISIBLE }

        val hiddenButtons = intArrayOf(
            R.id.am_btn_vip_largess,
            R.id.am_btn_sell_counter,
            R.id.am_btn_work_meal_write_off,
            R.id.am_btn_goods_option,
            R.id.am_btn_update_order_pay_statue,
            R.id.am_btn_invoicing,
            R.id.am_btn_query_etc_all,
            R.id.am_btn_query_table,
            R.id.am_btn_make_car_add,
            R.id.am_btn_make_quit_car,
            R.id.am_btn_make_add_yidi,
            R.id.am_btn_make_quit_class,
            R.id.am_btn_team_handover,
            R.id.am_btn_sell_12306,
            R.id.am_btn_quick_handover,
            R.id.am_btn_down_table_date,
            R.id.am_btn_coming_upload,
            R.id.am_btn_revise_password,
            R.id.am_btn_take_off,
            R.id.am_btn_check_update,
            R.id.am_btn_gtpc
        )
        hiddenButtons.forEach { findViewById<View>(it).visibility = View.GONE }
    }

    private fun bindMenuButtons() {
        findViewById<View>(R.id.am_btn_common_sell).setOnClickListener {
            startActivity(
                Intent(this, SellActivity::class.java).apply {
                    putExtra(EXTRA_EMPLOYEE_CODE, employeeCode)
                    putExtra(EXTRA_USER_NAME, userName)
                    putExtra(EXTRA_ROAD_ID, currentRoute.roadId)
                    putExtra(EXTRA_TRAIN_NO, currentRoute.trainNo)
                    putExtra(EXTRA_TEAM_NAME, currentRoute.teamName)
                    putExtra(EXTRA_ROAD_DATE, currentRoute.roadDate)
                }
            )
        }
        findViewById<View>(R.id.am_btn_online_return).setOnClickListener {
            startActivity(
                OnlineRefundActivity.createIntent(
                    activity = this,
                    employeeCode = employeeCode,
                    userName = userName,
                    roadId = currentRoute.roadId,
                    trainNo = currentRoute.trainNo,
                    teamName = currentRoute.teamName,
                    roadDate = currentRoute.roadDate
                )
            )
        }
        findViewById<View>(R.id.am_btn_sell_table).setOnClickListener {
            startActivity(
                SaleAnalysisActivity.createIntent(
                    context = this,
                    employeeCode = employeeCode,
                    userName = userName,
                    roadId = currentRoute.roadId,
                    trainNo = currentRoute.trainNo,
                    teamName = currentRoute.teamName,
                    roadDate = currentRoute.roadDate
                )
            )
        }
        findViewById<View>(R.id.am_btn_query_sell_detail).setOnClickListener {
            startActivity(
                QuerySellDetailActivity.createIntent(
                    context = this,
                    employeeCode = employeeCode,
                    userName = userName,
                    roadId = currentRoute.roadId,
                    trainNo = currentRoute.trainNo,
                    teamName = currentRoute.teamName,
                    roadDate = currentRoute.roadDate
                )
            )
        }
        findViewById<View>(R.id.am_btn_query_bill).setOnClickListener {
            startActivity(
                QueryBillActivity.createIntent(
                    context = this,
                    employeeCode = employeeCode,
                    userName = userName,
                    roadId = currentRoute.roadId,
                    trainNo = currentRoute.trainNo,
                    teamName = currentRoute.teamName,
                    roadDate = currentRoute.roadDate
                )
            )
        }
        findViewById<View>(R.id.am_btn_query_order).setOnClickListener {
            startActivity(
                QueryOrderActivity.createIntent(
                    context = this,
                    employeeCode = employeeCode,
                    userName = userName,
                    roadId = currentRoute.roadId,
                    trainNo = currentRoute.trainNo,
                    teamName = currentRoute.teamName,
                    roadDate = currentRoute.roadDate
                )
            )
        }
        findViewById<View>(R.id.am_btn_query_sell_getmoney).setOnClickListener {
            startActivity(
                QuerySellGetMoneyActivity.createIntent(
                    context = this,
                    employeeCode = employeeCode,
                    userName = userName,
                    roadId = currentRoute.roadId,
                    trainNo = currentRoute.trainNo,
                    teamName = currentRoute.teamName,
                    roadDate = currentRoute.roadDate
                )
            )
        }
        bindFakeAction(R.id.am_btn_query_warehouse, R.string.menu_query_warehouse_stock)

        findViewById<View>(R.id.am_btn_down_common_data).setOnClickListener {
            startActivity(Intent(this, DownloadActivity::class.java))
        }
        findViewById<View>(R.id.am_btn_quitsystem).setOnClickListener {
            openLoginPage()
        }
    }

    private fun bindFakeAction(viewId: Int, @StringRes titleRes: Int) {
        findViewById<View>(viewId).setOnClickListener {
            toast(getString(R.string.menu_fake_action_toast, getString(titleRes)))
        }
    }

    private fun renderOtherSection() {
        otherFlexLayout.visibility = if (isOtherExpanded) View.VISIBLE else View.GONE
        otherFoldView.isClickable = true
        otherFoldView.isFocusable = true
        otherFoldView.text = getString(
            if (isOtherExpanded) R.string.menu_other_collapse else R.string.menu_other_expand
        )
        otherFoldView.setCompoundDrawablesWithIntrinsicBounds(
            0,
            0,
            if (isOtherExpanded) R.mipmap.ic_fold else R.mipmap.ic_expanded,
            0
        )
    }

    private fun showSelectCurrentTrainPopup() {
        val routes = FakeLoginDataRepository.crossRoadsFor(employeeCode, userName)
        val contentView = selectTrainPopup?.contentView ?: LayoutInflater.from(this)
            .inflate(R.layout.popup_select_current_train, null, false)
        val popup = selectTrainPopup ?: PopupWindow(
            contentView,
            routeSelectorView.width.coerceAtLeast(resources.displayMetrics.widthPixels / 2),
            ViewGroup.LayoutParams.WRAP_CONTENT,
            true
        ).also {
            it.isTouchable = true
            it.isFocusable = true
            it.isOutsideTouchable = true
            it.setBackgroundDrawable(ColorDrawable(Color.WHITE))
            selectTrainPopup = it
        }

        val recyclerView = contentView.findViewById<RecyclerView>(R.id.recyclerView2)
        recyclerView.layoutManager = LinearLayoutManager(this)
        recyclerView.adapter = SelectCurrentTrainAdapter(routes, currentRoute.roadId) { route ->
            popup.dismiss()
            handleCurrentTrainSelected(route)
        }

        popup.width = routeSelectorView.width.coerceAtLeast(resources.displayMetrics.widthPixels / 2)
        if (!popup.isShowing) {
            popup.showAsDropDown(routeSelectorView, 0, 0)
        }
    }

    private fun handleCurrentTrainSelected(route: FakeCrossRoad) {
        if (route.roadId == currentRoute.roadId) {
            toast(getString(R.string.menu_current_train_same, route.trainNo))
            return
        }

        AlertDialog.Builder(this)
            .setTitle(R.string.dialog_notice)
            .setMessage(
                getString(
                    R.string.menu_switch_train_message,
                    route.trainNo,
                    route.teamName,
                    route.roadDate
                )
            )
            .setNegativeButton(R.string.action_cancel, null)
            .setPositiveButton(R.string.action_confirm) { _, _ ->
                showDownloadPickingListDialog(
                    onSkipDownload = {
                        currentRoute = route
                        bindRouteContent()
                        toast(getString(R.string.menu_current_train_switched, route.trainNo))
                        toast(getString(R.string.toast_download_picking_list_skipped))
                    },
                    onDownload = {
                        currentRoute = route
                        bindRouteContent()
                        fakeDownloadPickingList {
                            toast(getString(R.string.menu_current_train_switched, route.trainNo))
                            toast(getString(R.string.toast_download_picking_list_success))
                        }
                    }
                )
            }
            .show()
    }

    private fun showDownloadPickingListDialog(
        onSkipDownload: () -> Unit,
        onDownload: () -> Unit
    ) {
        AlertDialog.Builder(this)
            .setMessage(R.string.dialog_download_picking_list)
            .setNegativeButton(R.string.action_cancel) { dialog, _ ->
                dialog.dismiss()
                onSkipDownload()
            }
            .setPositiveButton(R.string.action_confirm) { dialog, _ ->
                dialog.dismiss()
                onDownload()
            }
            .show()
    }

    private fun fakeDownloadPickingList(onComplete: () -> Unit) {
        runFakeLoading(
            getString(R.string.download_picking_list_loading),
            getString(R.string.download_picking_list_loading_hint),
            onComplete
        )
    }

    private fun runFakeLoading(
        title: String,
        hint: String?,
        onComplete: () -> Unit
    ) {
        showLoadingDialog(title, hint)
        routeSelectorView.postDelayed({
            if (isFinishing || isDestroyed) {
                return@postDelayed
            }
            hideLoadingDialog()
            onComplete()
        }, 650)
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

    private fun openLoginPage() {
        startActivity(Intent(this, MainActivity::class.java).apply {
            flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK
        })
    }

    private fun toast(message: String) {
        Toast.makeText(this, message, Toast.LENGTH_SHORT).show()
    }

    override fun onDestroy() {
        hideLoadingDialog()
        loadingDialog = null
        selectTrainPopup?.dismiss()
        selectTrainPopup = null
        super.onDestroy()
    }

    companion object {
        const val EXTRA_EMPLOYEE_CODE = "employee_code"
        const val EXTRA_USER_NAME = "user_name"
        const val EXTRA_ROAD_ID = "road_id"
        const val EXTRA_TRAIN_NO = "train_no"
        const val EXTRA_TEAM_NAME = "team_name"
        const val EXTRA_ROAD_DATE = "road_date"
    }
}
