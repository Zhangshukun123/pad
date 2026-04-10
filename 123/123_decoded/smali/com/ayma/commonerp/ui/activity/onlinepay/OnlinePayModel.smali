.class public Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "OnlinePayModel.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/onlinepay/IOnlinePayModel;


# static fields
.field public static final TAG_CASH_TO_ONLINE_CALL:Ljava/lang/String; = "cashToOnline"

.field public static final TAG_CASH_TO_ONLINE_QUERY_CALL:Ljava/lang/String; = "cashToOnlineQuery"

.field public static final TAG_PAY_CALL:Ljava/lang/String; = "pay"

.field public static final TAG_PAY_QUERY_CALL:Ljava/lang/String; = "payQuery"


# instance fields
.field private final callMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lretrofit2/Call<",
            "Lcom/ayma/commonerp/bean/RequestHeaderBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private cashToOnlineCall:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/ayma/commonerp/bean/RequestHeaderBean;",
            ">;"
        }
    .end annotation
.end field

.field private goodsCount:D

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;"
        }
    .end annotation
.end field

.field private payCall:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/ayma/commonerp/bean/RequestHeaderBean;",
            ">;"
        }
    .end annotation
.end field

.field private final payTypeList:Ljava/util/List;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->callMap:Ljava/util/Map;

    .line 47
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->payTypeMap:Ljava/util/Map;

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->payTypeList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->initGson()V

    return-void
.end method

.method static synthetic access$1300(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->initGson()V

    return-void
.end method

.method static synthetic access$1900(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;)Lretrofit2/Call;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->payCall:Lretrofit2/Call;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->list:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;)Lcom/ayma/commonerp/litepal/LitepalUse;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cancelPayQueryRequest(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 3

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->callMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lretrofit2/Call;

    if-nez p1, :cond_0

    const-string p1, "\u65e0\u6b64\u8bf7\u6c42"

    .line 276
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 279
    :cond_0
    invoke-interface {p1}, Lretrofit2/Call;->cancel()V

    .line 280
    invoke-interface {p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 282
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53d6\u6d88\u652f\u4ed8\u67e5\u8be2\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ayma/commonerp/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public cashToOnline(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Lcom/ayma/commonerp/bean/PayResult;",
            ">;)V"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->version:Ljava/lang/String;

    const-string v1, "pdaVer"

    invoke-virtual {p1, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->machineModel:Ljava/lang/String;

    const-string v1, "pdaNo"

    invoke-virtual {p1, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->payCreate()Lcom/ayma/commonerp/net/PayApi;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->generateRequestBody2(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/PayApi;->cashToOnline(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 111
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->callMap:Ljava/util/Map;

    const-string v1, "cashToOnline"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$2;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$2;-><init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public clearRequest()V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->callMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->callMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getGoodsCount()D
    .locals 2

    .line 304
    iget-wide v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->goodsCount:D

    return-wide v0
.end method

.method public getIsShowInvoicing()Z
    .locals 4

    const/4 v0, 0x1

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->context:Landroid/content/Context;

    const-string v2, "onlinePayInvoicingStatue"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/ayma/base/util/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->list:Ljava/util/List;

    return-object v0
.end method

.method public getPayTypeId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->payTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 193
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

    .line 300
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->payTypeList:Ljava/util/List;

    return-object v0
.end method

.method public pay(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Lcom/ayma/commonerp/bean/PayResult;",
            ">;)V"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->version:Ljava/lang/String;

    const-string v1, "pdaVer"

    invoke-virtual {p1, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->machineModel:Ljava/lang/String;

    const-string v1, "pdaNo"

    invoke-virtual {p1, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->payCreate()Lcom/ayma/commonerp/net/PayApi;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->generateRequestBody2(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/PayApi;->createOrder(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 77
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->callMap:Ljava/util/Map;

    const-string v1, "pay"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$1;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$1;-><init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public queryCashToOnline(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Lcom/ayma/commonerp/bean/PayResult;",
            ">;)V"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->cashToOnlineCall:Lretrofit2/Call;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lretrofit2/Call;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 148
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->cashToOnlineCall:Lretrofit2/Call;

    const-string p1, "\u8bf7\u6c42\u5df2\u53d6\u6d88"

    .line 149
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 152
    :cond_0
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->payCreate()Lcom/ayma/commonerp/net/PayApi;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/PayApi;->queryCashToOnline(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->cashToOnlineCall:Lretrofit2/Call;

    .line 153
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->callMap:Ljava/util/Map;

    const-string v1, "cashToOnlineQuery"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->cashToOnlineCall:Lretrofit2/Call;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$3;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$3;-><init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public queryOrder(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Lcom/ayma/commonerp/bean/PayResult;",
            ">;)V"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->payCall:Lretrofit2/Call;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lretrofit2/Call;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 209
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->payCall:Lretrofit2/Call;

    const-string p1, "\u8bf7\u6c42\u5df2\u53d6\u6d88"

    .line 210
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 213
    :cond_0
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->payCreate()Lcom/ayma/commonerp/net/PayApi;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/PayApi;->queryOrder(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->payCall:Lretrofit2/Call;

    .line 214
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->callMap:Ljava/util/Map;

    const-string v1, "payQuery"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->payCall:Lretrofit2/Call;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$4;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$4;-><init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public queryPayType(Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 5

    .line 53
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->litepalUseeInit()V

    .line 54
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    const-string v1, "payment_type"

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryPaymentType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 55
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 59
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

    .line 60
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->payTypeMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/BaseDataItem;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/BaseDataItem;->getAttributeCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->payTypeList:Ljava/util/List;

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/BaseDataItem;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_1
    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void

    :cond_2
    :goto_1
    const-string v0, "\u652f\u4ed8\u7c7b\u578b\u57fa\u7840\u6570\u636e\u7f3a\u5931\uff0c\u8bf7\u786e\u8ba4\u662f\u5426\u5df2\u7ecf\u4e0b\u8f7d"

    .line 56
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public saveGoodsList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;)V"
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->list:Ljava/util/List;

    return-void
.end method

.method public setGoodsCount(D)V
    .locals 0

    .line 308
    iput-wide p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->goodsCount:D

    return-void
.end method

.method public updateStock()V
    .locals 1

    .line 249
    :try_start_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->litepalUseeInit()V

    .line 250
    new-instance v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$5;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$5;-><init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;)V

    invoke-static {v0}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 258
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
