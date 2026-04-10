.class public Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "SellAnalysisModel.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/sellanalysis/ISellAnalysisModel;


# instance fields
.field private amountTips:Ljava/lang/String;

.field private bigTypeMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private errorTip:Ljava/lang/String;

.field private final goodsBigType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private goodsSmallType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private saleAnalysisAmount:Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

.field private final saleAnalysisList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SaleAnalysisBean;",
            ">;"
        }
    .end annotation
.end field

.field private sellTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final sellTypeMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private smallTypeMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->handler:Landroid/os/Handler;

    .line 58
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->sellTypeMap:Ljava/util/LinkedHashMap;

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->saleAnalysisList:Ljava/util/List;

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->goodsBigType:Ljava/util/List;

    const-string v0, "\u5168\u90e8"

    .line 61
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->initSmallType()V

    .line 63
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->initSaleType()V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Ljava/util/List;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->saleAnalysisList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->errorTip:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->amountTips:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)V
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->litepalUseeInit()V

    return-void
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->saleAnalysisAmount:Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    return-object p0
.end method

.method static synthetic access$802(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;Lcom/ayma/commonerp/bean/SaleAnalysisAmount;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->saleAnalysisAmount:Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    return-object p1
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/litepal/LitepalUse;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    return-object p0
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->saleAnalysisList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 314
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public getAmountTips()Ljava/lang/String;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->amountTips:Ljava/lang/String;

    return-object v0
.end method

.method public getBigTypeId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->bigTypeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public getErrorTip()Ljava/lang/String;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->errorTip:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsBigType()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->goodsBigType:Ljava/util/List;

    return-object v0
.end method

.method public getGoodsSmallType()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->goodsSmallType:Ljava/util/List;

    return-object v0
.end method

.method public getSaleAnalysisAmount()Lcom/ayma/commonerp/bean/SaleAnalysisAmount;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->saleAnalysisAmount:Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    return-object v0
.end method

.method public getSaleAnalysisList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SaleAnalysisBean;",
            ">;"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->saleAnalysisList:Ljava/util/List;

    return-object v0
.end method

.method public getSaleDataFromServer(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 2
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

    .line 175
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/net/RetrofitFactory;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->querySaleAnalysis(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 176
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$1;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$1;-><init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public getSellTypeId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->sellTypeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 308
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public getSellTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->sellTypeList:Ljava/util/List;

    return-object v0
.end method

.method public getSmallTypeId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->smallTypeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public initSaleType()V
    .locals 2

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->sellTypeList:Ljava/util/List;

    const-string v1, "\u5168\u90e8"

    .line 78
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public initSmallType()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->goodsSmallType:Ljava/util/List;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->goodsSmallType:Ljava/util/List;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->goodsSmallType:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->goodsSmallType:Ljava/util/List;

    const-string v1, "\u5168\u90e8"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public queryGoodsBigType(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 6

    .line 89
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->litepalUseeInit()V

    .line 91
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsBigType()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "\u6570\u636e\u51fa\u9519"

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0, v1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v2, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsAllSmallType(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    if-nez p1, :cond_1

    .line 98
    invoke-virtual {p0, v1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    const-string v2, "sale_type"

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/litepal/LitepalUse;->querySellType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 102
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 106
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/BaseDataItem;

    .line 107
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->sellTypeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/BaseDataItem;->getAttributeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/BaseDataItem;->getAttributeCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->sellTypeList:Ljava/util/List;

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/BaseDataItem;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_3
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->bigTypeMap:Ljava/util/LinkedHashMap;

    .line 111
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->smallTypeMap:Ljava/util/LinkedHashMap;

    .line 112
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->goodsBigType:Ljava/util/List;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->goodsSmallType:Ljava/util/List;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->smallTypeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    invoke-interface {p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void

    :cond_4
    :goto_1
    const-string p1, "\u9500\u552e\u7c7b\u578b\u57fa\u7840\u6570\u636e\u7f3a\u5931\uff0c\u8bf7\u786e\u8ba4\u662f\u5426\u5df2\u7ecf\u4e0b\u8f7d"

    .line 103
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public queryGoodsPriceAndCalculateAmount(Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1

    .line 219
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;-><init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-static {v0}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public querySmallType(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1

    .line 126
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->litepalUseeInit()V

    const-string v0, "\u5168\u90e8"

    .line 127
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsAllSmallType(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "\u67e5\u8be2\u9519\u8bef"

    .line 130
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 133
    :cond_0
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->smallTypeMap:Ljava/util/LinkedHashMap;

    .line 134
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->initSmallType()V

    .line 135
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->goodsSmallType:Ljava/util/List;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->smallTypeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 136
    invoke-interface {p3}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void

    .line 139
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->bigTypeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, "\u6570\u636e\u51fa\u9519"

    if-eqz p2, :cond_2

    .line 141
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 144
    :cond_2
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsSmallTypeByBigId(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    if-nez p1, :cond_3

    .line 146
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 149
    :cond_3
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->smallTypeMap:Ljava/util/LinkedHashMap;

    .line 150
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->initSmallType()V

    .line 151
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->goodsSmallType:Ljava/util/List;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    invoke-interface {p3}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void
.end method

.method public setSaleAnalysisAmount(Lcom/ayma/commonerp/bean/SaleAnalysisAmount;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->saleAnalysisAmount:Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    return-void
.end method
