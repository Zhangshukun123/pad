package com.ccv.pda

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.LinearLayout
import android.widget.TextView
import androidx.constraintlayout.widget.ConstraintLayout
import androidx.recyclerview.widget.RecyclerView

class QueryOrderAdapter : RecyclerView.Adapter<QueryOrderAdapter.ViewHolder>() {

    var items: List<OrderRecord> = emptyList()
        set(value) {
            field = value
            notifyDataSetChanged()
        }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val view = LayoutInflater.from(parent.context)
            .inflate(R.layout.item_query_order, parent, false)
        return ViewHolder(view)
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        holder.bind(items[position])
    }

    override fun getItemCount(): Int = items.size

    class ViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {
        private val tvCount: TextView = itemView.findViewById(R.id.tv_count)
        private val tvOrderCode: TextView = itemView.findViewById(R.id.tv_order_code)
        private val tvOrderDate: TextView = itemView.findViewById(R.id.tv_order_date)
        private val tvOrderAmount: TextView = itemView.findViewById(R.id.tv_order_amount)
        private val tvPayChannel: TextView = itemView.findViewById(R.id.tv_order_pay_channel)
        private val tvTrainName: TextView = itemView.findViewById(R.id.tv_order_train_name)
        private val cl12306: ConstraintLayout = itemView.findViewById(R.id.aqo_cl_12306)
        private val tvSeat: TextView = itemView.findViewById(R.id.aqo_tv_seat)
        private val tvContacts: TextView = itemView.findViewById(R.id.aqo_tv_contacts)
        private val llTable: LinearLayout = itemView.findViewById(R.id.i_aqo_ll_table)

        fun bind(order: OrderRecord) {
            val totalQty = order.orderDetailed.sumOf { it.qty }
            tvCount.text = totalQty.toString()
            tvOrderCode.text = order.orderCode
            tvOrderDate.text = order.orderDate
            tvOrderAmount.text = FakeQueryOrderRepository.formatAmount(order.orderTotalPrice)
            tvPayChannel.text = order.payChannelName
            tvTrainName.text = order.trainCode

            // 12306 专属
            if (order.is12306) {
                cl12306.visibility = View.VISIBLE
                tvSeat.text = "${order.coachNo}车${order.seatNo}"
                tvContacts.text = "${order.contacts} ${order.contactsPhone}"
            } else {
                cl12306.visibility = View.GONE
            }

            // 商品明细行
            llTable.removeAllViews()
            val inflater = LayoutInflater.from(itemView.context)
            order.orderDetailed.forEachIndexed { index, detail ->
                val row = inflater.inflate(R.layout.item_query_order_detail_row, llTable, false)
                row.setBackgroundColor(
                    itemView.context.getColor(
                        if (index % 2 == 0) R.color.table_row_background_even
                        else R.color.table_row_background_odd
                    )
                )
                row.findViewById<TextView>(R.id.tv_detail_code).text = detail.productCode
                row.findViewById<TextView>(R.id.tv_detail_name).text = detail.productName
                row.findViewById<TextView>(R.id.tv_detail_price).text =
                    FakeQueryOrderRepository.formatAmount(detail.salePriceReal)
                row.findViewById<TextView>(R.id.tv_detail_qty).text = detail.qty.toString()
                row.findViewById<TextView>(R.id.tv_detail_subtotal).text =
                    FakeQueryOrderRepository.formatAmount(detail.salePriceSum)
                llTable.addView(row)
            }
        }
    }
}
