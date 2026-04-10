.class public Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "QueryReceiptDetailsModel.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/IQueryReceiptDetailsModel;


# instance fields
.field private allCount:D

.field private allMoney:D

.field private goodsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;",
            ">;"
        }
    .end annotation
.end field

.field private headList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 31
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;->goodsList:Ljava/util/List;

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;->headList:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;->allCount:D

    .line 28
    iput-wide v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;->allMoney:D

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;->goodsList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;->headList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;)V
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;->initGson()V

    return-void
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public fetchGoodsData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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

    .line 41
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->getStoreDetail(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 42
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel$1;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel$1;-><init>(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public getAllCount()D
    .locals 6

    const-wide/16 v0, 0x0

    .line 89
    iput-wide v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;->allCount:D

    .line 90
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;->goodsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;

    .line 91
    iget-wide v2, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;->allCount:D

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getQty()I

    move-result v1

    int-to-double v4, v1

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;->allCount:D

    goto :goto_0

    .line 93
    :cond_0
    iget-wide v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;->allCount:D

    return-wide v0
.end method

.method public getAllMoney()D
    .locals 8

    const-wide/16 v0, 0x0

    .line 98
    iput-wide v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;->allMoney:D

    .line 99
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;->goodsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;

    .line 100
    iget-wide v2, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;->allMoney:D

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getSalesPrice()D

    move-result-wide v4

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getQty()I

    move-result v1

    int-to-double v6, v1

    invoke-static {v4, v5, v6, v7}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;->allMoney:D

    goto :goto_0

    .line 102
    :cond_0
    iget-wide v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;->allMoney:D

    return-wide v0
.end method

.method public getGoodsData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;->goodsList:Ljava/util/List;

    return-object v0
.end method

.method public getOutHeadData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;->headList:Ljava/util/List;

    return-object v0
.end method
