.class public Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "QueryWarehouseModel.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/querywarehouse/IQueryWarehouseModel;


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

.field private totalCount:D

.field private totalPrice:D

.field private warehouseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/WearhouseDataBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->warehouseList:Ljava/util/List;

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->goodsBigType:Ljava/util/List;

    const-string v0, "\u5168\u90e8"

    .line 52
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->initSmallType()V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;)Ljava/util/List;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->warehouseList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public calculateTotalCountAndPrice()V
    .locals 8

    const-wide/16 v0, 0x0

    .line 304
    iput-wide v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->totalCount:D

    .line 305
    iput-wide v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->totalPrice:D

    .line 306
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->warehouseList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/WearhouseDataBean;

    .line 307
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getQty()D

    move-result-wide v2

    .line 308
    iget-wide v4, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->totalCount:D

    invoke-static {v4, v5, v2, v3}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->totalCount:D

    .line 309
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getSalesPrice()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 310
    iget-wide v4, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->totalPrice:D

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getSalesPrice()D

    move-result-wide v6

    invoke-static {v6, v7, v2, v3}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v1

    invoke-static {v4, v5, v1, v2}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->totalPrice:D

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clearData()V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->warehouseList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 328
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public getBigTypeId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->bigTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 284
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
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

    .line 333
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->goodsBigType:Ljava/util/List;

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

    .line 337
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->goodsSmallType:Ljava/util/List;

    return-object v0
.end method

.method public getSmallTypeId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->smallTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 296
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public getTotalCount()D
    .locals 2

    .line 317
    iget-wide v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->totalCount:D

    return-wide v0
.end method

.method public getTotalPrice()Ljava/lang/String;
    .locals 2

    .line 322
    iget-wide v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->totalPrice:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWarehouseList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/WearhouseDataBean;",
            ">;"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->warehouseList:Ljava/util/List;

    return-object v0
.end method

.method public initSmallType()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->goodsSmallType:Ljava/util/List;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->goodsSmallType:Ljava/util/List;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->goodsSmallType:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 127
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->goodsSmallType:Ljava/util/List;

    const-string v1, "\u5168\u90e8"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public mergeWarehouse()V
    .locals 12

    .line 220
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 221
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->warehouseList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/WearhouseDataBean;

    .line 222
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getGoodsId()Ljava/lang/String;

    move-result-object v3

    .line 224
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 225
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/bean/WearhouseDataBean;

    const-string v4, "%s,%s"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    .line 226
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getGoodsId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getGoodsId()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->setGoodsId(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getBirthDay()Ljava/lang/String;

    move-result-object v4

    const-string v6, "*"

    .line 228
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getBirthDay()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",[%s * %s]"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getBirthDay()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v8

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getQty()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v9

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->setBirthDay(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v6, "[%s * %s],[%s * %s]"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v8

    .line 231
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getQty()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v7, v9

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getBirthDay()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v5

    const/4 v4, 0x3

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getQty()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->setBirthDay(Ljava/lang/String;)V

    .line 233
    :goto_1
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getQty()D

    move-result-wide v4

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getQty()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->setQty(D)V

    .line 234
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getSumMoney()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getSumMoney()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ayma/base/util/ArithUtil;->add(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->setSumMoney(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 236
    :cond_1
    invoke-virtual {v0, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 239
    :cond_2
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->warehouseList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 240
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->warehouseList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 241
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 242
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/WearhouseDataBean;

    .line 243
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getGoodsTypeName()Ljava/lang/String;

    move-result-object v3

    .line 244
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_3

    .line 246
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 247
    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :cond_3
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 252
    :cond_4
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->warehouseList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 255
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 257
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ayma/commonerp/bean/WearhouseDataBean;

    .line 258
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getQty()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpg-double v9, v5, v7

    if-gtz v9, :cond_5

    .line 259
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 263
    :cond_6
    invoke-interface {v2, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 265
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 267
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->warehouseList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 270
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 272
    :cond_7
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->calculateTotalCountAndPrice()V

    return-void
.end method

.method public queryGoodsBigType(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->litepalUseeInit()V

    .line 66
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsBigType()Ljava/util/LinkedHashMap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "\u83b7\u53d6\u5546\u54c1\u5927\u7c7b\u5931\u8d25"

    .line 68
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v1, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsAllSmallType(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "\u83b7\u53d6\u5546\u54c1\u5c0f\u7c7b\u5931\u8d25"

    .line 73
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 76
    :cond_1
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->bigTypeMap:Ljava/util/Map;

    .line 77
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->smallTypeMap:Ljava/util/Map;

    .line 78
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->goodsBigType:Ljava/util/List;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->goodsSmallType:Ljava/util/List;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    invoke-interface {p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void
.end method

.method public queryGoodsSmallType(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 2

    .line 92
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->litepalUseeInit()V

    const-string v0, "\u5168\u90e8"

    .line 93
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "\u83b7\u53d6\u5546\u54c1\u5c0f\u7c7b\u5931\u8d25"

    if-eqz v0, :cond_1

    .line 94
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsAllSmallType(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    if-nez p1, :cond_0

    .line 96
    invoke-virtual {p0, v1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 99
    :cond_0
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->smallTypeMap:Ljava/util/Map;

    .line 100
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->initSmallType()V

    .line 101
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->goodsSmallType:Ljava/util/List;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->smallTypeMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 102
    invoke-interface {p3}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void

    .line 105
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->bigTypeMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p1, "\u83b7\u53d6\u5546\u54c1\u5927\u7c7b\u5931\u8d25"

    .line 107
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 110
    :cond_2
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsSmallTypeByBigId(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    if-nez p1, :cond_3

    .line 112
    invoke-virtual {p0, v1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 115
    :cond_3
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->smallTypeMap:Ljava/util/Map;

    .line 116
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->initSmallType()V

    .line 117
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->goodsSmallType:Ljava/util/List;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    invoke-interface {p3}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void
.end method

.method public queryWarehouseGoods(Ljava/util/TreeMap;ZLcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 139
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->queryWarehouse(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 140
    new-instance v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;

    invoke-direct {v0, p0, p3, p2}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;-><init>(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;Lcom/ayma/base/mvp/ModelParamCallBack;Z)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
