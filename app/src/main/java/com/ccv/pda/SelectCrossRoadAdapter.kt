package com.ccv.pda

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.LinearLayout
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView

class SelectCrossRoadAdapter(
    private val items: List<FakeCrossRoad>,
    private val onItemClick: (FakeCrossRoad) -> Unit
) : RecyclerView.Adapter<SelectCrossRoadAdapter.ViewHolder>() {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val itemView = LayoutInflater.from(parent.context)
            .inflate(R.layout.item_al_select_cross_road_popup, parent, false)
        return ViewHolder(itemView)
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        holder.bind(items[position], position)
    }

    override fun getItemCount(): Int = items.size

    inner class ViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {
        private val rootView: LinearLayout = itemView.findViewById(R.id.root)
        private val trainNoView: TextView = itemView.findViewById(R.id.tv_train_no)
        private val teamNameView: TextView = itemView.findViewById(R.id.tv_team_name)
        private val roadDateView: TextView = itemView.findViewById(R.id.tv_road_date)

        fun bind(item: FakeCrossRoad, position: Int) {
            trainNoView.text = item.trainNo
            teamNameView.text = item.teamName
            roadDateView.text = item.roadDate
            rootView.setBackgroundResource(
                if (position % 2 == 0) {
                    R.color.table_row_background_even
                } else {
                    R.color.table_row_background_odd
                }
            )
            rootView.setOnClickListener {
                onItemClick(item)
            }
        }
    }
}
