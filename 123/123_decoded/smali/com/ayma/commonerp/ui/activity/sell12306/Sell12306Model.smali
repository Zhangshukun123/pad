.class public Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "Sell12306Model.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/sell12306/ISell12306Model;


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/sale12306/OrderHead;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;->list:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;)V
    .locals 0

    .line 29
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;->initGson()V

    return-void
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;)Lcom/google/gson/Gson;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;->list:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearCommittedData()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/sale12306/OrderHead;

    .line 157
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->setCommitted()V

    const/4 v2, 0x0

    .line 159
    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->setSelect(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public commitData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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

    .line 130
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;->generateRequestBody2(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->commit12306OrderNew(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 131
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model$2;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model$2;-><init>(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public getBillDetail()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/sale12306/OrderHead;

    .line 94
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->isSelect()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 96
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->getLineOrderId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "lineOrderId"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->getLineOrderNo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "lineOrderNo"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->getOrderDetails()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ayma/commonerp/bean/sale12306/OrderDetail;

    .line 100
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 101
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/sale12306/OrderDetail;->getGoodsId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "goodsId"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/sale12306/OrderDetail;->getQty()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "qty"

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v2, "orderDetails"

    .line 105
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/sale12306/OrderHead;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;->list:Ljava/util/List;

    return-object v0
.end method

.method public query12306PreSellData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/sale12306/OrderHead;",
            ">;>;)V"
        }
    .end annotation

    .line 45
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->query12306OrderNew(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 46
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model$1;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model$1;-><init>(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public selectOption(ILcom/ayma/base/mvp/ModelCallBack;)V
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 169
    :try_start_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/sale12306/OrderHead;

    .line 170
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->isCommitted()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {v1, v0}, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->setSelect(Z)V

    goto :goto_0

    .line 175
    :cond_1
    invoke-interface {p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_2
    if-ne p1, v0, :cond_6

    .line 179
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/sale12306/OrderHead;

    .line 180
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->isCommitted()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 183
    :cond_3
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->isSelect()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->setSelect(Z)V

    goto :goto_1

    .line 185
    :cond_5
    invoke-interface {p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void

    :cond_6
    const-string p1, "\u4e0d\u652f\u6301\u7684\u64cd\u4f5c"

    .line 188
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 190
    :goto_3
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    .line 191
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void
.end method
