.class public Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "OffSiteAddModel.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/offsizeadd/IOffSiteAddModel;


# instance fields
.field private selectBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;"
        }
    .end annotation
.end field

.field private stationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private supplierList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private supplierMap:Ljava/util/Map;
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

.field private totalPrice:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->selectBeanList:Ljava/util/List;

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->supplierList:Ljava/util/List;

    .line 58
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->supplierMap:Ljava/util/Map;

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->stationList:Ljava/util/List;

    .line 61
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->stationMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->stationList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;)Ljava/util/Map;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->stationMap:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public addGoodsToList(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    return-void
.end method

.method public addSelectGoodsToList(Ljava/util/List;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->selectBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->selectBeanList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 125
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    const/4 v2, 0x0

    .line 128
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->selectBeanList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    .line 129
    invoke-virtual {v4, v1}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->equal(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    move-object v0, v4

    :cond_2
    if-eqz v2, :cond_3

    .line 136
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->setAddCount(D)V

    goto :goto_0

    .line 138
    :cond_3
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->selectBeanList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->calculateTotalCountAndPrice()V

    .line 143
    invoke-interface {p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void
.end method

.method public calculateTotalCountAndPrice()V
    .locals 9

    const-wide/16 v0, 0x0

    .line 167
    iput-wide v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->totalCount:D

    .line 168
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->totalPrice:Ljava/lang/Double;

    .line 169
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->selectBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    .line 170
    iget-wide v2, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->totalCount:D

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->totalCount:D

    .line 171
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsPrice()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsPrice()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsPrice()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSalesPrice()D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->totalPrice:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v5

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsPrice()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSalesPrice()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->totalPrice:Ljava/lang/Double;

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public clearAllData()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->selectBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearAllData(Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 158
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->clearAllData()V

    .line 159
    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void
.end method

.method public deleteGoods(Lcom/ayma/commonerp/bean/ReceiptSelectBean;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1

    .line 368
    :try_start_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->calculateTotalCountAndPrice()V

    .line 369
    invoke-interface {p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 371
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    .line 372
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getAddList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptJsonBean;",
            ">;"
        }
    .end annotation

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 324
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->selectBeanList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    .line 325
    new-instance v3, Lcom/ayma/commonerp/bean/ReceiptJsonBean;

    invoke-direct {v3}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;-><init>()V

    .line 326
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v4

    .line 327
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getBirthday()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setBirthDay(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setGoodsCode(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setGoodsId(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setGoodsName(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getShellife()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setShellife(I)V

    .line 332
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setQty(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getCostPrice0()D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setCostPrice0(D)V

    .line 335
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getCostPrice()D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setCostPrice(D)V

    .line 336
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getCostShuilv()D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setCostShuilv(D)V

    .line 338
    :try_start_0
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getBirthday()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getShellife()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Lcom/ayma/base/util/DateTimeUtils;->getSpecifiedDayAfterN(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setStopDay(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 340
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 342
    :goto_1
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsPrice()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 343
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x0

    .line 344
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    .line 345
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSalesPrice()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 346
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSalesPrice()D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setSalesPrice(D)V

    .line 347
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSalesPrice()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setSalesPriceTotal(D)V

    .line 351
    :cond_0
    invoke-virtual {v3, p1}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setDescription(Ljava/lang/String;)V

    .line 352
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    return-object v0
.end method

.method public getPricesBean(Ljava/lang/String;)Lcom/ayma/commonerp/bean/GoodsPriceBean;
    .locals 2

    .line 190
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->litepalUseeInit()V

    .line 191
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    const-string v1, "\u6b63\u5e38\u9500\u552e"

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsPrice(Ljava/lang/String;Ljava/lang/String;)Lcom/ayma/commonerp/bean/GoodsPriceBean;

    move-result-object p1

    return-object p1
.end method

.method public getSelectBeanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->selectBeanList:Ljava/util/List;

    return-object v0
.end method

.method public getStationCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->stationMap:Ljava/util/Map;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 199
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->stationMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1
.end method

.method public getStationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->stationList:Ljava/util/List;

    return-object v0
.end method

.method public getStockCount(Ljava/lang/String;)D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSupplierId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->supplierMap:Ljava/util/Map;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 207
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->supplierMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1
.end method

.method public getSupplierList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->supplierList:Ljava/util/List;

    return-object v0
.end method

.method public getTotalCount()D
    .locals 2

    .line 378
    iget-wide v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->totalCount:D

    return-wide v0
.end method

.method public getTotalPrice()Ljava/lang/Double;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->totalPrice:Ljava/lang/Double;

    return-object v0
.end method

.method public postAddData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation

    .line 251
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/net/RetrofitFactory;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->generateRequestBody2(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->commitOffSiteAdd(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 252
    new-instance v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel$1;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel$1;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public queryGoods(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public queryGoodsCompany(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 360
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->litepalUseeInit()V

    .line 361
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsCompanyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public queryStationFromServer(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation

    .line 281
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->queryStation(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 282
    new-instance v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel$2;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel$2;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public querySuppliers(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 3

    .line 219
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->litepalUseeInit()V

    .line 220
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0, p1, p2}, Lcom/ayma/commonerp/litepal/LitepalUse;->querySuppliers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 221
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 225
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->supplierMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 226
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->supplierList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 227
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ayma/commonerp/bean/SuppliersBean;

    .line 228
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SuppliersBean;->isHideSupplier()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SuppliersBean;->getFlag2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->supplierMap:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SuppliersBean;->getFlag2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SuppliersBean;->getSupplierId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->supplierList:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SuppliersBean;->getFlag2()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->supplierMap:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SuppliersBean;->getSupplierName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SuppliersBean;->getSupplierId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->supplierList:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SuppliersBean;->getSupplierName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 239
    :cond_3
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->supplierList:Ljava/util/List;

    const/4 p2, 0x0

    const-string v0, "\u8bf7\u9009\u62e9"

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 240
    invoke-interface {p3}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void

    :cond_4
    :goto_1
    const-string p1, "\u4f9b\u5e94\u5546\u5217\u8868\u4e3a\u7a7a\uff0c\u8bf7\u786e\u8ba4\u662f\u5426\u5df2\u4e0b\u8f7d\u5546\u54c1\u8d44\u6599"

    .line 222
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
