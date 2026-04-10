.class public Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "QueryBillModel.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/querybill/IQueryBillModel;


# instance fields
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

.field private countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

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

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QuerySaleBillBean;",
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

    .line 42
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->list:Ljava/util/List;

    .line 44
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->sellTypeMap:Ljava/util/LinkedHashMap;

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->goodsBigType:Ljava/util/List;

    const-string v0, "\u5168\u90e8"

    .line 46
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->initSmallType()V

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->initSaleType()V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->list:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public calculateCountAndAmount()V
    .locals 9

    .line 224
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-direct {v0}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;-><init>()V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->resetCountAndAmount()V

    .line 229
    :goto_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/QuerySaleBillBean;

    .line 230
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getSalePrice()D

    move-result-wide v2

    .line 231
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getFromStockCount()D

    move-result-wide v5

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getReceiveQty()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->setFromStockCount(D)V

    .line 232
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getFromStockAmount()D

    move-result-wide v5

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getReceiveQty()D

    move-result-wide v7

    invoke-static {v2, v3, v7, v8}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->setFromStockAmount(D)V

    .line 233
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getAddCount()D

    move-result-wide v5

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getSupplyQty()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->setAddCount(D)V

    .line 234
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getAddAmount()D

    move-result-wide v5

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getSupplyQty()D

    move-result-wide v7

    invoke-static {v2, v3, v7, v8}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->setAddAmount(D)V

    .line 236
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getTransferInCount()D

    move-result-wide v5

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getReturnInQty()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->setTransferInCount(D)V

    .line 237
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getTransferInAmount()D

    move-result-wide v5

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getReturnInQty()D

    move-result-wide v7

    invoke-static {v2, v3, v7, v8}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->setTransferInAmount(D)V

    .line 238
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getTransferOutCount()D

    move-result-wide v5

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getReturnOutQty()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->setTransferOutCount(D)V

    .line 239
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getTransferOutAmount()D

    move-result-wide v5

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getReturnOutQty()D

    move-result-wide v7

    invoke-static {v2, v3, v7, v8}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->setTransferOutAmount(D)V

    .line 240
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getReturnCount()D

    move-result-wide v5

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getReturnQty()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->setReturnCount(D)V

    .line 241
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getReturnAmount()D

    move-result-wide v5

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getReturnQty()D

    move-result-wide v7

    invoke-static {v2, v3, v7, v8}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->setReturnAmount(D)V

    .line 242
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getScrappedCount()D

    move-result-wide v5

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getScrapQty()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->setScrappedCount(D)V

    .line 243
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getScrappedAmount()D

    move-result-wide v5

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getScrapQty()D

    move-result-wide v7

    invoke-static {v2, v3, v7, v8}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->setScrappedAmount(D)V

    .line 244
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getLostCount()D

    move-result-wide v5

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getLoseQty()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->setLostCount(D)V

    .line 245
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getLostAmount()D

    move-result-wide v5

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getLoseQty()D

    move-result-wide v7

    invoke-static {v2, v3, v7, v8}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->setLostAmount(D)V

    .line 246
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getSaleOutCount()D

    move-result-wide v5

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getForeignQty()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->setSaleOutCount(D)V

    .line 247
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getSaleOutAmount()D

    move-result-wide v5

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getForeignQty()D

    move-result-wide v7

    invoke-static {v2, v3, v7, v8}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->setSaleOutAmount(D)V

    .line 248
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getSaleInCount()D

    move-result-wide v5

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getInternalQty()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->setSaleInCount(D)V

    .line 249
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getSaleInAmount()D

    move-result-wide v5

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getInternalQty()D

    move-result-wide v7

    invoke-static {v2, v3, v7, v8}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->setSaleInAmount(D)V

    .line 250
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getSale12306Count()D

    move-result-wide v5

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getOnlineQty()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->setSale12306Count(D)V

    .line 251
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getSale12306Amount()D

    move-result-wide v5

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getOnlineQty()D

    move-result-wide v7

    invoke-static {v2, v3, v7, v8}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v1

    invoke-static {v5, v6, v1, v2}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->setSale12306Amount(D)V

    goto/16 :goto_1

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getFromStockCount()D

    move-result-wide v1

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    .line 254
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getAddCount()D

    move-result-wide v3

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getTransferInCount()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v3

    .line 253
    invoke-static {v1, v2, v3, v4}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->setInCount(D)V

    .line 255
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getFromStockAmount()D

    move-result-wide v1

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    .line 256
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getAddAmount()D

    move-result-wide v3

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getTransferInAmount()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v3

    .line 255
    invoke-static {v1, v2, v3, v4}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->setInAmount(D)V

    .line 257
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getReturnCount()D

    move-result-wide v1

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    .line 258
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getScrappedCount()D

    move-result-wide v3

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    .line 259
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getLostCount()D

    move-result-wide v5

    iget-object v7, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v7}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getTransferOutCount()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v5

    .line 258
    invoke-static {v3, v4, v5, v6}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v3

    .line 257
    invoke-static {v1, v2, v3, v4}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->setReturnAndDamageCount(D)V

    .line 260
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getReturnAmount()D

    move-result-wide v1

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    .line 261
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getScrappedAmount()D

    move-result-wide v3

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    .line 262
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getLostAmount()D

    move-result-wide v5

    iget-object v7, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v7}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getTransferOutAmount()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v5

    .line 261
    invoke-static {v3, v4, v5, v6}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v3

    .line 260
    invoke-static {v1, v2, v3, v4}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->setReturnAndDamageAmount(D)V

    .line 263
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getSaleOutCount()D

    move-result-wide v1

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getSaleInCount()D

    move-result-wide v3

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getSale12306Count()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->setSaleCount(D)V

    .line 264
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getSaleOutAmount()D

    move-result-wide v1

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getSaleInAmount()D

    move-result-wide v3

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getSale12306Amount()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->setSaleAmount(D)V

    .line 266
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getInCount()D

    move-result-wide v1

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getReturnAndDamageCount()D

    move-result-wide v3

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getSaleCount()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->setAllCount(D)V

    .line 267
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getInAmount()D

    move-result-wide v1

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getReturnAndDamageAmount()D

    move-result-wide v3

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getSaleAmount()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->setAllAmount(D)V

    return-void
