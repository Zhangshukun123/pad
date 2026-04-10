package com.ccv.pda

import android.app.Activity
import android.graphics.Color
import android.graphics.drawable.ColorDrawable
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.view.WindowManager
import android.view.inputmethod.InputMethodManager
import android.widget.Button
import android.widget.CheckBox
import android.widget.ImageView
import android.widget.TextView
import android.widget.Toast
import androidx.activity.result.contract.ActivityResultContracts
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.fragment.app.Fragment
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.ayma.base.widget.ClearEditText

class OnlineRefundSimpleFragment : Fragment(R.layout.fragment_online_return_simple) {

    private lateinit var transactionCodeEdit: ClearEditText
    private lateinit var scanView: ImageView
    private lateinit var queryView: TextView
    private lateinit var orderNoView: TextView
    private lateinit var orderDateView: TextView
    private lateinit var channelView: TextView
    private lateinit var trainNameView: TextView
    private lateinit var outDateView: TextView
    private lateinit var totalPriceView: TextView
    private lateinit var detailRecyclerView: RecyclerView
    private lateinit var returnButton: Button
    private lateinit var orderDetailLayout: View

    private val adapter = OrderDetailAdapter {
        renderReturnState()
    }
    private var loadingDialog: AlertDialog? = null
    private var currentOrder: FakeSimpleRefundOrder? = null
    private var hasRefunded = false

    private val scanLauncher = registerForActivityResult(
        ActivityResultContracts.StartActivityForResult()
    ) { result ->
        if (result.resultCode != Activity.RESULT_OK) {
            return@registerForActivityResult
        }
        val code = ScanPayActivity.readScanResult(result.data)
        if (code.isBlank()) {
            return@registerForActivityResult
        }
        transactionCodeEdit.setText(code)
        transactionCodeEdit.setSelection(code.length)
        query()
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        bindViews(view)
        initList()
        initListeners()
    }

    private fun bindViews(view: View) {
        transactionCodeEdit = view.findViewById(R.id.aor_et_transaction_code)
        scanView = view.findViewById(R.id.aor_iv_scan)
        queryView = view.findViewById(R.id.aor_tv_query)
        orderNoView = view.findViewById(R.id.tv_order_no)
        orderDateView = view.findViewById(R.id.tv_order_date)
        channelView = view.findViewById(R.id.tv_channel)
        trainNameView = view.findViewById(R.id.tv_train_name)
        outDateView = view.findViewById(R.id.tv_out_date)
        totalPriceView = view.findViewById(R.id.tv_total_price)
        detailRecyclerView = view.findViewById(R.id.rlv_detail)
        returnButton = view.findViewById(R.id.aor_btn_return)
        orderDetailLayout = view.findViewById(R.id.cl_order_detail)

        transactionCodeEdit.setClearIconEnabled(false)
    }

    private fun initList() {
        detailRecyclerView.layoutManager = LinearLayoutManager(requireContext())
        detailRecyclerView.adapter = adapter
    }

    private fun initListeners() {
        scanView.setOnClickListener {
            val activity = requireActivity() as? AppCompatActivity ?: return@setOnClickListener
            scanLauncher.launch(ScanPayActivity.createIntent(activity))
        }
        queryView.setOnClickListener { query() }
        returnButton.setOnClickListener { showRefundConfirmDialog() }
    }

    private fun query() {
        val transactionCode = transactionCodeEdit.text?.toString()?.trim().orEmpty()
        if (transactionCode.isBlank()) {
            toast("请输入支付流水号")
            transactionCodeEdit.requestFocus()
            return
        }
        hideSoftKeyboard()
        showLoadingDialog("查询中", "正在按原版流程匹配本地订单…")
        view?.postDelayed({
            if (!isAdded) {
                return@postDelayed
            }
            hideLoadingDialog()
            hasRefunded = false
            val order = OnlineRefundFakeRepository.querySimpleOrder(
                transactionCode = transactionCode,
                trainNo = requireArguments().getString(ARG_TRAIN_NO).orEmpty(),
                roadDate = requireArguments().getString(ARG_ROAD_DATE).orEmpty()
            )
            bindOrder(order)
            toast("已按假数据查询订单")
        }, QUERY_DELAY)
    }

    private fun bindOrder(order: FakeSimpleRefundOrder) {
        currentOrder = order
        orderNoView.text = order.orderNo
        orderDateView.text = order.orderDate
        channelView.text = order.paymentType
        trainNameView.text = order.trainName
        outDateView.text = order.outDate
        totalPriceView.text = OnlineRefundFakeRepository.amountText(order.receiptAmount)
        orderDetailLayout.visibility = View.VISIBLE
        adapter.items = order.goods.map { it.copy() }.toMutableList()
        renderReturnState()
    }

