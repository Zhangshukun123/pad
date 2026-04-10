.class public Lcom/ayma/commonerp/litepal/LitepalUse;
.super Ljava/lang/Object;
.source "LitepalUse.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LitepalUse"

.field public static final UPLOAD_STATUE_UPLOADED:Ljava/lang/String; = "1"

.field private static final instance:Lcom/ayma/commonerp/litepal/LitepalUse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-direct {v0}, Lcom/ayma/commonerp/litepal/LitepalUse;-><init>()V

    sput-object v0, Lcom/ayma/commonerp/litepal/LitepalUse;->instance:Lcom/ayma/commonerp/litepal/LitepalUse;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ayma/commonerp/litepal/LitepalUse;
    .locals 1

    .line 63
    sget-object v0, Lcom/ayma/commonerp/litepal/LitepalUse;->instance:Lcom/ayma/commonerp/litepal/LitepalUse;

    return-object v0
.end method

.method static synthetic lambda$querySellTypeInner$0(Lcom/ayma/commonerp/bean/BaseDataItem;Lcom/ayma/commonerp/bean/BaseDataItem;)I
    .locals 0

    .line 1344
    invoke-virtual {p0}, Lcom/ayma/commonerp/bean/BaseDataItem;->getAttributeCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 1345
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/BaseDataItem;->getAttributeCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method


