.class public Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "QueryTeamPickupModel.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/queryteampickup/IQueryTeamPickupModel;


# instance fields
.field private bigTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private goodsBigType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private goodsSmallType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private smallTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private teamPickupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/TeamPickupBean;",
            ">;"
        }
    .end annotation
.end field

.field private totalCount:D

.field private totalPrice:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->teamPickupList:Ljava/util/List;

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->goodsBigType:Ljava/util/List;

    const-string v0, "\u5168\u90e8"

    .line 40
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->initSmallType()V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->teamPickupList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public calculateTotalCountAndPrice()V
    .locals 8

    const-wide/16 v0, 0x0

    .line 194
    iput-wide v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->totalCount:D

    .line 195
    iput-wide v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->totalPrice:D

    .line 196
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->teamPickupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/TeamPickupBean;

    .line 197
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/TeamPickupBean;->getSumQty()D

    move-result-wide v2

    .line 198
    iget-wide v4, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->totalCount:D

    invoke-static {v4, v5, v2, v3}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->totalCount:D

    .line 199
    iget-wide v4, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->totalPrice:D

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/TeamPickupBean;->getSalesPrice()D

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v1

    invoke-static {v4, v5, v1, v2}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->totalPrice:D

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearData()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->teamPickupList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 216
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public getBigTypeId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->bigTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->bigTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public getGoodsBigType()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->goodsBigType:Ljava/util/List;

    return-object v0
.end method

.method public getGoodsSmallType()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->goodsSmallType:Ljava/util/List;

    return-object v0
.end method

.method public getSmallTypeId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->smallTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->smallTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public getTeamPickupList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/TeamPickupBean;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->teamPickupList:Ljava/util/List;

    return-object v0
.end method

.method public getTotalCount()D
    .locals 2

    .line 205
    iget-wide v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->totalCount:D

    return-wide v0
.end method

.method public getTotalPrice()Ljava/lang/String;
    .locals 2

    .line 210
    iget-wide v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->totalPrice:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initSmallType()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->goodsSmallType:Ljava/util/List;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->goodsSmallType:Ljava/util/List;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->goodsSmallType:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 119
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->goodsSmallType:Ljava/util/List;

    const-string v1, "\u5168\u90e8"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public queryGoodsBigType(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->litepalUseeInit()V

    .line 53
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsBigType()Ljava/util/LinkedHashMap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "\u83b7\u53d6\u5546\u54c1\u5927\u7c7b\u9519\u8bef"

    .line 55
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v1, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsAllSmallType(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "\u83b7\u53d6\u5546\u54c1\u5c0f\u7c7b\u5931\u8d25"

    .line 60
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 63
    :cond_1
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->bigTypeMap:Ljava/util/Map;

    .line 64
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->smallTypeMap:Ljava/util/Map;

    .line 65
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->goodsBigType:Ljava/util/List;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 66
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->goodsSmallType:Ljava/util/List;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 67
    invoke-interface {p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void
.end method

.method public queryGoodsSmallType(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 2

    .line 79
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->litepalUseeInit()V

    const-string v0, "\u5168\u90e8"

    .line 80
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "\u83b7\u53d6\u5546\u54c1\u5c0f\u7c7b\u5931\u8d25"

    if-eqz v0, :cond_1

    .line 81
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsAllSmallType(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    if-nez p1, :cond_0

    .line 83
    invoke-virtual {p0, v1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->smallTypeMap:Ljava/util/Map;

    .line 87
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->initSmallType()V

    .line 88
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->goodsSmallType:Ljava/util/List;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->smallTypeMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    invoke-interface {p3}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void

    .line 92
    :cond_1
    invoke-virtual {p0, p2}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->getBigTypeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 93
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {p0, v1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    const-string v0, "all"

    .line 98
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsAllSmallType(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    goto :goto_0

    .line 101
    :cond_3
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsSmallTypeByBigId(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_4

    const-string p1, "\u83b7\u53d6\u5931\u8d25"

    .line 104
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 107
    :cond_4
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->smallTypeMap:Ljava/util/Map;

    .line 108
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->initSmallType()V

    .line 109
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->goodsSmallType:Ljava/util/List;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    invoke-interface {p3}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void
.end method

.method public queryWarehouseGoods(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 130
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/net/RetrofitFactory;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->queryTeamPickup(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 131
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel$1;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel$1;-><init>(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
