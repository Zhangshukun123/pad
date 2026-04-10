.class public Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "RevisePwdModel.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/revisepwd/IRevisePwdModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;)Lcom/ayma/commonerp/litepal/LitepalUse;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public changePwd(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/ayma/base/mvp/ModelCallBack;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;->litepalUseeInit()V

    const/4 v0, 0x1

    if-ne p5, v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0, p2, p3}, Lcom/ayma/commonerp/litepal/LitepalUse;->checkPwd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    const-string p1, "\u4fee\u6539\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5"

    .line 45
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p6, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 48
    :cond_0
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object p3

    const-class v0, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {p3, v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ayma/commonerp/net/Api;->updatePwd(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 49
    new-instance p3, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel$1;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p6

    move v3, p5

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel$1;-><init>(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;Lcom/ayma/base/mvp/ModelCallBack;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
