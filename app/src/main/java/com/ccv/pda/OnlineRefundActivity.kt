package com.ccv.pda

import android.content.Intent
import android.os.Bundle
import android.view.View
import android.widget.FrameLayout
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentTransaction
import com.google.android.material.tabs.TabLayout

class OnlineRefundActivity : AppCompatActivity() {

    private var currentFragment: Fragment? = null
    private var simpleFragment: OnlineRefundSimpleFragment? = null
    private var jdFragment: OnlineRefundJDFragment? = null

    private lateinit var titleView: TextView
    private lateinit var leftView: TextView
    private lateinit var boxInfoView: TextView
    private lateinit var trainNoView: TextView
    private lateinit var roadDateView: TextView
    private lateinit var tabLayout: TabLayout
    private lateinit var fragmentContainer: FrameLayout

    private lateinit var trainNo: String
    private lateinit var roadDate: String

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_online_return)
        bindViews()
        bindContent()
        initTitleBar()
        initFragments()
        initListeners()
    }

    private fun bindViews() {
        titleView = findViewById(R.id.app_title_tv_title)
        leftView = findViewById(R.id.app_title_tv_left)
        boxInfoView = findViewById(R.id.aui_tv_user_name)
        trainNoView = findViewById(R.id.aui_tv_train_name)
        roadDateView = findViewById(R.id.aui_tv_train_date)
        tabLayout = findViewById(R.id.aor_tl)
        fragmentContainer = findViewById(R.id.aor_fl)
    }

    private fun bindContent() {
        trainNo = intent.getStringExtra(MenuActivity.EXTRA_TRAIN_NO)
            .orEmpty()
            .ifBlank { DEFAULT_TRAIN_NO }
        roadDate = intent.getStringExtra(MenuActivity.EXTRA_ROAD_DATE)
            .orEmpty()
            .ifBlank { DEFAULT_ROAD_DATE }

        boxInfoView.text = getString(R.string.sell_fake_box_info)
        trainNoView.text = trainNo
        roadDateView.text = roadDate
    }

    private fun initTitleBar() {
        titleView.text = getString(R.string.online_refund_title)
        leftView.visibility = View.VISIBLE
        leftView.text = getString(R.string.title_back)
    }

    private fun initFragments() {
        simpleFragment = OnlineRefundSimpleFragment.newInstance(trainNo, roadDate)
        switchFragment(simpleFragment!!).commit()
        tabLayout.getTabAt(0)?.select()
    }

    private fun initListeners() {
        leftView.setOnClickListener { finish() }
        tabLayout.addOnTabSelectedListener(object : TabLayout.OnTabSelectedListener {
            override fun onTabSelected(tab: TabLayout.Tab) {
                when (tab.position) {
                    0 -> {
                        val targetFragment = simpleFragment
                            ?: OnlineRefundSimpleFragment.newInstance(trainNo, roadDate).also {
                                simpleFragment = it
                            }
                        switchFragment(targetFragment).commit()
                    }

                    1 -> {
                        val targetFragment = jdFragment
                            ?: OnlineRefundJDFragment.newInstance(trainNo, roadDate).also {
                                jdFragment = it
                            }
                        switchFragment(targetFragment).commit()
                    }
                }
            }

            override fun onTabUnselected(tab: TabLayout.Tab) = Unit

            override fun onTabReselected(tab: TabLayout.Tab) = Unit
        })
    }

    private fun switchFragment(targetFragment: Fragment): FragmentTransaction {
        val transaction = supportFragmentManager.beginTransaction()
        if (!targetFragment.isAdded) {
            currentFragment?.let { current ->
                transaction.hide(current)
                transaction.setMaxLifecycle(current, androidx.lifecycle.Lifecycle.State.STARTED)
            }
            transaction.add(fragmentContainer.id, targetFragment, targetFragment::class.java.name)
            transaction.setMaxLifecycle(targetFragment, androidx.lifecycle.Lifecycle.State.RESUMED)
        } else {
            currentFragment?.let { current ->
                transaction.hide(current)
                transaction.setMaxLifecycle(current, androidx.lifecycle.Lifecycle.State.STARTED)
            }
            transaction.show(targetFragment)
            transaction.setMaxLifecycle(targetFragment, androidx.lifecycle.Lifecycle.State.RESUMED)
        }
        currentFragment = targetFragment
        return transaction
    }

    companion object {
        private const val DEFAULT_TRAIN_NO = "DJ5902"
        private const val DEFAULT_ROAD_DATE = "20260403"

        fun createIntent(
            activity: AppCompatActivity,
            employeeCode: String,
            userName: String,
            roadId: String,
            trainNo: String,
            teamName: String,
            roadDate: String
        ): Intent {
            return Intent(activity, OnlineRefundActivity::class.java).apply {
                putExtra(MenuActivity.EXTRA_EMPLOYEE_CODE, employeeCode)
                putExtra(MenuActivity.EXTRA_USER_NAME, userName)
                putExtra(MenuActivity.EXTRA_ROAD_ID, roadId)
                putExtra(MenuActivity.EXTRA_TRAIN_NO, trainNo)
                putExtra(MenuActivity.EXTRA_TEAM_NAME, teamName)
                putExtra(MenuActivity.EXTRA_ROAD_DATE, roadDate)
            }
        }
    }
}
