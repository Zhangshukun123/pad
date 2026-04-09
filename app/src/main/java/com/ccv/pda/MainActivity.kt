package com.ccv.pda

import android.content.Intent
import android.graphics.Color
import android.graphics.drawable.ColorDrawable
import android.os.Bundle
import android.view.Gravity
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.view.inputmethod.EditorInfo
import android.widget.Button
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
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter

class MainActivity : AppCompatActivity() {

    private val fakeUsers = listOf(
        FakeUser("10001", "张三", "123456", "SN-CCV-10001"),
        FakeUser("10002", "李四", "888888", "SN-CCV-10002"),
        FakeUser("20001", "仓管测试员", "admin123", "SN-CCV-20001")
    )

    private val fakeCrossRoads = listOf(
        FakeCrossRoad("CR-001", "DJ5902", "动高1组", "20260408"),
        FakeCrossRoad("CR-002", "DJ7575", "动高1组", "20260407"),
        FakeCrossRoad("CR-003", "G9199", "动高1组", "20260406"),
        FakeCrossRoad("CR-004", "G7925A", "动高1组", "20260405")
    )

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

    private var selectCrossRoadPopup: PopupWindow? = null
    private var loginLoadingDialog: AlertDialog? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_login)
        bindViews()
        initTitleBar()
        initVersion()
        initListeners()
    }

    override fun onDestroy() {
        loginLoadingDialog?.dismiss()
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
            val user = findUser(userCodeView.text?.toString())
            if (user == null) {
                toast(getString(R.string.toast_input_valid_employee_code))
            } else {
                AlertDialog.Builder(this)
                    .setTitle(R.string.dialog_sn_code_title)
                    .setMessage(user.snCode)
                    .setPositiveButton(R.string.action_confirm, null)
                    .show()
            }
        }
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
            val crossRoads = fakeCrossRoadsFor(user)
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
                showSelectCrossRoadPopup(user, fakeCrossRoadsFor(user))
            }
            .setPositiveButton(R.string.action_confirm) { dialog, _ ->
                dialog.dismiss()
                openMenu(user, route)
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

    private fun showLoginLoading(onComplete: () -> Unit) {
        loginButton.isEnabled = false
        snButton.isEnabled = false

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

        if (!isFinishing && !isDestroyed && !dialog.isShowing) {
            dialog.show()
        }

        loginButton.postDelayed({
            if (isFinishing || isDestroyed) {
                return@postDelayed
            }
            dialog.dismiss()
            loginButton.isEnabled = true
            snButton.isEnabled = true
            onComplete()
        }, 650)
    }

    private fun openMenu(user: FakeUser, route: FakeCrossRoad) {
        val intent = Intent(this, MenuActivity::class.java).apply {
            putExtra(MenuActivity.EXTRA_EMPLOYEE_CODE, user.employeeCode)
            putExtra(MenuActivity.EXTRA_USER_NAME, user.userName)
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

    private fun fakeCrossRoadsFor(user: FakeUser): List<FakeCrossRoad> {
        return fakeCrossRoads.map { route ->
            route.copy(employeeCode = user.employeeCode, employeeName = user.userName)
        }
    }

    private fun findUser(employeeCode: String?): FakeUser? {
        val code = employeeCode?.trim().orEmpty()
        return fakeUsers.firstOrNull { it.employeeCode == code }
    }

    private fun toast(message: String) {
        Toast.makeText(this, message, Toast.LENGTH_SHORT).show()
    }
}

data class FakeUser(
    val employeeCode: String,
    val userName: String,
    val password: String,
    val snCode: String
)

data class FakeCrossRoad(
    val roadId: String,
    val trainNo: String,
    val teamName: String,
    val roadDate: String,
    val employeeCode: String = "",
    val employeeName: String = ""
)
