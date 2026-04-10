.class public Lcom/ayma/commonerp/bean/Sell12306Bean;
.super Ljava/lang/Object;
.source "Sell12306Bean.java"

# interfaces
.implements Lcom/ayma/commonerp/behavior/ComparatorBehavior;


# instance fields
.field private count:D

.field private goodsCode:Ljava/lang/String;

.field private goodsId:Ljava/lang/String;

.field private goodsName:Ljava/lang/String;

.field private isSelect:Z

.field private qtySum:D

.field private salePriceSum:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/ayma/commonerp/bean/Sell12306Bean;->isSelect:Z

    return-void
.end method


# virtual methods
.method public getComparatorAmount()D
    .locals 2

    .line 122
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/Sell12306Bean;->salePriceSum:D

    return-wide v0
.end method

.method public getComparatorGoodsCode()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/ayma/commonerp/bean/Sell12306Bean;->goodsCode:Ljava/lang/String;

    return-object v0
.end method

.method public getComparatorGoodsName()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/ayma/commonerp/bean/Sell12306Bean;->goodsName:Ljava/lang/String;

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

    .line 117
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/Sell12306Bean;->count:D

    return-wide v0
.end method

.method public getComparatorQty()D
    .locals 2

    .line 112
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/Sell12306Bean;->qtySum:D

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

.method public getCount()D
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/Sell12306Bean;->count:D

    return-wide v0
.end method

.method public getGoodsCode()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/ayma/commonerp/bean/Sell12306Bean;->goodsCode:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsId()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/ayma/commonerp/bean/Sell12306Bean;->goodsId:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/ayma/commonerp/bean/Sell12306Bean;->goodsName:Ljava/lang/String;

    return-object v0
.end method

.method public getQtySum()D
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/Sell12306Bean;->qtySum:D

    return-wide v0
.end method

.method public getSalePriceSum()D
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/Sell12306Bean;->salePriceSum:D

    return-wide v0
.end method

.method public isSelect()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/ayma/commonerp/bean/Sell12306Bean;->isSelect:Z

    return v0
.end method

.method public setCount(D)V
    .locals 0

    .line 63
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/Sell12306Bean;->count:D

    return-void
.end method

.method public setGoodsCode(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/ayma/commonerp/bean/Sell12306Bean;->goodsCode:Ljava/lang/String;

    return-void
.end method

.method public setGoodsId(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/ayma/commonerp/bean/Sell12306Bean;->goodsId:Ljava/lang/String;

    return-void
.end method

.method public setGoodsName(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/ayma/commonerp/bean/Sell12306Bean;->goodsName:Ljava/lang/String;

    return-void
.end method

.method public setQtySum(D)V
    .locals 0

    .line 71
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/Sell12306Bean;->qtySum:D

    return-void
.end method

.method public setSalePriceSum(D)V
    .locals 0

    .line 79
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/Sell12306Bean;->salePriceSum:D

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/ayma/commonerp/bean/Sell12306Bean;->isSelect:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sell12306Bean{goodsId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ayma/commonerp/bean/Sell12306Bean;->goodsId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", goodsCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/Sell12306Bean;->goodsCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", goodsName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/Sell12306Bean;->goodsName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ayma/commonerp/bean/Sell12306Bean;->count:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", qtySum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ayma/commonerp/bean/Sell12306Bean;->qtySum:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", salePriceSum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ayma/commonerp/bean/Sell12306Bean;->salePriceSum:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", isSelect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ayma/commonerp/bean/Sell12306Bean;->isSelect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
