.class public Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "UploadDataModel.java"

# interfaces
.implements Lcom/ayma/commonerp/service/uploaddata/IUploadDataModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCheckRepeat()Ljava/lang/String;
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->litepalUseeInit()V

    .line 115
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0}, Lcom/ayma/commonerp/litepal/LitepalUse;->generateCheckRepeatValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompany2Id()Ljava/lang/String;
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->context:Landroid/content/Context;

    const-string v1, "company2Id"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/ayma/base/util/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompanyId()Ljava/lang/String;
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->context:Landroid/content/Context;

    const-string v1, "companyId"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/ayma/base/util/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFleetId()Ljava/lang/String;
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->context:Landroid/content/Context;

    const-string v1, "fleetId"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/ayma/base/util/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGoDate2()Ljava/lang/String;
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->context:Landroid/content/Context;

    const-string v1, "goDate"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/ayma/base/util/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStoreId()Ljava/lang/String;
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->context:Landroid/content/Context;

    const-string v1, "storeId"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/ayma/base/util/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTeamId()Ljava/lang/String;
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->context:Landroid/content/Context;

    const-string v1, "teamId"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/ayma/base/util/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrainId()Ljava/lang/String;
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->context:Landroid/content/Context;

    const-string v1, "trainId"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/ayma/base/util/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->context:Landroid/content/Context;

    const-string v1, "userId"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/ayma/base/util/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public queryNeedUploadData(Lcom/ayma/commonerp/bean/OrderPositionBean;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/OrderPositionBean;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;>;)V"
        }
    .end annotation

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->litepalUseeInit()V

    .line 48
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryNeedUploadSellData(Lcom/ayma/commonerp/bean/OrderPositionBean;)Ljava/util/List;

    move-result-object p1

    .line 49
    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    .line 52
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public querySaleTypeCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->litepalUseeInit()V

    .line 121
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->querySaleTypeCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateSellDataUploadStatue(Ljava/util/List;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->litepalUseeInit()V

    .line 101
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->updateSellDataUploadStatue(Ljava/util/List;)I

    move-result p1

    if-lez p1, :cond_0

    .line 103
    invoke-interface {p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void

    :cond_0
    const-string p1, "\u66f4\u65b0\u6570\u636e\u4e0a\u4f20\u72b6\u6001\u5931\u8d25"

    .line 106
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public uploadCashInfo(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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

    .line 166
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ayma/commonerp/util/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "\u7f51\u7edc\u5f02\u5e38"

    .line 167
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 170
    :cond_0
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->uploadErrorInfo(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 171
    new-instance v0, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel$2;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel$2;-><init>(Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public uploadSellDataToServer(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ayma/commonerp/util/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 63
    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->machineModel:Ljava/lang/String;

    const-string v1, "pdaNo"

    invoke-virtual {p1, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->version:Ljava/lang/String;

    const-string v1, "pdaVer"

    invoke-virtual {p1, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/net/RetrofitFactory;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->generateRequestBody2(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->uploadSellGoodsData(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 70
    new-instance v0, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel$1;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel$1;-><init>(Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
