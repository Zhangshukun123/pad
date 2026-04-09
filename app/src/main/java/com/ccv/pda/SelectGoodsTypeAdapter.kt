package com.ccv.pda

import android.graphics.Typeface
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.core.content.ContextCompat
import androidx.recyclerview.widget.RecyclerView

class SelectGoodsTypeAdapter(
    private val onItemClick: (FakeGoodsCategory) -> Unit
) : RecyclerView.Adapter<SelectGoodsTypeAdapter.SelectGoodsTypeViewHolder>() {

    var items: List<FakeGoodsCategory> = emptyList()
        set(value) {
            field = value
            notifyDataSetChanged()
        }

    var selectedCategoryId: String? = null
        set(value) {
            field = value
            notifyDataSetChanged()
        }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): SelectGoodsTypeViewHolder {
        val view = LayoutInflater.from(parent.context)
            .inflate(R.layout.item_select_goods_type, parent, false)
        return SelectGoodsTypeViewHolder(view, onItemClick)
    }

    override fun onBindViewHolder(holder: SelectGoodsTypeViewHolder, position: Int) {
        val item = items[position]
        holder.bind(item, item.id == selectedCategoryId)
    }

    override fun getItemCount(): Int = items.size

    class SelectGoodsTypeViewHolder(
        itemView: View,
        private val onItemClick: (FakeGoodsCategory) -> Unit
    ) : RecyclerView.ViewHolder(itemView) {

        private val nameView: TextView = itemView.findViewById(R.id.isgt_tv_name)

        fun bind(item: FakeGoodsCategory, selected: Boolean) {
            nameView.text = item.name
            nameView.setBackgroundColor(
                ContextCompat.getColor(
                    itemView.context,
                    if (selected) R.color.white else R.color.lightgray
                )
            )
            nameView.setTextColor(ContextCompat.getColor(itemView.context, R.color.black))
            nameView.typeface = if (selected) Typeface.DEFAULT_BOLD else Typeface.DEFAULT
            itemView.setOnClickListener { onItemClick(item) }
        }
    }
}
