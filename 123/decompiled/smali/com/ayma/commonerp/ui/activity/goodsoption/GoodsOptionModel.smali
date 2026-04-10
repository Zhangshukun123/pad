.class public Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "GoodsOptionModel.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/goodsoption/IGoodsOptionModel;


# instance fields
.field private filterBeforeLsit:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsOptionBean;",
            ">;"
        }
    .end annotation
.end field

.field private goodslist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsOptionBean;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private smallTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->goodslist:Ljava/util/List;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->smallTypeList:Ljava/util/List;

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->filterBeforeLsit:Ljava/util/List;

    .line 43
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;)Ljava/util/List;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->goodslist:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;)Ljava/util/List;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->filterBeforeLsit:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;Lretrofit2/Response;Lcom/ayma/base/mvp/ModelBaseCallBack;)Z
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->dealHttpResult(Lretrofit2/Response;Lcom/ayma/base/mvp/ModelBaseCallBack;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public fetchGoodsList(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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

    .line 48
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->goodslist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 49
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->smallTypeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->fetchGoodsOptionData(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 51
    new-instance v0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel$1;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel$1;-><init>(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public filterGoods(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsOptionBean;",
            ">;>;)V"
        }
    .end annotation

    .line 91
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->goodslist:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 93
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->goodslist:Ljava/util/List;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->filterBeforeLsit:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->goodslist:Ljava/util/List;

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void

    .line 97
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->goodslist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/GoodsOptionBean;

    .line 99
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/GoodsOptionBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/GoodsOptionBean;->getGoodsName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_3
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->goodslist:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 104
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->goodslist:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 105
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->goodslist:Ljava/util/List;

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public getGoodsOptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsOptionBean;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->goodslist:Ljava/util/List;

    return-object v0
.end method

.method public getSmallTypeList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->goodslist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/GoodsOptionBean;

    .line 144
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/GoodsOptionBean;->getGoodsTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 145
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/GoodsOptionBean;->getGoodsTypeName()Ljava/lang/String;

    move-result-object v1

    .line 146
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->smallTypeList:Ljava/util/List;

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/GoodsOptionBean;->getGoodsTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->smallTypeList:Ljava/util/List;

    return-object v0
.end method

.method public updateOnlineQty(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 1
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

    .line 114
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->updateOnlineQty(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 115
    new-instance v0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel$2;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel$2;-><init>(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
