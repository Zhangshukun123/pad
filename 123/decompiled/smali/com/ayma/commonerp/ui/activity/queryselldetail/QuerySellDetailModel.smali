.class public Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "QuerySellDetailModel.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/queryselldetail/IQuerySellDetailModel;


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

.field private discountAmount:D

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

.field private payTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final payTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final searchGoodsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final searchGoodsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final sellDetailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SaleDetailBean;",
            ">;"
        }
    .end annotation
.end field

.field private sellTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final sellTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
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

.field private totalReturnAmount:D

.field private totalReturnCount:D

.field private totalSellAmount:D

.field private totalSellCount:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->searchGoodsMap:Ljava/util/Map;

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->searchGoodsList:Ljava/util/List;

    .line 63
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->sellDetailList:Ljava/util/List;

    .line 64
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->sellTypeMap:Ljava/util/Map;

    .line 65
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->payTypeMap:Ljava/util/Map;

    .line 66
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->initSaleType()V

    .line 67
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->initPayType()V

    .line 68
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->initBigType()V

    .line 69
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->initSmallType()V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->sellDetailList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public calculateTotalCountAndPrice()V
    .locals 8

    const-wide/16 v0, 0x0

    .line 282
    iput-wide v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->totalSellCount:D

    .line 283
    iput-wide v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->totalSellAmount:D

    .line 284
    iput-wide v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->totalReturnCount:D

    .line 285
    iput-wide v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->totalReturnAmount:D

    .line 286
    iput-wide v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->discountAmount:D

    .line 287
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->sellDetailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/SaleDetailBean;

    .line 288
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/SaleDetailBean;->getQty()D

    move-result-wide v2

    .line 289
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/SaleDetailBean;->getTradeType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u9000\u5355"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 290
    iget-wide v4, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->totalReturnCount:D

    invoke-static {v4, v5, v2, v3}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->totalReturnCount:D

    .line 291
    iget-wide v4, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->totalReturnAmount:D

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/SaleDetailBean;->getSalePriceReal()D

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->totalReturnAmount:D

    .line 292
    iget-wide v2, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->discountAmount:D

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/SaleDetailBean;->getPrefrentialAmount()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/ayma/base/util/ArithUtil;->sub(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->discountAmount:D

    goto :goto_0

    .line 294
    :cond_0
    iget-wide v4, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->totalSellCount:D

    invoke-static {v4, v5, v2, v3}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->totalSellCount:D

    .line 295
    iget-wide v4, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->totalSellAmount:D

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/SaleDetailBean;->getSalePriceReal()D

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->totalSellAmount:D

    .line 296
    iget-wide v2, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->discountAmount:D

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/SaleDetailBean;->getPrefrentialAmount()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->discountAmount:D

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clearData()V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->sellDetailList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 334
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public getBigTypeId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->bigTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 262
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public getDiscountAmount()D
    .locals 2

    .line 323
    iget-wide v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->discountAmount:D

    return-wide v0
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

    .line 364
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->goodsBigType:Ljava/util/List;

    return-object v0
.end method

.method public getGoodsId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->searchGoodsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
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

    .line 368
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->goodsSmallType:Ljava/util/List;

    return-object v0
.end method

.method public getPayTypeId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->payTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 238
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public getPayTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->payTypeList:Ljava/util/List;

    return-object v0
.end method

.method public getSearchGoodsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->searchGoodsList:Ljava/util/List;

    return-object v0
.end method

.method public getSellDataFromServer(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 2
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

    .line 195
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/net/RetrofitFactory;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->querySaleDetail(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 196
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel$1;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel$1;-><init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public getSellDetailList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SaleDetailBean;",
            ">;"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->sellDetailList:Ljava/util/List;

    return-object v0
.end method

.method public getSellTypeId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->sellTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 250
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public getSellTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->sellTypeList:Ljava/util/List;

    return-object v0
.end method

.method public getSmallTypeId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->smallTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 274
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public getTotalReturnAmount()D
    .locals 2

    .line 318
    iget-wide v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->totalReturnAmount:D

    return-wide v0
.end method

.method public getTotalReturnCount()D
    .locals 2

    .line 313
    iget-wide v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->totalReturnCount:D

    return-wide v0
.end method

.method public getTotalSellAmount()D
    .locals 2

    .line 308
    iget-wide v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->totalSellAmount:D

    return-wide v0
.end method

.method public getTotalSellCount()D
    .locals 2

    .line 303
    iget-wide v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->totalSellCount:D

    return-wide v0
.end method

.method public initBigType()V
    .locals 2

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->goodsBigType:Ljava/util/List;

    const-string v1, "\u5168\u90e8"

    .line 111
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public initPayType()V
    .locals 2

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->payTypeList:Ljava/util/List;

    const-string v1, "\u5168\u90e8"

    .line 99
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public initSaleAndPayAndBigType(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 5

    .line 74
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->litepalUseeInit()V

    .line 75
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    const-string v1, "sale_type"

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/litepal/LitepalUse;->querySellType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 76
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 80
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/BaseDataItem;

    .line 81
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->sellTypeMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/BaseDataItem;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/BaseDataItem;->getAttributeCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->sellTypeList:Ljava/util/List;

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/BaseDataItem;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    const-string v1, "payment_type"

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryPaymentType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 85
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 89
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/BaseDataItem;

    .line 90
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->payTypeMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/BaseDataItem;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/BaseDataItem;->getAttributeCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->payTypeList:Ljava/util/List;

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/BaseDataItem;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 93
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->queryGoodsBigType(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void

    :cond_4
    :goto_2
    const-string p1, "\u652f\u4ed8\u7c7b\u578b\u57fa\u7840\u6570\u636e\u7f3a\u5931\uff0c\u8bf7\u786e\u8ba4\u662f\u5426\u5df2\u7ecf\u4e0b\u8f7d"

    .line 86
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    :cond_5
    :goto_3
    const-string p1, "\u9500\u552e\u7c7b\u578b\u57fa\u7840\u6570\u636e\u7f3a\u5931\uff0c\u8bf7\u786e\u8ba4\u662f\u5426\u5df2\u7ecf\u4e0b\u8f7d"

    .line 77
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public initSaleType()V
    .locals 2

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->sellTypeList:Ljava/util/List;

    const-string v1, "\u5168\u90e8"

    .line 105
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public initSmallType()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->goodsSmallType:Ljava/util/List;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->goodsSmallType:Ljava/util/List;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->goodsSmallType:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 120
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->goodsSmallType:Ljava/util/List;

    const-string v1, "\u5168\u90e8"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public queryGoods(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 341
    :try_start_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->litepalUseeInit()V

    .line 342
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 343
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->searchGoodsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 344
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->searchGoodsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 345
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    .line 346
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->searchGoodsMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->searchGoodsList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 349
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->searchGoodsList:Ljava/util/List;

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 351
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public queryGoodsBigType(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 2

    .line 131
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->litepalUseeInit()V

    .line 132
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsBigType()Ljava/util/LinkedHashMap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "\u67e5\u8be2\u4e0d\u5230\u6570\u636e\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u5df2\u4e0b\u8f7d\u5546\u54c1\u6570\u636e"

    .line 134
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v1, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsAllSmallType(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "\u67e5\u8be2\u4e0d\u5230\u6570\u636e"

    .line 139
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 142
    :cond_1
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->bigTypeMap:Ljava/util/Map;

    .line 143
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->smallTypeMap:Ljava/util/Map;

    .line 144
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->goodsBigType:Ljava/util/List;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 145
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->goodsSmallType:Ljava/util/List;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 146
    invoke-interface {p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void
.end method

.method public queryGoodsSmallType(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 2

    .line 158
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->litepalUseeInit()V

    const-string v0, "\u5168\u90e8"

    .line 159
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "\u67e5\u8be2\u9519\u8bef"

    if-eqz v0, :cond_1

    .line 160
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsAllSmallType(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    if-nez p1, :cond_0

    .line 162
    invoke-virtual {p0, v1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 165
    :cond_0
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->smallTypeMap:Ljava/util/Map;

    .line 166
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->initSmallType()V

    .line 167
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->goodsSmallType:Ljava/util/List;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->smallTypeMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 168
    invoke-interface {p3}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void

    .line 171
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->bigTypeMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    invoke-virtual {p0, v1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsSmallTypeByBigId(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    if-nez p1, :cond_3

    .line 178
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u67e5\u8be2\u4e0d\u5230"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u4e0b\u7684\u5c0f\u7c7b"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 181
    :cond_3
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->smallTypeMap:Ljava/util/Map;

    .line 182
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->initSmallType()V

    .line 183
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->goodsSmallType:Ljava/util/List;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 184
    invoke-interface {p3}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void
.end method