.end method

.method public getBigTypeId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->bigTypeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public getCountAndAmount()Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->countAndAmount:Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

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

    .line 273
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->goodsBigType:Ljava/util/List;

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

    .line 277
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->goodsSmallType:Ljava/util/List;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QuerySaleBillBean;",
            ">;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->list:Ljava/util/List;

    return-object v0
.end method

.method public getSellTypeId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->sellTypeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 161
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

    .line 285
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->sellTypeList:Ljava/util/List;

    return-object v0
.end method

.method public getSmallTypeId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->smallTypeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public initSaleType()V
    .locals 2

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->sellTypeList:Ljava/util/List;

    const-string v1, "\u5168\u90e8"

    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public initSmallType()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->goodsSmallType:Ljava/util/List;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->goodsSmallType:Ljava/util/List;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->goodsSmallType:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 57
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->goodsSmallType:Ljava/util/List;

    const-string v1, "\u5168\u90e8"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public queryGoodsBigType(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 6

    .line 74
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->litepalUseeInit()V

    .line 75
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->sellTypeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 76
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsBigType()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "\u6570\u636e\u51fa\u9519"

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0, v1}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 81
    :cond_0
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v2, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsAllSmallType(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    if-nez p1, :cond_1

    .line 83
    invoke-virtual {p0, v1}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    const-string v2, "sale_type"

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/litepal/LitepalUse;->querySellType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 87
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 91
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

    .line 92
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->sellTypeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/BaseDataItem;->getAttributeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/BaseDataItem;->getAttributeCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->sellTypeList:Ljava/util/List;

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/BaseDataItem;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :cond_3
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->bigTypeMap:Ljava/util/LinkedHashMap;

    .line 96
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->smallTypeMap:Ljava/util/LinkedHashMap;

    .line 97
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->goodsBigType:Ljava/util/List;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->goodsSmallType:Ljava/util/List;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 99
    invoke-interface {p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void

    :cond_4
    :goto_1
    const-string p1, "\u9500\u552e\u7c7b\u578b\u57fa\u7840\u6570\u636e\u7f3a\u5931\uff0c\u8bf7\u786e\u8ba4\u662f\u5426\u5df2\u7ecf\u4e0b\u8f7d"

    .line 88
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public querySaleBill(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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

    .line 171
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 172
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->querySaleBill(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 173
    new-instance v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel$1;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel$1;-><init>(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public querySmallType(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->litepalUseeInit()V

    const-string v0, "\u5168\u90e8"

    .line 112
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsAllSmallType(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "\u67e5\u8be2\u9519\u8bef"

    .line 115
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 118
    :cond_0
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->smallTypeMap:Ljava/util/LinkedHashMap;

    .line 119
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->initSmallType()V

    .line 120
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->goodsSmallType:Ljava/util/List;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->smallTypeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 121
    invoke-interface {p3}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void

    .line 124
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->bigTypeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 125
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, "\u6570\u636e\u51fa\u9519"

    if-eqz p2, :cond_2

    .line 126
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 129
    :cond_2
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsSmallTypeByBigId(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    if-nez p1, :cond_3

    .line 131
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 134
    :cond_3
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->smallTypeMap:Ljava/util/LinkedHashMap;

    .line 135
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->initSmallType()V

    .line 136
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->goodsSmallType:Ljava/util/List;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 137
    invoke-interface {p3}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void
.end method
