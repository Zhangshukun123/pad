.class public Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;
.super Ljava/lang/Object;
.source "StockReceiptDetailBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/bean/StockReceiptDetailBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BillDetailDTO"
.end annotation


# instance fields
.field private actualQty:Ljava/lang/String;

.field private billDetailId:Ljava/lang/String;

.field private birthDay:Ljava/lang/String;

.field private goodsCode:Ljava/lang/String;

.field private goodsName:Ljava/lang/String;

.field private isSelect:Z

.field private qty:D

.field private totalPrice:D

.field private unitPrice:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;->isSelect:Z

    return-void
.end method


# virtual methods
.method public getActualQty()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;->actualQty:Ljava/lang/String;

    return-object v0
.end method

.method public getBillDetailId()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;->billDetailId:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthDay()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;->birthDay:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsCode()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;->goodsCode:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsName()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;->goodsName:Ljava/lang/String;

    return-object v0
.end method

.method public getQty()D
    .locals 2

    .line 112
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;->qty:D

    return-wide v0
.end method

.method public getTotalPrice()D
    .locals 2

    .line 168
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;->totalPrice:D

    return-wide v0
.end method

.method public getUnitPrice()D
    .locals 2

    .line 160
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;->unitPrice:D

    return-wide v0
.end method

.method public isSelect()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;->isSelect:Z

    return v0
.end method

.method public setActualQty(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;->actualQty:Ljava/lang/String;

    return-void
.end method

.method public setBillDetailId(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;->billDetailId:Ljava/lang/String;

    return-void
.end method

.method public setBirthDay(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;->birthDay:Ljava/lang/String;

    return-void
.end method

.method public setGoodsCode(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;->goodsCode:Ljava/lang/String;

    return-void
.end method

.method public setGoodsName(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;->goodsName:Ljava/lang/String;

    return-void
.end method

.method public setQty(D)V
    .locals 0

    .line 116
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;->qty:D

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;->isSelect:Z

    return-void
.end method

.method public setTotalPrice(D)V
    .locals 0

    .line 172
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;->totalPrice:D

    return-void
.end method

.method public setUnitPrice(D)V
    .locals 0

    .line 164
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;->unitPrice:D

    return-void
.end method
