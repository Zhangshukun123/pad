package com.ccv.pda

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView

data class SystemSettingItem(
    val title: String,
    val detail: String,
    val iconRes: Int
)

class SystemSettingAdapter(
    private val onItemClick: (SystemSettingItem) -> Unit
) : RecyclerView.Adapter<SystemSettingAdapter.ViewHolder>() {

    private val items = mutableListOf<SystemSettingItem>()

    fun submitList(newItems: List<SystemSettingItem>) {
        items.clear()
        items.addAll(newItems)
        notifyDataSetChanged()
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val itemView = LayoutInflater.from(parent.context)
            .inflate(R.layout.item_system_setting, parent, false)
        return ViewHolder(itemView)
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        holder.bind(items[position])
    }

    override fun getItemCount(): Int = items.size

    inner class ViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {
        private val iconView: ImageView = itemView.findViewById(R.id.system_image)
        private val titleView: TextView = itemView.findViewById(R.id.system_title)
        private val detailView: TextView = itemView.findViewById(R.id.system_detail)

        fun bind(item: SystemSettingItem) {
            iconView.setImageResource(item.iconRes)
            titleView.text = item.title
            detailView.text = item.detail
            itemView.setOnClickListener {
                val position = bindingAdapterPosition
                if (position != RecyclerView.NO_POSITION) {
                    onItemClick(items[position])
                }
            }
        }
    }
}
