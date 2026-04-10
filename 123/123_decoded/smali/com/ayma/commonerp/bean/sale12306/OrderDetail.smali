.class public Lcom/ayma/commonerp/bean/sale12306/OrderDetail;
.super Ljava/lang/Object;
.source "OrderDetail.java"


# instance fields
.field private goodsCode:Ljava/lang/String;

.field private goodsId:Ljava/lang/String;

.field private goodsName:Ljava/lang/String;

.field private qty:I

.field private salePriceReal:Ljava/lang/String;

.field private salePriceSum:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGoodsCode()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/ayma/commonerp/bean/sale12306/OrderDetail;->goodsCode:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsId()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/ayma/commonerp/bean/sale12306/OrderDetail;->goodsId:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/ayma/commonerp/bean/sale12306/OrderDetail;->goodsName:Ljava/lang/String;

    return-object v0
.end method

.method public getQty()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/ayma/commonerp/bean/sale12306/OrderDetail;->qty:I

    return v0
.end method

.method public getSalePriceReal()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/ayma/commonerp/bean/sale12306/OrderDetail;->salePriceReal:Ljava/lang/String;

    return-object v0
.end method

.method public getSalePriceSum()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/ayma/commonerp/bean/sale12306/OrderDetail;->salePriceSum:Ljava/lang/String;

    return-object v0
.end method

.method public setGoodsCode(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/ayma/commonerp/bean/sale12306/OrderDetail;->goodsCode:Ljava/lang/String;

    return-void
.end method

.method public setGoodsId(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/ayma/commonerp/bean/sale12306/OrderDetail;->goodsId:Ljava/lang/String;

    return-void
.end method

.method public setGoodsName(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/ayma/commonerp/bean/sale12306/OrderDetail;->goodsName:Ljava/lang/String;

    return-void
.end method

.method public setQty(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/ayma/commonerp/bean/sale12306/OrderDetail;->qty:I

    return-void
.end method

.method public setSalePriceReal(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/ayma/commonerp/bean/sale12306/OrderDetail;->salePriceReal:Ljava/lang/String;

    return-void
.end method

.method public setSalePriceSum(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/ayma/commonerp/bean/sale12306/OrderDetail;->salePriceSum:Ljava/lang/String;

    return-void
.end method
