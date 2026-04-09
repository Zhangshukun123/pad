package com.ccv.pda

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import java.text.DecimalFormat

data class SelectGoodsDisplayItem(
    val template: FakeGoodsTemplate,
    val count: Int
)

class SelectGoodsItemAdapter(
    private val onAddClick: (FakeGoodsTemplate) -> Unit,
    private val onReduceClick: (FakeGoodsTemplate) -> Unit
) : RecyclerView.Adapter<SelectGoodsItemAdapter.SelectGoodsItemViewHolder>() {

    var items: List<SelectGoodsDisplayItem> = emptyList()
        set(value) {
            field = value
            notifyDataSetChanged()
        }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): SelectGoodsItemViewHolder {
        val view = LayoutInflater.from(parent.context)
            .inflate(R.layout.item_select_goods_good, parent, false)
        return SelectGoodsItemViewHolder(view, onAddClick, onReduceClick)
    }

    override fun onBindViewHolder(holder: SelectGoodsItemViewHolder, position: Int) {
        holder.bind(items[position])
    }

    override fun getItemCount(): Int = items.size

    class SelectGoodsItemViewHolder(
        itemView: View,
        private val onAddClick: (FakeGoodsTemplate) -> Unit,
        private val onReduceClick: (FakeGoodsTemplate) -> Unit
    ) : RecyclerView.ViewHolder(itemView) {

        private val formatter = DecimalFormat("0.0#")
        private val nameView: TextView = itemView.findViewById(R.id.isgg_tv_name)
        private val priceView: TextView = itemView.findViewById(R.id.isgg_tv_price)
        private val stockView: TextView = itemView.findViewById(R.id.isgg_tv_stock)
        private val countView: TextView = itemView.findViewById(R.id.isgg_tv_count)
        private val addView: ImageView = itemView.findViewById(R.id.isgg_iv_add)
        private val reduceView: ImageView = itemView.findViewById(R.id.isgg_iv_reduce)

        fun bind(item: SelectGoodsDisplayItem) {
            nameView.text = item.template.name
            priceView.text = itemView.context.getString(
                R.string.select_goods_price_text,
                formatter.format(item.template.price)
            )
            stockView.text = itemView.context.getString(
                R.string.select_goods_stock_text,
                item.template.stock
            )
            countView.text = item.count.toString()
            reduceView.alpha = if (item.count > 0) 1f else 0.35f

            addView.setOnClickListener { onAddClick(item.template) }
            reduceView.setOnClickListener {
                if (item.count > 0) {
                    onReduceClick(item.template)
                }
            }
        }
    }
}
