package com.ccv.pda

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.LinearLayout
import android.widget.TextView
import androidx.core.content.ContextCompat
import androidx.recyclerview.widget.RecyclerView

class SaleAnalysisAdapter(
    private val onGoodsNameClick: (String) -> Unit,
    private val onAbnormalClick: (FakeSaleAnalysisRecord) -> Unit
) : RecyclerView.Adapter<SaleAnalysisAdapter.ViewHolder>() {

    var items: List<FakeSaleAnalysisRecord> = emptyList()
        set(value) {
            field = value
            notifyDataSetChanged()
        }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val view = LayoutInflater.from(parent.context)
            .inflate(R.layout.item_saa_list, parent, false)
        return ViewHolder(view)
    }

    override fun getItemCount(): Int = items.size

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        val record = items[position]
        val backgroundColor = when {
            !record.isCorrect() -> R.color.sale_analysis_row_error
            position % 2 == 0 -> R.color.table_row_background_even
            else -> R.color.table_row_background_odd
        }
        holder.root.setBackgroundColor(
            ContextCompat.getColor(holder.itemView.context, backgroundColor)
        )

        holder.goodsCodeView.text = record.goodsCode
        holder.goodsNameView.text = record.goodsName
        holder.addView.text = FakeSaleAnalysisRepository.formatQty(record.fieldOutQty)
        holder.inView.text = FakeSaleAnalysisRepository.formatQty(record.teamHandoverQty)
        holder.outStockView.text = FakeSaleAnalysisRepository.formatQty(record.outQty)
        holder.returnView.text = FakeSaleAnalysisRepository.formatQty(record.returnTeamQty)
        holder.scrapView.text = FakeSaleAnalysisRepository.formatQty(record.scrapTeamQty)
        holder.lostView.text = FakeSaleAnalysisRepository.formatQty(record.lostTeamQty)
        holder.saleView.text = FakeSaleAnalysisRepository.formatQty(record.saleDataQty)
        holder.sale12306View.text = FakeSaleAnalysisRepository.formatQty(record.saleDataQty12306)
        holder.outView.text = FakeSaleAnalysisRepository.formatQty(record.teamHandoverToQty)
        holder.trainStockView.text = FakeSaleAnalysisRepository.formatQty(record.teamNumberQty)

        holder.goodsNameView.setOnClickListener { onGoodsNameClick(record.goodsName) }
        holder.root.setOnClickListener {
            if (!record.isCorrect()) {
                onAbnormalClick(record)
            }
        }
    }

    class ViewHolder(view: View) : RecyclerView.ViewHolder(view) {
        val root: LinearLayout = view.findViewById(R.id.root)
        val goodsCodeView: TextView = view.findViewById(R.id.isl_tv_goods_code)
        val goodsNameView: TextView = view.findViewById(R.id.isl_tv_goods_name)
        val addView: TextView = view.findViewById(R.id.isl_tv_goods_add)
        val inView: TextView = view.findViewById(R.id.isl_tv_goods_in)
        val outStockView: TextView = view.findViewById(R.id.isl_tv_goods_out_stock)
        val returnView: TextView = view.findViewById(R.id.isl_tv_goods_return)
        val scrapView: TextView = view.findViewById(R.id.isl_tv_goods_scrap)
        val lostView: TextView = view.findViewById(R.id.isl_tv_goods_lost)
        val saleView: TextView = view.findViewById(R.id.isl_tv_goods_goods_sale)
        val sale12306View: TextView = view.findViewById(R.id.isl_tv_goods_goods_sale_12306)
        val outView: TextView = view.findViewById(R.id.isl_tv_goods_out)
        val trainStockView: TextView = view.findViewById(R.id.isl_tv_goods_tran_stock)
    }
}
