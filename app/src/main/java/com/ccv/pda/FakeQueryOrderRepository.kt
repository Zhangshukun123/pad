package com.ccv.pda

import java.text.DecimalFormat

data class OrderFilterOption(val id: String, val name: String)

data class OrderDetailItem(
    val productCode: String,
    val productName: String,
    val qty: Int,
    val salePriceReal: Double,
    val salePriceSum: Double
)

data class OrderRecord(
    val orderId: String,
    val orderCode: String,
    val orderDate: String,
    val orderTotalPrice: Double,
    val payChannelName: String,
    val trainCode: String,
    val orderState: Int, // 0=正常, 1=退款
    val coachNo: String = "",
    val seatNo: String = "",
    val contacts: String = "",
    val contactsPhone: String = "",
    val orderDetailed: List<OrderDetailItem> = emptyList()
) {
    val is12306: Boolean get() = payChannelName == "12306"
    val isRefund: Boolean get() = orderState == 1
}

object FakeQueryOrderRepository {

    const val PAY_ALL = "all"
    const val PAY_CASH = "cash"
    const val PAY_ALIPAY = "alipay"
    const val PAY_WECHAT = "wechat"
    const val PAY_12306 = "12306"

    const val ORDER_TYPE_ALL = "all"
    const val ORDER_TYPE_12306 = "12306"
    const val ORDER_TYPE_PDA = "pda"

    val payTypes = listOf(
        OrderFilterOption(PAY_ALL, "全部"),
        OrderFilterOption(PAY_CASH, "现金"),
        OrderFilterOption(PAY_ALIPAY, "支付宝"),
        OrderFilterOption(PAY_WECHAT, "微信"),
        OrderFilterOption(PAY_12306, "12306")
    )

    val orderTypes = listOf(
        OrderFilterOption(ORDER_TYPE_ALL, "全部"),
        OrderFilterOption(ORDER_TYPE_12306, "12306订单"),
        OrderFilterOption(ORDER_TYPE_PDA, "PDA订单")
    )

    // 默认选中"PDA订单"的索引
    const val DEFAULT_ORDER_TYPE_INDEX = 2

    private val amountFmt = DecimalFormat("0.00")

    fun formatAmount(value: Double): String = amountFmt.format(value)

