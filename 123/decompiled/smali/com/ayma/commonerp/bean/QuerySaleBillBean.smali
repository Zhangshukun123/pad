.class public Lcom/ayma/commonerp/bean/QuerySaleBillBean;
.super Ljava/lang/Object;
.source "QuerySaleBillBean.java"


# instance fields
.field private foreignQty:D

.field private goodsCode:Ljava/lang/String;

.field private goodsName:Ljava/lang/String;

.field private internalQty:D

.field private loseQty:D

.field private onlineQty:D

.field private receiveQty:D

.field private returnInQty:D

.field private returnOutQty:D

.field private returnQty:D

.field private salePrice:D

.field private scrapQty:D

.field private supplyQty:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDifference()D
    .locals 4

    .line 129
    invoke-virtual {p0}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getInAllQty()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getOutAllQty()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/ayma/base/util/ArithUtil;->sub(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getForeignQty()D
    .locals 2

    .line 101
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->foreignQty:D

    return-wide v0
.end method

.method public getGoodsCode()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->goodsCode:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->goodsName:Ljava/lang/String;

    return-object v0
.end method

.method public getInAllQty()D
    .locals 4

    .line 133
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->receiveQty:D

    iget-wide v2, p0, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->supplyQty:D

    invoke-static {v0, v1, v2, v3}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getInternalQty()D
    .locals 2

    .line 109
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->internalQty:D

    return-wide v0
.end method

.method public getLoseQty()D
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->loseQty:D

    return-wide v0
.end method

.method public getOnlineQty()D
    .locals 2

    .line 117
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->onlineQty:D

    return-wide v0
.end method

.method public getOutAllQty()D
    .locals 12

    .line 137
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->returnQty:D

    iget-wide v2, p0, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->scrapQty:D

    iget-wide v4, p0, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->loseQty:D

    iget-wide v6, p0, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->foreignQty:D

    iget-wide v8, p0, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->internalQty:D

    iget-wide v10, p0, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->onlineQty:D

    .line 140
    invoke-static {v8, v9, v10, v11}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v8

    .line 139
    invoke-static {v6, v7, v8, v9}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v6

    .line 138
    invoke-static {v4, v5, v6, v7}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v2

    .line 137
    invoke-static {v0, v1, v2, v3}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getReceiveQty()D
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->receiveQty:D

    return-wide v0
.end method

.method public getReturnInQty()D
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->returnInQty:D

    return-wide v0
.end method

.method public getReturnOutQty()D
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->returnOutQty:D

    return-wide v0
.end method

.method public getReturnQty()D
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->returnQty:D

    return-wide v0
.end method

.method public getSalePrice()D
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->salePrice:D

    return-wide v0
.end method

.method public getScrapQty()D
    .locals 2

    .line 85
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->scrapQty:D

    return-wide v0
.end method

.method public getSupplyQty()D
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->supplyQty:D

    return-wide v0
.end method

.method public isCorrect()Z
    .locals 5

    .line 125
    invoke-virtual {p0}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getInAllQty()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getOutAllQty()D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setForeignQty(D)V
    .locals 0

    .line 105
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->foreignQty:D

    return-void
.end method

.method public setGoodsCode(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->goodsCode:Ljava/lang/String;

    return-void
.end method

.method public setGoodsName(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->goodsName:Ljava/lang/String;

    return-void
.end method

.method public setInternalQty(D)V
    .locals 0

    .line 113
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->internalQty:D

    return-void
.end method

.method public setLoseQty(D)V
    .locals 0

    .line 97
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->loseQty:D

    return-void
.end method

.method public setOnlineQty(D)V
    .locals 0

    .line 121
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->onlineQty:D

    return-void
.end method

.method public setReceiveQty(D)V
    .locals 0

    .line 65
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->receiveQty:D

    return-void
.end method

.method public setReturnInQty(D)V
    .locals 0

    .line 25
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->returnInQty:D

    return-void
.end method

.method public setReturnOutQty(D)V
    .locals 0

    .line 33
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->returnOutQty:D

    return-void
.end method

.method public setReturnQty(D)V
    .locals 0

    .line 81
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->returnQty:D

    return-void
.end method

.method public setSalePrice(D)V
    .locals 0

    .line 57
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->salePrice:D

    return-void
.end method

.method public setScrapQty(D)V
    .locals 0

    .line 89
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->scrapQty:D

    return-void
.end method

.method public setSupplyQty(D)V
    .locals 0

    .line 73
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->supplyQty:D

    return-void
.end method
