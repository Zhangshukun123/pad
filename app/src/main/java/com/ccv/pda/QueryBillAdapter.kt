package com.ccv.pda

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.LinearLayout
import android.widget.TextView
import androidx.core.content.ContextCompat
import androidx.recyclerview.widget.RecyclerView

class QueryBillAdapter : RecyclerView.Adapter<QueryBillAdapter.ViewHolder>() {

    var items: List<QueryBillRecord> = emptyList()
        set(value) {
            field = value
            notifyDataSetChanged()
        }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val view = LayoutInflater.from(parent.context)
            .inflate(R.layout.item_query_bill, parent, false)
        return ViewHolder(view)
    }

    override fun getItemCount(): Int = items.size

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        val record = items[position]
        val bgColor = if (position % 2 == 0) R.color.table_row_background_even
                      else R.color.table_row_background_odd
        holder.root.setBackgroundColor(ContextCompat.getColor(holder.itemView.context, bgColor))

        holder.goodsNameView.text = record.goodsName
        holder.priceView.text = FakeQueryBillRepository.fmt(record.salePrice)
        holder.fromStockView.text = FakeQueryBillRepository.fmt(record.fromStock)
        holder.addView.text = FakeQueryBillRepository.fmt(record.add)
        holder.transferInView.text = FakeQueryBillRepository.fmt(record.transferIn)
        holder.transferOutView.text = FakeQueryBillRepository.fmt(record.transferOut)
        holder.returnView.text = FakeQueryBillRepository.fmt(record.returnQty)
        holder.scrappedView.text = FakeQueryBillRepository.fmt(record.scrapped)
        holder.lostView.text = FakeQueryBillRepository.fmt(record.lost)
        holder.saleOutView.text = FakeQueryBillRepository.fmt(record.saleOut)
        holder.saleInView.text = FakeQueryBillRepository.fmt(record.saleIn)
        holder.sale12306View.text = FakeQueryBillRepository.fmt(record.sale12306)
    }

    class ViewHolder(view: View) : RecyclerView.ViewHolder(view) {
        val root: LinearLayout = view.findViewById(R.id.root)
        val goodsNameView: TextView = view.findViewById(R.id.iaqbl_tv_goods_name)
        val priceView: TextView = view.findViewById(R.id.iaqbl_tv_goods_price)
        val fromStockView: TextView = view.findViewById(R.id.iaqbl_tv_goods_from_stock)
        val addView: TextView = view.findViewById(R.id.iaqbl_tv_goods_add)
        val transferInView: TextView = view.findViewById(R.id.iaqbl_tv_goods_transfer_in)
        val transferOutView: TextView = view.findViewById(R.id.iaqbl_tv_goods_transfer_out)
        val returnView: TextView = view.findViewById(R.id.iaqbl_tv_goods_return)
        val scrappedView: TextView = view.findViewById(R.id.iaqbl_tv_goods_scrapped)
        val lostView: TextView = view.findViewById(R.id.iaqbl_tv_goods_lost)
        val saleOutView: TextView = view.findViewById(R.id.iaqbl_tv_goods_sale_out)
        val saleInView: TextView = view.findViewById(R.id.iaqbl_tv_goods_sale_in)
        val sale12306View: TextView = view.findViewById(R.id.iaqbl_tv_goods_sale_12306)
    }
}
