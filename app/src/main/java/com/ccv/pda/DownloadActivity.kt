package com.ccv.pda

import android.graphics.Color
import android.graphics.drawable.ColorDrawable
import android.os.Bundle
import android.view.Gravity
import android.view.View
import android.widget.TextView
import android.widget.Toast
import androidx.annotation.StringRes
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity

class DownloadActivity : AppCompatActivity() {

    private lateinit var rootView: View
    private lateinit var titleView: TextView
    private lateinit var leftView: TextView
    private lateinit var rightView: TextView

    private var loadingDialog: AlertDialog? = null
    private var isDownloadRunning = false
    private var downloadToken = 0

    private val userTask = DownloadTask(
        stepHints = listOf(R.string.download_user_loading_hint),
        successMessageRes = R.string.download_user_success
    )
    private val teamTask = DownloadTask(
        stepHints = listOf(R.string.download_team_loading_hint),
        successMessageRes = R.string.download_team_success
    )
    private val goodsTask = DownloadTask(
        stepHints = listOf(R.string.download_goods_loading_hint),
        successMessageRes = R.string.download_goods_success
    )
    private val trainTask = DownloadTask(
        stepHints = listOf(R.string.download_train_loading_hint),
        successMessageRes = R.string.download_train_success
    )
    private val crossRoadTask = DownloadTask(
        stepHints = listOf(R.string.download_cross_road_loading_hint),
        successMessageRes = R.string.download_cross_road_success
    )
    private val baseDataTask = DownloadTask(
        stepHints = listOf(R.string.download_base_loading_hint),
        successMessageRes = R.string.download_base_success
    )
    private val permissionTask = DownloadTask(
        stepHints = listOf(
            R.string.download_permission_loading_hint,
            R.string.download_pda_permission_loading_hint
        ),
        successMessageRes = R.string.download_permission_success
    )
    private val signStatusTask = DownloadTask(
        stepHints = listOf(R.string.download_sign_status_loading_hint),
        successMessageRes = R.string.download_sign_status_success
    )
    private val allTasks = listOf(
        userTask,
        goodsTask,
        trainTask,
        crossRoadTask,
        baseDataTask,
        permissionTask,
        teamTask,
        signStatusTask
    )

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_download)
        bindViews()
        initTitleBar()
        initListeners()
    }

    private fun bindViews() {
        rootView = findViewById(android.R.id.content)
        titleView = findViewById(R.id.app_title_tv_title)
        leftView = findViewById(R.id.app_title_tv_left)
        rightView = findViewById(R.id.app_title_tv_right)
    }

    private fun initTitleBar() {
        titleView.text = getString(R.string.download_common_data_title)
        leftView.visibility = View.VISIBLE
        rightView.visibility = View.GONE
    }

    private fun initListeners() {
        leftView.setOnClickListener { finish() }
        bindSingleDownload(R.id.ad_btn_user_data, userTask)
        bindSingleDownload(R.id.ad_btn_team_data, teamTask)
        bindSingleDownload(R.id.ad_ware_data, goodsTask)
        bindSingleDownload(R.id.ad_btn_car_number_data, trainTask)
        bindSingleDownload(R.id.ad_btn_cross_road_data, crossRoadTask)
        bindSingleDownload(R.id.ad_btn_base_data, baseDataTask)
        bindSingleDownload(R.id.ad_btn_permission_data, permissionTask)
        bindSingleDownload(R.id.ad_btn_update_sign_status, signStatusTask)
        findViewById<View>(R.id.ad_btn_all_common_data).setOnClickListener {
            startDownload(
                title = getString(R.string.download_all_loading_title),
                stepHints = allTasks.flatMap { task -> task.stepHints },
                onComplete = { showResultToast(getString(R.string.download_all_success)) }
            )
        }
    }

    private fun bindSingleDownload(viewId: Int, task: DownloadTask) {
        findViewById<View>(viewId).setOnClickListener {
            startDownload(
                title = getString(R.string.download_single_loading_title),
                stepHints = task.stepHints,
                onComplete = { showResultToast(getString(task.successMessageRes)) }
            )
        }
    }

    private fun startDownload(
        title: String,
        stepHints: List<Int>,
        onComplete: () -> Unit
    ) {
        if (isDownloadRunning) {
            Toast.makeText(this, R.string.download_running_toast, Toast.LENGTH_SHORT).show()
            return
        }
        isDownloadRunning = true
        downloadToken += 1
        runDownloadStep(downloadToken, title, stepHints, 0, onComplete)
    }

    private fun runDownloadStep(
        token: Int,
        title: String,
        stepHints: List<Int>,
        stepIndex: Int,
        onComplete: () -> Unit
    ) {
        if (!isActiveDownload(token)) {
            return
        }
        if (stepIndex >= stepHints.size) {
            isDownloadRunning = false
            hideLoadingDialog()
            onComplete()
            return
        }
        showLoadingDialog(title, getString(stepHints[stepIndex]))
        rootView.postDelayed({
            runDownloadStep(token, title, stepHints, stepIndex + 1, onComplete)
        }, DOWNLOAD_STEP_DELAY)
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

    @Suppress("DEPRECATION")
    private fun showResultToast(message: String) {
        if (isFinishing || isDestroyed) {
            return
        }
        val toastView = layoutInflater.inflate(R.layout.toast_download_result, null, false)
        toastView.findViewById<TextView>(R.id.tv_download_toast_message).text = message
        Toast(this).apply {
            duration = Toast.LENGTH_SHORT
            view = toastView
            setGravity(
                Gravity.BOTTOM or Gravity.CENTER_HORIZONTAL,
                0,
                resources.getDimensionPixelOffset(R.dimen.dp_80)
            )
        }.show()
    }

    private fun isActiveDownload(token: Int): Boolean {
        return !isFinishing && !isDestroyed && isDownloadRunning && downloadToken == token
    }

    override fun onDestroy() {
        isDownloadRunning = false
        downloadToken += 1
        hideLoadingDialog()
        loadingDialog = null
        super.onDestroy()
    }

    private data class DownloadTask(
        val stepHints: List<Int>,
        @param:StringRes @field:StringRes val successMessageRes: Int
    )

    companion object {
        private const val DOWNLOAD_STEP_DELAY = 480L
    }
}
