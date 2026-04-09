package com.ccv.pda

import android.graphics.Color
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView

class SelectCurrentTrainAdapter(
    private val items: List<FakeCrossRoad>,
    private val selectedRoadId: String,
    private val onItemClick: (FakeCrossRoad) -> Unit
) : RecyclerView.Adapter<SelectCurrentTrainAdapter.ViewHolder>() {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val itemView = LayoutInflater.from(parent.context)
            .inflate(R.layout.item_menu_train_option, parent, false)
        return ViewHolder(itemView)
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        holder.bind(items[position], items[position].roadId == selectedRoadId)
    }

    override fun getItemCount(): Int = items.size

    inner class ViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {
        private val trainNoView: TextView = itemView.findViewById(R.id.menu_train_option_tv_train_no)
        private val detailView: TextView = itemView.findViewById(R.id.menu_train_option_tv_detail)

        fun bind(item: FakeCrossRoad, selected: Boolean) {
            trainNoView.text = item.trainNo
            detailView.text = itemView.context.getString(
                R.string.menu_train_option_detail,
                item.teamName,
                item.roadDate
            )

            itemView.setBackgroundColor(
                if (selected) Color.parseColor("#EAF5E2") else Color.WHITE
            )
            itemView.setOnClickListener {
                onItemClick(item)
            }
        }
    }
}
