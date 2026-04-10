.class public Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "MultiplexSignInStatueModel.java"

# interfaces
.implements Lcom/ayma/commonerp/multiplex/signstatue/IMultiplexSignInStatueModel;


# static fields
.field private static final KEY_SIGN_IN_STATUE:Ljava/lang/String; = "signInStatue"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public deleteSignInRecordBeforeNDay(ILcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1

    .line 109
    :try_start_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;->litepalUseeInit()V

    .line 110
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->deleteSignInRecordBeforeNDay(I)V

    .line 111
    invoke-interface {p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 113
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    .line 114
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public fetchSignInStatueFromServer(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->checkSignStatue(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 34
    new-instance v0, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel$1;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel$1;-><init>(Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public getSignInStatueFromLocal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;->litepalUseeInit()V

    .line 87
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ayma/commonerp/litepal/LitepalUse;->getSignInStatue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ayma/commonerp/bean/SignIn;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 90
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SignIn;->getSignInStatue()Ljava/lang/String;

    move-result-object p1

    const-string p2, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    invoke-interface {p4, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    .line 97
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public saveOrUpdateSignInStatue(Lcom/ayma/commonerp/bean/SignIn;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 3

    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "teamId = ? and outDay = ? and trainId = ?"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 70
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SignIn;->getTeamId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SignIn;->getOutDay()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SignIn;->getTrainId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/bean/SignIn;->saveOrUpdate([Ljava/lang/String;)Z

    .line 71
    invoke-interface {p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 73
    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    .line 74
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
