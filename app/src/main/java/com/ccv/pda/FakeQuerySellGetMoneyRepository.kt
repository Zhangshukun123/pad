package com.ccv.pda

import java.text.DecimalFormat

enum class FakeTransferChannel(val label: String) {
    ALIPAY("支付宝"),
    WECHAT("微信")
}

data class FakeSaleGetMoneyData(
    val totalSaleMoney: Double,
    val codeSaleMoney: Double,
    val normalSaleMoney: Double,
    val sale12306Money: Double,
    val cashSaleMoney: Double,
    val crewBreakfastSaleMoney: Double,
    val crewMealSaleMoney: Double,
    val alipaySaleMoney: Double,
    val wechatSaleMoney: Double,
    val cashGet: Double,
    val scrapped: Double,
    val cashToAlipay: Double,
    val lost: Double,
    val cashToWechat: Double,
    val teamMealSaleMoney: Double,
    val vipSaleMoney: Double,
    val receptionSaleMoney: Double,
    val scrappedLostToOnline: Double,
    val waijuSaleMoney: Double,
    val alipayGet: Double,
    val wechatGet: Double,
    val crewMeal: Double,
    val workMeal: Double,
    val discountAmount: Double
) {
    val onlineSaleAmount: Double
        get() = codeSaleMoney + alipayGet + wechatGet + cashToAlipay + cashToWechat + scrappedLostToOnline

    fun transferCashToOnline(channel: FakeTransferChannel, amount: Double): FakeSaleGetMoneyData {
        return copy(
            cashGet = (cashGet - amount).coerceAtLeast(0.0),
            cashToAlipay = if (channel == FakeTransferChannel.ALIPAY) cashToAlipay + amount else cashToAlipay,
            cashToWechat = if (channel == FakeTransferChannel.WECHAT) cashToWechat + amount else cashToWechat
        )
    }

    fun transferScrappedLostToOnline(channel: FakeTransferChannel, amount: Double): FakeSaleGetMoneyData {
        return copy(
            scrappedLostToOnline = (scrappedLostToOnline - amount).coerceAtLeast(0.0),
            cashToAlipay = if (channel == FakeTransferChannel.ALIPAY) cashToAlipay + amount else cashToAlipay,
            cashToWechat = if (channel == FakeTransferChannel.WECHAT) cashToWechat + amount else cashToWechat
        )
    }
}

object FakeQuerySellGetMoneyRepository {

    private val formatter = DecimalFormat("0.00")

    private val allData = FakeSaleGetMoneyData(
        totalSaleMoney = 3526.50,
        codeSaleMoney = 216.00,
        normalSaleMoney = 2810.50,
        sale12306Money = 428.00,
        cashSaleMoney = 1268.50,
        crewBreakfastSaleMoney = 185.00,
        crewMealSaleMoney = 342.00,
        alipaySaleMoney = 812.00,
        wechatSaleMoney = 1030.00,
        cashGet = 468.00,
        scrapped = 22.00,
        cashToAlipay = 36.00,
        lost = 8.00,
        cashToWechat = 14.00,
        teamMealSaleMoney = 156.00,
        vipSaleMoney = 72.00,
        receptionSaleMoney = 98.00,
        scrappedLostToOnline = 6.00,
        waijuSaleMoney = 64.00,
        alipayGet = 382.00,
        wechatGet = 521.00,
        crewMeal = 48.00,
        workMeal = 36.00,
        discountAmount = 27.50
    )

    private val selfData = FakeSaleGetMoneyData(
        totalSaleMoney = 1286.00,
        codeSaleMoney = 92.00,
        normalSaleMoney = 972.00,
        sale12306Money = 118.00,
        cashSaleMoney = 420.00,
        crewBreakfastSaleMoney = 64.00,
        crewMealSaleMoney = 126.00,
        alipaySaleMoney = 286.00,
        wechatSaleMoney = 358.00,
        cashGet = 156.00,
        scrapped = 8.00,
        cashToAlipay = 12.00,
        lost = 3.00,
        cashToWechat = 6.00,
        teamMealSaleMoney = 52.00,
        vipSaleMoney = 24.00,
        receptionSaleMoney = 36.00,
        scrappedLostToOnline = 2.00,
        waijuSaleMoney = 18.00,
        alipayGet = 116.00,
        wechatGet = 158.00,
        crewMeal = 18.00,
        workMeal = 12.00,
        discountAmount = 0.0
    )

    fun query(onlySelf: Boolean): FakeSaleGetMoneyData {
        return if (onlySelf) selfData.copy() else allData.copy()
    }

    fun formatAmount(value: Double): String = formatter.format(value)
}
