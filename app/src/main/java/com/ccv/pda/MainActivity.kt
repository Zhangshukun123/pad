package com.ccv.pda

import android.content.Intent
import android.graphics.Bitmap
import android.graphics.Color
import android.graphics.drawable.ColorDrawable
import android.os.Bundle
import android.util.TypedValue
import android.view.Gravity
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.view.inputmethod.EditorInfo
import android.widget.Button
import android.widget.ImageView
import android.widget.PopupWindow
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.core.widget.doAfterTextChanged
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.ayma.base.widget.ClearEditText
import com.google.android.material.textfield.TextInputLayout
import com.google.zxing.BarcodeFormat
import com.google.zxing.qrcode.QRCodeWriter
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter

class MainActivity : AppCompatActivity() {

    private lateinit var titleView: TextView
    private lateinit var leftView: TextView
    private lateinit var rightView: TextView
    private lateinit var versionView: TextView
    private lateinit var userCodeView: ClearEditText
    private lateinit var userNameView: TextView
    private lateinit var passwordView: ClearEditText
    private lateinit var passwordLayout: TextInputLayout
    private lateinit var loginButton: Button
    private lateinit var snButton: Button
    private lateinit var settingsStore: FakePdaSettingsStore

    private var selectCrossRoadPopup: PopupWindow? = null
    private var loginLoadingDialog: AlertDialog? = null
    private var qrCodeDialog: AlertDialog? = null
    private var qrCodeDialogView: View? = null
    private var cachedDeviceSn: String = ""

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_login)
        settingsStore = FakePdaSettingsStore(this).also { it.ensureDefaults(this) }
        bindViews()
        initTitleBar()
        initVersion()
        initListeners()
        initDefaultLoginUser()
        preloadDeviceSn()
    }

    override fun onDestroy() {
        loginLoadingDialog?.dismiss()
        qrCodeDialog?.dismiss()
        dismissSelectCrossRoadPopup()
        super.onDestroy()
    }

    private fun bindViews() {
        titleView = findViewById(R.id.app_title_tv_title)
        leftView = findViewById(R.id.app_title_tv_left)
        rightView = findViewById(R.id.app_title_tv_right)
        versionView = findViewById(R.id.al_tv_version)
        userCodeView = findViewById(R.id.al_et_userNumber)
        userNameView = findViewById(R.id.al_tv_userName)
        passwordView = findViewById(R.id.al_et_userPassword)
        passwordLayout = findViewById(R.id.al_til_user_pwd)
        loginButton = findViewById(R.id.al_btn_login)
        snButton = findViewById(R.id.al_btn_sn)
    }

    private fun initTitleBar() {
        titleView.text = getString(R.string.login_title)
        leftView.visibility = View.GONE
        rightView.visibility = View.VISIBLE
        rightView.text = getString(R.string.title_setting)
        rightView.setOnClickListener {
            startActivity(Intent(this, SettingActivity::class.java))
        }
    }

    private fun initVersion() {
        val versionName = try {
            packageManager.getPackageInfo(packageName, 0).versionName ?: "1.0.0.1"
        } catch (_: Exception) {
            "1.0.0.1"
        }
        versionView.text = getString(R.string.version_format, versionName)
        passwordView.setClearIconEnabled(false)
        passwordLayout.endIconMode = TextInputLayout.END_ICON_PASSWORD_TOGGLE
    }

    private fun initListeners() {
        userCodeView.doAfterTextChanged {
            val user = findUser(it?.toString())
            userNameView.text = user?.userName.orEmpty()
        }

        userCodeView.setOnEditorActionListener { _, actionId, _ ->
            if (actionId == EditorInfo.IME_ACTION_NEXT) {
                passwordView.requestFocus()
                true
            } else {
                false
            }
        }

        passwordView.setOnEditorActionListener { _, actionId, _ ->
            if (actionId == EditorInfo.IME_ACTION_DONE) {
                performFakeLogin()
                true
            } else {
                false
            }
        }

        loginButton.setOnClickListener {
            performFakeLogin()
        }

        snButton.setOnClickListener {
            showSnCode()
        }
    }

    private fun initDefaultLoginUser() {
        val defaultLoginUser = FakeLoginDataRepository.defaultLoginUser
        userCodeView.setText(defaultLoginUser.employeeCode)
        passwordView.setText(defaultLoginUser.password)
        userNameView.text = defaultLoginUser.userName
        userCodeView.setSelection(userCodeView.text?.length ?: 0)
        passwordView.setSelection(passwordView.text?.length ?: 0)
    }

    private fun preloadDeviceSn() {
        val serialNumber = readSystemDeviceSn()
        if (!DeviceSnUtil.isSnEmpty(serialNumber)) {
            cacheDeviceSn(serialNumber)
            return
        }
        DeviceSnUtil.getSerialNumberAsync(
            applicationContext,
            onSuccess = { serial ->
                cacheDeviceSn(resolveAsyncDeviceSn(serial))
            },
            onError = {
                cacheDeviceSn(resolveAsyncDeviceSn(""))
            }
        )
    }

    private fun performFakeLogin() {
        val employeeCode = userCodeView.text?.toString().orEmpty().trim()
        val password = passwordView.text?.toString().orEmpty()
        when {
            employeeCode.isEmpty() -> toast(getString(R.string.toast_input_employee_code))
            password.isEmpty() -> toast(getString(R.string.toast_input_password))
            else -> {
                val user = findUser(employeeCode)
                when {
                    user == null -> toast(getString(R.string.toast_employee_not_found))
                    user.password != password -> toast(getString(R.string.toast_password_incorrect))
                    else -> handleLoginSuccess(user)
                }
            }
        }
    }

    private fun handleLoginSuccess(user: FakeUser) {
        showLoginLoading {
            val crossRoads = FakeLoginDataRepository.crossRoadsFor(user)
            if (crossRoads.size == 1) {
                showCrossRoadConfirmDialog(user, crossRoads.first())
            } else {
                showSelectCrossRoadPopup(user, crossRoads)
            }
        }
    }

    private fun showSelectCrossRoadPopup(user: FakeUser, crossRoads: List<FakeCrossRoad>) {
        val contentView = selectCrossRoadPopup?.contentView ?: LayoutInflater.from(this)
            .inflate(R.layout.popup_login_select_cross_road, null, false)
        val popup = selectCrossRoadPopup ?: PopupWindow(
            contentView,
            ViewGroup.LayoutParams.MATCH_PARENT,
            ViewGroup.LayoutParams.MATCH_PARENT,
            true
        ).also {
            it.isTouchable = true
            it.isFocusable = true
            it.isOutsideTouchable = false
            it.setBackgroundDrawable(ColorDrawable(Color.TRANSPARENT))
            it.animationStyle = R.style.PopupWindowAnimation
            selectCrossRoadPopup = it
        }

        val cancelView = contentView.findViewById<TextView>(R.id.tv_cancel)
        val updateButton = contentView.findViewById<Button>(R.id.btn_update_cross_road)
        val recyclerView = contentView.findViewById<RecyclerView>(R.id.rlv_cross)

        cancelView.setOnClickListener {
            dismissSelectCrossRoadPopup()
        }

        updateButton.setOnClickListener {
            recyclerView.adapter = SelectCrossRoadAdapter(crossRoads) { route ->
                dismissSelectCrossRoadPopup()
                showCrossRoadConfirmDialog(user, route)
            }
            toast(getString(R.string.toast_cross_road_updated))
        }

        recyclerView.layoutManager = LinearLayoutManager(this)
        recyclerView.adapter = SelectCrossRoadAdapter(crossRoads) { route ->
            dismissSelectCrossRoadPopup()
            showCrossRoadConfirmDialog(user, route)
        }

        if (!popup.isShowing) {
            popup.showAtLocation(findViewById(android.R.id.content), Gravity.BOTTOM, 0, 0)
        }
    }

    private fun showCrossRoadConfirmDialog(user: FakeUser, route: FakeCrossRoad) {
        AlertDialog.Builder(this)
            .setTitle(R.string.dialog_notice)
            .setMessage(buildCrossRoadConfirmMessage(route))
            .setNegativeButton(R.string.action_cancel, null)
            .setNeutralButton(R.string.route_action_update) { dialog, _ ->
                dialog.dismiss()
                toast(getString(R.string.toast_cross_road_updated))
                showSelectCrossRoadPopup(user, FakeLoginDataRepository.crossRoadsFor(user))
            }
            .setPositiveButton(R.string.action_confirm) { dialog, _ ->
                dialog.dismiss()
                showDownloadPickingListDialog(
                    onSkipDownload = {
                        toast(getString(R.string.toast_download_picking_list_skipped))
                        openMenu(user, route)
                    },
                    onDownload = {
                        fakeDownloadPickingList {
                            toast(getString(R.string.toast_download_picking_list_success))
                            openMenu(user, route)
                        }
                    }
                )
            }
            .show()
    }

    private fun buildCrossRoadConfirmMessage(route: FakeCrossRoad): String {
        val now = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMddHHmm"))
        return buildString {
            append('\n')
            append(getString(R.string.login_confirm_current_train))
            append(route.trainNo)
            append("\n\n")
            append(getString(R.string.login_confirm_road_date))
            append(route.roadDate)
            append("\n\n")
            append(getString(R.string.login_confirm_current_time))
            append(now)
        }
    }

    private fun showSnCode() {
        val serialNumber = readAvailableDeviceSn()
        if (!DeviceSnUtil.isSnEmpty(serialNumber)) {
            showSnQrCodeDialog(serialNumber)
            return
        }

        showLoadingDialog(getString(R.string.sn_loading), null)
        DeviceSnUtil.getSerialNumberAsync(
            applicationContext,
            onSuccess = { serial ->
                hideLoadingDialog()
                val finalSn = resolveAsyncDeviceSn(serial)
                if (DeviceSnUtil.isSnEmpty(finalSn)) {
                    showSingleNotice(getString(R.string.sn_empty_unable_generate))
                } else {
                    showSnQrCodeDialog(finalSn)
                }
            },
            onError = { throwable ->
                hideLoadingDialog()
                val finalSn = resolveAsyncDeviceSn("")
                if (DeviceSnUtil.isSnEmpty(finalSn)) {
                    showSingleNotice(
                        getString(
                            R.string.sn_fetch_failed,
                            throwable.message ?: getString(R.string.action_reenter)
                        )
                    )
                } else {
                    showSnQrCodeDialog(finalSn)
                }
            }
        )
    }

    private fun showLoginLoading(onComplete: () -> Unit) {
        loginButton.isEnabled = false
        snButton.isEnabled = false
        showLoadingDialog(
            message = getString(R.string.login_loading),
            hint = getString(R.string.login_loading_hint)
        )

        loginButton.postDelayed({
            if (isFinishing || isDestroyed) {
                return@postDelayed
            }
            hideLoadingDialog()
            loginButton.isEnabled = true
            snButton.isEnabled = true
            onComplete()
        }, 650)
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
        showLoadingDialog(
            message = getString(R.string.download_picking_list_loading),
            hint = getString(R.string.download_picking_list_loading_hint)
        )
        loginButton.postDelayed({
            if (isFinishing || isDestroyed) {
                return@postDelayed
            }
            hideLoadingDialog()
            onComplete()
        }, 650)
    }

    private fun openMenu(user: FakeUser, route: FakeCrossRoad) {
        val intent = Intent(this, MenuActivity::class.java).apply {
            putExtra(MenuActivity.EXTRA_EMPLOYEE_CODE, user.employeeCode)
            putExtra(MenuActivity.EXTRA_USER_NAME, user.userName)
            putExtra(MenuActivity.EXTRA_ROAD_ID, route.roadId)
            putExtra(MenuActivity.EXTRA_TRAIN_NO, route.trainNo)
            putExtra(MenuActivity.EXTRA_TEAM_NAME, route.teamName)
            putExtra(MenuActivity.EXTRA_ROAD_DATE, route.roadDate)
        }
        startActivity(intent)
        finish()
    }

    private fun dismissSelectCrossRoadPopup() {
        selectCrossRoadPopup?.dismiss()
        selectCrossRoadPopup = null
    }

    private fun showLoadingDialog(message: String, hint: String?) {
        val dialog = loginLoadingDialog ?: AlertDialog.Builder(this)
            .setView(layoutInflater.inflate(R.layout.dialog_login_loading, null, false))
            .setCancelable(false)
            .create()
            .also {
                it.window?.setBackgroundDrawable(ColorDrawable(Color.TRANSPARENT))
                it.window?.attributes = it.window?.attributes?.apply {
                    windowAnimations = R.style.ProgressAnim
                }
                loginLoadingDialog = it
            }

        dialog.findViewById<TextView>(R.id.tv_loading_title)?.text = message
        dialog.findViewById<TextView>(R.id.tv_loading_hint)?.apply {
            text = hint.orEmpty()
            visibility = if (hint.isNullOrBlank()) View.GONE else View.VISIBLE
        }

        if (!isFinishing && !isDestroyed && !dialog.isShowing) {
            dialog.show()
            dialog.findViewById<TextView>(R.id.tv_loading_title)?.text = message
            dialog.findViewById<TextView>(R.id.tv_loading_hint)?.apply {
                text = hint.orEmpty()
                visibility = if (hint.isNullOrBlank()) View.GONE else View.VISIBLE
            }
        }
    }

    private fun hideLoadingDialog() {
        loginLoadingDialog?.dismiss()
    }

    private fun showSnQrCodeDialog(snCode: String) {
        cacheDeviceSn(snCode)
        val qrBitmap = createQrBitmap(snCode)
        val contentView = qrCodeDialogView ?: layoutInflater
            .inflate(R.layout.dialog_login_show_qr_code, null, false)
            .also { qrCodeDialogView = it }

        if (qrCodeDialog == null) {
            qrCodeDialog = AlertDialog.Builder(this)
                .setView(contentView)
                .setCancelable(false)
                .create()
        }

        contentView.findViewById<View>(R.id.iv_close).setOnClickListener {
            qrCodeDialog?.dismiss()
        }
        contentView.findViewById<TextView>(R.id.tv_tips).text = snCode
        contentView.findViewById<ImageView>(R.id.iv_qr_code).setImageBitmap(qrBitmap)

        if (!isFinishing && !isDestroyed) {
            qrCodeDialog?.show()
        }
    }

    private fun createQrBitmap(content: String): Bitmap {
        val size = TypedValue.applyDimension(
            TypedValue.COMPLEX_UNIT_DIP,
            220f,
            resources.displayMetrics
        ).toInt()
        val matrix = QRCodeWriter().encode(content, BarcodeFormat.QR_CODE, size, size)
        val pixels = IntArray(size * size)
        for (y in 0 until size) {
            val offset = y * size
            for (x in 0 until size) {
                pixels[offset + x] = if (matrix[x, y]) Color.BLACK else Color.WHITE
            }
        }
        return Bitmap.createBitmap(pixels, size, size, Bitmap.Config.ARGB_8888)
    }

    private fun readAvailableDeviceSn(): String {
        if (!DeviceSnUtil.isSnEmpty(cachedDeviceSn)) {
            return cachedDeviceSn
        }
        val serialNumber = readSystemDeviceSn()
        return if (DeviceSnUtil.isSnEmpty(serialNumber)) {
            ""
        } else {
            cacheDeviceSn(serialNumber)
        }
    }

    private fun readSystemDeviceSn(): String {
        return DeviceSnUtil.getSerialNumber(applicationContext).trim()
    }

    private fun resolveAsyncDeviceSn(serialNumber: String): String {
        val deviceSn = serialNumber.trim()
        return when {
            !DeviceSnUtil.isSnEmpty(deviceSn) -> deviceSn
            !DeviceSnUtil.isSnEmpty(settingsStore.machineSn) -> settingsStore.machineSn.trim()
            else -> ""
        }
    }

    private fun cacheDeviceSn(snCode: String): String {
        val finalSn = snCode.trim()
        if (!DeviceSnUtil.isSnEmpty(finalSn)) {
            cachedDeviceSn = finalSn
            settingsStore.machineSn = finalSn
        }
        return finalSn
    }

    private fun showSingleNotice(message: String) {
        AlertDialog.Builder(this)
            .setTitle(R.string.dialog_notice)
            .setMessage(message)
            .setPositiveButton(R.string.action_confirm, null)
            .show()
    }

    private fun findUser(employeeCode: String?): FakeUser? {
        return FakeLoginDataRepository.findUser(employeeCode)
    }

    private fun toast(message: String) {
        Toast.makeText(this, message, Toast.LENGTH_SHORT).show()
    }
}
