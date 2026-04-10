package com.ccv.pda

import android.content.Context

class FakePdaSettingsStore(context: Context) {

    private val preferences = context.getSharedPreferences(PREF_NAME, Context.MODE_PRIVATE)

    var isConfigLoaded: Boolean
        get() = preferences.getBoolean(KEY_CONFIG_LOADED, false)
        set(value) = preferences.edit().putBoolean(KEY_CONFIG_LOADED, value).apply()

    var environment: String
        get() = preferences.getString(KEY_ENVIRONMENT, ENV_PRODUCTION) ?: ENV_PRODUCTION
        set(value) = preferences.edit().putString(KEY_ENVIRONMENT, value).apply()

    var baseUrl: String
        get() = preferences.getString(KEY_BASE_URL, "") ?: ""
        set(value) = preferences.edit().putString(KEY_BASE_URL, value).apply()

    var machineSn: String
        get() = preferences.getString(KEY_MACHINE_SN, "") ?: ""
        set(value) = preferences.edit().putString(KEY_MACHINE_SN, value).apply()

    var brightness: Int
        get() = preferences.getInt(KEY_BRIGHTNESS, 62)
        set(value) = preferences.edit().putInt(KEY_BRIGHTNESS, value).apply()

    var audioLevel: Int
        get() = preferences.getInt(KEY_AUDIO_LEVEL, 48)
        set(value) = preferences.edit().putInt(KEY_AUDIO_LEVEL, value).apply()

    var wifiEnabled: Boolean
        get() = preferences.getBoolean(KEY_WIFI_ENABLED, true)
        set(value) = preferences.edit().putBoolean(KEY_WIFI_ENABLED, value).apply()

    var wifiNameIndex: Int
        get() = preferences.getInt(KEY_WIFI_NAME_INDEX, 0)
        set(value) = preferences.edit().putInt(KEY_WIFI_NAME_INDEX, value).apply()

    var scanConnected: Boolean
        get() = preferences.getBoolean(KEY_SCAN_CONNECTED, false)
        set(value) = preferences.edit().putBoolean(KEY_SCAN_CONNECTED, value).apply()

    var lastScanResult: String
        get() = preferences.getString(KEY_LAST_SCAN_RESULT, "") ?: ""
        set(value) = preferences.edit().putString(KEY_LAST_SCAN_RESULT, value).apply()

    var skipCashReturnHint: Boolean
        get() = preferences.getBoolean(KEY_SKIP_CASH_RETURN_HINT, false)
        set(value) = preferences.edit().putBoolean(KEY_SKIP_CASH_RETURN_HINT, value).apply()

    fun ensureDefaults(context: Context) {
        if (baseUrl.isBlank()) {
            baseUrl = defaultUrl(context, environment)
        }
        if (machineSn.isBlank()) {
            machineSn = context.getString(R.string.setting_fake_machine_sn)
        }
    }

    fun cycleWifiName() {
        wifiNameIndex = (wifiNameIndex + 1) % WIFI_NAME_COUNT
    }

    fun currentWifiName(context: Context): String {
        return if (wifiNameIndex % WIFI_NAME_COUNT == 0) {
            context.getString(R.string.system_fake_wifi_name)
        } else {
            context.getString(R.string.system_fake_wifi_name_alt)
        }
    }

    fun clearProfile(context: Context) {
        preferences.edit()
            .putBoolean(KEY_CONFIG_LOADED, false)
            .putString(KEY_ENVIRONMENT, ENV_PRODUCTION)
            .putString(KEY_BASE_URL, context.getString(R.string.setting_default_base_url))
            .putString(KEY_MACHINE_SN, context.getString(R.string.setting_fake_machine_sn))
            .putString(KEY_LAST_SCAN_RESULT, "")
            .putBoolean(KEY_SCAN_CONNECTED, false)
            .putBoolean(KEY_SKIP_CASH_RETURN_HINT, false)
            .apply()
    }

    fun defaultUrl(context: Context, environment: String = this.environment): String {
        return if (environment == ENV_PREPUB) {
            context.getString(R.string.setting_prepub_base_url)
        } else {
            context.getString(R.string.setting_default_base_url)
        }
    }

    companion object {
        const val ENV_PRODUCTION = "production"
        const val ENV_PREPUB = "prepub"

        private const val PREF_NAME = "fake_pda_settings"
        private const val KEY_CONFIG_LOADED = "config_loaded"
        private const val KEY_ENVIRONMENT = "environment"
        private const val KEY_BASE_URL = "base_url"
        private const val KEY_MACHINE_SN = "machine_sn"
        private const val KEY_BRIGHTNESS = "brightness"
        private const val KEY_AUDIO_LEVEL = "audio_level"
        private const val KEY_WIFI_ENABLED = "wifi_enabled"
        private const val KEY_WIFI_NAME_INDEX = "wifi_name_index"
        private const val KEY_SCAN_CONNECTED = "scan_connected"
        private const val KEY_LAST_SCAN_RESULT = "last_scan_result"
        private const val KEY_SKIP_CASH_RETURN_HINT = "skip_cash_return_hint"
        private const val WIFI_NAME_COUNT = 2
    }
}
