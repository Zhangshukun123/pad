.class public Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "StockReceiptOptionModel.java"

# interfaces
.implements Lcom/ayma/commonerp/multiplex/stock/receiptoption/IStockReceiptOptionModel;


# static fields
.field private static instance:Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/app/Application;)Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;
    .locals 2

    .line 22
    const-class v0, Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;

    sget-object v1, Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;->instance:Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;

    if-nez v1, :cond_1

    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;->instance:Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;

    if-nez v1, :cond_0

    .line 25
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    :try_start_1
    new-instance v1, Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;->instance:Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;

    .line 27
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    .line 29
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 31
    :cond_1
    :goto_1
    sget-object p0, Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;->instance:Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;

    return-object p0
.end method


# virtual methods
.method public commitStockReceipt(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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

    .line 50
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->stockCommitReceipt(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 51
    new-instance v0, Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel$1;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel$1;-><init>(Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public deleteStockReceipt(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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

    .line 118
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->stockDeleteReceipt(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 119
    new-instance v0, Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel$3;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel$3;-><init>(Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 39
    sput-object v0, Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;->instance:Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;

    .line 40
    iput-object v0, p0, Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;->context:Landroid/content/Context;

    return-void
.end method

.method public revokeStockReceipt(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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

    .line 84
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->stockRevokeReceipt(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 85
    new-instance v0, Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel$2;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel$2;-><init>(Lcom/ayma/commonerp/multiplex/stock/receiptoption/StockReceiptOptionModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
