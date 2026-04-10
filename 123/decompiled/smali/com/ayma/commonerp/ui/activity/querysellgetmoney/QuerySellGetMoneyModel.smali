.class public Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "QuerySellGetMoneyModel.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/querysellgetmoney/IQuerySellGetMoneyModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public querySellGetMoneyData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;",
            ">;>;)V"
        }
    .end annotation

    .line 41
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/net/RetrofitFactory;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->querySellGetMoney(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 42
    new-instance v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel$1;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel$1;-><init>(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
