.class public Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "MultiplexDownloadGoodsModel.java"

# interfaces
.implements Lcom/ayma/commonerp/multiplex/downloadgoods/IMultiplexDownloadGoodsModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;)V
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;->initGson()V

    return-void
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public downloadGoodsData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/net/RetrofitFactory;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->downloadGoods(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 64
    new-instance v0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel$1;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel$1;-><init>(Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public saveGoodsData(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 104
    new-instance v0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel$2;-><init>(Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    invoke-static {v0}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
