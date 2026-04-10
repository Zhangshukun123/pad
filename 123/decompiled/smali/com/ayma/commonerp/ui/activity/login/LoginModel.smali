.class public Lcom/ayma/commonerp/ui/activity/login/LoginModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "LoginModel.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/login/ILoginModel;


# static fields
.field public static final KEY_USER_COMPANY2_ID:Ljava/lang/String; = "company2Id"

.field public static final KEY_USER_COMPANY_ID:Ljava/lang/String; = "companyId"

.field public static final KEY_USER_FLEET_ID:Ljava/lang/String; = "fleetId"

.field public static final KEY_USER_GO_DATE:Ljava/lang/String; = "goDate"

.field public static final KEY_USER_ID:Ljava/lang/String; = "userId"

.field public static final KEY_USER_INFO_CODE:Ljava/lang/String; = "userCode"

.field public static final KEY_USER_INFO_NAME:Ljava/lang/String; = "userName"

.field public static final KEY_USER_INFO_PWD:Ljava/lang/String; = "userPer"

.field public static final KEY_USER_STORE_ID:Ljava/lang/String; = "storeId"

.field public static final KEY_USER_TEAM_ID:Ljava/lang/String; = "teamId"

.field public static final KEY_USER_TRAIN_ID:Ljava/lang/String; = "trainId"


# instance fields
.field private crossRoadDataBean:Lcom/ayma/commonerp/bean/CrossRoadDataBean;

.field private final searchCrossRoadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/CrossRoadDataBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->searchCrossRoadList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/login/LoginModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/login/LoginModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/activity/login/LoginModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/activity/login/LoginModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/activity/login/LoginModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ayma/commonerp/ui/activity/login/LoginModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ayma/commonerp/ui/activity/login/LoginModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ayma/commonerp/ui/activity/login/LoginModel;)Landroid/os/Handler;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ayma/commonerp/ui/activity/login/LoginModel;)Landroid/os/Handler;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/ayma/commonerp/ui/activity/login/LoginModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ayma/commonerp/ui/activity/login/LoginModel;)Landroid/os/Handler;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ayma/commonerp/ui/activity/login/LoginModel;)Ljava/util/List;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->searchCrossRoadList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/login/LoginModel;)Landroid/content/Context;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/ayma/commonerp/ui/activity/login/LoginModel;)Landroid/os/Handler;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/ayma/commonerp/ui/activity/login/LoginModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lcom/ayma/commonerp/ui/activity/login/LoginModel;)Landroid/os/Handler;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/login/LoginModel;)Landroid/content/Context;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/login/LoginModel;)Landroid/content/Context;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/login/LoginModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/login/LoginModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/activity/login/LoginModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/activity/login/LoginModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/activity/login/LoginModel;)V
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->initGson()V

    return-void
.end method


# virtual methods
.method public getCrossRoadDataBean()Lcom/ayma/commonerp/bean/CrossRoadDataBean;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->crossRoadDataBean:Lcom/ayma/commonerp/bean/CrossRoadDataBean;

    return-object v0
.end method

.method public getSearchCrossRoadList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/CrossRoadDataBean;",
            ">;"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->searchCrossRoadList:Ljava/util/List;

    return-object v0
.end method

