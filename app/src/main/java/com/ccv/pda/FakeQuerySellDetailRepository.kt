package com.ccv.pda

import java.text.DecimalFormat

data class FakeQuerySellDetailRecord(
    val goodsCode: String,
    val goodsName: String,
    val bigTypeId: String,
    val smallTypeId: String,
    val saleTypeId: String,
    val payTypeId: String,
    val qty: Double,
    val salePriceReal: Double,
    val saleUploadDate: String,
    val tradeType: String,
    val discountAmount: Double,
    val onlySelf: Boolean
)

data class FakeQuerySellDetailSummary(
    val saleQty: Double = 0.0,
    val saleAmount: Double = 0.0,
    val returnQty: Double = 0.0,
    val returnAmount: Double = 0.0,
    val discountAmount: Double = 0.0
)

data class FakeQuerySellDetailResult(
    val records: List<FakeQuerySellDetailRecord>,
    val summary: FakeQuerySellDetailSummary
)

object FakeQuerySellDetailRepository {

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

    const val SALE_NORMAL = "normal"
    const val SALE_RETURN = "return"
    const val SALE_ONLINE = "online"

    private const val PAY_CASH = "cash"
    private const val PAY_ALIPAY = "alipay"
    private const val PAY_WECHAT = "wechat"
    private const val PAY_12306 = "12306"

    private val qtyFormatter = DecimalFormat("0.##")
    private val amountFormatter = DecimalFormat("0.00")

    val bigTypes = listOf(
        FakeSaleAnalysisOption(ALL_ID, "全部"),
        FakeSaleAnalysisOption(BIG_DRINK, "饮品"),
        FakeSaleAnalysisOption(BIG_SNACK, "零食"),
        FakeSaleAnalysisOption(BIG_MEAL, "餐食"),
        FakeSaleAnalysisOption(BIG_DAILY, "百货")
    )

    val sellTypes = listOf(
        FakeSaleAnalysisOption(ALL_ID, "全部"),
        FakeSaleAnalysisOption(SALE_NORMAL, "正常销售"),
        FakeSaleAnalysisOption(SALE_ONLINE, "线上支付"),
        FakeSaleAnalysisOption(SALE_RETURN, "现金退货")
    )

    val payTypes = listOf(
        FakeSaleAnalysisOption(ALL_ID, "全部"),
        FakeSaleAnalysisOption(PAY_CASH, "现金"),
        FakeSaleAnalysisOption(PAY_ALIPAY, "支付宝"),
        FakeSaleAnalysisOption(PAY_WECHAT, "微信"),
        FakeSaleAnalysisOption(PAY_12306, "12306支付")
    )

    private val smallTypes = listOf(
        FakeSaleAnalysisSmallType(SMALL_SPARKLING, BIG_DRINK, "气泡饮料"),
        FakeSaleAnalysisSmallType(SMALL_WATER, BIG_DRINK, "矿泉水"),
        FakeSaleAnalysisSmallType(SMALL_TEA, BIG_DRINK, "茶饮"),
        FakeSaleAnalysisSmallType(SMALL_PUFF, BIG_SNACK, "膨化零食"),
        FakeSaleAnalysisSmallType(SMALL_BISCUIT, BIG_SNACK, "饼干糕点"),
        FakeSaleAnalysisSmallType(SMALL_MEAT, BIG_SNACK, "肉制零食"),
        FakeSaleAnalysisSmallType(SMALL_NOODLE, BIG_MEAL, "方便餐食"),
        FakeSaleAnalysisSmallType(SMALL_BOXED, BIG_MEAL, "盒装餐食"),
        FakeSaleAnalysisSmallType(SMALL_TISSUE, BIG_DAILY, "纸品"),
        FakeSaleAnalysisSmallType(SMALL_SOUVENIR, BIG_DAILY, "纪念品")
    )

