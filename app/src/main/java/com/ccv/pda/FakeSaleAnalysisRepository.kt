package com.ccv.pda

import java.text.DecimalFormat
import kotlin.math.abs
import kotlin.math.roundToInt

data class FakeSaleAnalysisOption(
    val id: String,
    val name: String
)

data class FakeSaleAnalysisSmallType(
    val id: String,
    val bigTypeId: String,
    val name: String
)

data class FakeSaleAnalysisRecord(
    val goodsCode: String,
    val goodsName: String,
    val bigTypeId: String,
    val smallTypeId: String,
    val sellTypeId: String,
    val salePrice: Double,
    val fieldOutQty: Double,
    val teamHandoverQty: Double,
    val outQty: Double,
    val returnTeamQty: Double,
    val scrapTeamQty: Double,
    val lostTeamQty: Double,
    val saleDataQty: Double,
    val saleDataQty12306: Double,
    val teamHandoverToQty: Double,
    val teamNumberQty: Double
) {
    fun allInQty(): Double = fieldOutQty + teamHandoverQty + outQty

    fun allOutQty(): Double {
        return returnTeamQty +
            scrapTeamQty +
            lostTeamQty +
            saleDataQty +
            saleDataQty12306 +
            teamHandoverToQty
    }

    fun inAndOutDifference(): Double = allInQty() - allOutQty()

    fun difference(): Double = teamNumberQty - inAndOutDifference()

    fun isCorrect(): Boolean = abs(difference()) < 0.0001
}

data class FakeSaleAnalysisAmount(
    var addCount: Double = 0.0,
    var inCount: Double = 0.0,
    var outStockCount: Double = 0.0,
    var returnCount: Double = 0.0,
    var scrappedCount: Double = 0.0,
    var lostCount: Double = 0.0,
    var saleCount: Double = 0.0,
    var sale12306Count: Double = 0.0,
    var outCount: Double = 0.0,
    var trainStockCount: Double = 0.0,
    var addAmount: Double = 0.0,
    var inAmount: Double = 0.0,
    var outStockAmount: Double = 0.0,
    var returnAmount: Double = 0.0,
    var scrappedAmount: Double = 0.0,
    var lostAmount: Double = 0.0,
    var saleAmount: Double = 0.0,
    var sale12306Amount: Double = 0.0,
    var outAmount: Double = 0.0,
    var trainStockAmount: Double = 0.0
) {
    fun accumulate(record: FakeSaleAnalysisRecord) {
        addCount += record.fieldOutQty
        inCount += record.teamHandoverQty
        outStockCount += record.outQty
        returnCount += record.returnTeamQty
        scrappedCount += record.scrapTeamQty
        lostCount += record.lostTeamQty
        saleCount += record.saleDataQty
        sale12306Count += record.saleDataQty12306
        outCount += record.teamHandoverToQty
        trainStockCount += record.teamNumberQty

        addAmount += record.salePrice * record.fieldOutQty
        inAmount += record.salePrice * record.teamHandoverQty
        outStockAmount += record.salePrice * record.outQty
        returnAmount += record.salePrice * record.returnTeamQty
        scrappedAmount += record.salePrice * record.scrapTeamQty
        lostAmount += record.salePrice * record.lostTeamQty
        saleAmount += record.salePrice * record.saleDataQty
        sale12306Amount += record.salePrice * record.saleDataQty12306
        outAmount += record.salePrice * record.teamHandoverToQty
        trainStockAmount += record.salePrice * record.teamNumberQty
    }
}

data class FakeSaleAnalysisResult(
    val records: List<FakeSaleAnalysisRecord>,
    val amount: FakeSaleAnalysisAmount,
    val tip: String
)

object FakeSaleAnalysisRepository {

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

    private const val SELL_NORMAL = "normal"
    private const val SELL_ONLINE = "online"
    private const val SELL_CASH_RETURN = "cash_return"

    private val amountFormatter = DecimalFormat("0.##")
    private val qtyFormatter = DecimalFormat("0.##")

    val bigTypes = listOf(
        FakeSaleAnalysisOption(ALL_ID, "全部"),
        FakeSaleAnalysisOption(BIG_DRINK, "饮品"),
        FakeSaleAnalysisOption(BIG_SNACK, "零食"),
        FakeSaleAnalysisOption(BIG_MEAL, "餐食"),
        FakeSaleAnalysisOption(BIG_DAILY, "百货")
    )

