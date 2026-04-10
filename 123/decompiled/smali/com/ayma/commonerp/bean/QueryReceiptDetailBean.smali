.class public Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;
.super Ljava/lang/Object;
.source "QueryReceiptDetailBean.java"


# instance fields
.field private billNo:Ljava/lang/String;

.field private birthDay:Ljava/lang/String;

.field private createDate:Ljava/lang/String;

.field private goodsCode:Ljava/lang/String;

.field private goodsName:Ljava/lang/String;

.field private isSelected:Z

.field private qty:D

.field private salesPrice:D

.field private salesPriceTotal:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBillNo()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;->billNo:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthDay()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;->birthDay:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateDate()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;->createDate:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsCode()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;->goodsCode:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;->goodsName:Ljava/lang/String;

    return-object v0
.end method

.method public getQty()D
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;->qty:D

    return-wide v0
.end method

.method public getSalesPrice()D
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;->salesPrice:D

    return-wide v0
.end method

.method public getSalesPriceTotal()D
    .locals 2

    .line 84
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;->salesPriceTotal:D

    return-wide v0
.end method

.method public isSelected()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;->isSelected:Z

    return v0
.end method

.method public setBillNo(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;->billNo:Ljava/lang/String;

    return-void
.end method

.method public setBirthDay(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;->birthDay:Ljava/lang/String;

    return-void
.end method

.method public setCreateDate(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;->createDate:Ljava/lang/String;

    return-void
.end method

.method public setGoodsCode(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;->goodsCode:Ljava/lang/String;

    return-void
.end method

.method public setGoodsName(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;->goodsName:Ljava/lang/String;

    return-void
.end method

.method public setQty(D)V
    .locals 0

    .line 72
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;->qty:D

    return-void
.end method

.method public setSalesPrice(D)V
    .locals 0

    .line 80
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;->salesPrice:D

    return-void
.end method

.method public setSalesPriceTotal(D)V
    .locals 0

    .line 88
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;->salesPriceTotal:D

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;->isSelected:Z

    return-void
.end method
