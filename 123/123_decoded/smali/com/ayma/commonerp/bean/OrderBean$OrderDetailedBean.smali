.class public Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;
.super Ljava/lang/Object;
.source "OrderBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/bean/OrderBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrderDetailedBean"
.end annotation


# instance fields
.field private productCode:Ljava/lang/String;

.field private productName:Ljava/lang/String;

.field private qty:I

.field private salePriceReal:D

.field private salePriceSum:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProductCode()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;->productCode:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getQty()I
    .locals 1

    .line 243
    iget v0, p0, Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;->qty:I

    return v0
.end method

.method public getSalePriceReal()D
    .locals 2

    .line 251
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;->salePriceReal:D

    return-wide v0
.end method

.method public getSalePriceSum()D
    .locals 2

    .line 259
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;->salePriceSum:D

    return-wide v0
.end method

.method public setProductCode(Ljava/lang/String;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;->productCode:Ljava/lang/String;

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;->productName:Ljava/lang/String;

    return-void
.end method

.method public setQty(I)V
    .locals 0

    .line 247
    iput p1, p0, Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;->qty:I

    return-void
.end method

.method public setSalePriceReal(D)V
    .locals 0

    .line 255
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;->salePriceReal:D

    return-void
.end method

.method public setSalePriceSum(D)V
    .locals 0

    .line 263
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;->salePriceSum:D

    return-void
.end method
