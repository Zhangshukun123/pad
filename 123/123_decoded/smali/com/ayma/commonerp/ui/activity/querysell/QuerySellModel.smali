.class public Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "QuerySellModel.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/querysell/IQuerySellModel;


# instance fields
.field private bigTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private goodsBigType:Ljava/util/List;
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

.field private saleDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SaleDataBean;",
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

.field private sellTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private smallTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private totalCount:D

.field private totalPrice:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->saleDataList:Ljava/util/List;

    .line 56
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->sellTypeMap:Ljava/util/Map;

    .line 57
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->payTypeMap:Ljava/util/Map;

    .line 58
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->initSaleType()V

    .line 59
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->initPayType()V

    .line 60
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->initBigType()V

    .line 61
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->initSmallType()V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;)Ljava/util/List;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->saleDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public calculateTotalCountAndPrice()V
    .locals 6

    const-wide/16 v0, 0x0

    .line 137
    iput-wide v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->totalCount:D

    .line 138
    iput-wide v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->totalPrice:D

    .line 139
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->saleDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/SaleDataBean;

    .line 140
    iget-wide v2, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->totalCount:D

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/SaleDataBean;->getQty()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->totalCount:D

    .line 141
    iget-wide v2, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->totalPrice:D

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/SaleDataBean;->getSale_price_sum()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->totalPrice:D

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearData()V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->saleDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 316
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public getBigTypeId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->bigTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 202
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
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

    .line 159
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->goodsBigType:Ljava/util/List;

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

    .line 163
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->goodsSmallType:Ljava/util/List;

    return-object v0
.end method

.method public getPayTypeId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->payTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 298
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
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

    .line 222
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->payTypeList:Ljava/util/List;

    return-object v0
.end method

.method public getPaymentTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->payTypeList:Ljava/util/List;

    return-object v0
.end method

.method public getSaleDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SaleDataBean;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->saleDataList:Ljava/util/List;

    return-object v0
.end method

.method public getSaleTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->sellTypeList:Ljava/util/List;

    return-object v0
.end method

.method public getSellTypeId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->sellTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 310
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

    .line 218
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->sellTypeList:Ljava/util/List;

    return-object v0
.end method

.method public getSmallTypeId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->smallTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public getTotalCount()D
    .locals 2

    .line 321
    iget-wide v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->totalCount:D

    return-wide v0
.end method

.method public getTotalPrice()D
    .locals 2

    .line 325
    iget-wide v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->totalPrice:D

    return-wide v0
.end method

.method public initBigType()V
    .locals 2

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->goodsBigType:Ljava/util/List;

    const-string v1, "\u5168\u90e8"

    .line 169
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public initPayType()V
    .locals 2

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->payTypeList:Ljava/util/List;

    const-string v1, "\u5168\u90e8"

    .line 184
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public initSaleAndPayAndBigType(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 5

    .line 66
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->litepalUseeInit()V

    .line 67
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    const-string v1, "sale_type"

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/litepal/LitepalUse;->querySellType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 68
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 72
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

    .line 73
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->sellTypeMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/BaseDataItem;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/BaseDataItem;->getAttributeCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->sellTypeList:Ljava/util/List;

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/BaseDataItem;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    const-string v1, "payment_type"

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryPaymentType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 77
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 81
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/BaseDataItem;

    .line 82
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->payTypeMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/BaseDataItem;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/BaseDataItem;->getAttributeCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->payTypeList:Ljava/util/List;

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/BaseDataItem;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 85
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->queryGoodsBigType(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void

    :cond_4
    :goto_2
    const-string p1, "\u652f\u4ed8\u7c7b\u578b\u57fa\u7840\u6570\u636e\u7f3a\u5931\uff0c\u8bf7\u786e\u8ba4\u662f\u5426\u5df2\u7ecf\u4e0b\u8f7d"

    .line 78
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    :cond_5
    :goto_3
    const-string p1, "\u9500\u552e\u7c7b\u578b\u57fa\u7840\u6570\u636e\u7f3a\u5931\uff0c\u8bf7\u786e\u8ba4\u662f\u5426\u5df2\u7ecf\u4e0b\u8f7d"

    .line 69
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public initSaleType()V
    .locals 2

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->sellTypeList:Ljava/util/List;

    const-string v1, "\u5168\u90e8"

    .line 190
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public initSmallType()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->goodsSmallType:Ljava/util/List;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->goodsSmallType:Ljava/util/List;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->goodsSmallType:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 178
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->goodsSmallType:Ljava/util/List;

    const-string v1, "\u5168\u90e8"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public queryGoodsBigType(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 2

    .line 233
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->litepalUseeInit()V

    .line 234
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsBigType()Ljava/util/LinkedHashMap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "\u67e5\u8be2\u4e0d\u5230\u6570\u636e\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u5df2\u4e0b\u8f7d\u5546\u54c1\u6570\u636e"

    .line 236
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v1, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsAllSmallType(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "\u67e5\u8be2\u4e0d\u5230\u6570\u636e"

    .line 241
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 244
    :cond_1
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->bigTypeMap:Ljava/util/Map;

    .line 245
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->smallTypeMap:Ljava/util/Map;

    .line 246
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->goodsBigType:Ljava/util/List;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 247
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->goodsSmallType:Ljava/util/List;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 248
    invoke-interface {p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void
.end method

.method public queryGoodsSmallType(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1

    .line 260
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->litepalUseeInit()V

    const-string v0, "\u5168\u90e8"

    .line 261
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsAllSmallType(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "\u67e5\u8be2\u9519\u8bef"

    .line 264
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 267
    :cond_0
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->smallTypeMap:Ljava/util/Map;

    .line 268
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->initSmallType()V

    .line 269
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->goodsSmallType:Ljava/util/List;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->smallTypeMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 270
    invoke-interface {p3}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void

    .line 273
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->bigTypeMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 274
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "\u6570\u636e\u51fa\u9519\u4e86"

    .line 275
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsSmallTypeByBigId(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    if-nez p1, :cond_3

    .line 280
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u67e5\u8be2\u4e0d\u5230"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u4e0b\u7684\u5c0f\u7c7b"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 283
    :cond_3
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->smallTypeMap:Ljava/util/Map;

    .line 284
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->initSmallType()V

    .line 285
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->goodsSmallType:Ljava/util/List;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 286
    invoke-interface {p3}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void
.end method

.method public querySaleData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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

    .line 95
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/net/RetrofitFactory;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->querySaleSum(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 96
    new-instance v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel$1;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel$1;-><init>(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
