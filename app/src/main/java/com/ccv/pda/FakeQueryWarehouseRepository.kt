package com.ccv.pda

import java.text.DecimalFormat

data class QueryWarehouseSummary(
    val totalCount: Int = 0,
    val totalAmount: Double = 0.0
)

data class QueryWarehouseRecord(
    val goodsCode: String,
    val goodsName: String,
    val count: Int,
    val price: Double,
    val totalPrice: Double,
    val categoryName: String = ""
)

data class WarehouseGoodsCategory(
    val id: String,
    val name: String
)

object FakeQueryWarehouseRepository {

    const val ALL_ID = "ALL"

    private val df = DecimalFormat("#0.00")

    val bigTypes = listOf(
        WarehouseGoodsCategory(ALL_ID, "全部"),
        WarehouseGoodsCategory("1", "常温餐"),
        WarehouseGoodsCategory("2", "冷藏餐"),
        WarehouseGoodsCategory("3", "零食"),
        WarehouseGoodsCategory("4", "饮品")
    )

    fun smallTypesFor(bigTypeId: String): List<WarehouseGoodsCategory> {
        return when (bigTypeId) {
            "1" -> listOf(
                WarehouseGoodsCategory(ALL_ID, "全部"),
                WarehouseGoodsCategory("11", "盒饭"),
                WarehouseGoodsCategory("12", "盖浇饭")
            )
            "2" -> listOf(
                WarehouseGoodsCategory(ALL_ID, "全部"),
                WarehouseGoodsCategory("21", "面条"),
                WarehouseGoodsCategory("22", "速食")
            )
            "3" -> listOf(
                WarehouseGoodsCategory(ALL_ID, "全部"),
                WarehouseGoodsCategory("31", "薯片"),
                WarehouseGoodsCategory("32", "糖果")
            )
            "4" -> listOf(
                WarehouseGoodsCategory(ALL_ID, "全部"),
                WarehouseGoodsCategory("41", "矿泉水"),
                WarehouseGoodsCategory("42", "果汁"),
                WarehouseGoodsCategory("43", "碳酸饮料")
            )
            else -> listOf(WarehouseGoodsCategory(ALL_ID, "全部"))
        }
    }

    private val mockDb = buildList {
        add(QueryWarehouseRecord("GZT477463", "VIP蛋花汤", 0, 0.0, 0.0, "汤/粥"))
        add(QueryWarehouseRecord("GZT528535", "红烧牛肉面 (禁售)", 0, 0.0, 0.0, "汤/粥"))

        add(QueryWarehouseRecord("G14921282", "常温早餐", 0, 0.0, 0.0, "早餐"))
        add(QueryWarehouseRecord("G16170759", "商务早餐", 0, 0.0, 0.0, "早餐"))

        add(QueryWarehouseRecord("G08749241", "鸡丝拌面", 0, 15.0, 0.0, "餐食"))
        add(QueryWarehouseRecord("G17965174", "(河南特色小碗菜) 平顶山鲁山揽锅菜...", 0, 15.0, 0.0, "餐食"))
        add(QueryWarehouseRecord("G17962613", "(河南特色小碗菜) 濮阳清丰苗茹小炒...", 0, 28.0, 0.0, "餐食"))
        add(QueryWarehouseRecord("G17266824", "嘉座红烧牛肉饭(预包装)", 0, 45.0, 0.0, "餐食"))
        add(QueryWarehouseRecord("G17473961", "嗨味亿家红烧牛肉面(预包装)", 0, 45.0, 0.0, "餐食"))
        add(QueryWarehouseRecord("G17547350", "海福盛港式腊味煲仔饭(预包装)", 0, 45.0, 0.0, "餐食"))
        add(QueryWarehouseRecord("G17582974", "和园番茄排骨面(预包装)", 0, 45.0, 0.0, "餐食"))
        add(QueryWarehouseRecord("G17788814", "和园香辣牛肉面(预包装)", 0, 45.0, 0.0, "餐食"))
        add(QueryWarehouseRecord("G17123895", "农家红烧肉套餐", 0, 65.0, 0.0, "餐食"))
        add(QueryWarehouseRecord("G17429430", "川香回锅肉套餐", 0, 65.0, 0.0, "餐食"))
        add(QueryWarehouseRecord("G17748322", "黑椒凤梨牛仔粒套餐(清真)", 0, 68.0, 0.0, "餐食"))
    }

    fun query(bigTypeId: String, smallTypeId: String, keyword: String): Pair<List<QueryWarehouseRecord>, QueryWarehouseSummary> {
        val filtered = mockDb.filter {
            (keyword.isEmpty() || it.goodsName.contains(keyword) || it.goodsCode.contains(keyword))
        }

        val totalCount = filtered.sumOf { it.count }
        val totalAmount = filtered.sumOf { it.totalPrice }

        val summary = QueryWarehouseSummary(
            totalCount = totalCount,
            totalAmount = totalAmount
        )

        return Pair(filtered, summary)
    }

    fun fmt(price: Double): String = df.format(price)
}
