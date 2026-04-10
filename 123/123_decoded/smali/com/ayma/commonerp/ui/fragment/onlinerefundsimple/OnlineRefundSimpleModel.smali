.class public Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "OnlineRefundSimpleModel.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/IOnlineRefundSimpleModel;


# instance fields
.field private bean:Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;

.field private final selectList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;->selectList:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;)Ljava/util/Map;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;->selectList:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;)Lcom/ayma/commonerp/litepal/LitepalUse;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;)V
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;->initGson()V

    return-void
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;)Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;->bean:Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;

    return-object p0
.end method

.method static synthetic access$302(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;)Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;->bean:Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;

    return-object p1
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;)V
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;->litepalUseeInit()V

    return-void
.end method


# virtual methods
.method public getSelectList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;->selectList:Ljava/util/Map;

    return-object v0
.end method

.method public queryOrderByTransactionNo(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->payCreate()Lcom/ayma/commonerp/net/PayApi;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/PayApi;->queryOrderByTransactionNo(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 39
    new-instance v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel$1;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel$1;-><init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public queryRefundOrder(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 1
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

    .line 125
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->payCreate()Lcom/ayma/commonerp/net/PayApi;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/PayApi;->queryRefundOrder(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 126
    new-instance v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel$3;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel$3;-><init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public refundOrder(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 1
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

    .line 76
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->payCreate()Lcom/ayma/commonerp/net/PayApi;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/PayApi;->refundOrder(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 77
    new-instance v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel$2;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel$2;-><init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