    private fun renderReturnState() {
        if (hasRefunded) {
            returnButton.isEnabled = false
            returnButton.text = "已退款"
            return
        }
        returnButton.isEnabled = adapter.items.any { it.selected }
        returnButton.text = "退 款"
    }

    private fun showRefundConfirmDialog() {
        val order = currentOrder ?: return
        val selectedItems = adapter.items.filter { it.selected }
        if (selectedItems.isEmpty()) {
            toast("请选择需要退款的商品")
            return
        }
        val refundAmount = selectedItems.sumOf { it.subtotal }
        AlertDialog.Builder(requireContext())
            .setTitle("提示")
            .setMessage(
                "订单号：${order.orderNo}\n\n退款金额：${OnlineRefundFakeRepository.amountText(refundAmount)}\n\n是否继续退款？"
            )
            .setNegativeButton("取消", null)
            .setPositiveButton("确定") { _, _ ->
                hasRefunded = true
                adapter.items.forEach { it.selected = false }
                adapter.notifyDataSetChanged()
                renderReturnState()
                toast("订单 ${order.orderNo} 已按假数据退款")
            }
            .show()
    }

    private fun hideSoftKeyboard() {
        val activity = activity ?: return
        val imm = activity.getSystemService(InputMethodManager::class.java) ?: return
        imm.hideSoftInputFromWindow(view?.windowToken, 0)
    }

    private fun showLoadingDialog(title: String, hint: String?) {
        val dialog = loadingDialog ?: AlertDialog.Builder(requireContext())
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

        if (!dialog.isShowing) {
            dialog.show()
            dialog.window?.setLayout(
                (resources.displayMetrics.widthPixels * DIALOG_WIDTH_RATIO).toInt(),
                WindowManager.LayoutParams.WRAP_CONTENT
            )
        }
        dialog.findViewById<TextView>(R.id.tv_loading_title)?.text = title
        dialog.findViewById<TextView>(R.id.tv_loading_hint)?.apply {
            text = hint
            visibility = if (hint.isNullOrBlank()) View.GONE else View.VISIBLE
        }
    }

    private fun hideLoadingDialog() {
        loadingDialog?.dismiss()
    }

    private fun toast(message: String) {
        Toast.makeText(requireContext(), message, Toast.LENGTH_SHORT).show()
    }

    override fun onDestroyView() {
        hideLoadingDialog()
        loadingDialog = null
        super.onDestroyView()
    }

    private class OrderDetailAdapter(
        private val onSelectionChanged: () -> Unit
    ) : RecyclerView.Adapter<OrderDetailAdapter.ViewHolder>() {

        var items = mutableListOf<FakeRefundGoodsItem>()
            set(value) {
                field = value
                notifyDataSetChanged()
            }

        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
            val itemView = LayoutInflater.from(parent.context)
                .inflate(R.layout.item_online_return, parent, false)
            return ViewHolder(itemView)
        }

        override fun onBindViewHolder(holder: ViewHolder, position: Int) {
            val item = items[position]
            holder.goodsCodeView.text = item.goodsCode
            holder.goodsNameView.text = item.goodsName
            holder.goodsCountView.text = item.count.toString()
            holder.goodsPriceView.text = OnlineRefundFakeRepository.amountText(item.price)
            holder.goodsSubtotalView.text = OnlineRefundFakeRepository.amountText(item.subtotal)
            holder.selectView.setOnCheckedChangeListener(null)
            holder.selectView.isChecked = item.selected
            holder.selectView.setOnCheckedChangeListener { _, isChecked ->
                item.selected = isChecked
                onSelectionChanged()
            }
            holder.itemView.setOnClickListener {
                holder.selectView.isChecked = !holder.selectView.isChecked
            }
        }

        override fun getItemCount(): Int = items.size

        class ViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {
            val goodsCodeView: TextView = itemView.findViewById(R.id.ior_tv_goods_code)
            val goodsNameView: TextView = itemView.findViewById(R.id.ior_tv_goods_name)
            val goodsCountView: TextView = itemView.findViewById(R.id.ior_tv_goods_count)
            val goodsPriceView: TextView = itemView.findViewById(R.id.ior_tv_goods_price)
            val goodsSubtotalView: TextView = itemView.findViewById(R.id.ior_tv_goods_subtotal)
            val selectView: CheckBox = itemView.findViewById(R.id.cb_select)
        }
    }

    companion object {
        private const val ARG_TRAIN_NO = "arg_train_no"
        private const val ARG_ROAD_DATE = "arg_road_date"
        private const val QUERY_DELAY = 420L
        private const val DIALOG_WIDTH_RATIO = 0.82f

        fun newInstance(trainNo: String, roadDate: String): OnlineRefundSimpleFragment {
            return OnlineRefundSimpleFragment().apply {
                arguments = Bundle().apply {
                    putString(ARG_TRAIN_NO, trainNo)
                    putString(ARG_ROAD_DATE, roadDate)
                }
            }
        }
    }
}
