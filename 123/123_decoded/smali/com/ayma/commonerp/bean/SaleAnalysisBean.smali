.class public Lcom/ayma/commonerp/bean/SaleAnalysisBean;
.super Ljava/lang/Object;
.source "SaleAnalysisBean.java"

# interfaces
.implements Lcom/ayma/commonerp/behavior/ComparatorBehavior;


# instance fields
.field private fieldOutQty:D

.field private goodsCode:Ljava/lang/String;

.field private goodsName:Ljava/lang/String;

.field private lostTeamQty:D

.field private outQty:D

.field private returnTeamQty:D

.field private saleDataQty:D

.field private saleDataQty12306:D

.field private salePrice:D

.field private scrapTeamQty:D

.field private teamHandoverQty:D

.field private teamHandoverToQty:D

.field private teamNumberQty:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllInQty()D
    .locals 6

    .line 211
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->fieldOutQty:D

    iget-wide v2, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->teamHandoverQty:D

    iget-wide v4, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->outQty:D

    invoke-static {v2, v3, v4, v5}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getAllOutQty()D
    .locals 12

    .line 215
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->returnTeamQty:D

    iget-wide v2, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->scrapTeamQty:D

    iget-wide v4, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->lostTeamQty:D

    iget-wide v6, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->saleDataQty:D

    iget-wide v8, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->saleDataQty12306:D

    iget-wide v10, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->teamHandoverToQty:D

    .line 219
    invoke-static {v8, v9, v10, v11}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v8

    .line 218
    invoke-static {v6, v7, v8, v9}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v6

    .line 217
    invoke-static {v4, v5, v6, v7}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v4

    .line 216
    invoke-static {v2, v3, v4, v5}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v2

    .line 215
    invoke-static {v0, v1, v2, v3}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getComparatorAmount()D
    .locals 2

    .line 180
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->teamNumberQty:D

    return-wide v0
.end method

.method public getComparatorGoodsCode()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->goodsCode:Ljava/lang/String;

    return-object v0
.end method

.method public getComparatorGoodsName()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->goodsName:Ljava/lang/String;

    return-object v0
.end method

.method public getComparatorOrderType()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getComparatorPayType()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getComparatorPrice()D
    .locals 2

    .line 175
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->saleDataQty:D

    return-wide v0
.end method

.method public getComparatorQty()D
    .locals 2

    .line 170
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->fieldOutQty:D

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

.method public getDifference()D
    .locals 4

    .line 207
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->teamNumberQty:D

    invoke-virtual {p0}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getInAndOutDifference()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/ayma/base/util/ArithUtil;->sub(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFieldOutQty()D
    .locals 2

    .line 86
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->fieldOutQty:D

    return-wide v0
.end method

.method public getGoodsCode()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->goodsCode:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsName()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->goodsName:Ljava/lang/String;

    return-object v0
.end method

.method public getInAndOutDifference()D
    .locals 4

    .line 203
    invoke-virtual {p0}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getAllInQty()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getAllOutQty()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/ayma/base/util/ArithUtil;->sub(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLostTeamQty()D
    .locals 2

    .line 118
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->lostTeamQty:D

    return-wide v0
.end method

.method public getOutQty()D
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->outQty:D

    return-wide v0
.end method

.method public getReturnTeamQty()D
    .locals 2

    .line 102
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->returnTeamQty:D

    return-wide v0
.end method

.method public getSaleDataQty()D
    .locals 2

    .line 94
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->saleDataQty:D

    return-wide v0
.end method

.method public getSaleDataQty12306()D
    .locals 2

    .line 142
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->saleDataQty12306:D

    return-wide v0
.end method

.method public getSalePrice()D
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->salePrice:D

    return-wide v0
.end method

.method public getScrapTeamQty()D
    .locals 2

    .line 110
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->scrapTeamQty:D

    return-wide v0
.end method

.method public getTeamHandoverQty()D
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->teamHandoverQty:D

    return-wide v0
.end method

.method public getTeamHandoverToQty()D
    .locals 2

    .line 126
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->teamHandoverToQty:D

    return-wide v0
.end method

.method public getTeamNumberQty()D
    .locals 2

    .line 134
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->teamNumberQty:D

    return-wide v0
.end method

.method public isCorrect()Z
    .locals 5

    .line 199
    invoke-virtual {p0}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getInAndOutDifference()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->teamNumberQty:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setFieldOutQty(D)V
    .locals 0

    .line 90
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->fieldOutQty:D

    return-void
.end method

.method public setGoodsCode(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->goodsCode:Ljava/lang/String;

    return-void
.end method

.method public setGoodsName(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->goodsName:Ljava/lang/String;

    return-void
.end method

.method public setLostTeamQty(D)V
    .locals 0

    .line 122
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->lostTeamQty:D

    return-void
.end method

.method public setOutQty(D)V
    .locals 0

    .line 74
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->outQty:D

    return-void
.end method

.method public setReturnTeamQty(D)V
    .locals 0

    .line 106
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->returnTeamQty:D

    return-void
.end method

.method public setSaleDataQty(D)V
    .locals 0

    .line 98
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->saleDataQty:D

    return-void
.end method

.method public setSaleDataQty12306(D)V
    .locals 0

    .line 146
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->saleDataQty12306:D

    return-void
.end method

.method public setSalePrice(D)V
    .locals 0

    .line 50
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->salePrice:D

    return-void
.end method

.method public setScrapTeamQty(D)V
    .locals 0

    .line 114
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->scrapTeamQty:D

    return-void
.end method

.method public setTeamHandoverQty(D)V
    .locals 0

    .line 82
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->teamHandoverQty:D

    return-void
.end method

.method public setTeamHandoverToQty(D)V
    .locals 0

    .line 130
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->teamHandoverToQty:D

    return-void
.end method

.method public setTeamNumberQty(D)V
    .locals 0

    .line 138
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->teamNumberQty:D

    return-void
.end method

.method public setTeamNumberQty(I)V
    .locals 2

    int-to-double v0, p1

    .line 150
    iput-wide v0, p0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->teamNumberQty:D

    return-void
.end method
