package com.ccv.pda

import kotlin.math.abs

data class FakeGoodsCategory(
    val id: String,
    val name: String
)

data class FakeGoodsTemplate(
    val code: String,
    val name: String,
    val price: Double,
    val typeName: String,
    val stock: Int,
    val categoryId: String
)

object FakeSellGoodsRepository {

    private const val CATEGORY_DRINK = "drink"
    private const val CATEGORY_ALCOHOL = "alcohol"
    private const val CATEGORY_SNACK = "snack"
    private const val CATEGORY_BISCUIT = "biscuit"
    private const val CATEGORY_HOT_DRINK = "hot_drink"
    private const val CATEGORY_DAILY = "daily"
    private const val CATEGORY_MEAT = "meat"
    private const val CATEGORY_MEAL = "meal"

    val categories = listOf(
        FakeGoodsCategory(CATEGORY_DRINK, "饮品"),
        FakeGoodsCategory(CATEGORY_ALCOHOL, "酒水"),
        FakeGoodsCategory(CATEGORY_SNACK, "零食小吃"),
        FakeGoodsCategory(CATEGORY_BISCUIT, "饼干/糕点"),
        FakeGoodsCategory(CATEGORY_HOT_DRINK, "热饮"),
        FakeGoodsCategory(CATEGORY_DAILY, "纸巾/扑克/纪念品"),
        FakeGoodsCategory(CATEGORY_MEAT, "肉制品"),
        FakeGoodsCategory(CATEGORY_MEAL, "餐食")
    )

