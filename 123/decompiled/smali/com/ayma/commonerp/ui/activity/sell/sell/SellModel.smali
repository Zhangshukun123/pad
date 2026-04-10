.class public Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "SellModel.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/sell/sell/ISellModel;


# static fields
.field public static final TAG_CASH_TO_ONLINE_CALL:Ljava/lang/String; = "cashToOnline"

.field public static final TAG_CASH_TO_ONLINE_QUERY_CALL:Ljava/lang/String; = "cashToOnlineQuery"

.field public static final TAG_PAY_CALL:Ljava/lang/String; = "pay"

.field public static final TAG_PAY_QUERY_CALL:Ljava/lang/String; = "payQuery"


# instance fields
.field private final callMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lretrofit2/Call<",
            "Lcom/ayma/commonerp/bean/RequestHeaderBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private cashToOnlineCall:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/ayma/commonerp/bean/RequestHeaderBean;",
            ">;"
        }
    .end annotation
.end field

.field private payCall:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/ayma/commonerp/bean/RequestHeaderBean;",
            ">;"
        }
    .end annotation
.end field

.field private saleTypeMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sellDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;"
        }
    .end annotation
.end field

.field private totalCount:D

.field private totalPrice:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 54
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->totalCount:D

    .line 43
    iput-wide v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->totalPrice:D

    .line 47
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->callMap:Ljava/util/Map;

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->sellDataList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;)Lcom/ayma/commonerp/litepal/LitepalUse;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;)Ljava/util/List;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->sellDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;)Lcom/ayma/commonerp/litepal/LitepalUse;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;)V
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->initGson()V

    return-void
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;)Lretrofit2/Call;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->payCall:Lretrofit2/Call;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addGoods(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 4

    .line 97
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getSupplierId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u6b64\u5546\u54c1\u4f9b\u5e94\u5546\u6570\u636e\u51fa\u9519\uff0c\u65e0\u6cd5\u8fdb\u884c\u9500\u552e"

    .line 98
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p6, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 101
    :cond_0
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    if-eqz p3, :cond_1

    neg-double v0, v0

    .line 104
    :cond_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->sellDataList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ayma/commonerp/bean/SellDetailBean;

    .line 107
    invoke-virtual {p3}, Lcom/ayma/commonerp/bean/SellDetailBean;->getGoodsName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p3}, Lcom/ayma/commonerp/bean/SellDetailBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p3}, Lcom/ayma/commonerp/bean/SellDetailBean;->getCompanyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getCompanyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p3}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSaleType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    invoke-virtual {p3}, Lcom/ayma/commonerp/bean/SellDetailBean;->getQty()D

    move-result-wide p1

    invoke-static {p1, p2, v0, v1}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide p1

    const-wide/16 p4, 0x0

    cmpl-double v0, p1, p4

    if-nez v0, :cond_3

    .line 110
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->sellDataList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->calculateTotalCountAndPrice()V

    .line 112
    invoke-interface {p6}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void

    .line 115
    :cond_3
    invoke-virtual {p3, p1, p2}, Lcom/ayma/commonerp/bean/SellDetailBean;->setQty(D)V

    .line 116
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->calculateTotalCountAndPrice()V

    .line 117
    invoke-interface {p6}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void

    .line 122
    :cond_4
    new-instance p2, Lcom/ayma/commonerp/bean/SellDetailBean;

    invoke-direct {p2}, Lcom/ayma/commonerp/bean/SellDetailBean;-><init>()V

    .line 123
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/ayma/commonerp/bean/SellDetailBean;->setGoodsId(Ljava/lang/String;)V

    .line 124
    sget-object p3, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/ayma/commonerp/bean/SellDetailBean;->setCompanyId(Ljava/lang/String;)V

    .line 125
    sget-object p3, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/ayma/commonerp/bean/SellDetailBean;->setCompany2Id(Ljava/lang/String;)V

    .line 126
    sget-object p3, Lcom/ayma/commonerp/app/AppUserData;->storeId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/ayma/commonerp/bean/SellDetailBean;->setStoreId(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2, p4}, Lcom/ayma/commonerp/bean/SellDetailBean;->setSaleType(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2, p5}, Lcom/ayma/commonerp/bean/SellDetailBean;->setPaymentType(Ljava/lang/String;)V

    const-string p3, ""

    .line 129
    invoke-virtual {p2, p3}, Lcom/ayma/commonerp/bean/SellDetailBean;->setOrderNo(Ljava/lang/String;)V

    .line 130
    sget-object p4, Lcom/ayma/commonerp/app/AppUserData;->userId:Ljava/lang/String;

    invoke-virtual {p2, p4}, Lcom/ayma/commonerp/bean/SellDetailBean;->setEmployeeId(Ljava/lang/String;)V

    .line 131
    sget-object p4, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    invoke-virtual {p2, p4}, Lcom/ayma/commonerp/bean/SellDetailBean;->setEmployeeCode(Ljava/lang/String;)V

    .line 132
    sget-object p4, Lcom/ayma/commonerp/app/AppUserData;->userName:Ljava/lang/String;

    invoke-virtual {p2, p4}, Lcom/ayma/commonerp/bean/SellDetailBean;->setEmployeeName(Ljava/lang/String;)V

    .line 133
    sget-object p4, Lcom/ayma/commonerp/app/AppUserData;->fleetId:Ljava/lang/String;

    invoke-virtual {p2, p4}, Lcom/ayma/commonerp/bean/SellDetailBean;->setFleetId(Ljava/lang/String;)V

    .line 134
    sget-object p4, Lcom/ayma/commonerp/app/AppUserData;->teamId:Ljava/lang/String;

    invoke-virtual {p2, p4}, Lcom/ayma/commonerp/bean/SellDetailBean;->setTeamId(Ljava/lang/String;)V

    .line 135
    sget-object p4, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    invoke-virtual {p2, p4}, Lcom/ayma/commonerp/bean/SellDetailBean;->setTrainsId(Ljava/lang/String;)V

    .line 136
    sget-object p4, Lcom/ayma/commonerp/app/AppUserData;->trainName:Ljava/lang/String;

    invoke-virtual {p2, p4}, Lcom/ayma/commonerp/bean/SellDetailBean;->setTrainName(Ljava/lang/String;)V

    .line 137
    sget-object p4, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    invoke-virtual {p2, p4}, Lcom/ayma/commonerp/bean/SellDetailBean;->setOutDate(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getBarcode()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/ayma/commonerp/bean/SellDetailBean;->setBarcode(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsCode()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/ayma/commonerp/bean/SellDetailBean;->setGoodsCode(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/ayma/commonerp/bean/SellDetailBean;->setGoodsName(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2, v0, v1}, Lcom/ayma/commonerp/bean/SellDetailBean;->setQty(D)V

    .line 142
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getSupplierId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/ayma/commonerp/bean/SellDetailBean;->setSupplierId(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsPrice()Ljava/util/List;

    move-result-object p1

    const/4 p4, 0x0

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSalesPrice()D

    move-result-wide p4

    invoke-virtual {p2, p4, p5}, Lcom/ayma/commonerp/bean/SellDetailBean;->setSalesPrice(D)V

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->getVersionName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/bean/SellDetailBean;->setAppVersion(Ljava/lang/String;)V

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ayma/base/util/DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/bean/SellDetailBean;->setMachineModel(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMddHHmmss()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/bean/SellDetailBean;->setScanDate(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2, p3}, Lcom/ayma/commonerp/bean/SellDetailBean;->setCheckRepeat(Ljava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->sellDataList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->calculateTotalCountAndPrice()V

    .line 150
    invoke-interface {p6}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void
.end method

.method public addGoods(Ljava/util/List;ZLcom/ayma/base/mvp/ModelCallBack;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;Z",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 163
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/SellDetailBean;

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 164
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SellDetailBean;->getQty()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/bean/SellDetailBean;->setQty(D)V

    goto :goto_0

    .line 167
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->sellDataList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_1

    .line 168
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->sellDataList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 169
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->calculateTotalCountAndPrice()V

    .line 170
    invoke-interface {p3}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void

    .line 173
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/SellDetailBean;

    const/4 v2, 0x0

    .line 178
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->sellDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/SellDetailBean;

    .line 179
    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/bean/SellDetailBean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 183
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/SellDetailBean;->getQty()D

    move-result-wide v5

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/SellDetailBean;->getQty()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v3, v5, v7

    if-nez v3, :cond_3

    .line 185
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 188
    :cond_3
    invoke-virtual {v2, v5, v6}, Lcom/ayma/commonerp/bean/SellDetailBean;->setQty(D)V

    :goto_3
    move v2, v4

    goto :goto_4

    :cond_4
    move v2, v4

    goto :goto_2

    :cond_5
    :goto_4
    if-nez v2, :cond_2

    .line 193
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 197
    :cond_6
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->sellDataList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 199
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->sellDataList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 202
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->calculateTotalCountAndPrice()V

    .line 203
    invoke-interface {p3}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void
.end method

.method public calculateTotalCountAndPrice()V
    .locals 8

    const-wide/16 v0, 0x0

    .line 314
    iput-wide v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->totalCount:D

    .line 315
    iput-wide v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->totalPrice:D

    .line 316
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->sellDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/SellDetailBean;

    .line 317
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/SellDetailBean;->getQty()D

    move-result-wide v2

    .line 322
    iget-wide v4, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->totalCount:D

    invoke-static {v4, v5, v2, v3}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->totalCount:D

    .line 323
    iget-wide v4, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->totalPrice:D

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSalesPrice()D

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v1

    invoke-static {v4, v5, v1, v2}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->totalPrice:D

    goto :goto_0

    :cond_0
    return-void
.end method

.method public canOnlinePay()Z
    .locals 6

    .line 385
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->sellDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/SellDetailBean;

    .line 386
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/SellDetailBean;->getQty()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public cancelPayQueryRequest(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 3

    .line 531
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->callMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lretrofit2/Call;

    if-nez p1, :cond_0

    const-string p1, "\u65e0\u6b64\u8bf7\u6c42"

    .line 533
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 536
    :cond_0
    invoke-interface {p1}, Lretrofit2/Call;->cancel()V

    .line 537
    invoke-interface {p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 539
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53d6\u6d88\u652f\u4ed8\u67e5\u8be2\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ayma/commonerp/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public clearAllGoods(Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->sellDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 284
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->calculateTotalCountAndPrice()V

    .line 285
    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void
.end method

.method public clearRequest()V
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->callMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->callMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public declared-synchronized commitGoodsByList(Ljava/lang/String;Ljava/lang/String;DLcom/ayma/base/mvp/ModelCallBack;)V
    .locals 18

    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    move-object/from16 v4, p5

    monitor-enter p0

    .line 218
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->litepalUseeInit()V

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->generateOrderNo()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMddHHmmss()Ljava/lang/String;

    move-result-object v5

    .line 221
    iget-object v6, v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v6}, Lcom/ayma/commonerp/litepal/LitepalUse;->generateCheckRepeatValue()Ljava/lang/String;

    move-result-object v6

    .line 222
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v8, 0x0

    .line 224
    iget-object v10, v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->sellDataList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ayma/commonerp/bean/SellDetailBean;

    .line 225
    invoke-virtual {v11}, Lcom/ayma/commonerp/bean/SellDetailBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lcom/ayma/commonerp/bean/SellDetailBean;->getQty()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-virtual {v11, v0}, Lcom/ayma/commonerp/bean/SellDetailBean;->setOrderNo(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v11, v6}, Lcom/ayma/commonerp/bean/SellDetailBean;->setOrderCheckRepeat(Ljava/lang/String;)V

    .line 228
    sget-object v12, Lcom/ayma/commonerp/app/AppUserData;->teamId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/ayma/commonerp/bean/SellDetailBean;->setTeamId(Ljava/lang/String;)V

    .line 229
    sget-object v12, Lcom/ayma/commonerp/app/AppUserData;->teamName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/ayma/commonerp/bean/SellDetailBean;->setTeamName(Ljava/lang/String;)V

    .line 230
    sget-object v12, Lcom/ayma/commonerp/app/AppUserData;->storeId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/ayma/commonerp/bean/SellDetailBean;->setStoreId(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v11, v5}, Lcom/ayma/commonerp/bean/SellDetailBean;->setSellTime(Ljava/lang/String;)V

    .line 232
    iget-object v12, v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v12}, Lcom/ayma/commonerp/litepal/LitepalUse;->generateCheckRepeatValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/ayma/commonerp/bean/SellDetailBean;->setCheckRepeat(Ljava/lang/String;)V

    .line 233
    sget-object v12, Lcom/ayma/commonerp/app/AppUserData;->fleetId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/ayma/commonerp/bean/SellDetailBean;->setFleetId(Ljava/lang/String;)V

    move-object/from16 v12, p1

    .line 234
    invoke-virtual {v11, v12}, Lcom/ayma/commonerp/bean/SellDetailBean;->setPaymentType(Ljava/lang/String;)V

    move-object/from16 v13, p2

    .line 235
    invoke-virtual {v11, v13}, Lcom/ayma/commonerp/bean/SellDetailBean;->setPaymentTypeValue(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v11, v2, v3}, Lcom/ayma/commonerp/bean/SellDetailBean;->setPrefrentialAmount(D)V

    .line 237
    invoke-virtual {v11}, Lcom/ayma/commonerp/bean/SellDetailBean;->getQty()D

    move-result-wide v14

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    invoke-virtual {v11}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSalesPrice()D

    move-result-wide v5

    invoke-static {v14, v15, v5, v6}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v5

    invoke-static {v8, v9, v5, v6}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v8

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    goto :goto_0

    .line 239
    :cond_0
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpl-double v0, v2, v5

    if-lez v0, :cond_1

    const-string v0, "\u8ba2\u5355\u91d1\u989d\uff1a%s\uff0c\u4f18\u60e0\u91d1\u989d\uff1a%s\uff0c\u8bf7\u68c0\u67e5"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 240
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {v7}, Lcom/ayma/base/util/MoneyUtils;->toMoneyStrWithout$(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Lcom/ayma/base/util/MoneyUtils;->toMoneyStrWithout$(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    .line 243
    :cond_1
    :try_start_1
    iget-object v0, v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    iget-object v2, v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->sellDataList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/litepal/LitepalUse;->sellSetInByList(Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_2

    .line 245
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel$1;

    invoke-direct {v0, v1, v7}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel$1;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    .line 253
    iget-object v0, v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->sellDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->calculateTotalCountAndPrice()V

    .line 256
    invoke-interface/range {p5 .. p5}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    goto :goto_1

    :cond_2
    const-string v0, "\u4fdd\u5b58\u5931\u8d25"

    .line 258
    invoke-virtual {v1, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 261
    :try_start_2
    invoke-virtual {v1, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    .line 262
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 264
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public deleteGoods(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 296
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->calculateTotalCountAndPrice()V

    .line 297
    invoke-interface {p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void
.end method

.method public generateSaleGoods()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/OnlinePayJsonBean;",
            ">;"
        }
    .end annotation

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 341
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->sellDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/SellDetailBean;

    .line 342
    new-instance v3, Lcom/ayma/commonerp/bean/OnlinePayJsonBean;

    invoke-direct {v3}, Lcom/ayma/commonerp/bean/OnlinePayJsonBean;-><init>()V

    .line 343
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/SellDetailBean;->getGoodsId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ayma/commonerp/bean/OnlinePayJsonBean;->setGoodsId(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/SellDetailBean;->getBarcode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ayma/commonerp/bean/OnlinePayJsonBean;->setBarcode(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/SellDetailBean;->getQty()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/ayma/commonerp/bean/OnlinePayJsonBean;->setQty(D)V

    .line 346
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/SellDetailBean;->getScanDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ayma/commonerp/bean/OnlinePayJsonBean;->setScanDate(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSupplierId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ayma/commonerp/bean/OnlinePayJsonBean;->setSupplierId(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSalesPrice()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/ayma/commonerp/bean/OnlinePayJsonBean;->setSalePriceReal(D)V

    .line 349
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public generateSaleGoodsPayJson()Ljava/lang/String;
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->generateSaleGoods()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSaleTypeCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->saleTypeMap:Ljava/util/TreeMap;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 380
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->saleTypeMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1
.end method

.method public getSellData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->sellDataList:Ljava/util/List;

    return-object v0
.end method

.method public getSellTypeList(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 547
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->litepalUseeInit()V

    .line 548
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->saleTypeMap:Ljava/util/TreeMap;

    if-nez v0, :cond_0

    .line 549
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->saleTypeMap:Ljava/util/TreeMap;

    .line 551
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    .line 553
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x14bfd

    const-string v4, "12306"

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v3, :cond_3

    const v3, 0xd5f35

    if-eq v2, v3, :cond_2

    const v3, 0x2c9ffb8

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "\u6b63\u5e38"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const-string v2, "VIP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x2

    :cond_4
    :goto_0
    const/4 p1, 0x0

    const-string v2, "sale_type"

    if-eqz v1, :cond_7

    if-eq v1, v6, :cond_6

    if-eq v1, v5, :cond_5

    return-object p1

    .line 561
    :cond_5
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/litepal/LitepalUse;->querySellTypeInner(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 558
    :cond_6
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v1, v2, v4}, Lcom/ayma/commonerp/litepal/LitepalUse;->querySellType(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 555
    :cond_7
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/litepal/LitepalUse;->querySimpleSellType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_8

    return-object p1

    .line 570
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/BaseDataItem;

    .line 571
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->saleTypeMap:Ljava/util/TreeMap;

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/BaseDataItem;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/BaseDataItem;->getAttributeCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/BaseDataItem;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    return-object v0
.end method

.method public getTotalCount()D
    .locals 2

    .line 329
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->calculateTotalCountAndPrice()V

    .line 330
    iget-wide v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->totalCount:D

    return-wide v0
.end method

.method public getTotalPrice()D
    .locals 2

    .line 335
    iget-wide v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->totalPrice:D

    return-wide v0
.end method

.method public pay(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Lcom/ayma/commonerp/bean/RequestHeaderBean;",
            ">;)V"
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->version:Ljava/lang/String;

    const-string v1, "pdaVer"

    invoke-virtual {p1, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->machineModel:Ljava/lang/String;

    const-string v1, "pdaNo"

    invoke-virtual {p1, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->payCreate()Lcom/ayma/commonerp/net/PayApi;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->generateRequestBody2(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/PayApi;->createOrder(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 425
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->callMap:Ljava/util/Map;

    const-string v1, "pay"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel$2;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel$2;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public queryGoodsCompany(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 371
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->litepalUseeInit()V

    .line 372
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsCompanyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public queryOrder(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Lcom/ayma/commonerp/bean/PayResult;",
            ">;)V"
        }
    .end annotation

    .line 451
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->payCall:Lretrofit2/Call;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lretrofit2/Call;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 452
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->payCall:Lretrofit2/Call;

    const-string p1, "\u8bf7\u6c42\u5df2\u53d6\u6d88"

    .line 453
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 456
    :cond_0
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->payCreate()Lcom/ayma/commonerp/net/PayApi;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/PayApi;->queryOrder(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->payCall:Lretrofit2/Call;

    .line 457
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->callMap:Ljava/util/Map;

    const-string v1, "payQuery"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->payCall:Lretrofit2/Call;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel$3;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel$3;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public searchGoods(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;",
            ">;>;)V"
        }
    .end annotation

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->litepalUseeInit()V

    .line 71
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryCanSellGoods(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 73
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-interface {p7, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "\u65e0\u6b64\u5546\u54c1"

    .line 74
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p7, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p7, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public updateStock()V
    .locals 1

    .line 497
    :try_start_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->litepalUseeInit()V

    .line 498
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel$4;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel$4;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;)V

    invoke-static {v0}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 506
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public verifyPickUpData(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1

    .line 401
    :try_start_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->litepalUseeInit()V

    .line 402
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0, p1, p2}, Lcom/ayma/commonerp/litepal/LitepalUse;->checkPickUpData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 404
    invoke-interface {p3}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void

    :cond_0
    const-string p1, "\u8bf7\u4e0b\u8f7d\u5546\u54c1\u8d44\u6599\u4ee5\u53ca\u9886\u6599\u5355\u540e\u518d\u8fdb\u884c\u9500\u552e\uff0c\u5982\u5df2\u4e0b\u8f7d\u76f8\u5173\u8d44\u6599\uff0c\u5219\u8bf7\u8054\u7cfb\u76f8\u5173\u7ba1\u7406\u5458\u7ef4\u62a4\u5546\u54c1\u8d44\u6599\u540e\u4e0b\u8f7d\u91cd\u8bd5\u3002"

    .line 407
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 409
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    .line 410
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
