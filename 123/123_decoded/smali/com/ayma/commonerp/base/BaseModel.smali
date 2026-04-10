.class public Lcom/ayma/commonerp/base/BaseModel;
.super Lcom/ayma/base/mvp/MvpBaseModel;
.source "BaseModel.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseModel;


# static fields
.field public static final COMPARATOR_TYPE_AMOUNT:I = 0x8

.field public static final COMPARATOR_TYPE_GOODS_CODE:I = 0x0

.field public static final COMPARATOR_TYPE_GOODS_NAME:I = 0x1

.field public static final COMPARATOR_TYPE_ORDER_TYPE:I = 0x6

.field public static final COMPARATOR_TYPE_PAY_TYPE:I = 0x5

.field public static final COMPARATOR_TYPE_PRICE:I = 0x7

.field public static final COMPARATOR_TYPE_QTY:I = 0x3

.field public static final COMPARATOR_TYPE_SELL_TIME:I = 0x2

.field public static final COMPARATOR_TYPE_SELL_TYPE:I = 0x4

.field public static final ERROR_RESPONSE_NULL:Ljava/lang/String; = ""

.field private static final KEY_LOGIN_STATUE:Ljava/lang/String; = "loginStatue"

.field public static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final MSG_SERVER_ERROR:I = 0x1

.field public static final RESULT_OK:I = 0xc8

.field private static final WHAT_SORT_FAIL:I = 0x4cf

.field private static final WHAT_SORT_SUCCESS:I = 0x4ce


# instance fields
.field public TAG:Ljava/lang/String;

.field protected baseHandler:Landroid/os/Handler;

.field protected context:Landroid/content/Context;

.field protected gson:Lcom/google/gson/Gson;

.field protected key:Ljava/lang/String;

.field protected litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

.field protected machineModel:Ljava/lang/String;

.field private sortCallBack:Lcom/ayma/base/mvp/ModelCallBack;

.field protected version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/ayma/base/mvp/MvpBaseModel;-><init>()V

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->TAG:Ljava/lang/String;

    .line 82
    sget-object v0, Lcom/ayma/commonerp/net/NetConfig;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->key:Ljava/lang/String;

    .line 88
    iput-object p1, p0, Lcom/ayma/commonerp/base/BaseModel;->context:Landroid/content/Context;

    .line 89
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseModel;->initGson()V

    .line 90
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseModel;->initModel()V

    .line 91
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseModel;->initVersion()V

    .line 92
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseModel;->initToken()V

    .line 93
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseModel;->initHandler()V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/base/BaseModel;)Lcom/ayma/base/mvp/ModelCallBack;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/ayma/commonerp/base/BaseModel;->sortCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    return-object p0
.end method


