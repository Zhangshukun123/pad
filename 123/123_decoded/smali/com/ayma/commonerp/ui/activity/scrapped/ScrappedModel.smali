.class public Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "ScrappedModel.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/scrapped/IScrappedModel;


# static fields
.field public static final RESULT_SCRAPPED_TYPE_ERROR:I = 0x1


# instance fields
.field private receiptList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private scrappedTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private scrappedTypeMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;"
        }
    .end annotation
.end field

.field private totalCount:D

.field private totalPrice:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->selectBeanList:Ljava/util/List;

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->scrappedTypeList:Ljava/util/List;

    .line 47
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->scrappedTypeMap:Ljava/util/TreeMap;

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->receiptList:Ljava/util/List;

    .line 49
    sget-object v0, Lcom/ayma/commonerp/config/Constants;->SCRAPPED_LOST_TYPE:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->receiptList:Ljava/util/List;

    const/4 v0, 0x0

    const-string v1, "\u8bf7\u9009\u62e9"

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addSelectGoodsToList(Ljava/util/List;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->selectBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->selectBeanList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 70
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    const/4 v2, 0x0

    .line 73
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->selectBeanList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    .line 74
    invoke-virtual {v4, v1}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->equal(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    move-object v0, v4

    :cond_2
    if-eqz v2, :cond_3

    .line 81
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->setAddCount(D)V

    goto :goto_0

    .line 83
    :cond_3
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->selectBeanList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->calculateTotalCountAndPrice()V

    .line 88
    invoke-interface {p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void
.end method

.method public calculateTotalCountAndPrice()V
    .locals 8

    const-wide/16 v0, 0x0

    .line 113
    iput-wide v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->totalCount:D

    .line 114
    iput-wide v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->totalPrice:D

    .line 116
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->selectBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    .line 117
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v2

    .line 118
    iget-wide v4, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->totalCount:D

    invoke-static {v4, v5, v2, v3}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->totalCount:D

    .line 119
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsPrice()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsPrice()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsPrice()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 120
    iget-wide v6, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->totalPrice:D

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsPrice()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSalesPrice()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v1

    invoke-static {v6, v7, v1, v2}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->totalPrice:D

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clearAllData()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->selectBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 94
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->calculateTotalCountAndPrice()V

    return-void
.end method

.method public clearAllData(Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 104
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->clearAllData()V

    .line 105
    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void
.end method

.method public deleteGoods(Lcom/ayma/commonerp/bean/ReceiptSelectBean;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 245
    :try_start_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->calculateTotalCountAndPrice()V

    .line 246
    invoke-interface {p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 248
    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    .line 249
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getPricesBean(Ljava/lang/String;Ljava/lang/String;)Lcom/ayma/commonerp/bean/GoodsPriceBean;
    .locals 1

    .line 195
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->litepalUseeInit()V

    .line 196
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0, p1, p2}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsPrice(Ljava/lang/String;Ljava/lang/String;)Lcom/ayma/commonerp/bean/GoodsPriceBean;

    move-result-object p1

    return-object p1
.end method

.method public getReceiptList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->receiptList:Ljava/util/List;

    return-object v0
.end method

.method public getScrappedList(Ljava/lang/String;Ljava/lang/String;ZLcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ScrappedBean;",
            ">;>;)V"
        }
    .end annotation

    .line 136
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ""

    if-eqz p3, :cond_0

    .line 139
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->getScrappedTypeCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u83b7\u53d6\u62a5\u5e9f\u7c7b\u578b\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5"

    .line 141
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->selectBeanList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    .line 146
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v3

    .line 147
    new-instance v4, Lcom/ayma/commonerp/bean/ScrappedBean;

    invoke-direct {v4}, Lcom/ayma/commonerp/bean/ScrappedBean;-><init>()V

    .line 148
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ayma/commonerp/bean/ScrappedBean;->setGoodsId(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ayma/commonerp/bean/ScrappedBean;->setGoodsCode(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsName()Ljava/lang/String;

    move-result-object v5

    .line 151
    invoke-virtual {v4, v5}, Lcom/ayma/commonerp/bean/ScrappedBean;->setGoodsName(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getBirthday()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/ayma/commonerp/bean/ScrappedBean;->setBirthDay(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getCostPrice()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/ayma/commonerp/bean/ScrappedBean;->setCostPrice(D)V

    .line 154
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getCostPrice0()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/ayma/commonerp/bean/ScrappedBean;->setCostPrice0(D)V

    .line 155
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getCostShuilv()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/ayma/commonerp/bean/ScrappedBean;->setCostShuilv(D)V

    if-eqz p3, :cond_1

    .line 157
    invoke-virtual {v4, v1}, Lcom/ayma/commonerp/bean/ScrappedBean;->setScrapType(Ljava/lang/String;)V

    .line 159
    :cond_1
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsPrice()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsPrice()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 163
    :cond_2
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsPrice()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    .line 164
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSalesPrice()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/ayma/commonerp/bean/ScrappedBean;->setSalesPrice(D)V

    .line 165
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSalesPrice0()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/ayma/commonerp/bean/ScrappedBean;->setSalesPrice0(D)V

    .line 166
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSalesShuilv()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/ayma/commonerp/bean/ScrappedBean;->setSalesShuiLv(D)V

    .line 167
    invoke-virtual {v4, p2}, Lcom/ayma/commonerp/bean/ScrappedBean;->setScrapRemark(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v4, p2}, Lcom/ayma/commonerp/bean/ScrappedBean;->setDescription(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/ayma/commonerp/bean/ScrappedBean;->setQty(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->getStockCount(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/ayma/commonerp/bean/ScrappedBean;->setAutualQty(Ljava/lang/String;)V

    .line 174
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 160
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u4ef7\u683c\u5f02\u5e38\uff0c\u8bf7\u7ef4\u62a4\u540e\u64cd\u4f5c"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 176
    :cond_4
    invoke-interface {p4, v0}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 178
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    invoke-interface {p4, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public getScrappedTypeCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->scrappedTypeMap:Ljava/util/TreeMap;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 238
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->scrappedTypeMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1
.end method

.method public getScrappedTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->scrappedTypeList:Ljava/util/List;

    return-object v0
.end method

.method public getSelectBeanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->selectBeanList:Ljava/util/List;

    return-object v0
.end method

.method public getStockCount(Ljava/lang/String;)D
    .locals 2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public getTotalCount()D
    .locals 2

    .line 283
    iget-wide v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->totalCount:D

    return-wide v0
.end method

.method public getTotalPrice()D
    .locals 2

    .line 287
    iget-wide v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->totalPrice:D

    return-wide v0
.end method

.method public postScrappedData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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

    .line 207
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->generateRequestBody2(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->commitTrainScrapped(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 208
    new-instance v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel$1;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel$1;-><init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public queryScrappedType(Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 3

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->scrappedTypeMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->litepalUseeInit()V

    .line 261
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->scrappedTypeMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 262
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    const-string v1, "scrap_type"

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryScrapped(Ljava/lang/String;)Ljava/util/TreeMap;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "\u67e5\u8be2\u62a5\u5e9f\u7c7b\u578b\u51fa\u9519"

    .line 264
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->scrappedTypeMap:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 268
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->scrappedTypeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 269
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->scrappedTypeList:Ljava/util/List;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->scrappedTypeMap:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 270
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->scrappedTypeList:Ljava/util/List;

    const/4 v1, 0x0

    const-string v2, "\u8bf7\u9009\u62e9"

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 271
    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 273
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 274
    invoke-interface {p1, v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
