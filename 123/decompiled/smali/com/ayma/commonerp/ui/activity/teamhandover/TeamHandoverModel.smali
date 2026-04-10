.class public Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "TeamHandoverModel.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/teamhandover/ITeamHandoverModel;


# instance fields
.field private final dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;"
        }
    .end annotation
.end field

.field private final queryData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/WearhouseDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private selectAmount:D

.field private selectCount:D

.field private totalCount:D

.field private totalMoney:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->dataList:Ljava/util/List;

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->queryData:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;)Landroid/os/Handler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;)Landroid/os/Handler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;)V
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->initGson()V

    return-void
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;)Ljava/util/List;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->queryData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;)Ljava/util/List;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->dataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;)Landroid/os/Handler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;)Landroid/os/Handler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public addTrainStock(Ljava/util/List;Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/WearhouseDataBean;",
            ">;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 132
    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$2;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;Ljava/util/List;Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public calculateSelectedCountAndAmount()V
    .locals 10

    const-wide/16 v0, 0x0

    .line 427
    iput-wide v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->selectCount:D

    .line 428
    iput-wide v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->selectAmount:D

    .line 429
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->dataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    .line 430
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->isSelected()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 433
    :cond_1
    iget-wide v4, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->selectCount:D

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->selectCount:D

    .line 434
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsPrice()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 435
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 439
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    .line 440
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSaleType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u6b63\u5e38\u9500\u552e"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 441
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSalesPrice()D

    move-result-wide v4

    goto :goto_1

    :cond_4
    move-wide v4, v0

    .line 445
    :goto_1
    iget-wide v6, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->selectAmount:D

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v8

    invoke-static {v8, v9, v4, v5}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v3

    invoke-static {v6, v7, v3, v4}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->selectAmount:D

    goto :goto_0

    :cond_5
    return-void
.end method

.method public calculateTotalCountAndPrice()V
    .locals 10

    const-wide/16 v0, 0x0

    .line 197
    iput-wide v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->totalCount:D

    .line 198
    iput-wide v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->totalMoney:D

    .line 199
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->dataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    .line 200
    iget-wide v4, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->totalCount:D

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->totalCount:D

    .line 201
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsPrice()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 202
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 206
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    .line 207
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSaleType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u6b63\u5e38\u9500\u552e"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 208
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSalesPrice()D

    move-result-wide v4

    goto :goto_1

    :cond_3
    move-wide v4, v0

    .line 212
    :goto_1
    iget-wide v6, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->totalMoney:D

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v8

    invoke-static {v8, v9, v4, v5}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v3

    invoke-static {v6, v7, v3, v4}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->totalMoney:D

    goto :goto_0

    :cond_4
    return-void
.end method

.method public checkCanHandover()Z
    .locals 7

    .line 370
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->dataList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    .line 374
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v6, v2, v4

    if-gtz v6, :cond_1

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public checkCanHandover(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptJsonBean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 383
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 386
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/ReceiptJsonBean;

    .line 387
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->getQty()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_1

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public clearData(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 258
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->dataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 259
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    .line 261
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 266
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->queryData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 267
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->dataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 269
    :cond_2
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->calculateSelectedCountAndAmount()V

    .line 270
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->calculateTotalCountAndPrice()V

    return-void
.end method

.method public commitTeamHandoverData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 224
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->generateRequestBody2(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->commitTeamHandover(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 225
    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$3;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$3;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public deleteGoods(Lcom/ayma/commonerp/bean/ReceiptSelectBean;ILcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 363
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->calculateSelectedCountAndAmount()V

    .line 364
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->calculateTotalCountAndPrice()V

    .line 365
    invoke-interface {p3}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void
.end method

.method public generateBillDetail(Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptJsonBean;",
            ">;"
        }
    .end annotation

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 312
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->dataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    if-eqz p1, :cond_0

    .line 313
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->isSelected()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    new-instance v3, Lcom/ayma/commonerp/bean/ReceiptJsonBean;

    invoke-direct {v3}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;-><init>()V

    .line 317
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v4

    .line 319
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setGoodsId(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setGoodsName(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setGoodsCode(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getCostPrice()D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setCostPrice(D)V

    .line 323
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getCostPrice0()D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setCostPrice0(D)V

    .line 324
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getCostShuilv()D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setCostShuilv(D)V

    .line 332
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getBirthday()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setBirthDay(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setQty(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->getGoodsStock(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setAutualQty(Ljava/lang/String;)V

    const-string v2, ""

    .line 337
    invoke-virtual {v3, v2}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setDescription(Ljava/lang/String;)V

    .line 339
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->dataList:Ljava/util/List;

    return-object v0
.end method

.method public getGoodsIdByCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->litepalUseeInit()V

    .line 294
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsIdByGoodsId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getGoodsPrice(Ljava/lang/String;)Lcom/ayma/commonerp/bean/GoodsPriceBean;
    .locals 2

    .line 305
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->litepalUseeInit()V

    .line 306
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    const-string v1, "\u6b63\u5e38\u9500\u552e"

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsPrice(Ljava/lang/String;Ljava/lang/String;)Lcom/ayma/commonerp/bean/GoodsPriceBean;

    move-result-object p1

    return-object p1
.end method

.method public getGoodsStock(Ljava/lang/String;)D
    .locals 3

    .line 352
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->queryData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/WearhouseDataBean;

    .line 353
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getQty()D

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public getSelectAmount()D
    .locals 2

    .line 509
    iget-wide v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->selectAmount:D

    return-wide v0
.end method

.method public getSelectCount()D
    .locals 2

    .line 505
    iget-wide v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->selectCount:D

    return-wide v0
.end method

.method public getTotalCount()D
    .locals 2

    .line 497
    iget-wide v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->totalCount:D

    return-wide v0
.end method

.method public getTotalMoney()D
    .locals 2

    .line 501
    iget-wide v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->totalMoney:D

    return-wide v0
.end method

.method public queryTeamWarehouseStock(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
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

    .line 72
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/net/RetrofitFactory;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->queryWarehouse(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 73
    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$1;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$1;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public queryTrainId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 280
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->litepalUseeInit()V

    .line 281
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0, p1, p2}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryTrainId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public resetSelect(Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 3

    .line 486
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    const/4 v2, 0x0

    .line 487
    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->setSelected(Z)V

    goto :goto_0

    .line 489
    :cond_0
    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 491
    invoke-interface {p1, v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    .line 492
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public selectAll(Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 3

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    const/4 v2, 0x1

    .line 453
    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->setSelected(Z)V

    goto :goto_0

    .line 455
    :cond_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->calculateSelectedCountAndAmount()V

    .line 456
    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 458
    invoke-interface {p1, v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    .line 459
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public selectData(Lcom/ayma/commonerp/bean/ReceiptSelectBean;IZLcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 415
    :try_start_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->dataList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    invoke-virtual {p1, p3}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->setSelected(Z)V

    .line 416
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->calculateSelectedCountAndAmount()V

    .line 417
    invoke-interface {p4}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 419
    invoke-interface {p4, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    .line 420
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public selectReverse(Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 3

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    .line 467
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->isSelected()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->setSelected(Z)V

    goto :goto_0

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->dataList:Ljava/util/List;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$4;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$4;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 475
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->calculateSelectedCountAndAmount()V

    .line 476
    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 478
    invoke-interface {p1, v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    .line 479
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public updateGoodsCount(Lcom/ayma/commonerp/bean/ReceiptSelectBean;ILcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 403
    :try_start_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->calculateTotalCountAndPrice()V

    .line 404
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->calculateSelectedCountAndAmount()V

    .line 405
    invoke-interface {p3}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 407
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 408
    invoke-interface {p3, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
