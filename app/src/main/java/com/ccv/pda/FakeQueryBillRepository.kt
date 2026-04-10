package com.ccv.pda

import java.text.DecimalFormat

data class QueryBillRecord(
    val goodsCode: String,
    val goodsName: String,
    val bigTypeId: String,
    val smallTypeId: String,
    val saleTypeId: String,
    val salePrice: Double,
    val fromStock: Double,   // 库领
    val add: Double,         // 补货
    val transferIn: Double,  // 转入
    val transferOut: Double, // 转出
    val returnQty: Double,   // 退库
    val scrapped: Double,    // 报废
    val lost: Double,        // 丢失
    val saleOut: Double,     // 对外销售
    val saleIn: Double,      // 对内销售
    val sale12306: Double    // 12306销售
)

data class QueryBillSummary(
    // 配货 = 库领+补货+转入
    var inCount: Double = 0.0,
    var inAmount: Double = 0.0,
    // 转出退库 = 转出+退库
    var outCount: Double = 0.0,
    var outAmount: Double = 0.0,
    // 销售 = 对外+对内+12306
    var saleCount: Double = 0.0,
    var saleAmount: Double = 0.0,
    // 小计各列
    var fromStockCount: Double = 0.0,
    var addCount: Double = 0.0,
    var transferInCount: Double = 0.0,
    var transferOutCount: Double = 0.0,
    var returnCount: Double = 0.0,
    var scrappedCount: Double = 0.0,
    var lostCount: Double = 0.0,
    var saleOutCount: Double = 0.0,
    var saleInCount: Double = 0.0,
    var sale12306Count: Double = 0.0,
    var fromStockAmount: Double = 0.0,
    var addAmount: Double = 0.0,
    var transferInAmount: Double = 0.0,
    var transferOutAmount: Double = 0.0,
    var returnAmount: Double = 0.0,
    var scrappedAmount: Double = 0.0,
    var lostAmount: Double = 0.0,
    var saleOutAmount: Double = 0.0,
    var saleInAmount: Double = 0.0,
    var sale12306Amount: Double = 0.0
) {
    fun accumulate(r: QueryBillRecord) {
        val p = r.salePrice
        fromStockCount += r.fromStock;   fromStockAmount += r.fromStock * p
        addCount += r.add;               addAmount += r.add * p
        transferInCount += r.transferIn; transferInAmount += r.transferIn * p
        transferOutCount += r.transferOut; transferOutAmount += r.transferOut * p
        returnCount += r.returnQty;      returnAmount += r.returnQty * p
        scrappedCount += r.scrapped;     scrappedAmount += r.scrapped * p
        lostCount += r.lost;             lostAmount += r.lost * p
        saleOutCount += r.saleOut;       saleOutAmount += r.saleOut * p
        saleInCount += r.saleIn;         saleInAmount += r.saleIn * p
        sale12306Count += r.sale12306;   sale12306Amount += r.sale12306 * p

        inCount += r.fromStock + r.add + r.transferIn
        inAmount += (r.fromStock + r.add + r.transferIn) * p
        outCount += r.transferOut + r.returnQty
        outAmount += (r.transferOut + r.returnQty) * p
        saleCount += r.saleOut + r.saleIn + r.sale12306
        saleAmount += (r.saleOut + r.saleIn + r.sale12306) * p
    }
}

object FakeQueryBillRepository {

    const val ALL_ID = "all"
    private const val BIG_DRINK = "drink"
    private const val BIG_SNACK = "snack"
    private const val BIG_MEAL = "meal"
    private const val BIG_DAILY = "daily"
    private const val SMALL_SPARKLING = "sparkling"
    private const val SMALL_WATER = "water"
    private const val SMALL_TEA = "tea"
    private const val SMALL_PUFF = "puff"
    private const val SMALL_BISCUIT = "biscuit"
    private const val SMALL_MEAT = "meat"
    private const val SMALL_NOODLE = "noodle"
    private const val SMALL_BOXED = "boxed"
    private const val SMALL_TISSUE = "tissue"
    private const val SMALL_SOUVENIR = "souvenir"
    const val SALE_ALL = ALL_ID
    private const val SALE_NORMAL = "normal"
    private const val SALE_ONLINE = "online"
    private const val SALE_RETURN = "return"

    val bigTypes = listOf(
        BillFilterOption(ALL_ID, "全部"),
        BillFilterOption(BIG_DRINK, "饮品"),
        BillFilterOption(BIG_SNACK, "零食"),
        BillFilterOption(BIG_MEAL, "餐食"),
        BillFilterOption(BIG_DAILY, "百货")
    )

    val saleTypes = listOf(
        BillFilterOption(ALL_ID, "全部"),
        BillFilterOption(SALE_NORMAL, "正常销售"),
        BillFilterOption(SALE_ONLINE, "线上支付"),
        BillFilterOption(SALE_RETURN, "现金退货")
    )

    private val smallTypes = listOf(
        BillFilterOption(SMALL_SPARKLING, "气泡饮料"),
        BillFilterOption(SMALL_WATER, "矿泉水"),
        BillFilterOption(SMALL_TEA, "茶饮"),
        BillFilterOption(SMALL_PUFF, "膨化零食"),
        BillFilterOption(SMALL_BISCUIT, "饼干糕点"),
        BillFilterOption(SMALL_MEAT, "肉制零食"),
        BillFilterOption(SMALL_NOODLE, "方便餐食"),
        BillFilterOption(SMALL_BOXED, "盒装餐食"),
        BillFilterOption(SMALL_TISSUE, "纸品"),
        BillFilterOption(SMALL_SOUVENIR, "纪念品")
    )

