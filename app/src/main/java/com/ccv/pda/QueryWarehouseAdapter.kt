package com.ccv.pda

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView

class QueryWarehouseAdapter : RecyclerView.Adapter<QueryWarehouseAdapter.ViewHolder>() {

    var items: List<QueryWarehouseRecord> = emptyList()
        set(value) {
            field = value
            notifyDataSetChanged()
        }

    class ViewHolder(view: View) : RecyclerView.ViewHolder(view) {
        val tvTitle: TextView = view.findViewById(R.id.iql_tv_title)
        val llDataRow: View = (view as android.view.ViewGroup).getChildAt(1)
        val tvGoodsCode: TextView = view.findViewById(R.id.iql_tv_goods_code)
        val tvGoodsName: TextView = view.findViewById(R.id.iql_tv_goods_name)
        val tvCount: TextView = view.findViewById(R.id.iql_tv_goods_count)
        val tvPrice: TextView = view.findViewById(R.id.iql_tv_goods_price)
        val tvTotalPrice: TextView = view.findViewById(R.id.iql_tv_total_price)
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val view = LayoutInflater.from(parent.context)
            .inflate(R.layout.item_qwa_list, parent, false)
        return ViewHolder(view)
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        val item = items[position]
        
        if (position == 0 || item.categoryName != items[position - 1].categoryName) {
            holder.tvTitle.visibility = View.VISIBLE
            holder.tvTitle.text = item.categoryName
        } else {
            holder.tvTitle.visibility = View.GONE
        }

        if (item.count == 0) {
            holder.llDataRow.setBackgroundColor(android.graphics.Color.parseColor("#fb6565"))
        } else {
            holder.llDataRow.setBackgroundColor(android.graphics.Color.TRANSPARENT)
        }

        holder.tvGoodsCode.text = item.goodsCode
        holder.tvGoodsName.text = item.goodsName
        holder.tvCount.text = item.count.toString()
        holder.tvPrice.text = FakeQueryWarehouseRepository.fmt(item.price)
        holder.tvTotalPrice.text = FakeQueryWarehouseRepository.fmt(item.totalPrice)
    }

    override fun getItemCount() = items.size
}
