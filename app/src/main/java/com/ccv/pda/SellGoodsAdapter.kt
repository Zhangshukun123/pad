package com.ccv.pda

import android.graphics.Color
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import java.io.Serializable
import java.text.DecimalFormat

class SellGoodsAdapter : RecyclerView.Adapter<SellGoodsAdapter.SellGoodsViewHolder>() {

    var items: List<FakeSellGood> = emptyList()
        set(value) {
            field = value
            notifyDataSetChanged()
        }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): SellGoodsViewHolder {
        val view = LayoutInflater.from(parent.context).inflate(R.layout.item_sell_goods, parent, false)
        return SellGoodsViewHolder(view)
    }

    override fun onBindViewHolder(holder: SellGoodsViewHolder, position: Int) {
        holder.bind(items[position], position)
    }

    override fun getItemCount(): Int = items.size

    class SellGoodsViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {

        private val formatter = DecimalFormat("0.##")
        private val nameView: TextView = itemView.findViewById(R.id.isg_tv_goods_name)
        private val countView: TextView = itemView.findViewById(R.id.isg_tv_goods_count)
        private val priceView: TextView = itemView.findViewById(R.id.isg_tv_goods_price)
        private val typeView: TextView = itemView.findViewById(R.id.isg_tv_goods_type)
        private val codeView: TextView = itemView.findViewById(R.id.isg_tv_goods_code)
        private val amountView: TextView = itemView.findViewById(R.id.isg_tv_goods_amount)
        private val cellViews = listOf(nameView, countView, priceView, typeView, codeView, amountView)

        fun bind(item: FakeSellGood, position: Int) {
            nameView.text = item.name
            countView.text = item.quantity.toString()
            priceView.text = formatter.format(item.price)
            typeView.text = item.typeName
            codeView.text = item.code
            amountView.text = formatter.format(item.amount)

            val backgroundColor = if (position % 2 == 0) {
                Color.parseColor("#FFF6F6F6")
            } else {
                Color.parseColor("#FFFFFFFF")
            }
            cellViews.forEach { it.setBackgroundColor(backgroundColor) }
        }
    }
}

data class FakeSellGood(
    val name: String,
    val quantity: Int,
    val price: Double,
    val typeName: String,
    val code: String
) : Serializable {
    val amount: Double
        get() = quantity * price
}
