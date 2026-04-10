.class public Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "InvoicingModel.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/invoicing/IInvoicingModel;


# instance fields
.field private orderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/OrderBean;",
            ">;"
        }
    .end annotation
.end field

.field private orderTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private orderTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private payTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private payTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private showList:Ljava/util/List;
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

    .line 49
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->orderList:Ljava/util/List;

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->showList:Ljava/util/List;

    .line 53
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->initPayType()V

    .line 54
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->payTypeMap:Ljava/util/Map;

    .line 55
    sget-object p1, Lcom/ayma/commonerp/config/Constants;->ORDER_TYPE:Ljava/util/List;

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->orderTypeList:Ljava/util/List;

    .line 56
    sget-object p1, Lcom/ayma/commonerp/config/Constants;->ORDER_TYPE_MAP:Ljava/util/TreeMap;

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->orderTypeMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;)V
    .locals 0

    .line 38
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->litepalUseeInit()V

    return-void
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;)Lcom/ayma/commonerp/litepal/LitepalUse;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->orderList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->showList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->orderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 222
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->showList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public filterData(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->showList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->orderList:Ljava/util/List;

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

    .line 208
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

    .line 209
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->showList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 212
    :cond_1
    invoke-interface {p3}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 214
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 215
    invoke-interface {p3, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public getFilterEndDate()Ljava/lang/String;
    .locals 1

    const-string v0, "yyyy-MM-dd\nHH:mm"

    .line 195
    invoke-static {v0}, Lcom/ayma/base/util/DateTimeUtils;->parseDateToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilterStartDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "yyyyMMdd"

    const-string v1, "yyyy-MM-dd\nHH:mm"

    .line 185
    invoke-static {p1, v0, v1}, Lcom/ayma/base/util/DateTimeUtils;->formatDateStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOrderTypeCode(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->orderTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getOrderTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->orderTypeList:Ljava/util/List;

    return-object v0
.end method

.method public getPayTypeCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->payTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->payTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public getPayTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->payTypeList:Ljava/util/List;

    return-object v0
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

    .line 60
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->showList:Ljava/util/List;

    return-object v0
.end method

.method public initBaseData(Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 5

    .line 76
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->litepalUseeInit()V

    .line 77
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    const-string v1, "payment_type"

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryPaymentType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 78
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 82
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/BaseDataItem;

    .line 83
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->payTypeMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/BaseDataItem;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/BaseDataItem;->getAttributeCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->payTypeList:Ljava/util/List;

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/BaseDataItem;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_1
    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void

    :cond_2
    :goto_1
    const-string v0, "\u652f\u4ed8\u7c7b\u578b\u57fa\u7840\u6570\u636e\u7f3a\u5931\uff0c\u8bf7\u786e\u8ba4\u662f\u5426\u5df2\u7ecf\u4e0b\u8f7d"

    .line 79
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public initPayType()V
    .locals 2

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->payTypeList:Ljava/util/List;

    const-string v1, "\u5168\u90e8"

    .line 66
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public queryOrder(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1
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

    .line 107
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->generateRequestBody2(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->queryOrderList(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 108
    new-instance v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$1;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$1;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public refundOrder(Ljava/util/TreeMap;Lcom/ayma/commonerp/bean/OrderBean;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/commonerp/bean/OrderBean;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 227
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->payCreate()Lcom/ayma/commonerp/net/PayApi;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/PayApi;->refundOrder(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 228
    new-instance v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$3;

    invoke-direct {v0, p0, p3, p2}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$3;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;Lcom/ayma/base/mvp/ModelParamCallBack;Lcom/ayma/commonerp/bean/OrderBean;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public sortList(ZLcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1

    .line 162
    :try_start_0
    new-instance v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$2;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$2;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;Z)V

    .line 169
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->showList:Ljava/util/List;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 170
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->orderList:Ljava/util/List;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 171
    invoke-interface {p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 173
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 174
    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