.method public getUserInfo(Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 204
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->context:Landroid/content/Context;

    const-string v2, "userCode"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/ayma/base/util/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 205
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->context:Landroid/content/Context;

    const-string v5, "userName"

    invoke-static {v4, v5, v3}, Lcom/ayma/base/util/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 206
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-interface {p1, v0}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public getUserInfoFromServer(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 2

    .line 116
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/net/Api;->getUserInfo(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v0

    .line 117
    new-instance v1, Lcom/ayma/commonerp/ui/activity/login/LoginModel$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel$2;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginModel;Lcom/ayma/base/mvp/ModelCallBack;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public loginFromServer(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 2

    .line 82
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/net/RetrofitFactory;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/net/Api;

    invoke-interface {v0, p1, p2}, Lcom/ayma/commonerp/net/Api;->login(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 83
    new-instance p2, Lcom/ayma/commonerp/ui/activity/login/LoginModel$1;

    invoke-direct {p2, p0, p3}, Lcom/ayma/commonerp/ui/activity/login/LoginModel$1;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public queryCrossRoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/CrossRoadDataBean;",
            ">;>;)V"
        }
    .end annotation

    .line 265
    const-class p1, Lcom/ayma/commonerp/bean/CrossRoadDataBean;

    const/4 p2, 0x0

    new-array v0, p2, [J

    invoke-static {p1, v0}, Lorg/litepal/Operator;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u8bf7\u5148\u4e0b\u8f7d\u4ea4\u8def\u8d44\u6599"

    .line 266
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 p1, 0x5

    .line 269
    invoke-static {p3, p1}, Lcom/ayma/base/util/DateTimeUtils;->getSpecifiedDayBeforeN(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 270
    invoke-static {p3, v1}, Lcom/ayma/base/util/DateTimeUtils;->getSpecifiedDayAfterN(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    new-array p1, p1, [Ljava/lang/String;

    const-string v2, " employeeId = ? and companyId = ? and roadDay >= ? and roadDay <= ? "

    aput-object v2, p1, p2

    const/4 p2, 0x1

    .line 271
    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->userId:Ljava/lang/String;

    aput-object v2, p1, p2

    const/4 p2, 0x2

    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    aput-object v2, p1, p2

    aput-object v0, p1, v1

    const/4 p2, 0x4

    aput-object p3, p1, p2

    invoke-static {p1}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-string p2, "roadDay desc"

    invoke-virtual {p1, p2}, Lorg/litepal/FluentQuery;->order(Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class p2, Lcom/ayma/commonerp/bean/CrossRoadDataBean;

    invoke-virtual {p1, p2}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 275
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "\u60a8\u6ca1\u6709\u5408\u9002\u7684\u4ea4\u8def\u53ef\u767b\u5f55"

    .line 276
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 285
    :cond_1
    invoke-interface {p4, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public queryCrossRoadDataSize()I
    .locals 1

    .line 320
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->litepalUseeInit()V

    .line 321
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryCrossRoadDataSize()I

    move-result v0

    return v0
.end method

.method public queryGoodsDataSize()I
    .locals 1

    .line 296
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->litepalUseeInit()V

    .line 297
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsDataSize()I

    move-result v0

    return v0
.end method

.method public queryGoodsPriceDataSize()I
    .locals 1

    .line 302
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->litepalUseeInit()V

    .line 303
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsPriceDataSize()I

    move-result v0

    return v0
.end method

.method public queryGoodsTypeDataSize()I
    .locals 1

    .line 308
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->litepalUseeInit()V

    .line 309
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsTypeDataSize()I

    move-result v0

    return v0
.end method

.method public queryTrainDataSize()I
    .locals 1

    .line 314
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->litepalUseeInit()V

    .line 315
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryTrainDataSize()I

    move-result v0

    return v0
.end method

.method public queryUser(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/UserDataBean;",
            ">;>;)V"
        }
    .end annotation

    .line 191
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->litepalUseeInit()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " employeeCode = ? "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 192
    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v0, Lcom/ayma/commonerp/bean/UserDataBean;

    invoke-virtual {p1, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 193
    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public queryUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Lcom/ayma/commonerp/bean/UserDataBean;",
            ">;)V"
        }
    .end annotation

    .line 247
    :try_start_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->litepalUseeInit()V

    .line 248
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 250
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p4, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    .line 251
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public queryUserDataSize()I
    .locals 1

    .line 290
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->litepalUseeInit()V

    .line 291
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryUserDataSize()I

    move-result v0

    return v0
.end method

.method public saveUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->context:Landroid/content/Context;

    const-string v1, "userId"

    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->userId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ayma/base/util/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 221
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->context:Landroid/content/Context;

    const-string v1, "userCode"

    invoke-static {v0, v1, p1}, Lcom/ayma/base/util/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 222
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->context:Landroid/content/Context;

    const-string v0, "userName"

    invoke-static {p1, v0, p2}, Lcom/ayma/base/util/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 223
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->context:Landroid/content/Context;

    const-string p2, "userPer"

    invoke-static {p3}, Lcom/ayma/base/util/DesHelper;->EncryptAsDoNet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/ayma/base/util/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 224
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->context:Landroid/content/Context;

    const-string p2, "companyId"

    sget-object p3, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/ayma/base/util/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 225
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->context:Landroid/content/Context;

    const-string p2, "company2Id"

    sget-object p3, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/ayma/base/util/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 226
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->context:Landroid/content/Context;

    const-string p2, "storeId"

    sget-object p3, Lcom/ayma/commonerp/app/AppUserData;->storeId:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/ayma/base/util/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 227
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->context:Landroid/content/Context;

    const-string p2, "fleetId"

    sget-object p3, Lcom/ayma/commonerp/app/AppUserData;->fleetId:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/ayma/base/util/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 228
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->context:Landroid/content/Context;

    const-string p2, "teamId"

    sget-object p3, Lcom/ayma/commonerp/app/AppUserData;->teamId:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/ayma/base/util/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 229
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->context:Landroid/content/Context;

    const-string p2, "trainId"

    sget-object p3, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/ayma/base/util/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 230
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->context:Landroid/content/Context;

    const-string p2, "goDate"

    sget-object p3, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/ayma/base/util/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 232
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public searchCrossRoad(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/CrossRoadDataBean;",
            ">;>;)V"
        }
    .end annotation

    .line 382
    new-instance v0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/login/LoginModel$4;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginModel;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    invoke-static {v0}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCrossRoadDataBean(Lcom/ayma/commonerp/bean/CrossRoadDataBean;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->crossRoadDataBean:Lcom/ayma/commonerp/bean/CrossRoadDataBean;

    return-void
.end method

.method public setNewStoreId(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1

    .line 326
    new-instance v0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/login/LoginModel$3;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginModel;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-static {v0}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
