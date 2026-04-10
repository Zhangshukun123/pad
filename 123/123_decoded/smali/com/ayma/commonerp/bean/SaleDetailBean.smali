.class public Lcom/ayma/commonerp/bean/SaleDetailBean;
.super Ljava/lang/Object;
.source "SaleDetailBean.java"

# interfaces
.implements Lcom/ayma/commonerp/behavior/ComparatorBehavior;


# instance fields
.field private barcode:Ljava/lang/String;

.field private checkRepeat:Ljava/lang/String;

.field private costPrice:Ljava/lang/String;

.field private costPrice0:Ljava/lang/String;

.field private costShuilv:Ljava/lang/String;

.field private createDate:Ljava/lang/String;

.field private deleteDate:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private flag1:Ljava/lang/String;

.field private flag10:Ljava/lang/String;

.field private flag2:Ljava/lang/String;

.field private flag3:Ljava/lang/String;

.field private flag4:Ljava/lang/String;

.field private flag5:Ljava/lang/String;

.field private flag6:Ljava/lang/String;

.field private flag7:Ljava/lang/String;

.field private flag8:Ljava/lang/String;

.field private flag9:Ljava/lang/String;

.field private goodsCode:Ljava/lang/String;

.field private goodsId:Ljava/lang/String;

.field private goodsName:Ljava/lang/String;

.field private goodsOption:Ljava/lang/String;

.field private lastModifyDate:Ljava/lang/String;

.field private lineOrderDId:Ljava/lang/String;

.field private lineOrderId:Ljava/lang/String;

.field private orderNo:Ljava/lang/String;

.field private paymentType:Ljava/lang/String;

.field private prefrentialAmount:D

.field private qty:D

.field private salePriceReal:D

.field private salePriceSum:Ljava/lang/String;

.field private salePriceSumOld:Ljava/lang/String;

.field private saleType:Ljava/lang/String;

.field private saleUploadDate:Ljava/lang/String;

.field private salesPrice:Ljava/lang/String;

.field private salesPrice0:Ljava/lang/String;

.field private salesShuilv:Ljava/lang/String;

.field private scanDate:Ljava/lang/String;

.field private sortOrder:Ljava/lang/String;

.field private tradeType:Ljava/lang/String;

.field private uploadDate:J

.field private validFlag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBarcode()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->barcode:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckRepeat()Ljava/lang/String;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->checkRepeat:Ljava/lang/String;

    return-object v0
.end method

.method public getComparatorAmount()D
    .locals 4

    .line 464
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->salePriceReal:D

    iget-wide v2, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->qty:D

    invoke-static {v0, v1, v2, v3}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getComparatorGoodsCode()Ljava/lang/String;
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->goodsCode:Ljava/lang/String;

    return-object v0
.end method

.method public getComparatorGoodsName()Ljava/lang/String;
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->goodsName:Ljava/lang/String;

    return-object v0
.end method

.method public getComparatorOrderType()Ljava/lang/String;
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->tradeType:Ljava/lang/String;

    return-object v0
.end method

.method public getComparatorPayType()Ljava/lang/String;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->paymentType:Ljava/lang/String;

    return-object v0
.end method

.method public getComparatorPrice()D
    .locals 2

    .line 459
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->salePriceReal:D

    return-wide v0
.end method

.method public getComparatorQty()D
    .locals 2

    .line 454
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->qty:D

    return-wide v0
.end method

.method public getComparatorSellTime()Ljava/lang/String;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->saleUploadDate:Ljava/lang/String;

    return-object v0
.end method

.method public getComparatorSellType()Ljava/lang/String;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->saleType:Ljava/lang/String;

    return-object v0
.end method

.method public getCostPrice()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->costPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getCostPrice0()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->costPrice0:Ljava/lang/String;

    return-object v0
.end method

.method public getCostShuilv()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->costShuilv:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateDate()Ljava/lang/String;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->createDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteDate()Ljava/lang/String;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->deleteDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag1()Ljava/lang/String;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->flag1:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag10()Ljava/lang/String;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->flag10:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag2()Ljava/lang/String;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->flag2:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag3()Ljava/lang/String;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->flag3:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag4()Ljava/lang/String;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->flag4:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag5()Ljava/lang/String;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->flag5:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag6()Ljava/lang/String;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->flag6:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag7()Ljava/lang/String;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->flag7:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag8()Ljava/lang/String;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->flag8:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag9()Ljava/lang/String;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->flag9:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsCode()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->goodsCode:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsId()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->goodsId:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsName()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->goodsName:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsOption()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->goodsOption:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifyDate()Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->lastModifyDate:Ljava/lang/String;

    return-object v0
.end method

.method public getLineOrderDId()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->lineOrderDId:Ljava/lang/String;

    return-object v0
.end method

.method public getLineOrderId()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->lineOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderNo()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->orderNo:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentType()Ljava/lang/String;
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->paymentType:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefrentialAmount()D
    .locals 2

    .line 102
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->prefrentialAmount:D

    return-wide v0
.end method

.method public getQty()D
    .locals 2

    .line 182
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->qty:D

    return-wide v0
.end method

.method public getSalePriceReal()D
    .locals 2

    .line 238
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->salePriceReal:D

    return-wide v0
.end method

.method public getSalePriceSum()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->salePriceSum:Ljava/lang/String;

    return-object v0
.end method

.method public getSalePriceSumOld()Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->salePriceSumOld:Ljava/lang/String;

    return-object v0
