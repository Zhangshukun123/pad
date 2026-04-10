package com.ccv.pda

import android.app.DatePickerDialog
import android.graphics.Color
import android.graphics.drawable.ColorDrawable
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.view.WindowManager
import android.widget.RadioButton
import android.widget.RadioGroup
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.fragment.app.Fragment
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import java.util.Calendar
import java.util.Locale

class OnlineRefundJDFragment : Fragment(R.layout.fragment_online_return_jd) {

    private lateinit var queryView: TextView
    private lateinit var startTimeView: TextView
    private lateinit var endTimeView: TextView
    private lateinit var noDataView: TextView
    private lateinit var sortGroup: RadioGroup
    private lateinit var newestRadio: RadioButton
    private lateinit var earliestRadio: RadioButton
    private lateinit var dataRecyclerView: RecyclerView
    private lateinit var timeLayout: View

    private val adapter = JdOrderAdapter(
        onRefundClick = { order, position -> showRefundConfirmDialog(order, position) }
    )
    private var loadingDialog: AlertDialog? = null

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        bindViews(view)
        initViews()
        initListeners()
    }

    private fun bindViews(view: View) {
        queryView = view.findViewById(R.id.forj_tv_query)
        startTimeView = view.findViewById(R.id.forj_tv_start_time)
        endTimeView = view.findViewById(R.id.forj_tv_end_time)
        noDataView = view.findViewById(R.id.forj_tv_no_data)
        sortGroup = view.findViewById(R.id.forj_rg_date_sort)
        newestRadio = view.findViewById(R.id.forj_rb_newest)
        earliestRadio = view.findViewById(R.id.forj_rb_early)
        dataRecyclerView = view.findViewById(R.id.forj_rlv_data)
        timeLayout = view.findViewById(R.id.forj_cl_time)
    }

    private fun initViews() {
        dataRecyclerView.layoutManager = LinearLayoutManager(requireContext())
        dataRecyclerView.adapter = adapter
        timeLayout.visibility = View.VISIBLE
        sortGroup.visibility = View.VISIBLE
        earliestRadio.isChecked = true

        val formattedDate = OnlineRefundFakeRepository.formatRoadDate(
            requireArguments().getString(ARG_ROAD_DATE).orEmpty()
        )
        startTimeView.text = "$formattedDate 00:00"
        endTimeView.text = "$formattedDate 23:59"
        updateListVisibility()
    }

    private fun initListeners() {
        queryView.setOnClickListener { queryOrders() }
        startTimeView.setOnClickListener { pickDate(startTimeView, "00:00") }
        endTimeView.setOnClickListener { pickDate(endTimeView, "23:59") }
        sortGroup.setOnCheckedChangeListener { _, _ ->
            if (adapter.items.isNotEmpty()) {
                queryOrders(showToast = false)
            }
        }
    }

    private fun queryOrders(showToast: Boolean = true) {
        showLoadingDialog("查询中", "正在按原版流程加载京东支付订单…")
        view?.postDelayed({
            if (!isAdded) {
                return@postDelayed
            }
            hideLoadingDialog()
            adapter.items = OnlineRefundFakeRepository.queryJdOrders(
                trainNo = requireArguments().getString(ARG_TRAIN_NO).orEmpty(),
                roadDate = requireArguments().getString(ARG_ROAD_DATE).orEmpty(),
                newestFirst = newestRadio.isChecked
            ).toMutableList()
            updateListVisibility()
            if (showToast) {
                toast("已按假数据查询京东支付订单")
            }
        }, QUERY_DELAY)
    }

    private fun updateListVisibility() {
        if (adapter.items.isEmpty()) {
            dataRecyclerView.visibility = View.GONE
            noDataView.visibility = View.VISIBLE
        } else {
            dataRecyclerView.visibility = View.VISIBLE
            noDataView.visibility = View.GONE
        }
    }

    private fun showRefundConfirmDialog(order: FakeJdRefundOrder, position: Int) {
        if (!order.canRefund) {
            toast("该订单已退款")
            return
        }
        AlertDialog.Builder(requireContext())
            .setTitle("提示")
            .setMessage(
                "订单号：${order.orderCode}\n\n退款金额：${OnlineRefundFakeRepository.amountText(order.orderAmount)}\n\n是否继续退款？"
            )
            .setNegativeButton("取消", null)
            .setPositiveButton("确定") { _, _ ->
                order.canRefund = false
                order.refundState = "已退款"
                adapter.notifyItemChanged(position)
                toast("京东支付订单已按假数据退款")
            }
            .show()
    }

    private fun pickDate(targetView: TextView, timeSuffix: String) {
        val calendar = Calendar.getInstance()
        DatePickerDialog(
            requireContext(),
            { _, year, month, dayOfMonth ->
                targetView.text = String.format(
                    Locale.getDefault(),
                    "%04d-%02d-%02d %s",
                    year,
                    month + 1,
                    dayOfMonth,
                    timeSuffix
                )
            },
            calendar.get(Calendar.YEAR),
            calendar.get(Calendar.MONTH),
            calendar.get(Calendar.DAY_OF_MONTH)
        ).show()
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

    private class JdOrderAdapter(
        private val onRefundClick: (FakeJdRefundOrder, Int) -> Unit
    ) : RecyclerView.Adapter<JdOrderAdapter.ViewHolder>() {

        var items = mutableListOf<FakeJdRefundOrder>()
            set(value) {
                field = value
                notifyDataSetChanged()
            }

        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
            val itemView = LayoutInflater.from(parent.context)
                .inflate(R.layout.item_online_refund_jd, parent, false)
            return ViewHolder(itemView)
        }

        override fun onBindViewHolder(holder: ViewHolder, position: Int) {
            val item = items[position]
            holder.orderCodeView.text = item.orderCode
            holder.orderDateView.text = item.orderDate
            holder.orderAmountView.text = OnlineRefundFakeRepository.amountText(item.orderAmount)
            holder.orderRefundStateView.text = item.refundState
            holder.orderPayChannelView.text = item.payChannel
            holder.orderDetailView.text = item.orderDetail
            holder.refundView.text = if (item.canRefund) "退款" else "已退款"
            holder.refundView.isEnabled = item.canRefund
            holder.refundView.alpha = if (item.canRefund) 1f else 0.55f
            holder.refundView.setOnClickListener { onRefundClick(item, position) }
        }

        override fun getItemCount(): Int = items.size

        class ViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {
            val orderCodeView: TextView = itemView.findViewById(R.id.tvOrderCode)
            val refundView: TextView = itemView.findViewById(R.id.tvRefund)
            val orderDateView: TextView = itemView.findViewById(R.id.tvOrderDate)
            val orderAmountView: TextView = itemView.findViewById(R.id.tvOrderAmount)
            val orderRefundStateView: TextView = itemView.findViewById(R.id.tvOrderRefundState)
            val orderPayChannelView: TextView = itemView.findViewById(R.id.tvOrderPayChannel)
            val orderDetailView: TextView = itemView.findViewById(R.id.tvOrderDetail)
        }
    }

    companion object {
        private const val ARG_TRAIN_NO = "arg_train_no"
        private const val ARG_ROAD_DATE = "arg_road_date"
        private const val QUERY_DELAY = 420L
        private const val DIALOG_WIDTH_RATIO = 0.82f

        fun newInstance(trainNo: String, roadDate: String): OnlineRefundJDFragment {
            return OnlineRefundJDFragment().apply {
                arguments = Bundle().apply {
                    putString(ARG_TRAIN_NO, trainNo)
                    putString(ARG_ROAD_DATE, roadDate)
                }
            }
        }
    }
}
