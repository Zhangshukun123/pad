.class public Lcom/ayma/commonerp/bean/SellSelectGoodsBean;
.super Ljava/lang/Object;
.source "SellSelectGoodsBean.java"

# interfaces
.implements Lcom/ayma/commonerp/behavior/ComparatorBehavior;


# instance fields
.field private companyName:Ljava/lang/String;

.field private goodsBean:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

.field private stock:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCompanyName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellSelectGoodsBean;->companyName:Ljava/lang/String;

    return-object v0
.end method

.method public getComparatorAmount()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getComparatorGoodsCode()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellSelectGoodsBean;->goodsBean:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComparatorGoodsName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellSelectGoodsBean;->goodsBean:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComparatorOrderType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getComparatorPayType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getComparatorPrice()D
    .locals 2

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellSelectGoodsBean;->goodsBean:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsPrice()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSalesPrice()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getComparatorQty()D
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SellSelectGoodsBean;->stock:D

    return-wide v0
.end method

.method public getComparatorSellTime()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getComparatorSellType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGoodsBean()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellSelectGoodsBean;->goodsBean:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    return-object v0
.end method

.method public getStock()D
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SellSelectGoodsBean;->stock:D

    return-wide v0
.end method

.method public setCompanyName(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellSelectGoodsBean;->companyName:Ljava/lang/String;

    return-void
.end method

.method public setGoodsBean(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellSelectGoodsBean;->goodsBean:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    return-void
.end method

.method public setStock(D)V
    .locals 0

    .line 15
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/SellSelectGoodsBean;->stock:D

    return-void
.end method