.end method

.method public getSaleType()Ljava/lang/String;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->saleType:Ljava/lang/String;

    return-object v0
.end method

.method public getSaleUploadDate()Ljava/lang/String;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->saleUploadDate:Ljava/lang/String;

    return-object v0
.end method

.method public getSalesPrice()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->salesPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getSalesPrice0()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->salesPrice0:Ljava/lang/String;

    return-object v0
.end method

.method public getSalesShuilv()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->salesShuilv:Ljava/lang/String;

    return-object v0
.end method

.method public getScanDate()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->scanDate:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->sortOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getTradeType()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->tradeType:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadDate()J
    .locals 2

    .line 318
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->uploadDate:J

    return-wide v0
.end method

.method public getValidFlag()Ljava/lang/String;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->validFlag:Ljava/lang/String;

    return-object v0
.end method

.method public setBarcode(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->barcode:Ljava/lang/String;

    return-void
.end method

.method public setCheckRepeat(Ljava/lang/String;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->checkRepeat:Ljava/lang/String;

    return-void
.end method

.method public setCostPrice(Ljava/lang/String;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->costPrice:Ljava/lang/String;

    return-void
.end method

.method public setCostPrice0(Ljava/lang/String;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->costPrice0:Ljava/lang/String;

    return-void
.end method

.method public setCostShuilv(Ljava/lang/String;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->costShuilv:Ljava/lang/String;

    return-void
.end method

.method public setCreateDate(Ljava/lang/String;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->createDate:Ljava/lang/String;

    return-void
.end method

.method public setDeleteDate(Ljava/lang/String;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->deleteDate:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setFlag1(Ljava/lang/String;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->flag1:Ljava/lang/String;

    return-void
.end method

.method public setFlag10(Ljava/lang/String;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->flag10:Ljava/lang/String;

    return-void
.end method

.method public setFlag2(Ljava/lang/String;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->flag2:Ljava/lang/String;

    return-void
.end method

.method public setFlag3(Ljava/lang/String;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->flag3:Ljava/lang/String;

    return-void
.end method

.method public setFlag4(Ljava/lang/String;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->flag4:Ljava/lang/String;

    return-void
.end method

.method public setFlag5(Ljava/lang/String;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->flag5:Ljava/lang/String;

    return-void
.end method

.method public setFlag6(Ljava/lang/String;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->flag6:Ljava/lang/String;

    return-void
.end method

.method public setFlag7(Ljava/lang/String;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->flag7:Ljava/lang/String;

    return-void
.end method

.method public setFlag8(Ljava/lang/String;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->flag8:Ljava/lang/String;

    return-void
.end method

.method public setFlag9(Ljava/lang/String;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->flag9:Ljava/lang/String;

    return-void
.end method

.method public setGoodsCode(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->goodsCode:Ljava/lang/String;

    return-void
.end method

.method public setGoodsId(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->goodsId:Ljava/lang/String;

    return-void
.end method

.method public setGoodsName(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->goodsName:Ljava/lang/String;

    return-void
.end method

.method public setGoodsOption(Ljava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->goodsOption:Ljava/lang/String;

    return-void
.end method

.method public setLastModifyDate(Ljava/lang/String;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->lastModifyDate:Ljava/lang/String;

    return-void
.end method

.method public setLineOrderDId(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->lineOrderDId:Ljava/lang/String;

    return-void
.end method

.method public setLineOrderId(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->lineOrderId:Ljava/lang/String;

    return-void
.end method

.method public setOrderNo(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->orderNo:Ljava/lang/String;

    return-void
.end method

.method public setPaymentType(Ljava/lang/String;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->paymentType:Ljava/lang/String;

    return-void
.end method

.method public setPrefrentialAmount(D)V
    .locals 0

    .line 106
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->prefrentialAmount:D

    return-void
.end method

.method public setQty(D)V
    .locals 0

    .line 186
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->qty:D

    return-void
.end method

.method public setSalePriceReal(D)V
    .locals 0

    .line 242
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->salePriceReal:D

    return-void
.end method

.method public setSalePriceSum(Ljava/lang/String;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->salePriceSum:Ljava/lang/String;

    return-void
.end method

.method public setSalePriceSumOld(Ljava/lang/String;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->salePriceSumOld:Ljava/lang/String;

    return-void
.end method

.method public setSaleType(Ljava/lang/String;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->saleType:Ljava/lang/String;

    return-void
.end method

.method public setSaleUploadDate(Ljava/lang/String;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->saleUploadDate:Ljava/lang/String;

    return-void
.end method

.method public setSalesPrice(Ljava/lang/String;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->salesPrice:Ljava/lang/String;

    return-void
.end method

.method public setSalesPrice0(Ljava/lang/String;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->salesPrice0:Ljava/lang/String;

    return-void
.end method

.method public setSalesShuilv(Ljava/lang/String;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->salesShuilv:Ljava/lang/String;

    return-void
.end method

.method public setScanDate(Ljava/lang/String;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->scanDate:Ljava/lang/String;

    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->sortOrder:Ljava/lang/String;

    return-void
.end method

.method public setTradeType(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->tradeType:Ljava/lang/String;

    return-void
.end method

.method public setUploadDate(J)V
    .locals 0

    .line 322
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->uploadDate:J

    return-void
.end method

.method public setValidFlag(Ljava/lang/String;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SaleDetailBean;->validFlag:Ljava/lang/String;

    return-void
.end method