    val sellTypes = listOf(
        FakeSaleAnalysisOption(ALL_ID, "全部"),
        FakeSaleAnalysisOption(SELL_NORMAL, "正常销售"),
        FakeSaleAnalysisOption(SELL_ONLINE, "线上支付"),
        FakeSaleAnalysisOption(SELL_CASH_RETURN, "现金退货")
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
        FakeSaleAnalysisRecord(
            goodsCode = "690201010001",
            goodsName = "元气森林苏打气泡水",
            bigTypeId = BIG_DRINK,
            smallTypeId = SMALL_SPARKLING,
            sellTypeId = SELL_NORMAL,
            salePrice = 10.0,
            fieldOutQty = 24.0,
            teamHandoverQty = 0.0,
            outQty = 4.0,
            returnTeamQty = 1.0,
            scrapTeamQty = 0.0,
            lostTeamQty = 0.0,
            saleDataQty = 15.0,
            saleDataQty12306 = 0.0,
            teamHandoverToQty = 0.0,
            teamNumberQty = 12.0
        ),
        FakeSaleAnalysisRecord(
            goodsCode = "690201010002",
            goodsName = "农夫山泉矿泉水",
            bigTypeId = BIG_DRINK,
            smallTypeId = SMALL_WATER,
            sellTypeId = SELL_ONLINE,
            salePrice = 4.0,
            fieldOutQty = 36.0,
            teamHandoverQty = 2.0,
            outQty = 0.0,
            returnTeamQty = 0.0,
            scrapTeamQty = 0.0,
            lostTeamQty = 0.0,
            saleDataQty = 20.0,
            saleDataQty12306 = 6.0,
            teamHandoverToQty = 1.0,
            teamNumberQty = 11.0
        ),
        FakeSaleAnalysisRecord(
            goodsCode = "690201010003",
            goodsName = "东方树叶乌龙茶",
            bigTypeId = BIG_DRINK,
            smallTypeId = SMALL_TEA,
            sellTypeId = SELL_NORMAL,
            salePrice = 6.0,
            fieldOutQty = 18.0,
            teamHandoverQty = 0.0,
            outQty = 2.0,
            returnTeamQty = 0.0,
            scrapTeamQty = 1.0,
            lostTeamQty = 0.0,
            saleDataQty = 8.0,
            saleDataQty12306 = 4.0,
            teamHandoverToQty = 0.0,
            teamNumberQty = 7.0
        ),
        FakeSaleAnalysisRecord(
            goodsCode = "690201030004",
            goodsName = "原切薯片",
            bigTypeId = BIG_SNACK,
            smallTypeId = SMALL_PUFF,
            sellTypeId = SELL_ONLINE,
            salePrice = 12.0,
            fieldOutQty = 16.0,
            teamHandoverQty = 1.0,
            outQty = 0.0,
            returnTeamQty = 0.0,
            scrapTeamQty = 0.0,
            lostTeamQty = 1.0,
            saleDataQty = 9.0,
            saleDataQty12306 = 2.0,
            teamHandoverToQty = 0.0,
            teamNumberQty = 5.0
        ),
        FakeSaleAnalysisRecord(
            goodsCode = "690201040002",
            goodsName = "奥利奥夹心饼干",
            bigTypeId = BIG_SNACK,
            smallTypeId = SMALL_BISCUIT,
            sellTypeId = SELL_NORMAL,
            salePrice = 8.0,
            fieldOutQty = 20.0,
            teamHandoverQty = 0.0,
            outQty = 0.0,
            returnTeamQty = 1.0,
            scrapTeamQty = 0.0,
            lostTeamQty = 0.0,
            saleDataQty = 10.0,
            saleDataQty12306 = 4.0,
            teamHandoverToQty = 0.0,
            teamNumberQty = 5.0
        ),
        FakeSaleAnalysisRecord(
            goodsCode = "690201070003",
            goodsName = "香辣鸭脖",
            bigTypeId = BIG_SNACK,
            smallTypeId = SMALL_MEAT,
            sellTypeId = SELL_NORMAL,
            salePrice = 16.0,
            fieldOutQty = 14.0,
            teamHandoverQty = 0.0,
            outQty = 0.0,
            returnTeamQty = 0.0,
            scrapTeamQty = 0.0,
            lostTeamQty = 0.0,
            saleDataQty = 8.0,
            saleDataQty12306 = 1.0,
            teamHandoverToQty = 0.0,
            teamNumberQty = 4.0
        ),
        FakeSaleAnalysisRecord(
            goodsCode = "690201050001",
            goodsName = "红烧牛肉面",
            bigTypeId = BIG_MEAL,
            smallTypeId = SMALL_NOODLE,
            sellTypeId = SELL_CASH_RETURN,
            salePrice = 15.0,
            fieldOutQty = 30.0,
            teamHandoverQty = 0.0,
            outQty = 3.0,
            returnTeamQty = 2.0,
            scrapTeamQty = 1.0,
            lostTeamQty = 0.0,
            saleDataQty = 12.0,
            saleDataQty12306 = 4.0,
            teamHandoverToQty = 2.0,
            teamNumberQty = 12.0
        ),
        FakeSaleAnalysisRecord(
            goodsCode = "690201080001",
            goodsName = "台式卤肉饭",
            bigTypeId = BIG_MEAL,
            smallTypeId = SMALL_BOXED,
            sellTypeId = SELL_ONLINE,
            salePrice = 28.0,
            fieldOutQty = 15.0,
            teamHandoverQty = 0.0,
            outQty = 2.0,
            returnTeamQty = 0.0,
            scrapTeamQty = 0.0,
            lostTeamQty = 0.0,
            saleDataQty = 6.0,
            saleDataQty12306 = 3.0,
            teamHandoverToQty = 1.0,
            teamNumberQty = 7.0
        ),
        FakeSaleAnalysisRecord(
            goodsCode = "690201060001",
            goodsName = "高铁纸巾",
            bigTypeId = BIG_DAILY,
            smallTypeId = SMALL_TISSUE,
            sellTypeId = SELL_CASH_RETURN,
            salePrice = 3.0,
            fieldOutQty = 40.0,
            teamHandoverQty = 0.0,
            outQty = 0.0,
            returnTeamQty = 3.0,
            scrapTeamQty = 0.0,
            lostTeamQty = 1.0,
            saleDataQty = 12.0,
            saleDataQty12306 = 0.0,
            teamHandoverToQty = 0.0,
            teamNumberQty = 24.0
        ),
        FakeSaleAnalysisRecord(
            goodsCode = "690201060003",
            goodsName = "纪念扑克",
            bigTypeId = BIG_DAILY,
            smallTypeId = SMALL_SOUVENIR,
            sellTypeId = SELL_NORMAL,
            salePrice = 10.0,
            fieldOutQty = 12.0,
            teamHandoverQty = 1.0,
            outQty = 0.0,
            returnTeamQty = 0.0,
            scrapTeamQty = 0.0,
            lostTeamQty = 0.0,
            saleDataQty = 4.0,
            saleDataQty12306 = 2.0,
            teamHandoverToQty = 0.0,
            teamNumberQty = 9.0
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
        keyword: String
    ): FakeSaleAnalysisResult {
        val normalizedKeyword = keyword.trim()
        val records = allRecords.filter { record ->
            (bigTypeId == ALL_ID || record.bigTypeId == bigTypeId) &&
                (smallTypeId == ALL_ID || record.smallTypeId == smallTypeId) &&
                (sellTypeId == ALL_ID || record.sellTypeId == sellTypeId) &&
                (
                    normalizedKeyword.isBlank() ||
                        record.goodsName.contains(normalizedKeyword, ignoreCase = true) ||
                        record.goodsCode.contains(normalizedKeyword)
                    )
        }

        val amount = FakeSaleAnalysisAmount()
        val abnormalTips = StringBuilder()
        records.forEach { record ->
            amount.accumulate(record)
            if (!record.isCorrect()) {
                abnormalTips
                    .append(record.goodsName)
                    .append(" 差异数量：")
                    .append(formatQty(record.difference()))
                    .append("，")
            }
        }
        if (abnormalTips.isNotEmpty()) {
            abnormalTips.deleteCharAt(abnormalTips.lastIndex)
        }
        return FakeSaleAnalysisResult(
            records = records,
            amount = amount,
            tip = abnormalTips.toString()
        )
    }

    fun formatQty(value: Double): String {
        val rounded = value.roundToInt().toDouble()
        return if (abs(value - rounded) < 0.0001) {
            rounded.toInt().toString()
        } else {
            qtyFormatter.format(value)
        }
    }

    fun formatAmount(value: Double): String = amountFormatter.format(value)
}
