.class public Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "SCOrderModel.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/fragment/sellcounter/order/ISCOrderModel;


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SCOrderBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->list:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->list:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public completeOrder(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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

    .line 85
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->completeOrder(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 86
    new-instance v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$2;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$2;-><init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public fetchOrder(Ljava/util/TreeMap;ILcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 38
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->fetchCounterOrder(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 39
    new-instance v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$1;

    invoke-direct {v0, p0, p3, p2}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$1;-><init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;Lcom/ayma/base/mvp/ModelCallBack;I)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SCOrderBean;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->list:Ljava/util/List;

    return-object v0
.end method

.method public refundOrder(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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

    .line 119
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->shopOrderRefundCreate()Lcom/ayma/commonerp/net/ShopApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/ShopApi;->shopRefund(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    .line 120
    new-instance v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$3;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$3;-><init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
