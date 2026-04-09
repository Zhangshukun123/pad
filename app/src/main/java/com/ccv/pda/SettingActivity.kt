package com.ccv.pda

import android.content.Intent
import android.os.Bundle
import android.view.View
import android.view.inputmethod.EditorInfo
import android.webkit.URLUtil
import android.widget.Button
import android.widget.EditText
import android.widget.ImageView
import android.widget.RadioButton
import android.widget.RadioGroup
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import com.ayma.base.widget.ClearEditText

class SettingActivity : AppCompatActivity() {

    private val store by lazy { FakePdaSettingsStore(this) }

    private lateinit var titleView: TextView
    private lateinit var leftView: TextView
    private lateinit var rightView: TextView
    private lateinit var passwordView: ClearEditText
    private lateinit var netAddressView: ClearEditText
    private lateinit var envGroup: RadioGroup
    private lateinit var productionView: RadioButton
    private lateinit var prepubView: RadioButton
    private lateinit var addressSummaryView: TextView
    private lateinit var machineModelView: TextView
    private lateinit var machineSnView: TextView
    private lateinit var versionView: TextView
    private lateinit var qrInputView: EditText
    private lateinit var getDataButton: Button
    private lateinit var saveButton: Button
    private lateinit var clearSalesButton: Button
    private lateinit var clearProfileButton: Button
    private lateinit var gtpcButton: Button
    private lateinit var startScanServiceButton: Button
    private lateinit var systemManagerButton: Button
    private lateinit var scanImageView: ImageView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_setting)
        store.ensureDefaults(this)
        bindViews()
        initTitleBar()
        initContent()
        initListeners()
    }

    private fun bindViews() {
        titleView = findViewById(R.id.app_title_tv_title)
        leftView = findViewById(R.id.app_title_tv_left)
        rightView = findViewById(R.id.app_title_tv_right)
        passwordView = findViewById(R.id.as_et_pwd)
        netAddressView = findViewById(R.id.as_et_net_address)
        envGroup = findViewById(R.id.as_rg_en_change)
        productionView = findViewById(R.id.as_rb_production)
        prepubView = findViewById(R.id.as_rb_prepub)
        addressSummaryView = findViewById(R.id.as_tv_address)
        machineModelView = findViewById(R.id.as_tv_machine_model)
        machineSnView = findViewById(R.id.as_tv_machine_serial_number)
        versionView = findViewById(R.id.as_tv_version)
        qrInputView = findViewById(R.id.as_et_qr)
        getDataButton = findViewById(R.id.as_btn_get_data)
        saveButton = findViewById(R.id.as_btn_save)
        clearSalesButton = findViewById(R.id.as_btn_clear)
        clearProfileButton = findViewById(R.id.as_btn_clear_simple)
        gtpcButton = findViewById(R.id.as_btn_gtpc)
        startScanServiceButton = findViewById(R.id.as_btn_start_scan_service)
        systemManagerButton = findViewById(R.id.as_btn_system_manager)
        scanImageView = findViewById(R.id.as_iv_scan)
    }

    private fun initTitleBar() {
        titleView.text = getString(R.string.title_setting)
        leftView.visibility = View.VISIBLE
        leftView.setOnClickListener { finish() }
        rightView.visibility = View.GONE
    }

    private fun initContent() {
        versionView.text = getString(R.string.version_format, appVersionName())
        machineModelView.text = getString(R.string.setting_fake_machine_model)
        machineSnView.text = store.machineSn
        qrInputView.setText(store.lastScanResult)
        passwordView.setClearIconEnabled(false)
        applyConfigLoadedState(store.isConfigLoaded)
        applyEnvironment(store.environment, store.baseUrl.ifBlank { store.defaultUrl(this) }, syncInput = true)
    }

    private fun initListeners() {
        startScanServiceButton.setOnClickListener {
            toast(getString(R.string.toast_fake_scan_service))
        }

        systemManagerButton.setOnClickListener {
            startActivity(Intent(this, SystemSettingActivity::class.java))
        }

        getDataButton.setOnClickListener {
            loadFakeData()
        }

        saveButton.setOnClickListener {
            saveServerConfig()
        }

        clearSalesButton.setOnClickListener {
            showConfirmDialog(
                message = getString(R.string.dialog_clear_sales),
                onConfirm = { toast(getString(R.string.toast_fake_sales_cleared)) }
            )
        }

        clearProfileButton.setOnClickListener {
            showConfirmDialog(
                message = getString(R.string.dialog_clear_profile),
                onConfirm = {
                    store.clearProfile(this)
                    machineSnView.text = store.machineSn
                    qrInputView.setText("")
                    passwordView.setText("")
                    applyConfigLoadedState(false)
                    applyEnvironment(store.environment, store.baseUrl, syncInput = true)
                    toast(getString(R.string.toast_fake_profile_cleared))
                }
            )
        }

        gtpcButton.setOnClickListener {
            AlertDialog.Builder(this)
                .setTitle(R.string.dialog_notice)
                .setMessage(
                    buildString {
                        append(getString(R.string.dialog_gtpc_message))
                        append("\n\n")
                        append(getString(R.string.setting_fake_gtpc_url))
                    }
                )
                .setPositiveButton(R.string.action_confirm) { _, _ ->
                    toast(getString(R.string.setting_fake_gtpc_ready))
                }
                .show()
        }

        scanImageView.setOnClickListener {
            showFakeScanDialog()
        }

        qrInputView.setOnEditorActionListener { _, actionId, _ ->
            if (actionId == EditorInfo.IME_ACTION_DONE) {
                toast(getString(R.string.toast_fake_scan_input))
                true
            } else {
                false
            }
        }

        envGroup.setOnCheckedChangeListener { _, checkedId ->
            val environment = if (checkedId == R.id.as_rb_prepub) {
                FakePdaSettingsStore.ENV_PREPUB
            } else {
                FakePdaSettingsStore.ENV_PRODUCTION
            }
            val url = store.defaultUrl(this, environment)
            store.environment = environment
            if (store.isConfigLoaded) {
                netAddressView.setText(url)
                store.baseUrl = url
            }
            updateAddressSummary(environment, url)
        }
    }

    private fun loadFakeData() {
        val password = passwordView.text?.toString().orEmpty().trim()
        if (password != getString(R.string.setting_verify_password)) {
            AlertDialog.Builder(this)
                .setTitle(R.string.dialog_pwd_error)
                .setMessage(R.string.toast_password_incorrect)
                .setPositiveButton(R.string.action_reenter) { _, _ ->
                    passwordView.requestFocus()
                    passwordView.selectAll()
                }
                .show()
            return
        }
        store.isConfigLoaded = true
        store.baseUrl = store.defaultUrl(this, store.environment)
        store.machineSn = store.machineSn.ifBlank { getString(R.string.setting_fake_machine_sn) }
        machineSnView.text = store.machineSn
        applyConfigLoadedState(true)
        applyEnvironment(store.environment, store.baseUrl, syncInput = true)
        toast(getString(R.string.setting_fake_data_loaded))
    }

    private fun saveServerConfig() {
        if (!store.isConfigLoaded) {
            toast(getString(R.string.toast_get_data_first))
            return
        }
        val address = netAddressView.text?.toString().orEmpty().trim()
        when {
            address.isEmpty() -> toast(getString(R.string.toast_input_server_address))
            !URLUtil.isValidUrl(address) -> toast(getString(R.string.toast_invalid_server_address))
            else -> {
                store.baseUrl = address
                updateAddressSummary(store.environment, address)
                toast(getString(R.string.toast_save_success))
            }
        }
    }

    private fun showFakeScanDialog() {
        AlertDialog.Builder(this)
            .setTitle(R.string.dialog_fake_scan_title)
            .setMessage(R.string.dialog_fake_scan_message)
            .setPositiveButton(R.string.action_confirm) { _, _ ->
                val result = getString(R.string.setting_fake_qr_result)
                qrInputView.setText(result)
                store.lastScanResult = result
                toast(getString(R.string.setting_fake_scan_filled))
            }
            .setNegativeButton(R.string.action_cancel, null)
            .show()
    }

    private fun applyConfigLoadedState(loaded: Boolean) {
        netAddressView.isEnabled = loaded
        saveButton.isEnabled = loaded
        clearSalesButton.isEnabled = loaded
        envGroup.visibility = if (loaded) View.VISIBLE else View.GONE
        addressSummaryView.visibility = if (loaded) View.VISIBLE else View.GONE
        if (!loaded) {
            netAddressView.setText("")
            addressSummaryView.text = ""
        }
    }

    private fun applyEnvironment(environment: String, url: String, syncInput: Boolean) {
        if (environment == FakePdaSettingsStore.ENV_PREPUB) {
            prepubView.isChecked = true
        } else {
            productionView.isChecked = true
        }
        if (syncInput && store.isConfigLoaded) {
            netAddressView.setText(url)
        }
        updateAddressSummary(environment, url)
    }

    private fun updateAddressSummary(environment: String, url: String) {
        if (!store.isConfigLoaded) {
            return
        }
        val envName = if (environment == FakePdaSettingsStore.ENV_PREPUB) {
            getString(R.string.setting_env_prepub)
        } else {
            getString(R.string.setting_env_production)
        }
        addressSummaryView.text = getString(R.string.setting_env_summary, envName, url)
    }

    private fun showConfirmDialog(message: String, onConfirm: () -> Unit) {
        AlertDialog.Builder(this)
            .setTitle(R.string.dialog_attention)
            .setMessage(message)
            .setPositiveButton(R.string.action_confirm) { _, _ -> onConfirm() }
            .setNegativeButton(R.string.action_cancel, null)
            .show()
    }

    private fun appVersionName(): String {
        return try {
            packageManager.getPackageInfo(packageName, 0).versionName ?: "1.0.0.1"
        } catch (_: Exception) {
            "1.0.0.1"
        }
    }

    private fun toast(message: String) {
        Toast.makeText(this, message, Toast.LENGTH_SHORT).show()
    }
}
