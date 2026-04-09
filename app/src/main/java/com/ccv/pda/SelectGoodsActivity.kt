package com.ccv.pda

import android.content.Intent
import android.os.Build
import android.os.Bundle
import android.text.Editable
import android.text.TextWatcher
import android.view.View
import android.widget.Button
import android.widget.ImageView
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout
import com.ayma.base.widget.ClearEditText
import java.io.Serializable
import java.text.DecimalFormat

class SelectGoodsActivity : AppCompatActivity() {

    private lateinit var rootView: View
    private lateinit var titleView: TextView
    private lateinit var leftView: TextView
    private lateinit var rightView: TextView
    private lateinit var boxInfoView: TextView
    private lateinit var trainNoView: TextView
    private lateinit var roadDateView: TextView
    private lateinit var searchEdit: ClearEditText
    private lateinit var typeRecyclerView: RecyclerView
    private lateinit var currentTypeView: TextView
    private lateinit var swipeRefreshLayout: SwipeRefreshLayout
    private lateinit var goodsRecyclerView: RecyclerView
    private lateinit var emptyView: TextView
    private lateinit var shopCarView: ImageView
    private lateinit var selectedCountView: TextView
    private lateinit var totalPriceView: TextView
    private lateinit var submitButton: Button

    private val typeAdapter = SelectGoodsTypeAdapter(::handleCategorySelected)
    private val goodsAdapter = SelectGoodsItemAdapter(::increaseGoodsCount, ::decreaseGoodsCount)
    private val selectedCountMap = linkedMapOf<String, Int>()
    private val formatter = DecimalFormat("0.0#")

    private var currentCategoryId: String =
        FakeSellGoodsRepository.categories.firstOrNull()?.id.orEmpty()
    private var keyword: String = ""

