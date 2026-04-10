.class public Lcom/ayma/commonerp/bean/SaleDataBean;
.super Ljava/lang/Object;
.source "SaleDataBean.java"

# interfaces
.implements Lcom/ayma/commonerp/behavior/ComparatorBehavior;


# instance fields
.field private goods_code:Ljava/lang/String;

.field private goods_name:Ljava/lang/String;

.field private p_goods_type_name:Ljava/lang/String;

.field private payment_type:Ljava/lang/String;

.field private qty:I

.field private sale_price_real:D

.field private sale_price_sum:D

.field private sale_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComparatorAmount()D
    .locals 2

    .line 120
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SaleDataBean;->sale_price_sum:D

    return-wide v0
.end method

.method public getComparatorGoodsCode()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDataBean;->goods_code:Ljava/lang/String;

    return-object v0
.end method

.method public getComparatorGoodsName()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDataBean;->goods_name:Ljava/lang/String;

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

    .line 115
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SaleDataBean;->sale_price_real:D

    return-wide v0
.end method

.method public getComparatorQty()D
    .locals 2

    .line 110
    iget v0, p0, Lcom/ayma/commonerp/bean/SaleDataBean;->qty:I

    int-to-double v0, v0

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

.method public getGoods_code()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDataBean;->goods_code:Ljava/lang/String;

    return-object v0
.end method

.method public getGoods_name()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDataBean;->goods_name:Ljava/lang/String;

    return-object v0
.end method

.method public getP_goods_type_name()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDataBean;->p_goods_type_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPayment_type()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDataBean;->payment_type:Ljava/lang/String;

    return-object v0
.end method

.method public getQty()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/ayma/commonerp/bean/SaleDataBean;->qty:I

    return v0
.end method

.method public getSale_price_real()D
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SaleDataBean;->sale_price_real:D

    return-wide v0
.end method

.method public getSale_price_sum()D
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SaleDataBean;->sale_price_sum:D

    return-wide v0
.end method

.method public getSale_type()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDataBean;->sale_type:Ljava/lang/String;

    return-object v0
.end method

.method public setGoods_code(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDataBean;->goods_code:Ljava/lang/String;

    return-void
.end method

.method public setGoods_name(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDataBean;->goods_name:Ljava/lang/String;

    return-void
.end method

.method public setP_goods_type_name(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDataBean;->p_goods_type_name:Ljava/lang/String;

    return-void
.end method

.method public setPayment_type(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDataBean;->payment_type:Ljava/lang/String;

    return-void
.end method

.method public setQty(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/ayma/commonerp/bean/SaleDataBean;->qty:I

    return-void
.end method

.method public setSale_price_real(D)V
    .locals 0

    .line 58
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/SaleDataBean;->sale_price_real:D

    return-void
.end method

.method public setSale_price_sum(D)V
    .locals 0

    .line 66
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/SaleDataBean;->sale_price_sum:D

    return-void
.end method

.method public setSale_type(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDataBean;->sale_type:Ljava/lang/String;

    return-void
.end method