    private val allRecords = listOf(
        FakeQuerySellDetailRecord(
            goodsCode = "690201010001",
            goodsName = "元气森林苏打气泡水",
            bigTypeId = BIG_DRINK,
            smallTypeId = SMALL_SPARKLING,
            saleTypeId = SALE_NORMAL,
            payTypeId = PAY_WECHAT,
            qty = 3.0,
            salePriceReal = 10.0,
            saleUploadDate = "2026-04-08 08:12",
            tradeType = "普通",
            discountAmount = 1.5,
            onlySelf = true
        ),
        FakeQuerySellDetailRecord(
            goodsCode = "690201010002",
            goodsName = "农夫山泉矿泉水",
            bigTypeId = BIG_DRINK,
            smallTypeId = SMALL_WATER,
            saleTypeId = SALE_ONLINE,
            payTypeId = PAY_12306,
            qty = 6.0,
            salePriceReal = 4.0,
            saleUploadDate = "2026-04-08 08:25",
            tradeType = "12306",
            discountAmount = 0.0,
            onlySelf = true
        ),
        FakeQuerySellDetailRecord(
            goodsCode = "690201010003",
            goodsName = "东方树叶乌龙茶",
            bigTypeId = BIG_DRINK,
            smallTypeId = SMALL_TEA,
            saleTypeId = SALE_NORMAL,
            payTypeId = PAY_ALIPAY,
            qty = 2.0,
            salePriceReal = 6.0,
            saleUploadDate = "2026-04-08 09:01",
            tradeType = "普通",
            discountAmount = 0.5,
            onlySelf = false
        ),
        FakeQuerySellDetailRecord(
            goodsCode = "690201030004",
            goodsName = "原切薯片",
            bigTypeId = BIG_SNACK,
            smallTypeId = SMALL_PUFF,
            saleTypeId = SALE_ONLINE,
            payTypeId = PAY_WECHAT,
            qty = 2.0,
            salePriceReal = 12.0,
            saleUploadDate = "2026-04-08 09:15",
            tradeType = "普通",
            discountAmount = 2.0,
            onlySelf = true
        ),
        FakeQuerySellDetailRecord(
            goodsCode = "690201040002",
            goodsName = "奥利奥夹心饼干",
            bigTypeId = BIG_SNACK,
            smallTypeId = SMALL_BISCUIT,
            saleTypeId = SALE_NORMAL,
            payTypeId = PAY_CASH,
            qty = 4.0,
            salePriceReal = 8.0,
            saleUploadDate = "2026-04-08 10:06",
            tradeType = "普通",
            discountAmount = 0.0,
            onlySelf = false
        ),
        FakeQuerySellDetailRecord(
            goodsCode = "690201070003",
            goodsName = "香辣鸭脖",
            bigTypeId = BIG_SNACK,
            smallTypeId = SMALL_MEAT,
            saleTypeId = SALE_RETURN,
            payTypeId = PAY_CASH,
            qty = 1.0,
            salePriceReal = 16.0,
            saleUploadDate = "2026-04-08 10:22",
            tradeType = "退货",
            discountAmount = 0.0,
            onlySelf = true
        ),
        FakeQuerySellDetailRecord(
            goodsCode = "690201050001",
            goodsName = "红烧牛肉面",
            bigTypeId = BIG_MEAL,
            smallTypeId = SMALL_NOODLE,
            saleTypeId = SALE_NORMAL,
            payTypeId = PAY_CASH,
            qty = 5.0,
            salePriceReal = 15.0,
            saleUploadDate = "2026-04-08 11:03",
            tradeType = "普通",
            discountAmount = 3.0,
            onlySelf = true
        ),
        FakeQuerySellDetailRecord(
            goodsCode = "690201080001",
            goodsName = "台式卤肉饭",
            bigTypeId = BIG_MEAL,
            smallTypeId = SMALL_BOXED,
            saleTypeId = SALE_ONLINE,
            payTypeId = PAY_12306,
            qty = 3.0,
            salePriceReal = 28.0,
            saleUploadDate = "2026-04-08 12:18",
            tradeType = "12306",
            discountAmount = 6.0,
            onlySelf = true
        ),
        FakeQuerySellDetailRecord(
            goodsCode = "690201060001",
            goodsName = "高铁纸巾",
            bigTypeId = BIG_DAILY,
            smallTypeId = SMALL_TISSUE,
            saleTypeId = SALE_NORMAL,
            payTypeId = PAY_WECHAT,
            qty = 8.0,
            salePriceReal = 3.0,
            saleUploadDate = "2026-04-08 13:08",
            tradeType = "普通",
            discountAmount = 1.2,
            onlySelf = false
        ),
        FakeQuerySellDetailRecord(
            goodsCode = "690201060003",
            goodsName = "纪念扑克",
            bigTypeId = BIG_DAILY,
            smallTypeId = SMALL_SOUVENIR,
            saleTypeId = SALE_RETURN,
            payTypeId = PAY_CASH,
            qty = 1.0,
            salePriceReal = 10.0,
            saleUploadDate = "2026-04-08 14:36",
            tradeType = "退货",
            discountAmount = 0.0,
            onlySelf = true
        )
    )

    fun smallTypesFor(bigTypeId: String): List<FakeSaleAnalysisOption> {
        if (bigTypeId == ALL_ID) {
            return listOf(FakeSaleAnalysisOption(ALL_ID, "全部"))
        }
        return buildList {
            add(FakeSaleAnalysisOption(ALL_ID, "全部"))
            addAll(
                smallTypes
                    .filter { it.bigTypeId == bigTypeId }
                    .map { FakeSaleAnalysisOption(it.id, it.name) }
            )
        }
    }

    fun query(
        bigTypeId: String,
        smallTypeId: String,
        sellTypeId: String,
        payTypeId: String,
        keyword: String,
        onlySelf: Boolean
    ): FakeQuerySellDetailResult {
        val normalizedKeyword = keyword.trim()
        val records = allRecords.filter { record ->
            (bigTypeId == ALL_ID || record.bigTypeId == bigTypeId) &&
                (smallTypeId == ALL_ID || record.smallTypeId == smallTypeId) &&
                (sellTypeId == ALL_ID || record.saleTypeId == sellTypeId) &&
                (payTypeId == ALL_ID || record.payTypeId == payTypeId) &&
                (!onlySelf || record.onlySelf) &&
                (
                    normalizedKeyword.isBlank() ||
                        record.goodsName.contains(normalizedKeyword, ignoreCase = true) ||
                        record.goodsCode.contains(normalizedKeyword)
                    )
        }
        return FakeQuerySellDetailResult(
            records = records,
            summary = buildSummary(records)
        )
    }

    private fun buildSummary(records: List<FakeQuerySellDetailRecord>): FakeQuerySellDetailSummary {
        var saleQty = 0.0
        var saleAmount = 0.0
        var returnQty = 0.0
        var returnAmount = 0.0
        var discountAmount = 0.0
        records.forEach { record ->
            val amount = record.qty * record.salePriceReal
            if (record.saleTypeId == SALE_RETURN) {
                returnQty += record.qty
                returnAmount += amount
            } else {
                saleQty += record.qty
                saleAmount += amount
            }
            discountAmount += record.discountAmount
        }
        return FakeQuerySellDetailSummary(
            saleQty = saleQty,
            saleAmount = saleAmount,
            returnQty = returnQty,
            returnAmount = returnAmount,
            discountAmount = discountAmount
        )
    }

    fun formatQty(value: Double): String = qtyFormatter.format(value)

    fun formatAmount(value: Double): String = amountFormatter.format(value)
}
