.class public Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;
.super Ljava/lang/Object;
.source "QueryReturnOrderDetailBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrderDetailsBean"
.end annotation


# instance fields
.field private barcode:Ljava/lang/String;

.field private goodsCode:Ljava/lang/String;

.field private goodsId:Ljava/lang/String;

.field private goodsName:Ljava/lang/String;

.field private lineOrderDId:Ljava/lang/String;

.field private qty:D

.field private salePriceReal:D

.field private salePriceSum:Ljava/lang/String;

.field private scanDate:Ljava/lang/String;

.field private supplierId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBarcode()Ljava/lang/String;
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;->barcode:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsCode()Ljava/lang/String;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;->goodsCode:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsId()Ljava/lang/String;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;->goodsId:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsName()Ljava/lang/String;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;->goodsName:Ljava/lang/String;

    return-object v0
.end method

.method public getLineOrderDId()Ljava/lang/String;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;->lineOrderDId:Ljava/lang/String;

    return-object v0
.end method

.method public getQty()D
    .locals 2

    .line 415
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;->qty:D

    return-wide v0
.end method

.method public getSalePriceReal()D
    .locals 2

    .line 431
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;->salePriceReal:D

    return-wide v0
.end method

.method public getSalePriceSum()Ljava/lang/String;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;->salePriceSum:Ljava/lang/String;

    return-object v0
.end method

.method public getScanDate()Ljava/lang/String;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;->scanDate:Ljava/lang/String;

    return-object v0
.end method

.method public getSupplierId()Ljava/lang/String;
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;->supplierId:Ljava/lang/String;

    return-object v0
.end method

.method public setBarcode(Ljava/lang/String;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;->barcode:Ljava/lang/String;

    return-void
.end method

.method public setGoodsCode(Ljava/lang/String;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;->goodsCode:Ljava/lang/String;

    return-void
.end method

.method public setGoodsId(Ljava/lang/String;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;->goodsId:Ljava/lang/String;

    return-void
.end method

.method public setGoodsName(Ljava/lang/String;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;->goodsName:Ljava/lang/String;

    return-void
.end method

.method public setLineOrderDId(Ljava/lang/String;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;->lineOrderDId:Ljava/lang/String;

    return-void
.end method

.method public setQty(D)V
    .locals 0

    .line 419
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;->qty:D

    return-void
.end method

.method public setSalePriceReal(D)V
    .locals 0

    .line 435
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;->salePriceReal:D

    return-void
.end method

.method public setSalePriceSum(Ljava/lang/String;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;->salePriceSum:Ljava/lang/String;

    return-void
.end method

.method public setScanDate(Ljava/lang/String;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;->scanDate:Ljava/lang/String;

    return-void
.end method

.method public setSupplierId(Ljava/lang/String;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;->supplierId:Ljava/lang/String;

    return-void
.end method
