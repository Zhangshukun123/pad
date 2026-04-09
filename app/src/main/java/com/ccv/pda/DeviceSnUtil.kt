package com.ccv.pda

import android.Manifest
import android.annotation.SuppressLint
import android.content.Context
import android.content.pm.PackageManager
import android.os.Build
import android.os.Handler
import android.os.Looper
import androidx.core.app.ActivityCompat

object DeviceSnUtil {

    fun isSnEmpty(sn: String?): Boolean {
        return sn.isNullOrBlank() || sn.equals("unknown", ignoreCase = true)
    }

    fun getSerialNumberAsync(
        context: Context,
        onSuccess: (String) -> Unit,
        onError: (Throwable) -> Unit
    ) {
        Thread {
            try {
                val serialNumber = getSerialNumber(context)
                Handler(Looper.getMainLooper()).post {
                    onSuccess(serialNumber)
                }
            } catch (throwable: Throwable) {
                Handler(Looper.getMainLooper()).post {
                    onError(throwable)
                }
            }
        }.start()
    }

    @SuppressLint("HardwareIds")
    @Suppress("DEPRECATION")
    fun getSerialNumber(context: Context): String {
        return try {
            when {
                Build.VERSION.SDK_INT >= Build.VERSION_CODES.P -> {
                    if (ActivityCompat.checkSelfPermission(
                            context,
                            Manifest.permission.READ_PHONE_STATE
                        ) != PackageManager.PERMISSION_GRANTED
                    ) {
                        ""
                    } else {
                        Build.getSerial().orEmpty()
                    }
                }

                Build.VERSION.SDK_INT > Build.VERSION_CODES.N -> {
                    Build.SERIAL.orEmpty()
                }

                else -> {
                    val systemProperties = Class.forName("android.os.SystemProperties")
                    val get = systemProperties.getMethod("get", String::class.java)
                    (get.invoke(null, "ro.serialno") as? String).orEmpty()
                }
            }
        } catch (_: Throwable) {
            ""
        }
    }
}
