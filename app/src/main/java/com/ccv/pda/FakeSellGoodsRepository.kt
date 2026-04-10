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
        FakeGoodsTemplate("690201010001", "元气森林气泡水", 10.0, "饮品", 4, CATEGORY_DRINK),
        FakeGoodsTemplate("690201010002", "依云天然矿泉水", 15.0, "饮品", 9, CATEGORY_DRINK),
        FakeGoodsTemplate("690201010003", "农夫山东方树叶", 12.0, "饮品", 4, CATEGORY_DRINK),
        FakeGoodsTemplate("690201010004", "无糖乌龙茶", 10.0, "饮品", 7, CATEGORY_DRINK),
        FakeGoodsTemplate("690201010005", "椰子水", 14.0, "饮品", 3, CATEGORY_DRINK),
        FakeGoodsTemplate("690201010006", "可口可乐", 8.0, "饮品", 4, CATEGORY_DRINK),
        FakeGoodsTemplate("690201010007", "雪碧", 8.0, "饮品", 5, CATEGORY_DRINK),
        FakeGoodsTemplate("690201010008", "脉动", 10.0, "饮品", 5, CATEGORY_DRINK),

        FakeGoodsTemplate("690201020001", "葡乐思啤酒", 25.0, "酒水", 6, CATEGORY_ALCOHOL),
        FakeGoodsTemplate("690201020002", "青岛经典啤酒", 12.0, "酒水", 6, CATEGORY_ALCOHOL),
        FakeGoodsTemplate("690201020003", "雪花勇闯天涯", 12.0, "酒水", 5, CATEGORY_ALCOHOL),

        FakeGoodsTemplate("690201030001", "花椒世家花椒锅巴", 15.0, "零食小吃", 2, CATEGORY_SNACK),
        FakeGoodsTemplate("690201030002", "抱爆乐爆米花", 25.0, "零食小吃", 1, CATEGORY_SNACK),
        FakeGoodsTemplate("690201030003", "口水娃口水鱼", 25.0, "零食小吃", 2, CATEGORY_SNACK),
        FakeGoodsTemplate("690201030004", "良品屋原切薯片+薯条", 25.0, "零食小吃", 5, CATEGORY_SNACK),
        FakeGoodsTemplate("690201030005", "吃可得道口卤鸡胗", 26.0, "零食小吃", 1, CATEGORY_SNACK),
        FakeGoodsTemplate("690201030006", "吃可得道口卤鸡爪", 28.0, "零食小吃", 1, CATEGORY_SNACK),

        FakeGoodsTemplate("690201040001", "奥利奥夹心饼干", 8.0, "饼干/糕点", 11, CATEGORY_BISCUIT),
        FakeGoodsTemplate("690201040002", "达利园法式小面包", 10.0, "饼干/糕点", 10, CATEGORY_BISCUIT),
        FakeGoodsTemplate("690201040003", "港荣蒸蛋糕", 9.0, "饼干/糕点", 14, CATEGORY_BISCUIT),
        FakeGoodsTemplate("690201040004", "软华夫饼", 7.0, "饼干/糕点", 8, CATEGORY_BISCUIT),

        FakeGoodsTemplate("690201050001", "香飘飘奶茶", 8.0, "热饮", 9, CATEGORY_HOT_DRINK),
        FakeGoodsTemplate("690201050002", "雀巢速溶咖啡", 10.0, "热饮", 8, CATEGORY_HOT_DRINK),
        FakeGoodsTemplate("690201050003", "红枣姜茶", 12.0, "热饮", 6, CATEGORY_HOT_DRINK),
        FakeGoodsTemplate("690201050004", "阿华田热可可", 12.0, "热饮", 7, CATEGORY_HOT_DRINK),

        FakeGoodsTemplate("690201060001", "高铁纸巾", 3.0, "纸巾/扑克/纪念品", 25, CATEGORY_DAILY),
        FakeGoodsTemplate("690201060002", "旅途扑克牌", 10.0, "纸巾/扑克/纪念品", 12, CATEGORY_DAILY),
        FakeGoodsTemplate("690201060003", "高铁纪念徽章", 20.0, "纸巾/扑克/纪念品", 5, CATEGORY_DAILY),
        FakeGoodsTemplate("690201060004", "一次性雨衣", 6.0, "纸巾/扑克/纪念品", 10, CATEGORY_DAILY),

        FakeGoodsTemplate("690201070001", "双汇火腿肠", 4.0, "肉制品", 22, CATEGORY_MEAT),
        FakeGoodsTemplate("690201070002", "香辣鸡腿", 12.0, "肉制品", 10, CATEGORY_MEAT),
        FakeGoodsTemplate("690201070003", "酱牛肉", 18.0, "肉制品", 6, CATEGORY_MEAT),
        FakeGoodsTemplate("690201070004", "卤鸡翅", 14.0, "肉制品", 8, CATEGORY_MEAT),

        FakeGoodsTemplate("690201080001", "嘉晟红烧牛肉饭(预包装)", 45.0, "餐食", 8, CATEGORY_MEAL),
        FakeGoodsTemplate("690201080002", "嗨味家红烧牛肉面（预包装）", 45.0, "餐食", 3, CATEGORY_MEAL),
        FakeGoodsTemplate("690201080003", "农家红烧肉套餐", 65.0, "餐食", 1, CATEGORY_MEAL),
        FakeGoodsTemplate("690201080004", "黑椒凤梨牛仔粒套餐（清真）", 68.0, "餐食", 1, CATEGORY_MEAL),
        FakeGoodsTemplate("690201080005", "（河南特色小碗菜）平顶山鲁山揽锅菜（微辣）", 15.0, "餐食", 0, CATEGORY_MEAL),
        FakeGoodsTemplate("690201080006", "（河南特色小碗菜）濮阳清丰菌菇鸡（微辣）", 28.0, "餐食", 0, CATEGORY_MEAL),
        FakeGoodsTemplate("690201080007", "川香回锅肉套餐", 65.0, "餐食", 0, CATEGORY_MEAL),
        FakeGoodsTemplate("690201080008", "双丝拌面", 15.0, "餐食", 0, CATEGORY_MEAL)
    )

    fun findCategory(categoryId: String): FakeGoodsCategory? {
        return categories.firstOrNull { it.id == categoryId }
    }

    fun goodsByCategory(categoryId: String, keyword: String = ""): List<FakeGoodsTemplate> {
        val normalizedKeyword = keyword.trim()
        return allGoods.filter { item ->
            item.categoryId == categoryId &&
                (
                    normalizedKeyword.isBlank() ||
                        item.name.contains(normalizedKeyword, ignoreCase = true) ||
                        item.code.contains(normalizedKeyword) ||
                        item.typeName.contains(normalizedKeyword, ignoreCase = true)
                    )
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
