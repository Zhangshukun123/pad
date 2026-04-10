.class public Lcom/ayma/commonerp/service/report/ReportModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "ReportModel.java"

# interfaces
.implements Lcom/ayma/commonerp/service/report/IReportModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/service/report/ReportModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/service/report/ReportModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/service/report/ReportModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/service/report/ReportModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/service/report/ReportModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/service/report/ReportModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
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

    .line 56
    iget-object v0, p0, Lcom/ayma/commonerp/service/report/ReportModel;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ayma/commonerp/util/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "\u7f51\u7edc\u5f02\u5e38"

    .line 57
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/service/report/ReportModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 60
    :cond_0
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/service/report/ReportModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->uploadErrorInfo(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 61
    new-instance v0, Lcom/ayma/commonerp/service/report/ReportModel$1;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/service/report/ReportModel$1;-><init>(Lcom/ayma/commonerp/service/report/ReportModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