    val allGoods = listOf(
        FakeGoodsTemplate("690101010001", "清蓝生椰牛乳", 10.0, "饮品", 5, CATEGORY_DRINK),
        FakeGoodsTemplate("690101010002", "清蓝杨枝甘露", 10.0, "饮品", 5, CATEGORY_DRINK),
        FakeGoodsTemplate("690101010003", "泉水叮咚野苜蓿饮用天然泉水", 10.0, "饮品", 10, CATEGORY_DRINK),
        FakeGoodsTemplate("690101010004", "星巴克星选咖啡饮料", 18.0, "饮品", 3, CATEGORY_DRINK),
        FakeGoodsTemplate("690101010005", "COSTA（咖世家）咖啡", 18.0, "饮品", 5, CATEGORY_DRINK),
        FakeGoodsTemplate("690101010006", "民泉饮用纯净水", 2.0, "饮品", 38, CATEGORY_DRINK),
        FakeGoodsTemplate("690101010007", "可口可乐", 8.0, "饮品", 4, CATEGORY_DRINK),
        FakeGoodsTemplate("690101010008", "雪碧", 8.0, "饮品", 5, CATEGORY_DRINK),
        FakeGoodsTemplate("690101010009", "脉动", 10.0, "饮品", 5, CATEGORY_DRINK),
        FakeGoodsTemplate("690101010010", "农夫山泉茶π", 10.0, "饮品", 8, CATEGORY_DRINK),

        FakeGoodsTemplate("690101020001", "青岛经典啤酒", 12.0, "酒水", 6, CATEGORY_ALCOHOL),
        FakeGoodsTemplate("690101020002", "雪花勇闯天涯", 12.0, "酒水", 5, CATEGORY_ALCOHOL),
        FakeGoodsTemplate("690101020003", "长城干红葡萄酒", 38.0, "酒水", 3, CATEGORY_ALCOHOL),
        FakeGoodsTemplate("690101020004", "RIO 微醺鸡尾酒", 16.0, "酒水", 7, CATEGORY_ALCOHOL),

        FakeGoodsTemplate("690101030001", "香辣鸭脖", 18.0, "零食小吃", 7, CATEGORY_SNACK),
        FakeGoodsTemplate("690101030002", "卤香鸡蛋", 5.0, "零食小吃", 20, CATEGORY_SNACK),
        FakeGoodsTemplate("690101030003", "麻辣牛肉干", 22.0, "零食小吃", 6, CATEGORY_SNACK),
        FakeGoodsTemplate("690101030004", "泡椒凤爪", 15.0, "零食小吃", 9, CATEGORY_SNACK),

        FakeGoodsTemplate("690101040001", "奥利奥夹心饼干", 8.0, "饼干/糕点", 11, CATEGORY_BISCUIT),
        FakeGoodsTemplate("690101040002", "达利园法式小面包", 10.0, "饼干/糕点", 10, CATEGORY_BISCUIT),
        FakeGoodsTemplate("690101040003", "港荣蒸蛋糕", 9.0, "饼干/糕点", 14, CATEGORY_BISCUIT),
        FakeGoodsTemplate("690101040004", "软华夫饼", 7.0, "饼干/糕点", 8, CATEGORY_BISCUIT),

        FakeGoodsTemplate("690101050001", "香飘飘奶茶", 8.0, "热饮", 9, CATEGORY_HOT_DRINK),
        FakeGoodsTemplate("690101050002", "雀巢速溶咖啡", 10.0, "热饮", 8, CATEGORY_HOT_DRINK),
        FakeGoodsTemplate("690101050003", "红枣姜茶", 12.0, "热饮", 6, CATEGORY_HOT_DRINK),
        FakeGoodsTemplate("690101050004", "阿华田热可可", 12.0, "热饮", 7, CATEGORY_HOT_DRINK),

        FakeGoodsTemplate("690101060001", "高铁纸巾", 3.0, "纸巾/扑克/纪念品", 25, CATEGORY_DAILY),
        FakeGoodsTemplate("690101060002", "旅途扑克牌", 10.0, "纸巾/扑克/纪念品", 12, CATEGORY_DAILY),
        FakeGoodsTemplate("690101060003", "高铁纪念徽章", 20.0, "纸巾/扑克/纪念品", 5, CATEGORY_DAILY),
        FakeGoodsTemplate("690101060004", "一次性雨衣", 6.0, "纸巾/扑克/纪念品", 10, CATEGORY_DAILY),

        FakeGoodsTemplate("690101070001", "双汇火腿肠", 4.0, "肉制品", 22, CATEGORY_MEAT),
        FakeGoodsTemplate("690101070002", "香辣鸡腿", 12.0, "肉制品", 10, CATEGORY_MEAT),
        FakeGoodsTemplate("690101070003", "酱牛肉", 18.0, "肉制品", 6, CATEGORY_MEAT),
        FakeGoodsTemplate("690101070004", "卤鸡翅", 14.0, "肉制品", 8, CATEGORY_MEAT),

        FakeGoodsTemplate("690101080001", "红烧牛肉面", 12.0, "餐食", 13, CATEGORY_MEAL),
        FakeGoodsTemplate("690101080002", "老坛酸菜面", 12.0, "餐食", 12, CATEGORY_MEAL),
        FakeGoodsTemplate("690101080003", "香菇卤肉饭", 22.0, "餐食", 6, CATEGORY_MEAL),
        FakeGoodsTemplate("690101080004", "广式腊味煲仔饭", 24.0, "餐食", 4, CATEGORY_MEAL)
    )

    fun findCategory(categoryId: String): FakeGoodsCategory? {
        return categories.firstOrNull { it.id == categoryId }
    }

    fun goodsByCategory(categoryId: String, keyword: String = ""): List<FakeGoodsTemplate> {
        val normalizedKeyword = keyword.trim()
        return allGoods.filter { item ->
            item.categoryId == categoryId &&
                (normalizedKeyword.isBlank() ||
                    item.name.contains(normalizedKeyword, ignoreCase = true) ||
                    item.code.contains(normalizedKeyword) ||
                    item.typeName.contains(normalizedKeyword, ignoreCase = true))
        }
    }

    fun findByScanCode(scanCode: String): FakeGoodsTemplate {
        return allGoods.firstOrNull { it.code == scanCode }
            ?: allGoods[abs(scanCode.hashCode()) % allGoods.size]
    }

    fun toSellGood(
        template: FakeGoodsTemplate,
        quantity: Int,
        codeOverride: String? = null
    ): FakeSellGood {
        return FakeSellGood(
            name = template.name,
            quantity = quantity,
            price = template.price,
            typeName = template.typeName,
            code = codeOverride ?: template.code
        )
    }
}
