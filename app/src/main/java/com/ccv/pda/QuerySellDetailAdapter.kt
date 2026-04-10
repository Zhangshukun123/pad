package com.ccv.pda

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.LinearLayout
import android.widget.TextView
import androidx.core.content.ContextCompat
import androidx.recyclerview.widget.RecyclerView

class QuerySellDetailAdapter : RecyclerView.Adapter<QuerySellDetailAdapter.ViewHolder>() {

    var items: List<FakeQuerySellDetailRecord> = emptyList()
        set(value) {
            field = value
            notifyDataSetChanged()
        }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val view = LayoutInflater.from(parent.context)
            .inflate(R.layout.item_sell_detail_list, parent, false)
        return ViewHolder(view)
    }

    override fun getItemCount(): Int = items.size

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        val record = items[position]
        val backgroundColor = if (position % 2 == 0) {
            R.color.table_row_background_even
        } else {
            R.color.table_row_background_odd
        }
        holder.root.setBackgroundColor(
            ContextCompat.getColor(holder.itemView.context, backgroundColor)
        )

        holder.goodsCodeView.text = record.goodsCode
        holder.goodsNameView.text = record.goodsName
        holder.goodsCountView.text = FakeQuerySellDetailRepository.formatQty(record.qty)
        holder.goodsPriceView.text = FakeQuerySellDetailRepository.formatAmount(record.salePriceReal)
        holder.goodsTotalMoneyView.text =
            FakeQuerySellDetailRepository.formatAmount(record.qty * record.salePriceReal)
        holder.sellTypeView.text = saleTypeLabel(record.saleTypeId)
        holder.payTypeView.text = payTypeLabel(record.payTypeId)
        holder.sellTimeView.text = record.saleUploadDate
        holder.orderTypeView.text = record.tradeType
    }

    private fun saleTypeLabel(saleTypeId: String): String {
        return FakeQuerySellDetailRepository.sellTypes.firstOrNull { it.id == saleTypeId }?.name
            ?: saleTypeId
    }

    private fun payTypeLabel(payTypeId: String): String {
        return FakeQuerySellDetailRepository.payTypes.firstOrNull { it.id == payTypeId }?.name
            ?: payTypeId
    }

    class ViewHolder(view: View) : RecyclerView.ViewHolder(view) {
        val root: LinearLayout = view.findViewById(R.id.root)
        val goodsCodeView: TextView = view.findViewById(R.id.tv_goods_code)
        val goodsNameView: TextView = view.findViewById(R.id.tv_goods_name)
        val goodsCountView: TextView = view.findViewById(R.id.tv_goods_count)
        val goodsPriceView: TextView = view.findViewById(R.id.tv_goods_price)
        val goodsTotalMoneyView: TextView = view.findViewById(R.id.tv_goods_total_money)
        val sellTypeView: TextView = view.findViewById(R.id.tv_sell_type)
        val payTypeView: TextView = view.findViewById(R.id.tv_pay_type)
        val sellTimeView: TextView = view.findViewById(R.id.tv_sell_time)
        val orderTypeView: TextView = view.findViewById(R.id.tv_order_type)
    }
}
