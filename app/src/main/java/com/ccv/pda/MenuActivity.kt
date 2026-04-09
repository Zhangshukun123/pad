package com.ccv.pda

import android.content.Intent
import android.os.Bundle
import android.view.View
import android.widget.Button
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity

class MenuActivity : AppCompatActivity() {

    private lateinit var titleView: TextView
    private lateinit var leftView: TextView
    private lateinit var rightView: TextView
    private lateinit var userCodeView: TextView
    private lateinit var userNameView: TextView
    private lateinit var trainNoView: TextView
    private lateinit var teamNameView: TextView
    private lateinit var roadDateView: TextView
    private lateinit var logoutButton: Button

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_menu)
        bindViews()
        initTitleBar()
        bindContent()
        initListeners()
    }

    private fun bindViews() {
        titleView = findViewById(R.id.app_title_tv_title)
        leftView = findViewById(R.id.app_title_tv_left)
        rightView = findViewById(R.id.app_title_tv_right)
        userCodeView = findViewById(R.id.menu_tv_user_code)
        userNameView = findViewById(R.id.menu_tv_user_name)
        trainNoView = findViewById(R.id.menu_tv_train_no)
        teamNameView = findViewById(R.id.menu_tv_team_name)
        roadDateView = findViewById(R.id.menu_tv_road_date)
        logoutButton = findViewById(R.id.menu_btn_logout)
    }

    private fun initTitleBar() {
        titleView.text = getString(R.string.menu_title)
        leftView.visibility = View.VISIBLE
        leftView.setOnClickListener { finish() }
        rightView.visibility = View.GONE
    }

    private fun bindContent() {
        userCodeView.text = getString(
            R.string.menu_user_code,
            intent.getStringExtra(EXTRA_EMPLOYEE_CODE).orEmpty()
        )
        userNameView.text = getString(
            R.string.menu_user_name,
            intent.getStringExtra(EXTRA_USER_NAME).orEmpty()
        )
        trainNoView.text = getString(
            R.string.menu_train_no,
            intent.getStringExtra(EXTRA_TRAIN_NO).orEmpty()
        )
        teamNameView.text = getString(
            R.string.menu_team_name,
            intent.getStringExtra(EXTRA_TEAM_NAME).orEmpty()
        )
        roadDateView.text = getString(
            R.string.menu_road_date,
            intent.getStringExtra(EXTRA_ROAD_DATE).orEmpty()
        )
    }

    private fun initListeners() {
        logoutButton.setOnClickListener {
            val intent = Intent(this, MainActivity::class.java).apply {
                flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK
            }
            startActivity(intent)
        }
    }

    companion object {
        const val EXTRA_EMPLOYEE_CODE = "employee_code"
        const val EXTRA_USER_NAME = "user_name"
        const val EXTRA_TRAIN_NO = "train_no"
        const val EXTRA_TEAM_NAME = "team_name"
        const val EXTRA_ROAD_DATE = "road_date"
    }
}
