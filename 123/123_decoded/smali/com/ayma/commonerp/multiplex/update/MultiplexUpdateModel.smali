.class public Lcom/ayma/commonerp/multiplex/update/MultiplexUpdateModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "MultiplexUpdateModel.java"

# interfaces
.implements Lcom/ayma/commonerp/multiplex/update/IMultiplexUpdateModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/multiplex/update/MultiplexUpdateModel;Lretrofit2/Response;Lcom/ayma/base/mvp/ModelBaseCallBack;)Z
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/multiplex/update/MultiplexUpdateModel;->dealHttpResult(Lretrofit2/Response;Lcom/ayma/base/mvp/ModelBaseCallBack;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/multiplex/update/MultiplexUpdateModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/multiplex/update/MultiplexUpdateModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/multiplex/update/MultiplexUpdateModel;)V
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/ayma/commonerp/multiplex/update/MultiplexUpdateModel;->initGson()V

    return-void
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/multiplex/update/MultiplexUpdateModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/multiplex/update/MultiplexUpdateModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/multiplex/update/MultiplexUpdateModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/multiplex/update/MultiplexUpdateModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/multiplex/update/MultiplexUpdateModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/multiplex/update/MultiplexUpdateModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/multiplex/update/MultiplexUpdateModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/multiplex/update/MultiplexUpdateModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAppVersion(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Lcom/ayma/commonerp/bean/UpdateInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/multiplex/update/MultiplexUpdateModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->getVersionInfo(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 27
    new-instance v0, Lcom/ayma/commonerp/multiplex/update/MultiplexUpdateModel$1;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/multiplex/update/MultiplexUpdateModel$1;-><init>(Lcom/ayma/commonerp/multiplex/update/MultiplexUpdateModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
