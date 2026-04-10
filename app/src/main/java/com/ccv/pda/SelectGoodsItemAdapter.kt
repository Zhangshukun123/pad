package com.ccv.pda

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.core.content.ContextCompat
import androidx.recyclerview.widget.RecyclerView
import java.text.DecimalFormat

enum class SelectGoodsStockStatus {
    NORMAL,
    SOLD_OUT,
    OVER_SALE
}

data class SelectGoodsDisplayItem(
    val template: FakeGoodsTemplate,
    val count: Int,
    val headerTitle: String?
) {
    val stockStatus: SelectGoodsStockStatus
        get() = when {
            template.stock <= 0 -> SelectGoodsStockStatus.SOLD_OUT
            count > template.stock -> SelectGoodsStockStatus.OVER_SALE
            else -> SelectGoodsStockStatus.NORMAL
        }
}

class SelectGoodsItemAdapter(
    private val onItemClick: (FakeGoodsTemplate) -> Unit,
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
        return SelectGoodsItemViewHolder(view, onItemClick, onAddClick, onReduceClick)
    }

    override fun onBindViewHolder(holder: SelectGoodsItemViewHolder, position: Int) {
        holder.bind(items[position])
    }

    override fun getItemCount(): Int = items.size

    class SelectGoodsItemViewHolder(
        itemView: View,
        private val onItemClick: (FakeGoodsTemplate) -> Unit,
        private val onAddClick: (FakeGoodsTemplate) -> Unit,
        private val onReduceClick: (FakeGoodsTemplate) -> Unit
    ) : RecyclerView.ViewHolder(itemView) {

        private val formatter = DecimalFormat("0.0#")
        private val headerView: TextView = itemView.findViewById(R.id.isgg_tv_type)
        private val contentView: View = itemView.findViewById(R.id.isgg_cl_content)
        private val nameView: TextView = itemView.findViewById(R.id.isgg_tv_name)
        private val priceView: TextView = itemView.findViewById(R.id.isgg_tv_price)
        private val stockView: TextView = itemView.findViewById(R.id.isgg_tv_stock)
        private val countView: TextView = itemView.findViewById(R.id.isgg_tv_count)
        private val addView: ImageView = itemView.findViewById(R.id.isgg_iv_add)
        private val reduceView: ImageView = itemView.findViewById(R.id.isgg_iv_reduce)
        private val stockStatusView: ImageView = itemView.findViewById(R.id.isgg_iv_stock_status)

        fun bind(item: SelectGoodsDisplayItem) {
            headerView.text = item.headerTitle.orEmpty()
            headerView.visibility = if (item.headerTitle.isNullOrBlank()) View.GONE else View.VISIBLE

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

            val context = itemView.context
            when (item.stockStatus) {
                SelectGoodsStockStatus.NORMAL -> {
                    stockStatusView.visibility = View.GONE
                    nameView.setTextColor(ContextCompat.getColor(context, R.color.black))
                    stockView.setTextColor(ContextCompat.getColor(context, R.color.explain_text_color_2))
                    addView.alpha = 1f
                    priceView.alpha = 1f
                    contentView.alpha = 1f
                }

                SelectGoodsStockStatus.SOLD_OUT -> {
                    stockStatusView.visibility = View.VISIBLE
                    stockStatusView.setImageResource(R.mipmap.ic_sale_all)
                    nameView.setTextColor(ContextCompat.getColor(context, R.color.explain_text_color_2))
                    stockView.setTextColor(ContextCompat.getColor(context, R.color.red))
                    addView.alpha = 0.35f
                    priceView.alpha = 0.85f
                    contentView.alpha = 0.92f
                }

                SelectGoodsStockStatus.OVER_SALE -> {
                    stockStatusView.visibility = View.VISIBLE
                    stockStatusView.setImageResource(R.mipmap.ic_over_sale)
                    nameView.setTextColor(ContextCompat.getColor(context, R.color.explain_text_color_2))
                    stockView.setTextColor(ContextCompat.getColor(context, R.color.red))
                    addView.alpha = 0.35f
                    priceView.alpha = 0.85f
                    contentView.alpha = 0.92f
                }
            }

            reduceView.alpha = if (item.count > 0) 1f else 0.35f

            contentView.setOnClickListener {
                onItemClick(item.template)
            }
            addView.setOnClickListener {
                if (item.stockStatus == SelectGoodsStockStatus.NORMAL) {
                    onAddClick(item.template)
                }
            }
            reduceView.setOnClickListener {
                if (item.count > 0) {
                    onReduceClick(item.template)
                }
            }
        }
    }
}
