package com.ccv.pda

import android.os.Bundle
import android.view.View
import android.widget.Button
import android.widget.SeekBar
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.appcompat.widget.SwitchCompat
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout

class SystemSettingActivity : AppCompatActivity() {

    private val store by lazy { FakePdaSettingsStore(this) }

    private lateinit var titleView: TextView
    private lateinit var leftView: TextView
    private lateinit var rightView: TextView
    private lateinit var brightnessLabel: TextView
    private lateinit var audioLabel: TextView
    private lateinit var wifiStatusView: TextView
    private lateinit var scanConnectionView: TextView
    private lateinit var brightnessSeekBar: SeekBar
    private lateinit var audioSeekBar: SeekBar
    private lateinit var wifiSwitch: SwitchCompat
    private lateinit var refreshLayout: SwipeRefreshLayout
    private lateinit var recyclerView: RecyclerView
    private lateinit var connectButton: Button
    private lateinit var adapter: SystemSettingAdapter

    private val barcodeLauncher = registerForActivityResult(com.journeyapps.barcodescanner.ScanContract()) { result ->
        if (result.contents != null) {
            store.scanConnected = true
            renderScanStatus()
            renderList()
            toast(getString(R.string.system_scan_connect) + "\n扫码内容: " + result.contents)
        } else {
            toast("取消扫码")
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_system_setting)
        store.ensureDefaults(this)
        bindViews()
        initTitleBar()
        initList()
        initContent()
        initListeners()
    }

    private fun bindViews() {
        titleView = findViewById(R.id.app_title_tv_title)
        leftView = findViewById(R.id.app_title_tv_left)
        rightView = findViewById(R.id.app_title_tv_right)
        brightnessLabel = findViewById(R.id.ass_light)
        audioLabel = findViewById(R.id.ass_audio)
        wifiStatusView = findViewById(R.id.textView3)
        scanConnectionView = findViewById(R.id.tv_system_scan_connection)
        brightnessSeekBar = findViewById(R.id.ass_seekbar_light)
        audioSeekBar = findViewById(R.id.ass_seekbar_audio)
        wifiSwitch = findViewById(R.id.ass_switch)
        refreshLayout = findViewById(R.id.ass_srl)
        recyclerView = findViewById(R.id.system_scan_data)
        connectButton = findViewById(R.id.ass_btn_connect)
    }

    private fun initTitleBar() {
        titleView.text = getString(R.string.system_setting_title)
        leftView.visibility = View.VISIBLE
        leftView.setOnClickListener { finish() }
        rightView.visibility = View.GONE
    }

    private fun initList() {
        adapter = SystemSettingAdapter { item ->
            toast("${item.title}：${item.detail}")
        }
        recyclerView.layoutManager = LinearLayoutManager(this)
        recyclerView.adapter = adapter
    }

    private fun initContent() {
        brightnessSeekBar.max = 100
        audioSeekBar.max = 100
        brightnessSeekBar.progress = store.brightness
        audioSeekBar.progress = store.audioLevel
        wifiSwitch.isChecked = store.wifiEnabled
        renderWifiStatus()
        renderScanStatus()
        renderList()
    }

    private fun initListeners() {
        brightnessSeekBar.setOnSeekBarChangeListener(object : SeekBar.OnSeekBarChangeListener {
            override fun onProgressChanged(seekBar: SeekBar?, progress: Int, fromUser: Boolean) = Unit

            override fun onStartTrackingTouch(seekBar: SeekBar?) = Unit

            override fun onStopTrackingTouch(seekBar: SeekBar) {
                store.brightness = seekBar.progress
                renderList()
                toast(getString(R.string.system_brightness_saved, seekBar.progress))
            }
        })

        audioSeekBar.setOnSeekBarChangeListener(object : SeekBar.OnSeekBarChangeListener {
            override fun onProgressChanged(seekBar: SeekBar?, progress: Int, fromUser: Boolean) = Unit

            override fun onStartTrackingTouch(seekBar: SeekBar?) = Unit

            override fun onStopTrackingTouch(seekBar: SeekBar) {
                store.audioLevel = seekBar.progress
                renderList()
                toast(getString(R.string.system_audio_saved, seekBar.progress))
            }
        })

        wifiSwitch.setOnCheckedChangeListener { _, isChecked ->
            store.wifiEnabled = isChecked
            renderWifiStatus()
            renderList()
        }

        refreshLayout.setOnRefreshListener {
            store.cycleWifiName()
            renderWifiStatus()
            renderList()
            refreshLayout.isRefreshing = false
            toast(getString(R.string.system_refreshed))
        }

        connectButton.setOnClickListener {
            barcodeLauncher.launch(com.journeyapps.barcodescanner.ScanOptions().apply {
                setPrompt("请对准二维码/条形码进行扫描接入")
                setBeepEnabled(true)
                setOrientationLocked(false)
            })
        }
    }

    private fun renderWifiStatus() {
        wifiStatusView.text = if (store.wifiEnabled) {
            getString(R.string.system_wifi_current, store.currentWifiName(this))
        } else {
            getString(R.string.system_wifi_disconnected)
        }
    }

    private fun renderScanStatus() {
        scanConnectionView.visibility = if (store.scanConnected) View.VISIBLE else View.GONE
        if (store.scanConnected) {
            scanConnectionView.text = getString(R.string.system_wifi_connected)
        }
    }

    private fun renderList() {
        val wifiDetail = if (store.wifiEnabled) {
            getString(R.string.system_detail_wifi_on, store.currentWifiName(this))
        } else {
            getString(R.string.system_detail_wifi_off)
        }
        val scanDetail = if (store.scanConnected) {
            getString(R.string.system_detail_scan_connected)
        } else {
            getString(R.string.system_detail_scan_disconnected)
        }
        adapter.submitList(
            listOf(
                SystemSettingItem(
                    title = getString(R.string.system_item_network),
                    detail = wifiDetail,
                    iconRes = R.drawable.ic_baseline_wifi_24
                ),
                SystemSettingItem(
                    title = getString(R.string.system_item_display),
                    detail = getString(R.string.system_detail_display, store.brightness),
                    iconRes = R.drawable.ic_setting_light
                ),
                SystemSettingItem(
                    title = getString(R.string.system_item_audio),
                    detail = getString(R.string.system_detail_audio, store.audioLevel),
                    iconRes = R.drawable.ic_setting_audio
                ),
                SystemSettingItem(
                    title = getString(R.string.system_item_scan),
                    detail = scanDetail,
                    iconRes = R.drawable.ic_setting_scan
                ),
                SystemSettingItem(
                    title = getString(R.string.system_item_about),
                    detail = getString(
                        R.string.system_detail_about,
                        getString(R.string.setting_fake_machine_model),
                        store.machineSn
                    ),
                    iconRes = R.drawable.ic_setting_scan
                )
            )
        )
    }

    private fun toast(message: String) {
        Toast.makeText(this, message, Toast.LENGTH_SHORT).show()
    }
}
