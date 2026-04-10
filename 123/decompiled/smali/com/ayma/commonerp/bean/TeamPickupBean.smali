.class public Lcom/ayma/commonerp/bean/TeamPickupBean;
.super Lorg/litepal/crud/LitePalSupport;
.source "TeamPickupBean.java"

# interfaces
.implements Lcom/ayma/commonerp/behavior/ComparatorBehavior;


# instance fields
.field private fieldOutQty:D

.field private goodsCode:Ljava/lang/String;

.field private goodsName:Ljava/lang/String;

.field private isSelect:Z

.field private outDay:Ljava/lang/String;

.field private outQty:D

.field private salesPrice:D

.field private sumQty:D

.field private teamHandoverQty:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public getComparatorAmount()D
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/TeamPickupBean;->fieldOutQty:D

    return-wide v0
.end method

.method public getComparatorGoodsCode()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/ayma/commonerp/bean/TeamPickupBean;->goodsCode:Ljava/lang/String;

    return-object v0
.end method

.method public getComparatorGoodsName()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/ayma/commonerp/bean/TeamPickupBean;->goodsName:Ljava/lang/String;

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

    .line 62
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/TeamPickupBean;->outQty:D

    return-wide v0
.end method

.method public getComparatorQty()D
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/TeamPickupBean;->sumQty:D

    return-wide v0
.end method

.method public getComparatorSellTime()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getComparatorSellType()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getFieldOutQty()D
    .locals 2

    .line 118
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/TeamPickupBean;->fieldOutQty:D

    return-wide v0
.end method

.method public getGoodsCode()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/ayma/commonerp/bean/TeamPickupBean;->goodsCode:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsName()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/ayma/commonerp/bean/TeamPickupBean;->goodsName:Ljava/lang/String;

    return-object v0
.end method

.method public getOutDay()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/ayma/commonerp/bean/TeamPickupBean;->outDay:Ljava/lang/String;

    return-object v0
.end method

.method public getOutQty()D
    .locals 2

    .line 102
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/TeamPickupBean;->outQty:D

    return-wide v0
.end method

.method public getSalesPrice()D
    .locals 2

    .line 126
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/TeamPickupBean;->salesPrice:D

    return-wide v0
.end method

.method public getSumQty()D
    .locals 2

    .line 134
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/TeamPickupBean;->sumQty:D

    return-wide v0
.end method

.method public getTeamHandoverQty()D
    .locals 2

    .line 110
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/TeamPickupBean;->teamHandoverQty:D

    return-wide v0
.end method

.method public isSelect()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/ayma/commonerp/bean/TeamPickupBean;->isSelect:Z

    return v0
.end method

.method public setFieldOutQty(I)V
    .locals 2

    int-to-double v0, p1

    .line 122
    iput-wide v0, p0, Lcom/ayma/commonerp/bean/TeamPickupBean;->fieldOutQty:D

    return-void
.end method

.method public setGoodsCode(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/ayma/commonerp/bean/TeamPickupBean;->goodsCode:Ljava/lang/String;

    return-void
.end method

.method public setGoodsName(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/ayma/commonerp/bean/TeamPickupBean;->goodsName:Ljava/lang/String;

    return-void
.end method

.method public setOutDay(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/ayma/commonerp/bean/TeamPickupBean;->outDay:Ljava/lang/String;

    return-void
.end method

.method public setOutQty(I)V
    .locals 2

    int-to-double v0, p1

    .line 106
    iput-wide v0, p0, Lcom/ayma/commonerp/bean/TeamPickupBean;->outQty:D

    return-void
.end method

.method public setSalesPrice(D)V
    .locals 0

    .line 130
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/TeamPickupBean;->salesPrice:D

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    .line 154
    iput-boolean p1, p0, Lcom/ayma/commonerp/bean/TeamPickupBean;->isSelect:Z

    return-void
.end method

.method public setSumQty(I)V
    .locals 2

    int-to-double v0, p1

    .line 138
    iput-wide v0, p0, Lcom/ayma/commonerp/bean/TeamPickupBean;->sumQty:D

    return-void
.end method

.method public setTeamHandoverQty(I)V
    .locals 2

    int-to-double v0, p1

    .line 114
    iput-wide v0, p0, Lcom/ayma/commonerp/bean/TeamPickupBean;->teamHandoverQty:D

    return-void
.end method