# virtual methods
.method public checkPickUpData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1618
    :try_start_0
    const-class v1, Lcom/ayma/commonerp/bean/WearhouseDataBean;

    new-array v2, v0, [J

    invoke-static {v1, v2}, Lorg/litepal/Operator;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 1621
    :cond_0
    const-class v1, Lcom/ayma/commonerp/bean/WearhouseDataBean;

    invoke-static {v1}, Lorg/litepal/Operator;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/WearhouseDataBean;

    if-nez v1, :cond_1

    return v0

    .line 1625
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getOutDay()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 1628
    :cond_2
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getTrainName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1629
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getOutDay()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1631
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getTrainName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 1634
    :cond_4
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getOutDay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getTrainName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    :goto_0
    return v0

    :catch_0
    move-exception p1

    .line 1636
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public checkPwd(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const-string v2, " employeeid = ? and password = ? "

    aput-object v2, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const/4 v2, 0x2

    aput-object p2, v0, v2

    .line 108
    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p2

    const-class v0, Lcom/ayma/commonerp/bean/UserDataBean;

    invoke-virtual {p2, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p2

    .line 109
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 112
    :cond_0
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ayma/commonerp/bean/UserDataBean;

    .line 113
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/UserDataBean;->getEmployeeId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 115
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public clearData(Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 2

    .line 1603
    :try_start_0
    const-class v0, Lcom/ayma/commonerp/bean/SellDetailBean;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/litepal/Operator;->deleteAllAsync(Ljava/lang/Class;[Ljava/lang/String;)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;

    move-result-object v0

    .line 1604
    new-instance v1, Lcom/ayma/commonerp/litepal/LitepalUse$4;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/litepal/LitepalUse$4;-><init>(Lcom/ayma/commonerp/litepal/LitepalUse;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-virtual {v0, v1}, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;->listen(Lorg/litepal/crud/callback/UpdateOrDeleteCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1611
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1612
    invoke-static {v0}, Lcom/ayma/base/util/ThrowHandleUtil;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public clearDataSimple(Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 3

    .line 1897
    :try_start_0
    const-class v0, Lcom/ayma/commonerp/bean/UserDataBean;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 1898
    const-class v0, Lcom/ayma/commonerp/bean/TrainInfo;

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 1899
    const-class v0, Lcom/ayma/commonerp/bean/CrossRoadDataBean;

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 1900
    const-class v0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 1901
    const-class v0, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 1902
    const-class v0, Lcom/ayma/commonerp/bean/BigGoodsTypesBean;

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 1903
    const-class v0, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 1904
    const-class v0, Lcom/ayma/commonerp/bean/SuppliersBean;

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 1905
    const-class v0, Lcom/ayma/commonerp/bean/TeamPickupBean;

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 1906
    const-class v0, Lcom/ayma/commonerp/bean/WearhouseDataBean;

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 1907
    const-class v0, Lcom/ayma/commonerp/bean/TeamDataBean;

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 1908
    const-class v0, Lcom/ayma/commonerp/bean/BaseDataBean;

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 1909
    const-class v0, Lcom/ayma/commonerp/bean/BaseDataItem;

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 1910
    const-class v0, Lcom/ayma/commonerp/bean/StoreGoods;

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 1911
    const-class v0, Lcom/ayma/commonerp/bean/GoodsSuppliers;

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 1912
    const-class v0, Lcom/ayma/commonerp/bean/BarcodeBean;

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 1913
    const-class v0, Lcom/ayma/commonerp/bean/SignIn;

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 1914
    const-class v0, Lcom/ayma/commonerp/bean/OpenShopBean;

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 1915
    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1917
    invoke-static {v0}, Lcom/ayma/base/util/ThrowHandleUtil;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    .line 1918
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public deleteAllSignInRecord()V
    .locals 2

    .line 1951
    const-class v0, Lcom/ayma/commonerp/bean/SignIn;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    return-void
.end method

.method public deleteSellDataRecordBeforeNDay(I)V
    .locals 1

    .line 1991
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMdd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->deleteSellDataRecordBeforeNDay(Ljava/lang/String;I)V

    return-void
.end method

.method public deleteSellDataRecordBeforeNDay(Ljava/lang/String;I)V
    .locals 3

    .line 2002
    invoke-static {p1, p2}, Lcom/ayma/base/util/DateTimeUtils;->getSpecifiedDayBeforeN(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 2003
    const-class p2, Lcom/ayma/commonerp/bean/SellDetailBean;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " sellTime < ? and uploadStatue = \'1\' "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    return-void
.end method

.method public deleteSignInRecordBeforeNDay(I)V
    .locals 1

    .line 1960
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMdWithNoneSep()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->deleteSignInRecordBeforeNDay(Ljava/lang/String;I)V

    return-void
.end method

.method public deleteSignInRecordBeforeNDay(Ljava/lang/String;I)V
    .locals 3

    .line 1972
    invoke-static {p1, p2}, Lcom/ayma/base/util/DateTimeUtils;->getSpecifiedDayBeforeN(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 1973
    const-class p2, Lcom/ayma/commonerp/bean/SignIn;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " outDay < ? "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    return-void
.end method

.method public deleteSimCardInfoBeforeNDay(I)V
    .locals 1

    .line 1977
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMdWithNoneSep()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->deleteSimCardInfoBeforeNDay(Ljava/lang/String;I)V

    return-void
.end method

.method public deleteSimCardInfoBeforeNDay(Ljava/lang/String;I)V
    .locals 3

    .line 1981
    invoke-static {p1, p2}, Lcom/ayma/base/util/DateTimeUtils;->getSpecifiedDayBeforeN(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 1982
    const-class p2, Lcom/ayma/commonerp/bean/SimCardInfo;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " saveDay < ? "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    return-void
.end method

.method public generateCheckRepeatValue()Ljava/lang/String;
    .locals 5

    .line 1138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v3, 0x4202a05f20000000L    # 1.0E10

    mul-double v1, v1, v3

    double-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllWareData()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;",
            ">;"
        }
    .end annotation

    .line 343
    const-class v0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    const/4 v1, 0x0

    new-array v2, v1, [J

    invoke-static {v0, v2}, Lorg/litepal/Operator;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v0

    .line 344
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 348
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    .line 349
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "F_GoodsId = ?"

    aput-object v6, v5, v1

    const/4 v6, 0x1

    .line 350
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v5

    const-class v6, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    invoke-virtual {v5, v6}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    .line 351
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 354
    :cond_1
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    invoke-virtual {v3, v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsPrice(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getNewestCrossRoad(Ljava/lang/String;Ljava/lang/String;)Lcom/ayma/commonerp/bean/CrossRoadDataBean;
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const-string v2, " employeeid = ? and companyid = ? "

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const/4 p1, 0x2

    aput-object p2, v0, p1

    .line 1254
    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-string p2, "roadday desc"

    invoke-virtual {p1, p2}, Lorg/litepal/FluentQuery;->order(Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class p2, Lcom/ayma/commonerp/bean/CrossRoadDataBean;

    invoke-virtual {p1, p2}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 1255
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    return-object v1

    .line 1258
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/CrossRoadDataBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1260
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public getSellDetailBean()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;"
        }
    .end annotation

    .line 1051
    const-class v0, Lcom/ayma/commonerp/bean/SellDetailBean;

    const/4 v1, 0x0

    new-array v1, v1, [J

    invoke-static {v0, v1}, Lorg/litepal/Operator;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSignInStatue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ayma/commonerp/bean/SignIn;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "outDay = ? and trainId = ? and teamId = ?"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const/4 p1, 0x3

    aput-object p3, v0, p1

    .line 1937
    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class p2, Lcom/ayma/commonerp/bean/SignIn;

    invoke-virtual {p1, p2}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 1938
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1941
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/SignIn;

    return-object p1
.end method

.method public getWareDataByCodeAndPriceType(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;",
            ">;"
        }
    .end annotation

    .line 274
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v3, " f_barcode = ? or f_code = ? "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v5, 0x2

    aput-object p1, v2, v5

    .line 277
    invoke-static {v2}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v2, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    invoke-virtual {p1, v2}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 279
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 283
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 284
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    .line 285
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-array v8, v0, [Ljava/lang/String;

    const-string v9, "F_GoodsId = ? and  F_PriceType = ? "

    aput-object v9, v8, v4

    .line 286
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    aput-object p2, v8, v5

    invoke-static {v8}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v8

    const-class v9, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    invoke-virtual {v8, v9}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v8

    .line 287
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_2

    .line 289
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 292
    :cond_2
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-virtual {v6, v7}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsPrice(Ljava/util/List;)V

    goto :goto_0

    .line 296
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public queryBarCodeListByGoodsId(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/BarcodeBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " goodsId = ? "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 1924
    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v0, Lcom/ayma/commonerp/bean/BarcodeBean;

    invoke-virtual {p1, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1926
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public queryBaseItem(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/BaseDataItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "attributetypecode2 = ? "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 1373
    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v0, Lcom/ayma/commonerp/bean/BaseDataItem;

    invoke-virtual {p1, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1375
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public queryBigType(Ljava/lang/String;)Lcom/ayma/commonerp/bean/BigGoodsTypesBean;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, " pgoodsTypeId = ? "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 232
    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v0, Lcom/ayma/commonerp/bean/BigGoodsTypesBean;

    invoke-virtual {p1, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 233
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/BigGoodsTypesBean;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public queryBigTypeList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/BigGoodsTypesBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, " pgoodsTypeId = ? "

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object p1, v0, v2

    .line 254
    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v0, Lcom/ayma/commonerp/bean/BigGoodsTypesBean;

    invoke-virtual {p1, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 255
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    return-object v1

    :catch_0
    move-exception p1

    .line 260
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public queryCanSellGoods(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;",
            ">;"
        }
    .end annotation

    .line 924
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 969
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p6, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    move-object/from16 v3, p6

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 970
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select   t.birthday,  gi.goodstypeid,  sp.supplierid,  max(gc.barcode),  gc.barcode,  gi.goodscode,  gi.salechannel,  gi.companyid,  gi.company2id,  gi.company2name,  gi.goodsid,   gi.goodsname,  gi.startday,  gi.stopday,  gi.goodsstate,  gp.goodspriceid,  gp.othercompanyid,  gp.saletype,  gp.salesprice,  gp.salesprice0,  gp.salesshuilv,  gs.goodstypename,   sp.costprice,  sp.costprice0,  sp.costshuilv,  gb.pgoodstypeid,   gb.pgoodstypename  from      wearhousedatabean as t      left join  goodsinfodtosbean as gi on gi.goodscode=t.goodscode      left join barcodebean as gc on gi.goodsid=gc.goodsid      left join goodspricebean as gp on gi.goodsid=gp.goodsid      left join biggoodstypesbean as gb on gi.pgoodstypeid = gb.pgoodstypeid      left join smallgoodstypesbean as gs on gi.goodstypeid = gs.goodstypeid      left join goodssuppliers as sp on gi.goodsid = sp.goodsid  where t.outday = ? and  gp.saletype= ? and ( gc.barcode = ? or gi.goodscode = ? )  and gi.companyid = ? and gp.stopday >= ? and  gp.pricestate=\'\u542f\u7528\'  and gi.salechannel LIKE ? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " group by gi.goodsid  order by gi.goodstypeid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p5, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    aput-object p2, v2, v3

    const/4 v3, 0x5

    aput-object p1, v2, v3

    const/4 v3, 0x6

    aput-object p5, v2, v3

    const/4 v3, 0x7

    aput-object v1, v2, v3

    invoke-static {v2}, Lorg/litepal/Operator;->findBySQL([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "salechannel"

    .line 972
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "birthday"

    .line 973
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "pgoodstypeid"

    .line 974
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "pgoodstypename"

    .line 975
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "goodstypeid"

    .line 976
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "goodstypename"

    .line 977
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "barcode"

    .line 978
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "goodscode"

    .line 979
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "companyid"

    .line 980
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "company2id"

    .line 981
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "company2name"

    .line 982
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "goodsid"

    .line 983
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "goodsname"

    .line 984
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "startday"

    .line 985
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 p3, v0

    const-string v0, "stopday"

    .line 986
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 p1, v0

    const-string v0, "goodsstate"

    .line 987
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 p2, v0

    const-string v0, "supplierid"

    .line 988
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 p4, v0

    const-string v0, "costprice"

    .line 989
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 p5, v0

    const-string v0, "costprice0"

    .line 990
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 p6, v0

    const-string v0, "costshuilv"

    .line 991
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v16, v0

    const-string v0, "goodspriceid"

    .line 992
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v17, v0

    const-string v0, "othercompanyid"

    .line 993
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v18, v0

    const-string v0, "saletype"

    .line 994
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v19, v0

    const-string v0, "salesprice"

    .line 995
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v20, v0

    const-string v0, "salesshuilv"

    .line 996
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v21, v0

    const-string v0, "salesprice0"

    .line 997
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 998
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v22

    if-eqz v22, :cond_2

    move/from16 v22, v0

    .line 999
    new-instance v0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    invoke-direct {v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;-><init>()V

    move/from16 v23, v15

    .line 1000
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v24, v2

    .line 1001
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setBirthday(Ljava/lang/String;)V

    .line 1002
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setPgoodsTypeId(Ljava/lang/String;)V

    .line 1003
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsBigTypeName(Ljava/lang/String;)V

    .line 1004
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsTypeId(Ljava/lang/String;)V

    .line 1005
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsSmallTypeName(Ljava/lang/String;)V

    .line 1006
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v25, v3

    .line 1007
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1009
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_1

    move-object v2, v3

    .line 1012
    :cond_1
    invoke-virtual {v0, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsCode(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setBarcode(Ljava/lang/String;)V

    .line 1014
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCompanyId(Ljava/lang/String;)V

    .line 1015
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCompany2Id(Ljava/lang/String;)V

    .line 1016
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCompany2Name(Ljava/lang/String;)V

    .line 1017
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsId(Ljava/lang/String;)V

    .line 1018
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsName(Ljava/lang/String;)V

    move/from16 v2, v23

    .line 1019
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setStartDay(Ljava/lang/String;)V

    move/from16 v3, p1

    .line 1020
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setStopDay(Ljava/lang/String;)V

    move/from16 v2, p2

    .line 1021
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsState(Ljava/lang/String;)V

    move/from16 v3, p4

    .line 1022
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setSupplierId(Ljava/lang/String;)V

    move/from16 v2, p5

    move/from16 v26, v3

    move/from16 p4, v4

    .line 1023
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCostPrice(D)V

    move/from16 v3, p6

    move/from16 p5, v5

    .line 1024
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCostPrice0(D)V

    move v5, v2

    move/from16 v4, v16

    .line 1025
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCostShuilv(D)V

    .line 1026
    invoke-virtual {v0, v15}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setSaleChannel(Ljava/lang/String;)V

    .line 1029
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1030
    new-instance v3, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    invoke-direct {v3}, Lcom/ayma/commonerp/bean/GoodsPriceBean;-><init>()V

    .line 1031
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->setGoodsId(Ljava/lang/String;)V

    move/from16 v15, v17

    .line 1032
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->setGoodsPriceId(Ljava/lang/String;)V

    move/from16 v17, v5

    move/from16 v4, v18

    .line 1033
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->setOtherCompanyId(Ljava/lang/String;)V

    move/from16 v5, v19

    .line 1034
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->setSaleType(Ljava/lang/String;)V

    move/from16 v19, v6

    move/from16 v4, v20

    move/from16 v20, v5

    .line 1035
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->setSalesPrice(D)V

    move/from16 v5, v21

    move/from16 v21, v7

    .line 1036
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->setSalesShuilv(D)V

    move v7, v4

    move/from16 v6, v22

    move/from16 v22, v5

    .line 1037
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->setSalesPrice0(D)V

    .line 1038
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1040
    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsPrice(Ljava/util/List;)V

    move-object/from16 v2, p3

    .line 1041
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v4, p4

    move/from16 v5, p5

    move v0, v6

    move/from16 p5, v17

    move/from16 v6, v19

    move/from16 v19, v20

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 p4, v26

    move/from16 v20, v7

    move/from16 v17, v15

    move/from16 v7, v21

    move/from16 v21, v22

    move/from16 v15, v23

    goto/16 :goto_1

    :cond_2
    move-object/from16 v2, p3

    .line 1043
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v2
.end method

.method public queryCanSellGoodsWithOutDay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p3

    .line 523
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "select   t.qty,  t.birthday,  gi.salechannel,  gi.goodstypeid,  gi.sortorder as gsortorder,  sp.supplierid,  gc.barcode,  gi.goodscode,  gi.companyid,  gi.company2id,  gi.company2name,  gi.goodsid,   gi.goodsname,  gi.startday,  gi.stopday,  gi.goodsstate,  gp.goodspriceid,  gp.othercompanyid,  gp.saletype,  gp.salesprice,  gp.salesprice0,  gp.salesshuilv,  gs.goodstypename,   gs.sortorder,   sp.costprice,  sp.costprice0,  sp.costshuilv,  gb.pgoodstypeid,   gb.pgoodstypename  from      wearhousedatabean as t      left join  goodsinfodtosbean as gi on gi.goodscode=t.goodscode      left join goodspricebean as gp on gi.goodsid=gp.goodsid      left join barcodebean as gc on gi.goodsid=gc.goodsid      left join biggoodstypesbean as gb on gi.pgoodstypeid = gb.pgoodstypeid      left join smallgoodstypesbean as gs on gi.goodstypeid = gs.goodstypeid      left join goodssuppliers as sp on gi.goodsid = sp.goodsid  where t.outday = ?  and gp.stopday >= ?  and gp.pricestate=\'\u542f\u7528\' and gp.saletype= ? order by gs.sortorder"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    .line 568
    invoke-static {v2}, Lorg/litepal/Operator;->findBySQL([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const-string v3, "salechannel"

    .line 571
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "birthday"

    .line 572
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "pgoodstypeid"

    .line 573
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "pgoodstypename"

    .line 574
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "goodstypeid"

    .line 575
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "goodstypename"

    .line 576
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "barcode"

    .line 577
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "goodscode"

    .line 578
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "companyid"

    .line 579
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "company2id"

    .line 580
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "company2name"

    .line 581
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "goodsid"

    .line 582
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "goodsname"

    .line 583
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v16, v1

    const-string v1, "startday"

    .line 584
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move/from16 p1, v1

    const-string v1, "stopday"

    .line 585
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move/from16 p2, v1

    const-string v1, "goodsstate"

    .line 586
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "supplierid"

    .line 587
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "sortorder"

    .line 588
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "gsortorder"

    .line 589
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "costprice"

    .line 590
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "costprice0"

    .line 591
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "costshuilv"

    .line 592
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "qty"

    .line 593
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "goodspriceid"

    .line 594
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "othercompanyid"

    .line 595
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    const-string v1, "saletype"

    .line 596
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move/from16 v27, v1

    const-string v1, "salesprice"

    .line 597
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 598
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v28

    if-eqz v28, :cond_3

    move/from16 v28, v1

    .line 599
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 600
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_0

    move/from16 v1, v28

    goto :goto_0

    .line 603
    :cond_0
    new-instance v0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    invoke-direct {v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;-><init>()V

    move/from16 v29, v3

    .line 604
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setBirthday(Ljava/lang/String;)V

    .line 605
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setPgoodsTypeId(Ljava/lang/String;)V

    .line 606
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsBigTypeName(Ljava/lang/String;)V

    .line 607
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsTypeId(Ljava/lang/String;)V

    .line 608
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 609
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_1

    const-string v3, ""

    .line 613
    :cond_1
    invoke-virtual {v0, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsSmallTypeName(Ljava/lang/String;)V

    .line 614
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v30, v4

    .line 615
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 617
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_2

    move-object v3, v4

    .line 620
    :cond_2
    invoke-virtual {v0, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setBarcode(Ljava/lang/String;)V

    .line 621
    invoke-virtual {v0, v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsCode(Ljava/lang/String;)V

    .line 622
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCompanyId(Ljava/lang/String;)V

    .line 623
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCompany2Id(Ljava/lang/String;)V

    .line 624
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCompany2Name(Ljava/lang/String;)V

    .line 625
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsId(Ljava/lang/String;)V

    .line 626
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsName(Ljava/lang/String;)V

    move/from16 v3, p1

    .line 627
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setStartDay(Ljava/lang/String;)V

    move/from16 v4, p2

    .line 628
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setStopDay(Ljava/lang/String;)V

    move/from16 v3, v17

    .line 629
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsState(Ljava/lang/String;)V

    move/from16 v4, v18

    .line 630
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setSupplierId(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setSaleChannel(Ljava/lang/String;)V

    move/from16 v1, v19

    .line 632
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setSortOrder(Ljava/lang/String;)V

    move/from16 v3, v20

    .line 633
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGsortOrder(I)V

    move/from16 v1, v21

    .line 635
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCostPrice(D)V

    move/from16 v21, v5

    move/from16 v3, v22

    .line 636
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCostPrice0(D)V

    move/from16 v22, v6

    move/from16 v4, v23

    .line 637
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCostShuilv(D)V

    move/from16 v5, v24

    .line 639
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move/from16 v23, v3

    move/from16 v24, v4

    int-to-double v3, v6

    invoke-virtual {v0, v3, v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setQty(D)V

    .line 642
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 643
    new-instance v4, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    invoke-direct {v4}, Lcom/ayma/commonerp/bean/GoodsPriceBean;-><init>()V

    .line 644
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->setGoodsId(Ljava/lang/String;)V

    move/from16 v6, v25

    move/from16 v25, v1

    .line 645
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->setGoodsPriceId(Ljava/lang/String;)V

    move/from16 v1, v26

    move/from16 v26, v5

    .line 646
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->setOtherCompanyId(Ljava/lang/String;)V

    move/from16 v5, v27

    move/from16 v27, v1

    .line 647
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->setSaleType(Ljava/lang/String;)V

    move/from16 v31, v5

    move/from16 v1, v28

    move/from16 v28, v6

    .line 648
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->setSalesPrice(D)V

    .line 650
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    invoke-virtual {v0, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsPrice(Ljava/util/List;)V

    move-object/from16 v3, v16

    .line 653
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p3

    move/from16 v5, v21

    move/from16 v6, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move/from16 v21, v25

    move/from16 v24, v26

    move/from16 v26, v27

    move/from16 v25, v28

    move/from16 v3, v29

    move/from16 v4, v30

    move/from16 v27, v31

    goto/16 :goto_0

    :cond_3
    move-object/from16 v3, v16

    .line 655
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 656
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 658
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 659
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    .line 660
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getBirthday()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 661
    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 662
    invoke-virtual {v0, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 665
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 666
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 667
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 669
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    .line 670
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsId()Ljava/lang/String;

    move-result-object v4

    .line 671
    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 672
    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    if-nez v4, :cond_6

    goto :goto_2

    .line 676
    :cond_6
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getBirthday()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getBirthday()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_2

    .line 679
    :cond_7
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getQty()D

    move-result-wide v5

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getQty()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setQty(D)V

    goto :goto_2

    .line 681
    :cond_8
    invoke-virtual {v0, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 684
    :cond_9
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 685
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    .line 686
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsTypeId()Ljava/lang/String;

    move-result-object v5

    .line 687
    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 688
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    :cond_a
    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 692
    :cond_b
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 694
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 695
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 696
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 697
    new-instance v4, Lcom/ayma/commonerp/litepal/LitepalUse$2;

    move-object/from16 v5, p0

    invoke-direct {v4, v5}, Lcom/ayma/commonerp/litepal/LitepalUse$2;-><init>(Lcom/ayma/commonerp/litepal/LitepalUse;)V

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 703
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_c
    move-object/from16 v5, p0

    .line 705
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_5

    :cond_d
    move-object/from16 v5, p0

    :goto_5
    return-object v3
.end method

.method public queryCrossRoadDataSize()I
    .locals 3

    const/4 v0, 0x0

    .line 1238
    :try_start_0
    const-class v1, Lcom/ayma/commonerp/bean/CrossRoadDataBean;

    new-array v2, v0, [J

    invoke-static {v1, v2}, Lorg/litepal/Operator;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 1240
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public queryGoods(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;",
            ">;"
        }
    .end annotation

    .line 309
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 313
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 314
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_1

    new-array p1, v4, [Ljava/lang/String;

    const-string v0, " goodsname like ? "

    aput-object v0, p1, v3

    aput-object p2, p1, v2

    .line 315
    invoke-static {p1}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class p2, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    invoke-virtual {p1, p2}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 316
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-array p2, v1, [Ljava/lang/String;

    const-string v0, " barcode = ? or goodscode = ? "

    aput-object v0, p2, v3

    aput-object p1, p2, v2

    aput-object p1, p2, v4

    .line 317
    invoke-static {p2}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class p2, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    invoke-virtual {p1, p2}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v5, " barcode = ? or goodscode = ? or goodsname like ? "

    aput-object v5, v0, v3

    aput-object p1, v0, v2

    aput-object p1, v0, v4

    aput-object p2, v0, v1

    .line 319
    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class p2, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    invoke-virtual {p1, p2}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 322
    :goto_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 323
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    new-array v6, v1, [Ljava/lang/String;

    const-string v7, "goodsid = ? and  saletype = ? "

    aput-object v7, v6, v3

    .line 324
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    aput-object p3, v6, v4

    invoke-static {v6}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v6

    const-class v7, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    invoke-virtual {v6, v7}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    .line 325
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 326
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 329
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 330
    invoke-virtual {v5, v7}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsPrice(Ljava/util/List;)V

    goto :goto_1

    .line 332
    :cond_4
    invoke-interface {p1, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public queryGoodsAllSmallType(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 199
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 200
    invoke-virtual {p0}, Lcom/ayma/commonerp/litepal/LitepalUse;->querySmallTypeList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    return-object p1

    .line 204
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;

    .line 205
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->getGoodsTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->getGoodsTypeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 209
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1
.end method

.method public queryGoodsBigType()Ljava/util/LinkedHashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 159
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 160
    const-class v1, Lcom/ayma/commonerp/bean/BigGoodsTypesBean;

    const/4 v2, 0x0

    new-array v2, v2, [J

    invoke-static {v1, v2}, Lorg/litepal/Operator;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v1

    .line 161
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/BigGoodsTypesBean;

    .line 162
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/BigGoodsTypesBean;->getPgoodsTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/BigGoodsTypesBean;->getPgoodsTypeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public queryGoodsByCompanyId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p5

    :try_start_0
    const-string v1, "select gi.barcode,gi.company2code,gi.company2id,gi.company2name,gi.companycode,gi.companyid,gi.companyname,gi.factory,gi.goodscode,gi.goodsid,gi.goodsname,gi.goodsstate,gi.hotsale,gi.istransfer,gi.lablelocation,gi.linelocktype,gi.linelockvalue,gi.packqty,gi.packstyle,gi.packunit,gi.searchvalue,gi.shellife,gi.shellifewarn,gi.shellifewarntype,gi.sortorder,gi.startday,gi.stopday,gi.style,gi.unit,gi.goodstypeid,sp.supplierid,sp.costprice0,sp.costshuilv,sp.costprice,gs.goodstypename from  goodsinfodtosbean as gi    left join smallgoodstypesbean as gs on gi.goodstypeid=gs.goodstypeid     left join goodssuppliers as sp on gi.goodsid=sp.goodsid  where    gi.companyid=? and    gi.goodsstate=\'\u542f\u7528\' and    gi.startday <= ? and    gi.stopday >= ? and     sp.validflag=\'1\' and    sp.supcoststate=\'4\' and    sp.stopday >= ? "

    .line 417
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x5

    if-eqz v2, :cond_0

    new-array v2, v8, [Ljava/lang/String;

    aput-object v1, v2, v7

    aput-object p1, v2, v6

    aput-object v0, v2, v5

    aput-object v0, v2, v4

    aput-object v0, v2, v3

    .line 418
    invoke-static {v2}, Lorg/litepal/Operator;->findBySQL([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    .line 422
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and sp.supplierid =? "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    aput-object p1, v2, v6

    aput-object v0, v2, v5

    aput-object v0, v2, v4

    aput-object v0, v2, v3

    aput-object p4, v2, v8

    invoke-static {v2}, Lorg/litepal/Operator;->findBySQL([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    const-string v2, "goodsname"

    .line 424
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "barcode"

    .line 425
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "company2code"

    .line 426
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "company2id"

    .line 427
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "company2name"

    .line 428
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "companycode"

    .line 429
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "companyid"

    .line 430
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "companyname"

    .line 431
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "factory"

    .line 432
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "goodscode"

    .line 433
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "goodsid"

    .line 434
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "goodsstate"

    .line 435
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "hotsale"

    .line 436
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "istransfer"

    .line 437
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v0, "lablelocation"

    .line 438
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 p1, v0

    const-string v0, "linelocktype"

    .line 439
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 p2, v0

    const-string v0, "linelockvalue"

    .line 440
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 p4, v0

    const-string v0, "packqty"

    .line 441
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v16, v0

    const-string v0, "packstyle"

    .line 442
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v17, v0

    const-string v0, "packunit"

    .line 443
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v18, v0

    const-string v0, "searchvalue"

    .line 444
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v19, v0

    const-string v0, "shellife"

    .line 445
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v20, v0

    const-string v0, "shellifewarn"

    .line 446
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v21, v0

    const-string v0, "shellifewarntype"

    .line 447
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v22, v0

    const-string v0, "sortorder"

    .line 448
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v23, v0

    const-string v0, "startday"

    .line 449
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v24, v0

    const-string v0, "stopday"

    .line 450
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v25, v0

    const-string v0, "style"

    .line 451
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v26, v0

    const-string v0, "unit"

    .line 452
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v27, v0

    const-string v0, "goodstypeid"

    .line 453
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v28, v0

    const-string v0, "supplierid"

    .line 454
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v29, v0

    const-string v0, "goodstypename"

    .line 455
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v30, v0

    const-string v0, "costprice"

    .line 456
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v31, v0

    const-string v0, "costprice0"

    .line 457
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v32, v0

    const-string v0, "costshuilv"

    .line 458
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v33, v0

    .line 459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 460
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v34

    if-eqz v34, :cond_1

    move-object/from16 v34, v0

    .line 461
    new-instance v0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    invoke-direct {v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;-><init>()V

    move/from16 v35, v15

    .line 462
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 463
    invoke-virtual {v0, v15}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsName(Ljava/lang/String;)V

    .line 464
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setBarcode(Ljava/lang/String;)V

    .line 465
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCompany2Code(Ljava/lang/String;)V

    .line 466
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCompany2Id(Ljava/lang/String;)V

    .line 467
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCompany2Name(Ljava/lang/String;)V

    .line 468
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCompanyCode(Ljava/lang/String;)V

    .line 469
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCompanyId(Ljava/lang/String;)V

    .line 470
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCompanyName(Ljava/lang/String;)V

    .line 471
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setFactory(Ljava/lang/String;)V

    .line 472
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsCode(Ljava/lang/String;)V

    .line 473
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsId(Ljava/lang/String;)V

    .line 474
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsState(Ljava/lang/String;)V

    .line 475
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setHotSale(Ljava/lang/String;)V

    move/from16 v15, v35

    move/from16 v35, v2

    .line 476
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setIsTransfer(Ljava/lang/String;)V

    move/from16 v2, p1

    move/from16 p1, v3

    .line 477
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setLableLocation(Ljava/lang/String;)V

    move/from16 v3, p2

    move/from16 p2, v2

    .line 478
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setLineLockType(Ljava/lang/String;)V

    move/from16 v2, p4

    move/from16 v36, v3

    move/from16 p4, v4

    .line 479
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setLineLockValue(D)V

    move/from16 v3, v16

    .line 480
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setPackQty(I)V

    move/from16 v16, v2

    move/from16 v4, v17

    .line 481
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setPackStyle(Ljava/lang/String;)V

    move/from16 v17, v3

    move/from16 v2, v18

    .line 482
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setPackUnit(Ljava/lang/String;)V

    move/from16 v18, v2

    move/from16 v3, v19

    .line 483
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setSearchValue(Ljava/lang/String;)V

    move/from16 v19, v3

    move/from16 v2, v20

    .line 484
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setShellife(I)V

    move/from16 v20, v2

    move/from16 v3, v21

    .line 485
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setShellifeWarn(I)V

    move/from16 v21, v3

    move/from16 v2, v22

    .line 486
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setShellifeWarnType(Ljava/lang/String;)V

    move/from16 v22, v2

    move/from16 v3, v23

    .line 487
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setSortOrder(Ljava/lang/String;)V

    move/from16 v23, v3

    move/from16 v2, v24

    .line 488
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setStartDay(Ljava/lang/String;)V

    move/from16 v24, v2

    move/from16 v3, v25

    .line 489
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setStopDay(Ljava/lang/String;)V

    move/from16 v25, v3

    move/from16 v2, v26

    .line 490
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setStyle(Ljava/lang/String;)V

    move/from16 v26, v2

    move/from16 v3, v27

    .line 491
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setUnit(Ljava/lang/String;)V

    move/from16 v27, v3

    move/from16 v2, v28

    .line 492
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsTypeId(Ljava/lang/String;)V

    move/from16 v28, v2

    move/from16 v3, v29

    .line 493
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setSupplierId(Ljava/lang/String;)V

    move/from16 v29, v3

    move/from16 v2, v30

    .line 494
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsSmallTypeName(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsId()Ljava/lang/String;

    move-result-object v3

    move/from16 v30, v2

    move/from16 v37, v4

    move/from16 v38, v5

    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    invoke-virtual {v2, v3, v4, v5}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsPriceList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 498
    invoke-virtual {v0, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsPrice(Ljava/util/List;)V

    move/from16 v3, v31

    .line 500
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCostPrice(D)V

    move/from16 v31, v3

    move/from16 v4, v32

    .line 501
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCostPrice0(D)V

    move/from16 v32, v4

    move/from16 v2, v33

    .line 502
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCostShuilv(D)V

    move-object/from16 v3, v34

    .line 504
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v4, p4

    move/from16 v33, v2

    move-object v0, v3

    move/from16 p4, v16

    move/from16 v16, v17

    move/from16 v2, v35

    move/from16 v17, v37

    move/from16 v5, v38

    move/from16 v3, p1

    move/from16 p1, p2

    move/from16 p2, v36

    goto/16 :goto_1

    :cond_1
    move-object v3, v0

    .line 506
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    .line 509
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public queryGoodsByName(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "goodsname like ? "

    aput-object v2, v0, v1

    .line 2039
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    invoke-virtual {p1, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryGoodsByStore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 45
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p4

    :try_start_0
    const-string v1, "select sg.qty,sg.birthday,sg.storetype,gc.barcode,gi.company2code,gi.company2id,gi.company2name,gi.companycode,gi.companyid,gi.companyname,gi.factory,gi.goodscode,gi.goodsid,gi.goodsname,gi.goodsstate,gi.hotsale,gi.istransfer,gi.lablelocation,gi.linelocktype,gi.linelockvalue,gi.packqty,gi.packstyle,gi.packunit,gi.searchvalue,gi.shellife,gi.shellifewarn,gi.shellifewarntype,gi.sortorder,gi.startday,gi.stopday,gi.style,gi.unit,gi.goodstypeid,sp.supplierid,sp.costprice,sp.costprice0,sp.costshuilv,gs.goodstypename from goodsinfodtosbean as gi left join  storegoods as sg on sg.goodsid=gi.goodsid      left join barcodebean as gc on sg.goodsid=gc.goodsid      left join biggoodstypesbean as gb on gi.pgoodstypeid = gb.pgoodstypeid      left join smallgoodstypesbean as gs on gi.goodstypeid = gs.goodstypeid      left join goodssuppliers as sp on gi.goodsid = sp.goodsid  where  gi.goodsstate=\'\u542f\u7528\'  and sp.validflag=\'1\' and sp.supcoststate=\'4\'    and  sg.storeid=? and sg.storetype=? and sg.qty > 0"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    const/4 v1, 0x2

    aput-object p2, v2, v1

    .line 1776
    invoke-static {v2}, Lorg/litepal/Operator;->findBySQL([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1777
    invoke-interface {v1, v3}, Landroid/database/Cursor;->move(I)Z

    const-string v2, "goodsname"

    .line 1778
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "shellife"

    .line 1779
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "birthday"

    .line 1780
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "company2code"

    .line 1781
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "company2id"

    .line 1782
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "company2name"

    .line 1783
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "companycode"

    .line 1784
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "companyid"

    .line 1785
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "companyname"

    .line 1786
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "factory"

    .line 1787
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "barcode"

    .line 1788
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "goodscode"

    .line 1789
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "goodsid"

    .line 1790
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "goodsstate"

    .line 1791
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 p1, v15

    const-string v15, "hotsale"

    .line 1792
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 p2, v15

    const-string v15, "istransfer"

    .line 1793
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "lablelocation"

    .line 1794
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "linelocktype"

    .line 1795
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "linelockvalue"

    .line 1796
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    const-string v15, "packqty"

    .line 1797
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v15

    const-string v15, "packstyle"

    .line 1798
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v21, v15

    const-string v15, "packunit"

    .line 1799
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v22, v15

    const-string v15, "searchvalue"

    .line 1800
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v23, v15

    const-string v15, "shellifewarn"

    .line 1801
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v24, v15

    const-string v15, "shellifewarntype"

    .line 1802
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v25, v15

    const-string v15, "sortorder"

    .line 1803
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v26, v15

    const-string v15, "startday"

    .line 1804
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v27, v15

    const-string v15, "stopday"

    .line 1805
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v28, v15

    const-string v15, "style"

    .line 1806
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v29, v15

    const-string v15, "unit"

    .line 1807
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v30, v15

    const-string v15, "goodstypeid"

    .line 1808
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v31, v15

    const-string v15, "goodstypename"

    .line 1809
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v32, v15

    const-string v15, "supplierid"

    .line 1810
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v33, v15

    const-string v15, "costprice"

    .line 1811
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v34, v15

    const-string v15, "costprice0"

    .line 1812
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v35, v15

    const-string v15, "costshuilv"

    .line 1813
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v36, v15

    const-string v15, "qty"

    .line 1814
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v37, v15

    const-string v15, "storetype"

    .line 1815
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v38, v15

    .line 1816
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1817
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v39

    if-eqz v39, :cond_3

    move-object/from16 v39, v15

    .line 1819
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v40, v2

    .line 1820
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move/from16 v41, v3

    .line 1821
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1822
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_0

    move-object/from16 v15, v39

    move/from16 v2, v40

    move/from16 v3, v41

    goto :goto_0

    :cond_0
    move/from16 v42, v4

    .line 1825
    invoke-static {v3, v2}, Lcom/ayma/base/util/DateTimeUtils;->getSpecifiedDayAfterN(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1826
    invoke-static {v0, v4}, Lcom/ayma/base/util/DateTimeUtils;->compareDate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_1

    move-object/from16 v15, v39

    move/from16 v2, v40

    move/from16 v3, v41

    move/from16 v4, v42

    goto :goto_0

    .line 1829
    :cond_1
    new-instance v4, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    invoke-direct {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;-><init>()V

    .line 1830
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCompany2Code(Ljava/lang/String;)V

    .line 1831
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCompany2Id(Ljava/lang/String;)V

    .line 1832
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCompany2Name(Ljava/lang/String;)V

    .line 1833
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCompanyCode(Ljava/lang/String;)V

    .line 1834
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCompanyId(Ljava/lang/String;)V

    .line 1835
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCompanyName(Ljava/lang/String;)V

    .line 1836
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setFactory(Ljava/lang/String;)V

    .line 1837
    invoke-virtual {v4, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setBirthday(Ljava/lang/String;)V

    .line 1838
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1839
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1841
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v43

    if-eqz v43, :cond_2

    move-object v0, v3

    .line 1844
    :cond_2
    invoke-virtual {v4, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsCode(Ljava/lang/String;)V

    .line 1845
    invoke-virtual {v4, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setBarcode(Ljava/lang/String;)V

    .line 1847
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsId(Ljava/lang/String;)V

    .line 1849
    invoke-virtual {v4, v15}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsName(Ljava/lang/String;)V

    move/from16 v0, p1

    .line 1850
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsState(Ljava/lang/String;)V

    move/from16 v3, p2

    .line 1851
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setHotSale(Ljava/lang/String;)V

    move/from16 p1, v0

    move/from16 v15, v16

    .line 1852
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setIsTransfer(Ljava/lang/String;)V

    move/from16 p2, v3

    move/from16 v0, v17

    .line 1853
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setLableLocation(Ljava/lang/String;)V

    move/from16 v17, v0

    move/from16 v3, v18

    .line 1854
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setLineLockType(Ljava/lang/String;)V

    move/from16 v16, v5

    move/from16 v18, v6

    move/from16 v0, v19

    .line 1855
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setLineLockValue(D)V

    move/from16 v5, v20

    .line 1856
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setPackQty(I)V

    move/from16 v19, v0

    move/from16 v6, v21

    .line 1857
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setPackStyle(Ljava/lang/String;)V

    move/from16 v20, v3

    move/from16 v0, v22

    .line 1858
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setPackUnit(Ljava/lang/String;)V

    move/from16 v22, v0

    move/from16 v3, v23

    .line 1859
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setSearchValue(Ljava/lang/String;)V

    .line 1861
    invoke-virtual {v4, v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setShellife(I)V

    move/from16 v0, v24

    .line 1862
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setShellifeWarn(I)V

    move/from16 v24, v0

    move/from16 v2, v25

    .line 1863
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setShellifeWarnType(Ljava/lang/String;)V

    move/from16 v25, v2

    move/from16 v0, v26

    .line 1864
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setSortOrder(Ljava/lang/String;)V

    move/from16 v26, v0

    move/from16 v2, v27

    .line 1865
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setStartDay(Ljava/lang/String;)V

    move/from16 v27, v2

    move/from16 v0, v28

    .line 1866
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setStopDay(Ljava/lang/String;)V

    move/from16 v28, v0

    move/from16 v2, v29

    .line 1867
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setStyle(Ljava/lang/String;)V

    move/from16 v29, v2

    move/from16 v0, v30

    .line 1868
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setUnit(Ljava/lang/String;)V

    move/from16 v30, v0

    move/from16 v2, v31

    .line 1869
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsTypeId(Ljava/lang/String;)V

    move/from16 v31, v2

    move/from16 v0, v32

    .line 1870
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsSmallTypeName(Ljava/lang/String;)V

    move/from16 v32, v0

    move/from16 v2, v33

    .line 1872
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setSupplierId(Ljava/lang/String;)V

    move/from16 v33, v2

    move/from16 v23, v3

    move/from16 v0, v34

    .line 1873
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCostPrice(D)V

    move v3, v5

    move/from16 v21, v6

    move/from16 v2, v35

    .line 1874
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCostPrice0(D)V

    move/from16 v35, v2

    move v6, v3

    move/from16 v5, v36

    .line 1875
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCostShuilv(D)V

    move/from16 v36, v5

    move v3, v6

    move/from16 v2, v37

    .line 1877
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setQty(D)V

    move/from16 v5, v38

    .line 1879
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setStoreType(Ljava/lang/String;)V

    .line 1882
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsId()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v34, v0

    move/from16 v37, v2

    move/from16 v38, v3

    move-object/from16 v2, p0

    move-object/from16 v0, p3

    move-object/from16 v3, p4

    :try_start_1
    invoke-virtual {v2, v6, v0, v3}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsPriceList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 1883
    invoke-virtual {v4, v6}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsPrice(Ljava/util/List;)V

    move-object/from16 v6, v39

    .line 1885
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v3

    move/from16 v2, v40

    move/from16 v3, v41

    move/from16 v4, v42

    move/from16 v44, v38

    move/from16 v38, v5

    move/from16 v5, v16

    move/from16 v16, v15

    move-object v15, v6

    move/from16 v6, v18

    move/from16 v18, v20

    move/from16 v20, v44

    goto/16 :goto_0

    :cond_3
    move-object/from16 v2, p0

    move-object v6, v15

    .line 1887
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v6

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v2, p0

    .line 1890
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public queryGoodsCompanyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, " company2id = ? "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 1150
    invoke-static {v1}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v1, Lcom/ayma/commonerp/bean/CrossRoadDataBean;

    invoke-virtual {p1, v1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 1154
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/CrossRoadDataBean;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/CrossRoadDataBean;->getCompany2Name()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1156
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public queryGoodsDataSize()I
    .locals 3

    const/4 v0, 0x0

    .line 1182
    :try_start_0
    const-class v1, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    new-array v2, v0, [J

    invoke-static {v1, v2}, Lorg/litepal/Operator;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 1184
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public queryGoodsIdByGoodsId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const-string v2, " goodscode = ? "

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object p1, v0, v2

    .line 1303
    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    invoke-virtual {p1, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 1304
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsId()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception p1

    .line 1306
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public queryGoodsInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "select   gi.goodstypeid,  max(gc.barcode),  gc.barcode,  gi.goodscode,  gi.companyid,  gi.company2id,  gi.company2name,  gi.goodsid,   gi.goodsname,  gi.shellife,  gi.startday,  gi.stopday,  gi.goodsstate,  gp.goodspriceid,  gp.othercompanyid,  gp.saletype,  gp.salesprice,  gp.salesprice0,  gp.salesshuilv,  gs.goodstypename,   sp.supplierid,  sp.costprice,  sp.costprice0,  sp.costshuilv,  gb.pgoodstypeid,   gb.pgoodstypename  from       goodsinfodtosbean as gi      left join barcodebean as gc on gi.goodsid=gc.goodsid      left join goodspricebean as gp on gi.goodsid=gp.goodsid      left join biggoodstypesbean as gb on gi.pgoodstypeid = gb.pgoodstypeid      left join smallgoodstypesbean as gs on gi.goodstypeid = gs.goodstypeid      left join goodssuppliers as sp on gi.goodsid = sp.goodsid  where gi.goodsid=? and gi.goodscode=? and gp.saletype=? group by gi.goodsid "

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const/4 v0, 0x2

    aput-object p2, v1, v0

    const/4 v0, 0x3

    aput-object p3, v1, v0

    .line 1519
    invoke-static {v1}, Lorg/litepal/Operator;->findBySQL([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1520
    invoke-interface {v0, v2}, Landroid/database/Cursor;->move(I)Z

    const-string v1, "pgoodstypeid"

    .line 1521
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "pgoodstypename"

    .line 1522
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "goodstypeid"

    .line 1523
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "goodstypename"

    .line 1524
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "barcode"

    .line 1525
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "goodscode"

    .line 1526
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "companyid"

    .line 1527
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "company2id"

    .line 1528
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "company2name"

    .line 1529
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "goodsid"

    .line 1530
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "goodsname"

    .line 1531
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "shellife"

    .line 1532
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "startday"

    .line 1533
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "stopday"

    .line 1534
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "goodsstate"

    .line 1535
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 p1, v15

    const-string v15, "supplierid"

    .line 1536
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 p2, v15

    const-string v15, "costprice"

    .line 1537
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 p3, v15

    const-string v15, "costprice0"

    .line 1538
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "costshuilv"

    .line 1539
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "goodspriceid"

    .line 1540
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "othercompanyid"

    .line 1541
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    const-string v15, "saletype"

    .line 1542
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v15

    const-string v15, "salesprice"

    .line 1543
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v21, v15

    const-string v15, "salesshuilv"

    .line 1544
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v22, v15

    const-string v15, "salesprice0"

    .line 1545
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v23, v15

    .line 1546
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1547
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v24

    if-eqz v24, :cond_1

    move-object/from16 v24, v15

    .line 1548
    new-instance v15, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    invoke-direct {v15}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;-><init>()V

    move/from16 v25, v14

    .line 1549
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setPgoodsTypeId(Ljava/lang/String;)V

    .line 1550
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsBigTypeName(Ljava/lang/String;)V

    .line 1552
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsTypeId(Ljava/lang/String;)V

    .line 1553
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsSmallTypeName(Ljava/lang/String;)V

    .line 1555
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v26, v1

    .line 1556
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1558
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_0

    move-object v14, v1

    .line 1561
    :cond_0
    invoke-virtual {v15, v1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsCode(Ljava/lang/String;)V

    .line 1562
    invoke-virtual {v15, v14}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setBarcode(Ljava/lang/String;)V

    .line 1564
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCompanyId(Ljava/lang/String;)V

    .line 1565
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCompany2Id(Ljava/lang/String;)V

    .line 1566
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCompany2Name(Ljava/lang/String;)V

    .line 1567
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsId(Ljava/lang/String;)V

    .line 1568
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsName(Ljava/lang/String;)V

    .line 1569
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v15, v1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setShellife(I)V

    .line 1570
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setStartDay(Ljava/lang/String;)V

    move/from16 v1, v25

    .line 1571
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setStopDay(Ljava/lang/String;)V

    move/from16 v14, p1

    move/from16 v25, v1

    .line 1572
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsState(Ljava/lang/String;)V

    move/from16 v1, p2

    move/from16 p1, v2

    .line 1574
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setSupplierId(Ljava/lang/String;)V

    move/from16 v2, p3

    move/from16 p2, v3

    move/from16 p3, v4

    .line 1575
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v15, v3, v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCostPrice(D)V

    move v4, v1

    move/from16 v3, v16

    move/from16 v16, v2

    .line 1576
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    invoke-virtual {v15, v1, v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCostPrice0(D)V

    move/from16 v1, v17

    move/from16 v17, v3

    .line 1577
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v15, v2, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCostShuilv(D)V

    .line 1579
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1580
    new-instance v3, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    invoke-direct {v3}, Lcom/ayma/commonerp/bean/GoodsPriceBean;-><init>()V

    move/from16 v27, v1

    .line 1581
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->setGoodsId(Ljava/lang/String;)V

    move/from16 v1, v18

    move/from16 v18, v4

    .line 1582
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->setGoodsPriceId(Ljava/lang/String;)V

    move/from16 v4, v19

    move/from16 v19, v1

    .line 1583
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->setOtherCompanyId(Ljava/lang/String;)V

    move/from16 v1, v20

    move/from16 v20, v4

    .line 1584
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->setSaleType(Ljava/lang/String;)V

    move/from16 v28, v6

    move/from16 v4, v21

    move/from16 v21, v5

    .line 1585
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->setSalesPrice(D)V

    move/from16 v5, v22

    move/from16 v22, v7

    .line 1586
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->setSalesShuilv(D)V

    move v7, v4

    move/from16 v6, v23

    move/from16 v23, v5

    .line 1587
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->setSalesPrice0(D)V

    .line 1588
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1590
    invoke-virtual {v15, v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsPrice(Ljava/util/List;)V

    move-object/from16 v2, v24

    .line 1591
    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v3, p2

    move/from16 v4, p3

    move-object v15, v2

    move/from16 p3, v16

    move/from16 v16, v17

    move/from16 p2, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v5, v21

    move/from16 v17, v27

    move/from16 v2, p1

    move/from16 v20, v1

    move/from16 v21, v7

    move/from16 p1, v14

    move/from16 v7, v22

    move/from16 v22, v23

    move/from16 v14, v25

    move/from16 v1, v26

    move/from16 v23, v6

    move/from16 v6, v28

    goto/16 :goto_0

    :cond_1
    move-object v2, v15

    .line 1593
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 1596
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public queryGoodsPrice(Ljava/lang/String;Ljava/lang/String;)Lcom/ayma/commonerp/bean/GoodsPriceBean;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, " goodsid = ? and saletype = ? and validFlag = \'1\' "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    .line 1286
    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class p2, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    invoke-virtual {p1, p2}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 1287
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    :goto_0
    return-object p1
.end method

.method public queryGoodsPriceDataSize()I
    .locals 3

    const/4 v0, 0x0

    .line 1196
    :try_start_0
    const-class v1, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    new-array v2, v0, [J

    invoke-static {v1, v2}, Lorg/litepal/Operator;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 1198
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public queryGoodsPriceList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsPriceBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " goodsid = ? and saletype = ? and startday <= ? and stopday >= ? and  pricestate=\'\u542f\u7528\' "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const/4 p1, 0x3

    aput-object p3, v0, p1

    const/4 p1, 0x4

    aput-object p3, v0, p1

    .line 1292
    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class p2, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    invoke-virtual {p1, p2}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryGoodsSimpleSalePriceByGoodsCode(Ljava/lang/String;Ljava/lang/String;)Lcom/ayma/commonerp/bean/GoodsPriceBean;
    .locals 7

    const/4 p2, 0x3

    :try_start_0
    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "select * from goodspricebean as gp  left join goodsinfodtosbean as gi on gp.goodsid = gi.goodsid where gi.goodscode = ?  and gp.saletype = ?"

    aput-object v1, p2, v0

    const/4 v0, 0x1

    aput-object p1, p2, v0

    const/4 p1, 0x2

    const-string v0, "\u6b63\u5e38\u9500\u552e"

    aput-object v0, p2, p1

    .line 2013
    invoke-static {p2}, Lorg/litepal/Operator;->findBySQL([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 2014
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string p2, "goodsid"

    .line 2015
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    const-string v0, "goodspriceid"

    .line 2016
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "othercompanyid"

    .line 2017
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "saletype"

    .line 2018
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "salesprice"

    .line 2019
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "salesshuilv"

    .line 2020
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "salesprice0"

    .line 2021
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 2022
    new-instance v6, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    invoke-direct {v6}, Lcom/ayma/commonerp/bean/GoodsPriceBean;-><init>()V

    .line 2023
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->setGoodsId(Ljava/lang/String;)V

    .line 2024
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->setGoodsPriceId(Ljava/lang/String;)V

    .line 2025
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->setOtherCompanyId(Ljava/lang/String;)V

    .line 2026
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->setSaleType(Ljava/lang/String;)V

    .line 2027
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->setSalesPrice(D)V

    .line 2028
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->setSalesShuilv(D)V

    .line 2029
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->setSalesPrice0(D)V

    .line 2030
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception p1

    .line 2033
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public queryGoodsSmallTypeByBigId(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 179
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "pgoodstypeid=?"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 180
    invoke-static {v1}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v1, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;

    invoke-virtual {p1, v1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 181
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;

    .line 182
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->getGoodsTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->getGoodsTypeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    .line 186
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public queryGoodsSupplier(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "\u672a\u77e5"

    .line 1444
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, " supplierid = ? "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 1447
    invoke-static {v1}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v1, Lcom/ayma/commonerp/bean/SuppliersBean;

    invoke-virtual {p1, v1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1448
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1451
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/SuppliersBean;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SuppliersBean;->getSupplierName()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_2
    :goto_0
    return-object v0

    :catch_0
    move-exception p1

    .line 1453
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public queryGoodsTypeDataSize()I
    .locals 3

    const/4 v0, 0x0

    .line 1210
    :try_start_0
    const-class v1, Lcom/ayma/commonerp/bean/GoodsTypesBean;

    new-array v2, v0, [J

    invoke-static {v1, v2}, Lorg/litepal/Operator;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 1212
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public queryGoodsTypeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "\u672a\u77e5"

    .line 1428
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, " goodstypeid = ? "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 1431
    invoke-static {v1}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v1, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;

    invoke-virtual {p1, v1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1432
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1435
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->getGoodsTypeName()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_2
    :goto_0
    return-object v0

    :catch_0
    move-exception p1

    .line 1437
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public queryNeedUploadSellData(Lcom/ayma/commonerp/bean/OrderPositionBean;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/OrderPositionBean;",
            ")",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;"
        }
    .end annotation

    const-string v0, " uploadstatue = 0 "

    .line 1111
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-string v1, " selltime asc "

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->order(Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/bean/SellDetailBean;

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1112
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1116
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1117
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/SellDetailBean;

    .line 1118
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/SellDetailBean;->getOrderNo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1120
    :cond_1
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/OrderPositionBean;->getOrderPosition()I

    move-result v0

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    rem-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/bean/OrderPositionBean;->setOrderPosition(I)V

    .line 1121
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/OrderPositionBean;->getOrderPosition()I

    move-result p1

    aget-object p1, v0, p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " orderno = ? and uploadstatue = 0 "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 1122
    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v0, Lcom/ayma/commonerp/bean/SellDetailBean;

    invoke-virtual {p1, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1113
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/OrderPositionBean;->setZero()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public queryNeedUploadSellDataList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;"
        }
    .end annotation

    const-string v0, " uploadStatue = \'0\' "

    .line 1131
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/bean/SellDetailBean;

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryNotUploadSellDataSize()I
    .locals 2

    const-string v0, " uploadStatue = \'0\' "

    .line 1101
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/bean/SellDetailBean;

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->count(Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public queryPaymentType(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/BaseDataItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "attributetypecode2 = ? "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 1364
    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v0, Lcom/ayma/commonerp/bean/BaseDataItem;

    invoke-virtual {p1, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1366
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public queryPermission(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Lcom/ayma/commonerp/bean/PermissionBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " storeid = ? "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 1702
    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v0, Lcom/ayma/commonerp/bean/PermissionBean;

    invoke-virtual {p1, v0}, Lorg/litepal/FluentQuery;->findAsync(Ljava/lang/Class;)Lorg/litepal/crud/async/FindMultiExecutor;

    move-result-object p1

    .line 1703
    new-instance v0, Lcom/ayma/commonerp/litepal/LitepalUse$6;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/litepal/LitepalUse$6;-><init>(Lcom/ayma/commonerp/litepal/LitepalUse;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    invoke-virtual {p1, v0}, Lorg/litepal/crud/async/FindMultiExecutor;->listen(Lorg/litepal/crud/callback/FindMultiCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1714
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1715
    invoke-static {p1}, Lcom/ayma/base/util/ThrowHandleUtil;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public queryPermission(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " storeid = ? "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 1650
    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v0, Lcom/ayma/commonerp/bean/PermissionBean;

    invoke-virtual {p1, v0}, Lorg/litepal/FluentQuery;->findAsync(Ljava/lang/Class;)Lorg/litepal/crud/async/FindMultiExecutor;

    move-result-object p1

    .line 1651
    new-instance v0, Lcom/ayma/commonerp/litepal/LitepalUse$5;

    invoke-direct {v0, p0, p3, p2}, Lcom/ayma/commonerp/litepal/LitepalUse$5;-><init>(Lcom/ayma/commonerp/litepal/LitepalUse;Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/litepal/crud/async/FindMultiExecutor;->listen(Lorg/litepal/crud/callback/FindMultiCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1694
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1695
    invoke-static {p1}, Lcom/ayma/base/util/ThrowHandleUtil;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public querySaleTypeCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, " attributename = ? "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 1415
    invoke-static {v1}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v1, Lcom/ayma/commonerp/bean/BaseDataItem;

    invoke-virtual {p1, v1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1416
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1419
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/BaseDataItem;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/BaseDataItem;->getAttributeCode()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception p1

    .line 1421
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public queryScrapped(Ljava/lang/String;)Ljava/util/TreeMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1389
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryBaseItem(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1393
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 1394
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/BaseDataItem;

    .line 1395
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/BaseDataItem;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/BaseDataItem;->getAttributeCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public querySellType(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/BaseDataItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " attributetypecode2 = ? "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 1323
    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v0, Lcom/ayma/commonerp/bean/BaseDataItem;

    invoke-virtual {p1, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1325
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public querySellType(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/BaseDataItem;",
            ">;"
        }
    .end annotation

    const-string v0, "%"

    .line 1332
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " attributetypecode2 = ? and attributename like ? "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    .line 1333
    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class p2, Lcom/ayma/commonerp/bean/BaseDataItem;

    invoke-virtual {p1, p2}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1335
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public querySellTypeInner(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/BaseDataItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " attributetypecode2 = ? and attributename not like ? and  attributename not like ? "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string v1, "%\u6b63\u5e38\u9500\u552e%"

    aput-object v1, v0, p1

    const/4 p1, 0x3

    const-string v1, "%12306%"

    aput-object v1, v0, p1

    .line 1342
    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v0, Lcom/ayma/commonerp/bean/BaseDataItem;

    invoke-virtual {p1, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 1343
    sget-object v0, Lcom/ayma/commonerp/litepal/-$$Lambda$LitepalUse$cO7qxpfAlr5cnczYWpcf-7htJBw;->INSTANCE:Lcom/ayma/commonerp/litepal/-$$Lambda$LitepalUse$cO7qxpfAlr5cnczYWpcf-7htJBw;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1353
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public querySimpleSellType(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/BaseDataItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " attributetypecode2 = ? and attributename like ? "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string v1, "%\u6b63\u5e38\u9500\u552e%"

    aput-object v1, v0, p1

    .line 1313
    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v0, Lcom/ayma/commonerp/bean/BaseDataItem;

    invoke-virtual {p1, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1316
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public querySmallType(Ljava/lang/String;)Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, " goodsTypeId = ? "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 224
    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v0, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;

    invoke-virtual {p1, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 225
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public querySmallTypeList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;",
            ">;"
        }
    .end annotation

    .line 216
    :try_start_0
    const-class v0, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;

    const/4 v1, 0x0

    new-array v1, v1, [J

    invoke-static {v0, v1}, Lorg/litepal/Operator;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 218
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public querySmallTypeList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "sortOrder desc"

    .line 241
    invoke-static {v1}, Lorg/litepal/Operator;->order(Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, " goodsTypeId = ? "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lorg/litepal/FluentQuery;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v1, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;

    invoke-virtual {p1, v1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 242
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception p1

    .line 247
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public queryStoreType(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/BaseDataItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " attributetypecode2 = ?  "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 1359
    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v0, Lcom/ayma/commonerp/bean/BaseDataItem;

    invoke-virtual {p1, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public querySupplier(Ljava/lang/String;)Lcom/ayma/commonerp/bean/SuppliersBean;
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const-string v2, " supplierid = ? "

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object p1, v0, v2

    .line 1460
    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v0, Lcom/ayma/commonerp/bean/SuppliersBean;

    invoke-virtual {p1, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1461
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1464
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/SuppliersBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    :goto_0
    return-object v1

    :catch_0
    move-exception p1

    .line 1466
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public querySupplierList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SuppliersBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " supplierid = ? "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 1473
    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v0, Lcom/ayma/commonerp/bean/SuppliersBean;

    invoke-virtual {p1, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1475
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public querySuppliers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SuppliersBean;",
            ">;"
        }
    .end annotation

    .line 1402
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1403
    const-class p1, Lcom/ayma/commonerp/bean/SuppliersBean;

    new-array p2, v0, [J

    invoke-static {p1, p2}, Lorg/litepal/Operator;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    const-string v1, "companyid=?  "

    aput-object v1, p2, v0

    const/4 v0, 0x1

    aput-object p1, p2, v0

    .line 1405
    invoke-static {p2}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class p2, Lcom/ayma/commonerp/bean/SuppliersBean;

    invoke-virtual {p1, p2}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1408
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public queryTrainDataSize()I
    .locals 3

    const/4 v0, 0x0

    .line 1224
    :try_start_0
    const-class v1, Lcom/ayma/commonerp/bean/TrainInfo;

    new-array v2, v0, [J

    invoke-static {v1, v2}, Lorg/litepal/Operator;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 1226
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public queryTrainId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, " trainname = ? and company2id = ? and ifnull(flag2,\'\') !=\'0\'"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    aput-object p2, v1, p1

    .line 1267
    invoke-static {v1}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class p2, Lcom/ayma/commonerp/bean/TrainInfo;

    invoke-virtual {p1, p2}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 1268
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    return-object v0

    .line 1271
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/TrainInfo;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/TrainInfo;->getTrainId()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1273
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public queryUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Lcom/ayma/commonerp/bean/UserDataBean;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "employeecode = ?"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 77
    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v0, Lcom/ayma/commonerp/bean/UserDataBean;

    invoke-virtual {p1, v0}, Lorg/litepal/FluentQuery;->findAsync(Ljava/lang/Class;)Lorg/litepal/crud/async/FindMultiExecutor;

    move-result-object p1

    .line 78
    new-instance v0, Lcom/ayma/commonerp/litepal/LitepalUse$1;

    invoke-direct {v0, p0, p4, p2, p3}, Lcom/ayma/commonerp/litepal/LitepalUse$1;-><init>(Lcom/ayma/commonerp/litepal/LitepalUse;Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/litepal/crud/async/FindMultiExecutor;->listen(Lorg/litepal/crud/callback/FindMultiCallback;)V

    return-void

    .line 73
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "\u5de5\u53f7\u3001\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public queryUserDataSize()I
    .locals 3

    const/4 v0, 0x0

    .line 1168
    :try_start_0
    const-class v1, Lcom/ayma/commonerp/bean/UserDataBean;

    new-array v2, v0, [J

    invoke-static {v1, v2}, Lorg/litepal/Operator;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 1170
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public queryUserPwd(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, " employeecode = ? "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 1381
    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v0, Lcom/ayma/commonerp/bean/UserDataBean;

    invoke-virtual {p1, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1382
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1385
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/UserDataBean;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UserDataBean;->getPassword()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public queryWorkMealGoodsWithOutDay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;",
            ">;"
        }
    .end annotation

    .line 724
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "select   distinct  t.qty,  t.birthday,  gi.salechannel,  gi.goodstypeid,  gi.sortorder as gsortorder,  sp.supplierid,  gc.barcode,  gi.goodscode,  gi.companyid,  gi.company2id,  gi.company2name,  gi.goodsid,   gi.goodsname,  gi.startday,  gi.stopday,  gi.goodsstate,  gp.goodspriceid,  gp.othercompanyid,  gp.saletype,  gp.salesprice,  gp.salesprice0,  gp.salesshuilv,  gs.goodstypename,   gs.sortorder,   sp.supplierid,  sp.costprice,  sp.costprice0,  sp.costshuilv,  gb.pgoodstypeid,   gb.pgoodstypename  from      wearhousedatabean as t      left join  goodsinfodtosbean as gi on gi.goodscode=t.goodscode      left join goodspricebean as gp on gi.goodsid=gp.goodsid      left join barcodebean as gc on gi.goodsid=gc.goodsid      left join biggoodstypesbean as gb on gi.pgoodstypeid = gb.pgoodstypeid      left join smallgoodstypesbean as gs on gi.goodstypeid = gs.goodstypeid      left join goodssuppliers as sp on gi.goodsid = sp.goodsid  where t.outday = ?  and gp.stopday >= ?  and gp.pricestate=\'\u542f\u7528\' and  gp.saletype in (\'\u4e58\u52a1\u9910\',\'\u4e58\u52a1\u6b63\u9910\',\'\u4e58\u52a1\u65e9\u9910\',\'\u5de5\u4f5c\u9910\')order by gs.sortorder"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    .line 769
    invoke-static {v1}, Lorg/litepal/Operator;->findBySQL([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "salechannel"

    .line 772
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "birthday"

    .line 773
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "pgoodstypeid"

    .line 774
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "pgoodstypename"

    .line 775
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "goodstypeid"

    .line 776
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "goodstypename"

    .line 777
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "barcode"

    .line 778
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "goodscode"

    .line 779
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "companyid"

    .line 780
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "company2id"

    .line 781
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "company2name"

    .line 782
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "goodsid"

    .line 783
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "goodsname"

    .line 784
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "startday"

    .line 785
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 p1, v0

    const-string v0, "stopday"

    .line 786
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 p2, v0

    const-string v0, "goodsstate"

    .line 787
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 p3, v0

    const-string v0, "supplierid"

    .line 788
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v16, v0

    const-string v0, "sortorder"

    .line 789
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v17, v0

    const-string v0, "gsortorder"

    .line 790
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v18, v0

    const-string v0, "costprice"

    .line 791
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v19, v0

    const-string v0, "costprice0"

    .line 792
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v20, v0

    const-string v0, "costshuilv"

    .line 793
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v21, v0

    const-string v0, "qty"

    .line 794
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v22, v0

    const-string v0, "goodspriceid"

    .line 795
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v23, v0

    const-string v0, "othercompanyid"

    .line 796
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v24, v0

    const-string v0, "saletype"

    .line 797
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v25, v0

    const-string v0, "salesprice"

    .line 798
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 799
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v26

    if-eqz v26, :cond_2

    move/from16 v26, v0

    .line 800
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move/from16 v27, v2

    .line 804
    new-instance v2, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    invoke-direct {v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;-><init>()V

    move-object/from16 v28, v0

    .line 805
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setBirthday(Ljava/lang/String;)V

    .line 806
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setPgoodsTypeId(Ljava/lang/String;)V

    .line 807
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsBigTypeName(Ljava/lang/String;)V

    .line 808
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsTypeId(Ljava/lang/String;)V

    .line 809
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 810
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_0

    const-string v0, ""

    .line 814
    :cond_0
    invoke-virtual {v2, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsSmallTypeName(Ljava/lang/String;)V

    .line 815
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move/from16 v29, v3

    .line 816
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 818
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_1

    move-object v0, v3

    .line 821
    :cond_1
    invoke-virtual {v2, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setBarcode(Ljava/lang/String;)V

    .line 822
    invoke-virtual {v2, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsCode(Ljava/lang/String;)V

    .line 823
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCompanyId(Ljava/lang/String;)V

    .line 824
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCompany2Id(Ljava/lang/String;)V

    .line 825
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCompany2Name(Ljava/lang/String;)V

    .line 826
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsId(Ljava/lang/String;)V

    .line 827
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsName(Ljava/lang/String;)V

    .line 828
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setStartDay(Ljava/lang/String;)V

    move/from16 v0, p2

    .line 829
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setStopDay(Ljava/lang/String;)V

    move/from16 v3, p3

    .line 830
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsState(Ljava/lang/String;)V

    move/from16 v0, v16

    .line 831
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setSupplierId(Ljava/lang/String;)V

    move-object/from16 v3, v28

    .line 832
    invoke-virtual {v2, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setSaleChannel(Ljava/lang/String;)V

    move/from16 v3, v17

    .line 834
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setSortOrder(Ljava/lang/String;)V

    move/from16 v0, v18

    .line 835
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGsortOrder(I)V

    move/from16 v18, v4

    move/from16 v3, v19

    move/from16 v19, v5

    .line 838
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCostPrice(D)V

    move/from16 v4, v20

    move/from16 v20, v6

    .line 839
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCostPrice0(D)V

    move v6, v3

    move/from16 v5, v21

    move/from16 v21, v4

    .line 840
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCostShuilv(D)V

    move/from16 v3, v22

    .line 842
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-double v3, v4

    invoke-virtual {v2, v3, v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setQty(D)V

    .line 845
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 846
    new-instance v4, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    invoke-direct {v4}, Lcom/ayma/commonerp/bean/GoodsPriceBean;-><init>()V

    move/from16 v28, v0

    .line 847
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->setGoodsId(Ljava/lang/String;)V

    move/from16 v0, v23

    move/from16 v23, v5

    .line 848
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->setGoodsPriceId(Ljava/lang/String;)V

    move/from16 v5, v24

    move/from16 v24, v0

    .line 849
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->setOtherCompanyId(Ljava/lang/String;)V

    move/from16 v0, v25

    move/from16 v25, v5

    .line 850
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->setSaleType(Ljava/lang/String;)V

    move/from16 v30, v6

    move/from16 v5, v26

    move/from16 v26, v7

    .line 851
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->setSalesPrice(D)V

    .line 853
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    invoke-virtual {v2, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsPrice(Ljava/util/List;)V

    move-object/from16 v3, p1

    .line 856
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v4, v18

    move/from16 v6, v20

    move/from16 v20, v21

    move/from16 v21, v23

    move/from16 v23, v24

    move/from16 v24, v25

    move/from16 v7, v26

    move/from16 v2, v27

    move/from16 v18, v28

    move/from16 v3, v29

    move/from16 v25, v0

    move v0, v5

    move/from16 v5, v19

    move/from16 v19, v30

    goto/16 :goto_0

    :cond_2
    move-object/from16 v3, p1

    .line 858
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 859
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 861
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 862
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    .line 863
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsId()Ljava/lang/String;

    move-result-object v4

    .line 864
    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 865
    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    if-nez v4, :cond_3

    goto :goto_1

    .line 869
    :cond_3
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getBirthday()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getBirthday()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    .line 872
    :cond_4
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getQty()D

    move-result-wide v5

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getQty()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setQty(D)V

    goto :goto_1

    .line 874
    :cond_5
    invoke-virtual {v0, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 877
    :cond_6
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 878
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    .line 879
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsTypeId()Ljava/lang/String;

    move-result-object v5

    .line 880
    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 881
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    :cond_7
    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 885
    :cond_8
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 887
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 888
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 889
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 890
    new-instance v4, Lcom/ayma/commonerp/litepal/LitepalUse$3;

    move-object/from16 v5, p0

    invoke-direct {v4, v5}, Lcom/ayma/commonerp/litepal/LitepalUse$3;-><init>(Lcom/ayma/commonerp/litepal/LitepalUse;)V

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 896
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_9
    move-object/from16 v5, p0

    .line 899
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_4

    :cond_a
    move-object/from16 v5, p0

    :goto_4
    return-object v3
.end method

.method public sellSetInByList(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1062
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1071
    :cond_0
    invoke-static {p1}, Lorg/litepal/Operator;->saveAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 1074
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public updatePwd(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const-string v0, "employeeid = ? "

    const/4 v1, 0x2

    const/4 v2, -0x1

    :try_start_0
    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object p1, v3, v5

    .line 129
    invoke-static {v3}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v3

    const-class v6, Lcom/ayma/commonerp/bean/UserDataBean;

    invoke-virtual {v3, v6}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 130
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 133
    :cond_0
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/bean/UserDataBean;

    .line 134
    invoke-virtual {v3, p2}, Lcom/ayma/commonerp/bean/UserDataBean;->setPassword(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/UserDataBean;->save()Z

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v4

    aput-object p1, v1, v5

    .line 137
    invoke-static {v1}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v0, Lcom/ayma/commonerp/bean/CrossRoadDataBean;

    invoke-virtual {p1, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 138
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 141
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/CrossRoadDataBean;

    .line 142
    invoke-virtual {v0, p2}, Lcom/ayma/commonerp/bean/CrossRoadDataBean;->setEmpPassword(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/CrossRoadDataBean;->save()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return v5

    :cond_3
    :goto_1
    return v2

    :catch_0
    move-exception p1

    .line 147
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method public updateSellDataUploadStatue(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;)I"
        }
    .end annotation

    .line 1084
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/SellDetailBean;

    const-string v2, "1"

    .line 1085
    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/bean/SellDetailBean;->setUploadStatue(Ljava/lang/String;)V

    goto :goto_0

    .line 1087
    :cond_0
    invoke-static {p1}, Lorg/litepal/Operator;->saveAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 1090
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public declared-synchronized updateStock(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 2049
    :try_start_0
    const-class v1, Lcom/ayma/commonerp/bean/WearhouseDataBean;

    new-array v2, v0, [J

    invoke-static {v1, v2}, Lorg/litepal/Operator;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v1

    .line 2050
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/SellDetailBean;

    .line 2051
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ayma/commonerp/bean/WearhouseDataBean;

    .line 2052
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/SellDetailBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2053
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getQty()D

    move-result-wide v5

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/SellDetailBean;->getQty()D

    move-result-wide v2

    invoke-static {v5, v6, v2, v3}, Lcom/ayma/base/util/ArithUtil;->sub(DD)D

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->setQty(D)V

    goto :goto_0

    .line 2058
    :cond_2
    invoke-static {v1}, Lorg/litepal/Operator;->saveAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 2059
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2061
    :try_start_1
    invoke-static {}, Lcom/ayma/commonerp/app/App;->getInstance()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/ayma/base/util/WriteExceptionToFileUtil;->saveCatchInfo2File(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 2062
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2063
    monitor-exit p0

    return v0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public updateStock(Ljava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 2076
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2079
    :cond_0
    const-class v1, Lcom/ayma/commonerp/bean/WearhouseDataBean;

    new-array v2, v0, [J

    invoke-static {v1, v2}, Lorg/litepal/Operator;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v1

    .line 2080
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2081
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ayma/commonerp/bean/WearhouseDataBean;

    .line 2082
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2083
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getQty()D

    move-result-wide v6

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v6, v7, v3, v4}, Lcom/ayma/base/util/ArithUtil;->sub(DD)D

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->setQty(D)V

    goto :goto_0

    .line 2088
    :cond_3
    invoke-static {v1}, Lorg/litepal/Operator;->saveAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 2092
    invoke-static {}, Lcom/ayma/commonerp/app/App;->getInstance()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/ayma/base/util/WriteExceptionToFileUtil;->saveCatchInfo2File(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 2093
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return v0
.end method
