.class public Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "OnlineRefundJDModel.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/IOnlineRefundJDModel;


# instance fields
.field private final orderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/OrderBean;",
            ">;"
        }
    .end annotation
.end field

.field private final showList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/OrderBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;->orderList:Ljava/util/List;

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;->showList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;->orderList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;->showList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public filterData(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;->showList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;->orderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/OrderBean;

    .line 144
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/OrderBean;->getOrderDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/ayma/base/util/DateTimeUtils;->compareDate3(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/OrderBean;->getOrderDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/ayma/base/util/DateTimeUtils;->compareDate3(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;->showList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_1
    invoke-interface {p3}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 150
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    invoke-interface {p3, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public getFilterEndDate()Ljava/lang/String;
    .locals 1

    const-string v0, "yyyy-MM-dd HH:mm"

    .line 131
    invoke-static {v0}, Lcom/ayma/base/util/DateTimeUtils;->parseDateToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilterStartDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "yyyyMMdd"

    const-string v1, "yyyy-MM-dd HH:mm"

    .line 121
    invoke-static {p1, v0, v1}, Lcom/ayma/base/util/DateTimeUtils;->formatDateStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getShowList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/OrderBean;",
            ">;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;->showList:Ljava/util/List;

    return-object v0
.end method

.method public queryOrder(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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

    .line 42
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;->orderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;->showList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->queryOrderList(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 45
    new-instance v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel$1;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel$1;-><init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public refundOrder(Ljava/util/TreeMap;ILcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 161
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->payCreate()Lcom/ayma/commonerp/net/PayApi;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/PayApi;->refundOrder(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 162
    new-instance v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel$3;

    invoke-direct {v0, p0, p3, p2}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel$3;-><init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;Lcom/ayma/base/mvp/ModelParamCallBack;I)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public sortList(ZLcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1

    .line 98
    :try_start_0
    new-instance v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel$2;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel$2;-><init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;Z)V

    .line 105
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;->showList:Ljava/util/List;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 106
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;->orderList:Ljava/util/List;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 107
    invoke-interface {p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
