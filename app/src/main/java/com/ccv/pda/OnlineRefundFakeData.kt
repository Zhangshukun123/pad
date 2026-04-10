package com.ccv.pda

import java.text.DecimalFormat
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

data class FakeRefundGoodsItem(
    val goodsCode: String,
    val goodsName: String,
    val count: Int,
    val price: Double,
    var selected: Boolean = false
) {
    val subtotal: Double
        get() = count * price
}

data class FakeSimpleRefundOrder(
    val transactionCode: String,
    val orderNo: String,
    val orderDate: String,
    val paymentType: String,
    val trainName: String,
    val outDate: String,
    val receiptAmount: Double,
    val goods: List<FakeRefundGoodsItem>
)

data class FakeJdRefundOrder(
    val orderCode: String,
    val orderDate: String,
    val orderAmount: Double,
    val payChannel: String,
    val orderDetail: String,
    var refundState: String,
    var canRefund: Boolean
)

object OnlineRefundFakeRepository {

    private val amountFormatter = DecimalFormat("0.00")

    fun querySimpleOrder(
        transactionCode: String,
        trainNo: String,
        roadDate: String
    ): FakeSimpleRefundOrder {
        val normalizedCode = transactionCode.trim()
        val goods = mutableListOf(
            FakeRefundGoodsItem(
                goodsCode = "6901234560012",
                goodsName = "矿泉水",
                count = 2,
                price = 3.0
            ),
            FakeRefundGoodsItem(
                goodsCode = "6971234568890",
                goodsName = "卤蛋",
                count = 1,
                price = 4.5
            )
        )
        if (normalizedCode.takeLast(1).toIntOrNull()?.rem(2) == 1) {
            goods += FakeRefundGoodsItem(
                goodsCode = "6936666661008",
                goodsName = "盒饭",
                count = 1,
                price = 28.0
            )
        }
        return FakeSimpleRefundOrder(
            transactionCode = normalizedCode,
            orderNo = buildOrderNo(normalizedCode),
            orderDate = formatRoadDateTime(roadDate, "08:42:15"),
            paymentType = "普通订单",
            trainName = trainNo.ifBlank { "DJ5902" },
            outDate = formatRoadDate(roadDate),
            receiptAmount = goods.sumOf { it.subtotal },
            goods = goods
        )
    }

    fun queryJdOrders(
        trainNo: String,
        roadDate: String,
        newestFirst: Boolean
    ): List<FakeJdRefundOrder> {
        val orders = mutableListOf(
            FakeJdRefundOrder(
                orderCode = "JD${trainNo.ifBlank { "DJ5902" }}0001",
                orderDate = formatRoadDateTime(roadDate, "09:10:22"),
                orderAmount = 36.50,
                payChannel = "京东支付",
                orderDetail = "矿泉水 x2，泡面 x1",
                refundState = "可退款",
                canRefund = true
            ),
            FakeJdRefundOrder(
                orderCode = "JD${trainNo.ifBlank { "DJ5902" }}0002",
                orderDate = formatRoadDateTime(roadDate, "10:26:48"),
                orderAmount = 18.00,
                payChannel = "京东支付",
                orderDetail = "咖啡 x1，三明治 x1",
                refundState = "已退款",
                canRefund = false
            ),
            FakeJdRefundOrder(
                orderCode = "JD${trainNo.ifBlank { "DJ5902" }}0003",
                orderDate = formatRoadDateTime(roadDate, "11:43:06"),
                orderAmount = 52.00,
                payChannel = "京东支付",
                orderDetail = "盒饭 x1，饮料 x2",
                refundState = "可退款",
                canRefund = true
            )
        )
        return if (newestFirst) orders.reversed() else orders
    }

    fun amountText(amount: Double): String {
        return "¥${amountFormatter.format(amount)}"
    }

    fun formatRoadDate(roadDate: String): String {
        if (roadDate.length != 8) {
            return roadDate.ifBlank {
                SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(Date())
            }
        }
        return try {
            val source = SimpleDateFormat("yyyyMMdd", Locale.getDefault())
            val target = SimpleDateFormat("yyyy-MM-dd", Locale.getDefault())
            target.format(source.parse(roadDate) ?: Date())
        } catch (_: Throwable) {
            roadDate
        }
    }

    fun formatRoadDateTime(roadDate: String, timeText: String): String {
        return "${formatRoadDate(roadDate)} $timeText"
    }

    private fun buildOrderNo(transactionCode: String): String {
        val suffix = transactionCode.filter { it.isLetterOrDigit() }.takeLast(10).padStart(10, '0')
        return "ON$suffix"
    }
}
