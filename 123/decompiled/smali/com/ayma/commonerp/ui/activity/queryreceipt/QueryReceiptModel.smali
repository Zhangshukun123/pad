.class public Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "QueryReceiptModel.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/queryreceipt/IQueryReceiptModel;


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

.field private receiptList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QueryReceiptBean;",
            ">;"
        }
    .end annotation
.end field

.field private receiptStatue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private receiptStatueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private receiptType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private receiptTypeMap:Ljava/util/Map;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 48
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->receiptType:Ljava/util/List;

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->receiptList:Ljava/util/List;

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->goodsBigType:Ljava/util/List;

    .line 51
    sget-object p1, Lcom/ayma/commonerp/config/Constants;->RECEIPT_TYPE:Ljava/util/List;

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->receiptType:Ljava/util/List;

    .line 52
    sget-object p1, Lcom/ayma/commonerp/config/Constants;->RECEIPT_STATUE:Ljava/util/List;

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->receiptStatue:Ljava/util/List;

    .line 53
    sget-object p1, Lcom/ayma/commonerp/config/Constants;->RECEIPT_TYPE_MAP:Ljava/util/TreeMap;

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->receiptTypeMap:Ljava/util/Map;

    .line 54
    sget-object p1, Lcom/ayma/commonerp/config/Constants;->RECEIPT_STATUE_MAP:Ljava/util/TreeMap;

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->receiptStatueMap:Ljava/util/Map;

    .line 55
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->goodsBigType:Ljava/util/List;

    const-string v0, "\u5168\u90e8"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->initSmallType()V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;)V
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->initGson()V

    return-void
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->receiptList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->receiptList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 268
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public deleteReceipt(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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

    .line 238
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->deleteBill(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 239
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel$3;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel$3;-><init>(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public getBigTypeId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->bigTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->bigTypeMap:Ljava/util/Map;

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

    .line 283
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->goodsBigType:Ljava/util/List;

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

    .line 287
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->goodsSmallType:Ljava/util/List;

    return-object v0
.end method

.method public getReceiptList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QueryReceiptBean;",
            ">;"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->receiptList:Ljava/util/List;

    return-object v0
.end method

.method public getReceiptStatue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->receiptStatue:Ljava/util/List;

    return-object v0
.end method

.method public getReceiptType()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->receiptType:Ljava/util/List;

    return-object v0
.end method

.method public getSmallTypeId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->smallTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->smallTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public getStatue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->receiptStatueMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->receiptStatueMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->receiptTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->receiptTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public initSmallType()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->goodsSmallType:Ljava/util/List;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->goodsSmallType:Ljava/util/List;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->goodsSmallType:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 118
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->goodsSmallType:Ljava/util/List;

    const-string v1, "\u5168\u90e8"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public queryEtcData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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

    .line 156
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/net/RetrofitFactory;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->queryBill(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 157
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel$1;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel$1;-><init>(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public queryEtcDetail(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;",
            ">;>;)V"
        }
    .end annotation

    .line 197
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/net/RetrofitFactory;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->queryBillDetail(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 198
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel$2;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel$2;-><init>(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public queryGoodsBigType(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->litepalUseeInit()V

    .line 68
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsBigType()Ljava/util/LinkedHashMap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "\u5546\u54c1\u5927\u7c7b\u67e5\u8be2\u5931\u8d25"

    .line 70
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v1, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsAllSmallType(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "\u5546\u54c1\u5c0f\u7c7b\u67e5\u8be2\u5931\u8d25"

    .line 75
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 78
    :cond_1
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->bigTypeMap:Ljava/util/Map;

    .line 79
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->smallTypeMap:Ljava/util/Map;

    .line 80
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->goodsBigType:Ljava/util/List;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 81
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->goodsSmallType:Ljava/util/List;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    invoke-interface {p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void
.end method

.method public queryGoodsSmallType(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->litepalUseeInit()V

    .line 95
    invoke-virtual {p0, p2}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->getBigTypeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 97
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsAllSmallType(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsSmallTypeByBigId(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 103
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 106
    :cond_1
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->smallTypeMap:Ljava/util/Map;

    .line 107
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->initSmallType()V

    .line 108
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->goodsSmallType:Ljava/util/List;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 109
    invoke-interface {p3}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void
.end method

.method public removeData(I)V
    .locals 1

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->receiptList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