    private val smallTypeBigMap = mapOf(
        SMALL_SPARKLING to BIG_DRINK, SMALL_WATER to BIG_DRINK, SMALL_TEA to BIG_DRINK,
        SMALL_PUFF to BIG_SNACK, SMALL_BISCUIT to BIG_SNACK, SMALL_MEAT to BIG_SNACK,
        SMALL_NOODLE to BIG_MEAL, SMALL_BOXED to BIG_MEAL,
        SMALL_TISSUE to BIG_DAILY, SMALL_SOUVENIR to BIG_DAILY
    )

    private val fmt = DecimalFormat("0.##")
    fun fmt(v: Double): String = if (v == 0.0) "" else fmt.format(v)
    fun fmtAmount(v: Double): String = if (v == 0.0) "" else fmt.format(v)

    private val allRecords = listOf(
        QueryBillRecord("690201010001", "元气森林苏打气泡水", BIG_DRINK, SMALL_SPARKLING, SALE_NORMAL, 10.0, 24.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 15.0, 0.0, 0.0),
        QueryBillRecord("690201010002", "农夫山泉矿泉水", BIG_DRINK, SMALL_WATER, SALE_ONLINE, 4.0, 36.0, 2.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, 6.0),
        QueryBillRecord("690201010003", "东方树叶乌龙茶", BIG_DRINK, SMALL_TEA, SALE_NORMAL, 6.0, 18.0, 0.0, 2.0, 0.0, 0.0, 1.0, 0.0, 8.0, 0.0, 4.0),
        QueryBillRecord("690201010004", "可口可乐", BIG_DRINK, SMALL_SPARKLING, SALE_ONLINE, 8.0, 20.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 10.0, 2.0, 3.0),
        QueryBillRecord("690201030004", "原切薯片", BIG_SNACK, SMALL_PUFF, SALE_ONLINE, 12.0, 16.0, 1.0, 0.0, 0.0, 0.0, 0.0, 1.0, 9.0, 0.0, 2.0),
        QueryBillRecord("690201040002", "奥利奥夹心饼干", BIG_SNACK, SMALL_BISCUIT, SALE_NORMAL, 8.0, 20.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 10.0, 4.0, 0.0),
        QueryBillRecord("690201070003", "香辣鸭脖", BIG_SNACK, SMALL_MEAT, SALE_NORMAL, 16.0, 14.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 8.0, 1.0, 1.0),
        QueryBillRecord("690201070004", "猪肉脯", BIG_SNACK, SMALL_MEAT, SALE_RETURN, 14.0, 10.0, 0.0, 0.0, 2.0, 0.0, 0.0, 0.0, 5.0, 0.0, 0.0),
        QueryBillRecord("690201050001", "红烧牛肉面", BIG_MEAL, SMALL_NOODLE, SALE_RETURN, 15.0, 30.0, 0.0, 3.0, 0.0, 2.0, 1.0, 0.0, 12.0, 0.0, 4.0),
        QueryBillRecord("690201050002", "老坛酸菜面", BIG_MEAL, SMALL_NOODLE, SALE_NORMAL, 12.0, 25.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 14.0, 3.0, 2.0),
        QueryBillRecord("690201080001", "台式卤肉饭", BIG_MEAL, SMALL_BOXED, SALE_ONLINE, 28.0, 15.0, 0.0, 2.0, 0.0, 0.0, 0.0, 0.0, 6.0, 0.0, 3.0),
        QueryBillRecord("690201080002", "红烧排骨饭", BIG_MEAL, SMALL_BOXED, SALE_ONLINE, 30.0, 12.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 5.0, 1.0, 2.0),
        QueryBillRecord("690201060001", "高铁纸巾", BIG_DAILY, SMALL_TISSUE, SALE_RETURN, 3.0, 40.0, 0.0, 0.0, 0.0, 3.0, 0.0, 1.0, 12.0, 0.0, 0.0),
        QueryBillRecord("690201060003", "纪念扑克", BIG_DAILY, SMALL_SOUVENIR, SALE_NORMAL, 10.0, 12.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 4.0, 2.0, 0.0),
        QueryBillRecord("690201060004", "高铁冰箱贴", BIG_DAILY, SMALL_SOUVENIR, SALE_NORMAL, 15.0, 8.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 3.0, 1.0, 1.0)
    )

    fun smallTypesFor(bigTypeId: String): List<BillFilterOption> {
        val all = BillFilterOption(ALL_ID, "全部")
        if (bigTypeId == ALL_ID) return listOf(all)
        val bigKey = when (bigTypeId) {
            BIG_DRINK -> listOf(SMALL_SPARKLING, SMALL_WATER, SMALL_TEA)
            BIG_SNACK -> listOf(SMALL_PUFF, SMALL_BISCUIT, SMALL_MEAT)
            BIG_MEAL -> listOf(SMALL_NOODLE, SMALL_BOXED)
            BIG_DAILY -> listOf(SMALL_TISSUE, SMALL_SOUVENIR)
            else -> emptyList()
        }
        return buildList {
            add(all)
            addAll(smallTypes.filter { it.id in bigKey })
        }
    }

    fun query(bigTypeId: String, smallTypeId: String, saleTypeId: String, keyword: String): Pair<List<QueryBillRecord>, QueryBillSummary> {
        val kw = keyword.trim()
        val records = allRecords.filter { r ->
            (bigTypeId == ALL_ID || r.bigTypeId == bigTypeId) &&
            (smallTypeId == ALL_ID || r.smallTypeId == smallTypeId) &&
            (saleTypeId == ALL_ID || r.saleTypeId == saleTypeId) &&
            (kw.isBlank() || r.goodsName.contains(kw, true) || r.goodsCode.contains(kw))
        }
        val summary = QueryBillSummary()
        records.forEach { summary.accumulate(it) }
        return records to summary
    }
}

data class BillFilterOption(val id: String, val name: String)