    private val allOrders = listOf(
        OrderRecord(
            orderId = "1001",
            orderCode = "ORD20260408001",
            orderDate = "2026-04-08 08:15:32",
            orderTotalPrice = 45.00,
            payChannelName = "微信",
            trainCode = "DJ5902",
            orderState = 0,
            orderDetailed = listOf(
                OrderDetailItem("G001", "矿泉水", 2, 5.00, 10.00),
                OrderDetailItem("G002", "方便面", 1, 15.00, 15.00),
                OrderDetailItem("G003", "火腿肠", 4, 5.00, 20.00)
            )
        ),
        OrderRecord(
            orderId = "1002",
            orderCode = "ORD20260408002",
            orderDate = "2026-04-08 09:30:10",
            orderTotalPrice = 28.00,
            payChannelName = "支付宝",
            trainCode = "DJ5902",
            orderState = 0,
            orderDetailed = listOf(
                OrderDetailItem("G004", "可乐", 2, 8.00, 16.00),
                OrderDetailItem("G005", "薯片", 1, 12.00, 12.00)
            )
        ),
        OrderRecord(
            orderId = "1003",
            orderCode = "ORD20260408003",
            orderDate = "2026-04-08 10:05:44",
            orderTotalPrice = 60.00,
            payChannelName = "12306",
            trainCode = "DJ5902",
            orderState = 0,
            coachNo = "3",
            seatNo = "12A",
            contacts = "张三",
            contactsPhone = "138****8888",
            orderDetailed = listOf(
                OrderDetailItem("G006", "盒饭（红烧肉）", 2, 25.00, 50.00),
                OrderDetailItem("G007", "绿茶", 2, 5.00, 10.00)
            )
        ),
        OrderRecord(
            orderId = "1004",
            orderCode = "ORD20260408004",
            orderDate = "2026-04-08 11:20:05",
            orderTotalPrice = 15.00,
            payChannelName = "现金",
            trainCode = "DJ5902",
            orderState = 1,
            orderDetailed = listOf(
                OrderDetailItem("G001", "矿泉水", 3, 5.00, 15.00)
            )
        ),
        OrderRecord(
            orderId = "1005",
            orderCode = "ORD20260408005",
            orderDate = "2026-04-08 13:45:22",
            orderTotalPrice = 88.00,
            payChannelName = "微信",
            trainCode = "DJ5902",
            orderState = 0,
            orderDetailed = listOf(
                OrderDetailItem("G006", "盒饭（红烧肉）", 2, 25.00, 50.00),
                OrderDetailItem("G008", "啤酒", 2, 12.00, 24.00),
                OrderDetailItem("G005", "薯片", 1, 14.00, 14.00)
            )
        ),
        OrderRecord(
            orderId = "1006",
            orderCode = "ORD20260408006",
            orderDate = "2026-04-08 14:10:33",
            orderTotalPrice = 36.00,
            payChannelName = "12306",
            trainCode = "DJ5902",
            orderState = 0,
            coachNo = "5",
            seatNo = "08C",
            contacts = "李四",
            contactsPhone = "139****9999",
            orderDetailed = listOf(
                OrderDetailItem("G009", "盒饭（鱼香肉丝）", 1, 25.00, 25.00),
                OrderDetailItem("G007", "绿茶", 1, 5.00, 5.00),
                OrderDetailItem("G001", "矿泉水", 1, 6.00, 6.00)
            )
        ),
        OrderRecord(
            orderId = "1007",
            orderCode = "ORD20260408007",
            orderDate = "2026-04-08 15:55:18",
            orderTotalPrice = 20.00,
            payChannelName = "现金",
            trainCode = "DJ5902",
            orderState = 0,
            orderDetailed = listOf(
                OrderDetailItem("G002", "方便面", 1, 15.00, 15.00),
                OrderDetailItem("G001", "矿泉水", 1, 5.00, 5.00)
            )
        ),
        OrderRecord(
            orderId = "1008",
            orderCode = "ORD20260408008",
            orderDate = "2026-04-08 16:22:47",
            orderTotalPrice = 52.00,
            payChannelName = "支付宝",
            trainCode = "DJ5902",
            orderState = 0,
            orderDetailed = listOf(
                OrderDetailItem("G010", "卤蛋", 4, 3.00, 12.00),
                OrderDetailItem("G006", "盒饭（红烧肉）", 1, 25.00, 25.00),
                OrderDetailItem("G007", "绿茶", 3, 5.00, 15.00)
            )
        ),
        OrderRecord(
            orderId = "1009",
            orderCode = "ORD20260408009",
            orderDate = "2026-04-08 17:08:03",
            orderTotalPrice = 75.00,
            payChannelName = "12306",
            trainCode = "DJ5902",
            orderState = 0,
            coachNo = "2",
            seatNo = "05A",
            contacts = "王五",
            contactsPhone = "136****6666",
            orderDetailed = listOf(
                OrderDetailItem("G006", "盒饭（红烧肉）", 2, 25.00, 50.00),
                OrderDetailItem("G011", "橙汁", 2, 8.00, 16.00),
                OrderDetailItem("G010", "卤蛋", 3, 3.00, 9.00)
            )
        ),
        OrderRecord(
            orderId = "1010",
            orderCode = "ORD20260408010",
            orderDate = "2026-04-08 17:45:19",
            orderTotalPrice = 30.00,
            payChannelName = "微信",
            trainCode = "DJ5902",
            orderState = 1,
            orderDetailed = listOf(
                OrderDetailItem("G009", "盒饭（鱼香肉丝）", 1, 25.00, 25.00),
                OrderDetailItem("G001", "矿泉水", 1, 5.00, 5.00)
            )
        ),
        OrderRecord(
            orderId = "1011",
            orderCode = "ORD20260408011",
            orderDate = "2026-04-08 18:30:55",
            orderTotalPrice = 16.00,
            payChannelName = "现金",
            trainCode = "DJ5902",
            orderState = 0,
            orderDetailed = listOf(
                OrderDetailItem("G004", "可乐", 2, 8.00, 16.00)
            )
        ),
        OrderRecord(
            orderId = "1012",
            orderCode = "ORD20260408012",
            orderDate = "2026-04-08 19:12:40",
            orderTotalPrice = 110.00,
            payChannelName = "支付宝",
            trainCode = "DJ5902",
            orderState = 0,
            orderDetailed = listOf(
                OrderDetailItem("G006", "盒饭（红烧肉）", 3, 25.00, 75.00),
                OrderDetailItem("G008", "啤酒", 2, 12.00, 24.00),
                OrderDetailItem("G007", "绿茶", 1, 5.00, 5.00),
                OrderDetailItem("G010", "卤蛋", 2, 3.00, 6.00)
            )
        ),
        OrderRecord(
            orderId = "1013",
            orderCode = "ORD20260409001",
            orderDate = "2026-04-09 07:55:10",
            orderTotalPrice = 50.00,
            payChannelName = "微信",
            trainCode = "DJ5902",
            orderState = 0,
            orderDetailed = listOf(
                OrderDetailItem("G009", "盒饭（鱼香肉丝）", 2, 25.00, 50.00)
            )
        ),
        OrderRecord(
            orderId = "1014",
            orderCode = "ORD20260409002",
            orderDate = "2026-04-09 09:18:22",
            orderTotalPrice = 43.00,
            payChannelName = "12306",
            trainCode = "DJ5902",
            orderState = 0,
            coachNo = "7",
            seatNo = "03B",
            contacts = "赵六",
            contactsPhone = "137****7777",
            orderDetailed = listOf(
                OrderDetailItem("G006", "盒饭（红烧肉）", 1, 25.00, 25.00),
                OrderDetailItem("G011", "橙汁", 1, 8.00, 8.00),
                OrderDetailItem("G005", "薯片", 1, 10.00, 10.00)
            )
        ),
        OrderRecord(
            orderId = "1015",
            orderCode = "ORD20260409003",
            orderDate = "2026-04-09 11:40:08",
            orderTotalPrice = 24.00,
            payChannelName = "现金",
            trainCode = "DJ5902",
            orderState = 0,
            orderDetailed = listOf(
                OrderDetailItem("G004", "可乐", 1, 8.00, 8.00),
                OrderDetailItem("G002", "方便面", 1, 15.00, 15.00),
                OrderDetailItem("G001", "矿泉水", 1, 5.00, 5.00) // 实际小计应为5，但总价24含优惠
            )
        )
    )

    fun query(payTypeId: String, orderTypeId: String, trainCode: String,
              startDate: String = "", endDate: String = "", sortNewest: Boolean = true): List<OrderRecord> {
        val result = allOrders.filter { order ->
            val matchPay = when (payTypeId) {
                PAY_ALL -> true
                PAY_CASH -> order.payChannelName == "现金"
                PAY_ALIPAY -> order.payChannelName == "支付宝"
                PAY_WECHAT -> order.payChannelName == "微信"
                PAY_12306 -> order.payChannelName == "12306"
                else -> true
            }
            val matchType = when (orderTypeId) {
                ORDER_TYPE_ALL -> true
                ORDER_TYPE_12306 -> order.is12306
                ORDER_TYPE_PDA -> !order.is12306
                else -> true
            }
            val matchTrain = trainCode.isBlank() || order.trainCode.contains(trainCode, ignoreCase = true)
            val matchStart = startDate.isBlank() || order.orderDate >= startDate
            val matchEnd = endDate.isBlank() || order.orderDate <= endDate
            matchPay && matchType && matchTrain && matchStart && matchEnd
        }
        return if (sortNewest) result.sortedByDescending { it.orderDate }
        else result.sortedBy { it.orderDate }
    }
}
