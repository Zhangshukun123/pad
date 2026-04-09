package com.ccv.pda

object FakeLoginDataRepository {

    val defaultLoginUser = FakeUser("10001", "张三", "123456", "SN-CCV-10001")

    private val fakeUsers = listOf(
        defaultLoginUser,
        FakeUser("10002", "李四", "888888", "SN-CCV-10002"),
        FakeUser("20001", "仓管测试员", "admin123", "SN-CCV-20001")
    )

    private val fakeCrossRoads = listOf(
        FakeCrossRoad("CR-001", "DJ5902", "动高1组", "20260408"),
        FakeCrossRoad("CR-002", "DJ7575", "动高1组", "20260407"),
        FakeCrossRoad("CR-003", "G9199", "动高1组", "20260406"),
        FakeCrossRoad("CR-004", "G7925A", "动高1组", "20260405")
    )

    fun findUser(employeeCode: String?): FakeUser? {
        val code = employeeCode?.trim().orEmpty()
        return fakeUsers.firstOrNull { it.employeeCode == code }
    }

    fun crossRoadsFor(user: FakeUser): List<FakeCrossRoad> {
        return crossRoadsFor(user.employeeCode, user.userName)
    }

    fun crossRoadsFor(employeeCode: String, userName: String): List<FakeCrossRoad> {
        return fakeCrossRoads.map { route ->
            route.copy(employeeCode = employeeCode, employeeName = userName)
        }
    }
}

data class FakeUser(
    val employeeCode: String,
    val userName: String,
    val password: String,
    val snCode: String
)

data class FakeCrossRoad(
    val roadId: String,
    val trainNo: String,
    val teamName: String,
    val roadDate: String,
    val employeeCode: String = "",
    val employeeName: String = ""
)