# virtual methods
.method public callBackErrorSwitchToMain(Lcom/ayma/base/mvp/ModelBaseCallBack;Ljava/lang/String;)V
    .locals 2

    .line 704
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->baseHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 705
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseModel;->initHandler()V

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->baseHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ayma/commonerp/base/BaseModel$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/ayma/commonerp/base/BaseModel$10;-><init>(Lcom/ayma/commonerp/base/BaseModel;Lcom/ayma/base/mvp/ModelBaseCallBack;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public callBackErrorSwitchToMain(Lcom/ayma/base/mvp/ModelBaseCallBack;Ljava/lang/Throwable;)V
    .locals 2

    .line 717
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->baseHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 718
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseModel;->initHandler()V

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->baseHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ayma/commonerp/base/BaseModel$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/ayma/commonerp/base/BaseModel$11;-><init>(Lcom/ayma/commonerp/base/BaseModel;Lcom/ayma/base/mvp/ModelBaseCallBack;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public callBackFailSwitchToMain(Lcom/ayma/base/mvp/ModelBaseCallBack;Ljava/lang/Throwable;)V
    .locals 2

    .line 730
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->baseHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 731
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseModel;->initHandler()V

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->baseHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ayma/commonerp/base/BaseModel$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/ayma/commonerp/base/BaseModel$12;-><init>(Lcom/ayma/commonerp/base/BaseModel;Lcom/ayma/base/mvp/ModelBaseCallBack;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public callBackSuccessSwitchToMain(Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 2

    .line 678
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->baseHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 679
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseModel;->initHandler()V

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->baseHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ayma/commonerp/base/BaseModel$8;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/base/BaseModel$8;-><init>(Lcom/ayma/commonerp/base/BaseModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public callBackSuccessSwitchToMain(Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 691
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->baseHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 692
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseModel;->initHandler()V

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->baseHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ayma/commonerp/base/BaseModel$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/ayma/commonerp/base/BaseModel$9;-><init>(Lcom/ayma/commonerp/base/BaseModel;Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected dealHttpResult(Lretrofit2/Response;Lcom/ayma/base/mvp/ModelBaseCallBack;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lcom/ayma/commonerp/bean/RequestHeaderBean;",
            ">;",
            "Lcom/ayma/base/mvp/ModelBaseCallBack;",
            ")Z"
        }
    .end annotation

    .line 660
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    .line 661
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ayma/commonerp/base/BaseModel;->notOk(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 662
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelBaseCallBack;->requestError(Ljava/lang/Throwable;)V

    return v2

    :cond_0
    if-nez v0, :cond_1

    const-string p1, "\u8fd4\u56de\u6570\u4e3a\u7a7a"

    .line 666
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelBaseCallBack;->requestError(Ljava/lang/Throwable;)V

    return v2

    .line 669
    :cond_1
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;->requestResult(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 670
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/base/BaseModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelBaseCallBack;->requestError(Ljava/lang/Throwable;)V

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public decryptStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 405
    :try_start_0
    invoke-static {p1}, Lcom/ayma/commonerp/util/DESHelper;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 406
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 409
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method

.method public downloadTeamSaleOutList(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
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

    .line 191
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/net/RetrofitFactory;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/net/Api;->queryWarehouse(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v0

    .line 192
    new-instance v1, Lcom/ayma/commonerp/base/BaseModel$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/ayma/commonerp/base/BaseModel$3;-><init>(Lcom/ayma/commonerp/base/BaseModel;Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/util/TreeMap;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public encryptRequestParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :try_start_0
    invoke-static {p1}, Lcom/ayma/commonerp/util/DESHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 397
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method

.method public fetchPdaBtnPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/PdaPermissionBean;",
            ">;>;)V"
        }
    .end annotation

    .line 743
    new-instance v6, Lcom/ayma/commonerp/base/BaseModel$13;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ayma/commonerp/base/BaseModel$13;-><init>(Lcom/ayma/commonerp/base/BaseModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    invoke-static {v6}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public fetchToken(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1

    .line 110
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/ayma/commonerp/net/Api;->login(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 111
    new-instance p2, Lcom/ayma/commonerp/base/BaseModel$1;

    invoke-direct {p2, p0, p3}, Lcom/ayma/commonerp/base/BaseModel$1;-><init>(Lcom/ayma/commonerp/base/BaseModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public generateOrderNo()Ljava/lang/String;
    .locals 5

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->trainName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateyyyyMMddHHmmss()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v3, 0x412e848000000000L    # 1000000.0

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/RequestBody;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 490
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;->map2Json(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object p1

    .line 492
    :goto_0
    new-instance v0, Lcom/ayma/commonerp/net/RequestEntity;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;->getSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ayma/commonerp/base/BaseModel;->machineModel:Ljava/lang/String;

    iget-object v3, p0, Lcom/ayma/commonerp/base/BaseModel;->version:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/ayma/commonerp/net/RequestEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "application/json"

    .line 493
    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    iget-object v1, p0, Lcom/ayma/commonerp/base/BaseModel;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    return-object p1
.end method

.method public generateRequestBody2(Ljava/util/TreeMap;)Lokhttp3/RequestBody;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lokhttp3/RequestBody;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 502
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;->map2Json2(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object p1

    .line 504
    :goto_0
    new-instance v0, Lcom/ayma/commonerp/net/RequestEntity;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;->getSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ayma/commonerp/base/BaseModel;->machineModel:Ljava/lang/String;

    iget-object v3, p0, Lcom/ayma/commonerp/base/BaseModel;->version:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/ayma/commonerp/net/RequestEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "application/json"

    .line 505
    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    iget-object v1, p0, Lcom/ayma/commonerp/base/BaseModel;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    return-object p1
.end method

.method protected generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "\u672a\u77e5\u9519\u8bef"

    .line 474
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1

    .line 476
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ayma/base/util/ThrowHandleUtil;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method protected generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 461
    invoke-static {p1}, Lcom/ayma/base/util/ThrowHandleUtil;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method protected generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 465
    invoke-static {p1}, Lcom/ayma/base/util/ThrowHandleUtil;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method protected generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 469
    invoke-static {p1}, Lcom/ayma/base/util/ThrowHandleUtil;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method public getGoDate()Ljava/lang/String;
    .locals 4

    const-string v0, "-"

    const-string v1, "/"

    .line 438
    :try_start_0
    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 440
    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public getLoginStatue()Z
    .locals 3

    .line 515
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "loginStatue"

    invoke-static {v0, v2, v1}, Lcom/ayma/base/util/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getSign(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 318
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "sign data:"

    const-string v2, "&key="

    const-string v3, "&version="

    if-eqz v0, :cond_0

    .line 319
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "model="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->machineModel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 320
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ayma/commonerp/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-static {p1}, Lcom/vondear/rxtool/RxEncryptTool;->encryptMD5ToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 323
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&model="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/ayma/commonerp/base/BaseModel;->machineModel:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/ayma/commonerp/base/BaseModel;->version:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/ayma/commonerp/base/BaseModel;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 324
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ayma/commonerp/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-static {p1}, Lcom/vondear/rxtool/RxEncryptTool;->encryptMD5ToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->version:Ljava/lang/String;

    return-object v0
.end method

.method protected initGson()V
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->gson:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    .line 422
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->gson:Lcom/google/gson/Gson;

    :cond_0
    return-void
.end method

.method public initHandler()V
    .locals 2

    .line 139
    new-instance v0, Lcom/ayma/commonerp/base/BaseModel$2;

    iget-object v1, p0, Lcom/ayma/commonerp/base/BaseModel;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ayma/commonerp/base/BaseModel$2;-><init>(Lcom/ayma/commonerp/base/BaseModel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->baseHandler:Landroid/os/Handler;

    return-void
.end method

.method protected initModel()V
    .locals 1

    .line 427
    invoke-static {}, Lcom/ayma/base/util/CommonUtil;->getPhoneType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->machineModel:Ljava/lang/String;

    return-void
.end method

.method public initToken()V
    .locals 3

    .line 98
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->TOKEN:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->context:Landroid/content/Context;

    const-string v1, "accessToken"

    const-string v2, "Bearer "

    invoke-static {v0, v1, v2}, Lcom/ayma/base/util/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->TOKEN:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected initVersion()V
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ayma/base/util/CommonUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->version:Ljava/lang/String;

    return-void
.end method

.method public isLoginInvalid(J)Z
    .locals 4

    .line 523
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->context:Landroid/content/Context;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-static {v0, v2, v1}, Lcom/ayma/base/util/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 524
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x2255100

    sub-long/2addr v0, p1

    cmp-long p1, v2, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public judgeMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "success"

    .line 251
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method protected litepalUseeInit()V
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    if-nez v0, :cond_0

    .line 416
    invoke-static {}, Lcom/ayma/commonerp/litepal/LitepalUse;->getInstance()Lcom/ayma/commonerp/litepal/LitepalUse;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    :cond_0
    return-void
.end method

.method public map2Json(Ljava/util/TreeMap;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 345
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseModel;->initGson()V

    .line 346
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;->encryptRequestParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public map2Json2(Ljava/util/TreeMap;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 365
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseModel;->initGson()V

    .line 366
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;->encryptRequestParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public notOk(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 447
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected parseToList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 451
    iget-object p2, p0, Lcom/ayma/commonerp/base/BaseModel;->gson:Lcom/google/gson/Gson;

    new-instance v0, Lcom/ayma/commonerp/base/BaseModel$6;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/base/BaseModel$6;-><init>(Lcom/ayma/commonerp/base/BaseModel;)V

    .line 452
    invoke-virtual {v0}, Lcom/ayma/commonerp/base/BaseModel$6;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 451
    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public queryPermission(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Lcom/ayma/commonerp/bean/PermissionBean;",
            ">;)V"
        }
    .end annotation

    .line 299
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseModel;->litepalUseeInit()V

    .line 300
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0, p1, p2}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryPermission(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public queryPermission(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 305
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseModel;->litepalUseeInit()V

    .line 306
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryPermission(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public requestResult(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "200"

    .line 334
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public saveTeamSaleOutListData(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->gson:Lcom/google/gson/Gson;

    new-instance v1, Lcom/ayma/commonerp/base/BaseModel$4;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/base/BaseModel$4;-><init>(Lcom/ayma/commonerp/base/BaseModel;)V

    .line 264
    invoke-virtual {v1}, Lcom/ayma/commonerp/base/BaseModel$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 263
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 266
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u6570\u636e\u8f6c\u6362\u5931\u8d25\uff1a"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 269
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "\u9886\u6599\u5355\u4e3a\u7a7a"

    .line 270
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 274
    :cond_1
    const-class p1, Lcom/ayma/commonerp/bean/WearhouseDataBean;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, v1}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 277
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/WearhouseDataBean;

    .line 278
    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->setOutDay(Ljava/lang/String;)V

    .line 279
    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->trainName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->setTrainName(Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_2
    invoke-static {v0}, Lorg/litepal/Operator;->saveAllAsync(Ljava/util/Collection;)Lorg/litepal/crud/async/SaveExecutor;

    move-result-object p1

    .line 282
    new-instance v0, Lcom/ayma/commonerp/base/BaseModel$5;

    invoke-direct {v0, p0, p2, p3}, Lcom/ayma/commonerp/base/BaseModel$5;-><init>(Lcom/ayma/commonerp/base/BaseModel;Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/litepal/crud/async/SaveExecutor;->listen(Lorg/litepal/crud/callback/SaveCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 293
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public sendMsg(ILjava/lang/Object;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->baseHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 167
    iput p1, v0, Landroid/os/Message;->what:I

    .line 168
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 169
    iget-object p1, p0, Lcom/ayma/commonerp/base/BaseModel;->baseHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMsg(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 177
    :cond_0
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 178
    iput p2, v0, Landroid/os/Message;->what:I

    .line 179
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 180
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sortList(Ljava/util/List;ILjava/lang/String;ZLcom/ayma/base/mvp/ModelCallBack;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/ayma/commonerp/behavior/ComparatorBehavior;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I",
            "Ljava/lang/String;",
            "Z",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation

    .line 529
    iput-object p5, p0, Lcom/ayma/commonerp/base/BaseModel;->sortCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    .line 530
    new-instance p5, Lcom/ayma/commonerp/base/BaseModel$7;

    move-object v0, p5

    move-object v1, p0

    move v2, p2

    move v3, p4

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/ayma/commonerp/base/BaseModel$7;-><init>(Lcom/ayma/commonerp/base/BaseModel;IZLjava/lang/String;Ljava/util/List;)V

    invoke-static {p5}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateLoginStatue(Z)V
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel;->context:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "loginStatue"

    invoke-static {v0, v1, p1}, Lcom/ayma/base/util/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method