    private lateinit var trainNo: String
    private lateinit var roadDate: String
    private lateinit var saleTypeName: String

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_select_goods)
        bindViews()
        bindContent()
        initTitleBar()
        initRecyclerViews()
        initListeners()
        renderGoods()
        updateSummary()
    }

    private fun bindViews() {
        rootView = findViewById(android.R.id.content)
        titleView = findViewById(R.id.app_title_tv_title)
        leftView = findViewById(R.id.app_title_tv_left)
        rightView = findViewById(R.id.app_title_tv_right)
        boxInfoView = findViewById(R.id.aui_tv_user_name)
        trainNoView = findViewById(R.id.aui_tv_train_name)
        roadDateView = findViewById(R.id.aui_tv_train_date)
        searchEdit = findViewById(R.id.asg_et_search_condition)
        typeRecyclerView = findViewById(R.id.asg_rlv_type)
        currentTypeView = findViewById(R.id.sga_tv_current_type)
        swipeRefreshLayout = findViewById(R.id.sga_srl)
        goodsRecyclerView = findViewById(R.id.sga_rlv_goods)
        emptyView = findViewById(R.id.sga_tv_empty)
        shopCarView = findViewById(R.id.sga_iv_shop_car)
        selectedCountView = findViewById(R.id.sga_tv_goods_count)
        totalPriceView = findViewById(R.id.sga_tv_goods_total_price)
        submitButton = findViewById(R.id.sga_btn_submit)
    }

    private fun bindContent() {
        trainNo = intent.getStringExtra(MenuActivity.EXTRA_TRAIN_NO)
            .orEmpty()
            .ifBlank { DEFAULT_TRAIN_NO }
        roadDate = intent.getStringExtra(MenuActivity.EXTRA_ROAD_DATE)
            .orEmpty()
            .ifBlank { DEFAULT_ROAD_DATE }
        saleTypeName = intent.getStringExtra(EXTRA_SALE_TYPE_NAME)
            .orEmpty()
            .ifBlank { getString(R.string.sell_type_normal) }

        boxInfoView.text = getString(R.string.sell_fake_box_info)
        trainNoView.text = trainNo
        roadDateView.text = roadDate
        searchEdit.setClearIconEnabled(false)
    }

    private fun initTitleBar() {
        titleView.text = getString(R.string.select_goods_title, saleTypeName)
        leftView.visibility = View.VISIBLE
        rightView.visibility = View.VISIBLE
        rightView.text = getString(R.string.select_goods_action_refresh)
    }

    private fun initRecyclerViews() {
        typeRecyclerView.layoutManager = LinearLayoutManager(this)
        typeRecyclerView.adapter = typeAdapter
        typeAdapter.items = FakeSellGoodsRepository.categories
        typeAdapter.selectedCategoryId = currentCategoryId

        goodsRecyclerView.layoutManager = LinearLayoutManager(this)
        goodsRecyclerView.adapter = goodsAdapter

        swipeRefreshLayout.setColorSchemeResources(R.color.colorPrimary)
    }

    private fun initListeners() {
        leftView.setOnClickListener { finish() }
        rightView.setOnClickListener { refreshGoods() }
        submitButton.setOnClickListener { submitSelection() }
        shopCarView.setOnClickListener { showSelectedGoodsDialog() }
        swipeRefreshLayout.setOnRefreshListener { refreshGoods() }
        searchEdit.addTextChangedListener(object : TextWatcher {
            override fun beforeTextChanged(s: CharSequence?, start: Int, count: Int, after: Int) = Unit

            override fun onTextChanged(s: CharSequence?, start: Int, before: Int, count: Int) = Unit

            override fun afterTextChanged(s: Editable?) {
                keyword = s?.toString().orEmpty()
                renderGoods()
            }
        })
    }

    private fun handleCategorySelected(category: FakeGoodsCategory) {
        currentCategoryId = category.id
        typeAdapter.selectedCategoryId = category.id
        renderGoods()
    }

    private fun renderGoods() {
        currentTypeView.text = FakeSellGoodsRepository.findCategory(currentCategoryId)?.name.orEmpty()
        val goods = FakeSellGoodsRepository.goodsByCategory(currentCategoryId, keyword)
        goodsAdapter.items = goods.map { template ->
            SelectGoodsDisplayItem(
                template = template,
                count = selectedCountMap[template.code] ?: 0
            )
        }
        emptyView.visibility = if (goods.isEmpty()) View.VISIBLE else View.GONE
    }

    private fun refreshGoods() {
        if (!swipeRefreshLayout.isRefreshing) {
            swipeRefreshLayout.isRefreshing = true
        }
        rootView.postDelayed({
            if (isFinishing || isDestroyed) {
                return@postDelayed
            }
            swipeRefreshLayout.isRefreshing = false
            renderGoods()
            toast(getString(R.string.select_goods_refresh_success))
        }, REFRESH_DELAY)
    }

    private fun increaseGoodsCount(template: FakeGoodsTemplate) {
        val currentCount = selectedCountMap[template.code] ?: 0
        if (currentCount >= template.stock) {
            toast(getString(R.string.select_goods_stock_limit, template.name))
            return
        }
        selectedCountMap[template.code] = currentCount + 1
        renderGoods()
        updateSummary()
    }

    private fun decreaseGoodsCount(template: FakeGoodsTemplate) {
        val currentCount = selectedCountMap[template.code] ?: 0
        if (currentCount <= 1) {
            selectedCountMap.remove(template.code)
        } else {
            selectedCountMap[template.code] = currentCount - 1
        }
        renderGoods()
        updateSummary()
    }

    private fun updateSummary() {
        val selectedGoods = buildSelectedGoods()
        val totalCount = selectedGoods.sumOf { it.quantity }
        val totalAmount = selectedGoods.sumOf { it.amount }
        selectedCountView.text = getString(R.string.select_goods_count_summary, totalCount)
        totalPriceView.text = getString(
            R.string.select_goods_total_price,
            formatter.format(totalAmount)
        )
    }

    private fun showSelectedGoodsDialog() {
        val selectedGoods = buildSelectedGoods()
        if (selectedGoods.isEmpty()) {
            toast(getString(R.string.select_goods_cart_empty))
            return
        }
        val message = buildString {
            append(
                selectedGoods.joinToString(separator = "\n") { item ->
                    getString(
                        R.string.select_goods_cart_line,
                        item.name,
                        item.quantity,
                        formatter.format(item.amount)
                    )
                }
            )
            append("\n\n")
            append(
                getString(
                    R.string.select_goods_cart_footer,
                    selectedGoods.sumOf { it.quantity },
                    formatter.format(selectedGoods.sumOf { it.amount })
                )
            )
        }
        AlertDialog.Builder(this)
            .setTitle(R.string.select_goods_cart_title)
            .setMessage(message)
            .setPositiveButton(R.string.action_confirm, null)
            .show()
    }

    private fun submitSelection() {
        val selectedGoods = buildSelectedGoods()
        if (selectedGoods.isEmpty()) {
            toast(getString(R.string.select_goods_submit_empty))
            return
        }
        setResult(
            RESULT_OK,
            Intent().putExtra(EXTRA_SELECTED_GOODS, ArrayList(selectedGoods))
        )
        finish()
    }

    private fun buildSelectedGoods(): List<FakeSellGood> {
        return FakeSellGoodsRepository.allGoods.mapNotNull { template ->
            val count = selectedCountMap[template.code] ?: 0
            if (count > 0) {
                FakeSellGoodsRepository.toSellGood(template, count)
            } else {
                null
            }
        }
    }

    private fun toast(message: String) {
        Toast.makeText(this, message, Toast.LENGTH_SHORT).show()
    }

    companion object {
        const val EXTRA_SALE_TYPE_NAME = "sale_type_name"
        const val EXTRA_SELECTED_GOODS = "selected_goods"

        private const val DEFAULT_TRAIN_NO = "DJ5902"
        private const val DEFAULT_ROAD_DATE = "20260408"
        private const val REFRESH_DELAY = 420L

        @Suppress("DEPRECATION")
        fun readSelectedGoods(intent: Intent?): ArrayList<FakeSellGood> {
            val payload = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                intent?.getSerializableExtra(EXTRA_SELECTED_GOODS, Serializable::class.java)
            } else {
                intent?.getSerializableExtra(EXTRA_SELECTED_GOODS)
            }
            return if (payload is ArrayList<*>) {
                ArrayList(payload.filterIsInstance<FakeSellGood>())
            } else {
                arrayListOf()
            }
        }
    }
}
