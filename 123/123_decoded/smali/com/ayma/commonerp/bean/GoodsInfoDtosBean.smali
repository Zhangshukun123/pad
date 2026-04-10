.class public Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;
.super Lorg/litepal/crud/LitePalSupport;
.source "GoodsInfoDtosBean.java"

# interfaces
.implements Lcom/ayma/commonerp/behavior/InfoDetailBehavior;


# instance fields
.field private barcode:Ljava/lang/String;

.field private birthday:Ljava/lang/String;

.field private company2Code:Ljava/lang/String;

.field private company2Id:Ljava/lang/String;

.field private company2Name:Ljava/lang/String;

.field private companyCode:Ljava/lang/String;

.field private companyId:Ljava/lang/String;

.field private companyName:Ljava/lang/String;

.field private costPrice:D

.field private costPrice0:D

.field private costShuilv:D

.field private factory:Ljava/lang/String;

.field private goodsBarcodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/BarcodeBean;",
            ">;"
        }
    .end annotation
.end field

.field private goodsBigTypeName:Ljava/lang/String;

.field private goodsCode:Ljava/lang/String;

.field private goodsId:Ljava/lang/String;

.field private goodsName:Ljava/lang/String;

.field private goodsPrice:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsPriceBean;",
            ">;"
        }
    .end annotation
.end field

.field private goodsSmallTypeName:Ljava/lang/String;

.field private goodsState:Ljava/lang/String;

.field private goodsTypeId:Ljava/lang/String;

.field private gsortOrder:I

.field private hotSale:Ljava/lang/String;

.field private isSelect:Z

.field private isTransfer:Ljava/lang/String;

.field private lableLocation:Ljava/lang/String;

.field private lineLockType:Ljava/lang/String;

.field private lineLockValue:D

.field private packQty:I

.field private packStyle:Ljava/lang/String;

.field private packUnit:Ljava/lang/String;

.field private pgoodsTypeId:Ljava/lang/String;

.field private qty:D

.field private saleChannel:Ljava/lang/String;

.field private searchValue:Ljava/lang/String;

.field private shellife:I

.field private shellifeWarn:I

.field private shellifeWarnType:Ljava/lang/String;

.field private sortOrder:Ljava/lang/String;

.field private startDay:Ljava/lang/String;

.field private stopDay:Ljava/lang/String;

.field private storeType:Ljava/lang/String;

.field private style:Ljava/lang/String;

.field private supplierId:Ljava/lang/String;

.field private suppliers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsSuppliers;",
            ">;"
        }
    .end annotation
.end field

.field private unit:Ljava/lang/String;

.field private validFlag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 113
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    const-string v0, ""

    .line 95
    iput-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->birthday:Ljava/lang/String;

    const/4 v0, 0x0

    .line 111
    iput v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->gsortOrder:I

    return-void
.end method


# virtual methods
.method public getBarcode()Ljava/lang/String;
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->barcode:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany2Code()Ljava/lang/String;
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->company2Code:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany2Id()Ljava/lang/String;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->company2Id:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany2Name()Ljava/lang/String;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->company2Name:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyCode()Ljava/lang/String;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->companyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyId()Ljava/lang/String;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->companyId:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyName()Ljava/lang/String;
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->companyName:Ljava/lang/String;

    return-object v0
.end method

.method public getCostPrice()D
    .locals 2

    .line 219
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->costPrice:D

    return-wide v0
.end method

.method public getCostPrice0()D
    .locals 2

    .line 203
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->costPrice0:D

    return-wide v0
.end method

.method public getCostShuilv()D
    .locals 2

    .line 211
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->costShuilv:D

    return-wide v0
.end method

.method public getFactory()Ljava/lang/String;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->factory:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsBarcodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/BarcodeBean;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsBarcodes:Ljava/util/List;

    return-object v0
.end method

.method public getGoodsBigTypeName()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsBigTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsCode()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsCode:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsId()Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsId:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsName()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsName:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsPrice()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsPriceBean;",
            ">;"
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsPrice:Ljava/util/List;

    return-object v0
.end method

.method public getGoodsSmallTypeName()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsSmallTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsState()Ljava/lang/String;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsState:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsTypeId()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public getGsortOrder()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->gsortOrder:I

    return v0
.end method

.method public getHotSale()Ljava/lang/String;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->hotSale:Ljava/lang/String;

    return-object v0
.end method

.method public getIsTransfer()Ljava/lang/String;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->isTransfer:Ljava/lang/String;

    return-object v0
.end method

.method public getLableLocation()Ljava/lang/String;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->lableLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getLineLockType()Ljava/lang/String;
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->lineLockType:Ljava/lang/String;

    return-object v0
.end method

.method public getLineLockValue()D
    .locals 2

    .line 379
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->lineLockValue:D

    return-wide v0
.end method

.method public getPackQty()I
    .locals 1

    .line 307
    iget v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->packQty:I

    return v0
.end method

.method public getPackStyle()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->packStyle:Ljava/lang/String;

    return-object v0
.end method

.method public getPackUnit()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->packUnit:Ljava/lang/String;

    return-object v0
.end method

.method public getPgoodsTypeId()Ljava/lang/String;
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->pgoodsTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public getQty()D
    .locals 2

    .line 171
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->qty:D

    return-wide v0
.end method

.method public getSaleChannel()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->saleChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchValue()Ljava/lang/String;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->searchValue:Ljava/lang/String;

    return-object v0
.end method

.method public getShellife()I
    .locals 1

    .line 315
    iget v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->shellife:I

    return v0
.end method

.method public getShellifeWarn()I
    .locals 1

    .line 331
    iget v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->shellifeWarn:I

    return v0
.end method

.method public getShellifeWarnType()Ljava/lang/String;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->shellifeWarnType:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->sortOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDay()Ljava/lang/String;
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->startDay:Ljava/lang/String;

    return-object v0
.end method

.method public getStopDay()Ljava/lang/String;
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->stopDay:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreType()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->storeType:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->style:Ljava/lang/String;

    return-object v0
.end method

.method public getSupplierId()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->supplierId:Ljava/lang/String;

    return-object v0
.end method

.method public getSuppliers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsSuppliers;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->suppliers:Ljava/util/List;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public getValidFlag()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->validFlag:Ljava/lang/String;

    return-object v0
.end method

.method public goodsBarCode()Ljava/lang/String;
    .locals 3

    .line 551
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->barcode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 552
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 555
    :cond_0
    invoke-static {}, Lcom/ayma/commonerp/litepal/LitepalUse;->getInstance()Lcom/ayma/commonerp/litepal/LitepalUse;

    move-result-object v0

    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryBarCodeListByGoodsId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 556
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 559
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 560
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/BarcodeBean;

    .line 561
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/BarcodeBean;->getBarcode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 563
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 564
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    return-object v1

    .line 566
    :cond_4
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->barcode:Ljava/lang/String;

    return-object v0
.end method

.method public goodsBigType()Ljava/lang/String;
    .locals 3

    .line 576
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsBigTypeName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 577
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->pgoodsTypeId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 580
    :cond_0
    invoke-static {}, Lcom/ayma/commonerp/litepal/LitepalUse;->getInstance()Lcom/ayma/commonerp/litepal/LitepalUse;

    move-result-object v0

    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->pgoodsTypeId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryBigTypeList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 581
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 584
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 585
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/BigGoodsTypesBean;

    .line 586
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/BigGoodsTypesBean;->getPgoodsTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 588
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 589
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    return-object v1

    .line 591
    :cond_4
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsBigTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public goodsBirthday()Ljava/lang/String;
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->birthday:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u672a\u77e5"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->birthday:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public goodsCode()Ljava/lang/String;
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsCode:Ljava/lang/String;

    return-object v0
.end method

.method public goodsCompany2Name()Ljava/lang/String;
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->company2Name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u672a\u77e5"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->company2Name:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public goodsFactory()Ljava/lang/String;
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->factory:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u672a\u77e5"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->factory:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public goodsName()Ljava/lang/String;
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsName:Ljava/lang/String;

    return-object v0
.end method

.method public goodsPriceValidityPeriod()Ljava/lang/String;
    .locals 10

    .line 650
    invoke-virtual {p0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsPrice()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 651
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 654
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "-"

    const-string v3, "\u672a\u77e5"

    const/4 v4, 0x1

    const-string v5, "?"

    if-ne v1, v4, :cond_4

    const/4 v1, 0x0

    .line 655
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    .line 656
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getStartDay()Ljava/lang/String;

    move-result-object v1

    .line 657
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getStopDay()Ljava/lang/String;

    move-result-object v0

    .line 658
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    .line 661
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, v5

    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v5, v0

    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 663
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 664
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    .line 665
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getStartDay()Ljava/lang/String;

    move-result-object v7

    .line 666
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getStopDay()Ljava/lang/String;

    move-result-object v8

    .line 667
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 668
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 670
    :cond_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v7, v5

    :cond_6
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v8, v5

    :cond_7
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v7, "("

    .line 672
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSaleType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 674
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 675
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    :goto_3
    const-string v0, ""

    return-object v0
.end method

.method public goodsSalePrice()Ljava/lang/String;
    .locals 5

    .line 640
    invoke-virtual {p0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsPrice()Ljava/util/List;

    move-result-object v0

    const-string v1, "\u672a\u77e5"

    if-eqz v0, :cond_2

    .line 641
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 644
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    .line 645
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSalesPrice()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSalesPrice()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public goodsSmallType()Ljava/lang/String;
    .locals 3

    .line 596
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsSmallTypeName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 597
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsTypeId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 600
    :cond_0
    invoke-static {}, Lcom/ayma/commonerp/litepal/LitepalUse;->getInstance()Lcom/ayma/commonerp/litepal/LitepalUse;

    move-result-object v0

    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsTypeId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/litepal/LitepalUse;->querySmallTypeList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 601
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 604
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 605
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;

    .line 606
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->getGoodsTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 608
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 609
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    return-object v1

    .line 611
    :cond_4
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsSmallTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public goodsSupplierName()Ljava/lang/String;
    .locals 8

    .line 681
    invoke-virtual {p0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getSuppliers()Ljava/util/List;

    move-result-object v0

    const-string v1, ","

    const-string v2, ")"

    const-string v3, "("

    if-eqz v0, :cond_5

    .line 682
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 698
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 699
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ayma/commonerp/bean/GoodsSuppliers;

    .line 700
    invoke-static {}, Lcom/ayma/commonerp/litepal/LitepalUse;->getInstance()Lcom/ayma/commonerp/litepal/LitepalUse;

    move-result-object v6

    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/GoodsSuppliers;->getSupplierId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/ayma/commonerp/litepal/LitepalUse;->querySupplierList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 701
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    .line 704
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ayma/commonerp/bean/SuppliersBean;

    .line 705
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/SuppliersBean;->getSupplierCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/SuppliersBean;->getSupplierName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 708
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 709
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 711
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 683
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->supplierId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v4, ""

    if-eqz v0, :cond_6

    return-object v4

    .line 686
    :cond_6
    invoke-static {}, Lcom/ayma/commonerp/litepal/LitepalUse;->getInstance()Lcom/ayma/commonerp/litepal/LitepalUse;

    move-result-object v0

    iget-object v5, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->supplierId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/ayma/commonerp/litepal/LitepalUse;->querySupplierList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 687
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_7

    goto :goto_4

    .line 690
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 691
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ayma/commonerp/bean/SuppliersBean;

    .line 692
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/SuppliersBean;->getSupplierCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/SuppliersBean;->getSupplierName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 694
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 695
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    :goto_4
    return-object v4
.end method

.method public goodsSupplierValidityPeriod()Ljava/lang/String;
    .locals 14

    .line 716
    invoke-virtual {p0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getSuppliers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ","

    const-string v3, ")"

    const-string v4, "("

    const-string v5, "-"

    const-string v6, "\u672a\u77e5"

    const/4 v7, 0x1

    const-string v8, "?"

    if-eqz v0, :cond_f

    .line 718
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_0

    goto/16 :goto_6

    .line 744
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 746
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v7, :cond_7

    .line 747
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/GoodsSuppliers;

    .line 748
    invoke-static {}, Lcom/ayma/commonerp/litepal/LitepalUse;->getInstance()Lcom/ayma/commonerp/litepal/LitepalUse;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsSuppliers;->getSupplierId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ayma/commonerp/litepal/LitepalUse;->querySupplierList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 749
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 752
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/SuppliersBean;

    .line 753
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/SuppliersBean;->getStartDay()Ljava/lang/String;

    move-result-object v10

    .line 754
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/SuppliersBean;->getStopDay()Ljava/lang/String;

    move-result-object v11

    .line 755
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 756
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 758
    :cond_2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    move-object v10, v8

    :cond_3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v11, v8

    :cond_4
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    :goto_1
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/SuppliersBean;->getSupplierName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 762
    :cond_5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v7

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 763
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    :goto_2
    return-object v6

    .line 766
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/GoodsSuppliers;

    .line 767
    invoke-static {}, Lcom/ayma/commonerp/litepal/LitepalUse;->getInstance()Lcom/ayma/commonerp/litepal/LitepalUse;

    move-result-object v10

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/GoodsSuppliers;->getSupplierId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/ayma/commonerp/litepal/LitepalUse;->querySupplierList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 768
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_9

    goto :goto_3

    .line 771
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ayma/commonerp/bean/SuppliersBean;

    .line 772
    invoke-virtual {v10}, Lcom/ayma/commonerp/bean/SuppliersBean;->getStartDay()Ljava/lang/String;

    move-result-object v11

    .line 773
    invoke-virtual {v10}, Lcom/ayma/commonerp/bean/SuppliersBean;->getStopDay()Ljava/lang/String;

    move-result-object v12

    .line 774
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 775
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 777
    :cond_a
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_b

    move-object v11, v8

    :cond_b
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_c

    move-object v12, v8

    :cond_c
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    :goto_5
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/ayma/commonerp/bean/SuppliersBean;->getSupplierName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 782
    :cond_d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_e

    .line 783
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v7

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 785
    :cond_e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 719
    :cond_f
    :goto_6
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->supplierId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v9, ""

    if-eqz v0, :cond_10

    return-object v9

    .line 722
    :cond_10
    invoke-static {}, Lcom/ayma/commonerp/litepal/LitepalUse;->getInstance()Lcom/ayma/commonerp/litepal/LitepalUse;

    move-result-object v0

    iget-object v10, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->supplierId:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/ayma/commonerp/litepal/LitepalUse;->querySupplierList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 723
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_11

    goto/16 :goto_c

    .line 726
    :cond_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v7, :cond_14

    .line 727
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/SuppliersBean;

    .line 728
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SuppliersBean;->getStartDay()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_8

    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SuppliersBean;->getStartDay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SuppliersBean;->getStopDay()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_7

    :cond_13
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SuppliersBean;->getStopDay()Ljava/lang/String;

    move-result-object v8

    :goto_7
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_8
    return-object v8

    .line 730
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 731
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ayma/commonerp/bean/SuppliersBean;

    .line 732
    invoke-virtual {v9}, Lcom/ayma/commonerp/bean/SuppliersBean;->getStartDay()Ljava/lang/String;

    move-result-object v10

    .line 733
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-virtual {v9}, Lcom/ayma/commonerp/bean/SuppliersBean;->getStopDay()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 734
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 736
    :cond_15
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_16

    move-object v10, v8

    :cond_16
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->stopDay:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_17

    move-object v10, v8

    goto :goto_a

    :cond_17
    iget-object v10, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->stopDay:Ljava/lang/String;

    :goto_a
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    :goto_b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/ayma/commonerp/bean/SuppliersBean;->getSupplierName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 740
    :cond_18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 741
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_19
    :goto_c
    return-object v9
.end method

.method public goodsValidityPeriod()Ljava/lang/String;
    .locals 3

    .line 631
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->startDay:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->stopDay:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u672a\u77e5"

    return-object v0

    .line 634
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->startDay:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "?"

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->startDay:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->stopDay:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->stopDay:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnable()Z
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsState:Ljava/lang/String;

    const-string v1, "\u542f\u7528"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isInValidityPeriod(Ljava/lang/String;)Z
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->startDay:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ayma/base/util/DateTimeUtils;->compareDate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->stopDay:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ayma/base/util/DateTimeUtils;->compareDate(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSelect()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->isSelect:Z

    return v0
.end method

.method public isValidFlag()Z
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->validFlag:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setBarcode(Ljava/lang/String;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->barcode:Ljava/lang/String;

    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->birthday:Ljava/lang/String;

    return-void
.end method

.method public setCompany2Code(Ljava/lang/String;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->company2Code:Ljava/lang/String;

    return-void
.end method

.method public setCompany2Id(Ljava/lang/String;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->company2Id:Ljava/lang/String;

    return-void
.end method

.method public setCompany2Name(Ljava/lang/String;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->company2Name:Ljava/lang/String;

    return-void
.end method

.method public setCompanyCode(Ljava/lang/String;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->companyCode:Ljava/lang/String;

    return-void
.end method

.method public setCompanyId(Ljava/lang/String;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->companyId:Ljava/lang/String;

    return-void
.end method

.method public setCompanyName(Ljava/lang/String;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->companyName:Ljava/lang/String;

    return-void
.end method

.method public setCostPrice(D)V
    .locals 0

    .line 223
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->costPrice:D

    return-void
.end method

.method public setCostPrice0(D)V
    .locals 0

    .line 207
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->costPrice0:D

    return-void
.end method

.method public setCostShuilv(D)V
    .locals 0

    .line 215
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->costShuilv:D

    return-void
.end method

.method public setFactory(Ljava/lang/String;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->factory:Ljava/lang/String;

    return-void
.end method

.method public setGoodsBarcodes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/BarcodeBean;",
            ">;)V"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsBarcodes:Ljava/util/List;

    return-void
.end method

.method public setGoodsBigTypeName(Ljava/lang/String;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsBigTypeName:Ljava/lang/String;

    return-void
.end method

.method public setGoodsCode(Ljava/lang/String;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsCode:Ljava/lang/String;

    return-void
.end method

.method public setGoodsId(Ljava/lang/String;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsId:Ljava/lang/String;

    return-void
.end method

.method public setGoodsName(Ljava/lang/String;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsName:Ljava/lang/String;

    return-void
.end method

.method public setGoodsPrice(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsPriceBean;",
            ">;)V"
        }
    .end annotation

    .line 487
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsPrice:Ljava/util/List;

    return-void
.end method

.method public setGoodsSmallTypeName(Ljava/lang/String;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsSmallTypeName:Ljava/lang/String;

    return-void
.end method

.method public setGoodsState(Ljava/lang/String;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsState:Ljava/lang/String;

    return-void
.end method

.method public setGoodsTypeId(Ljava/lang/String;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsTypeId:Ljava/lang/String;

    return-void
.end method

.method public setGsortOrder(I)V
    .locals 0

    .line 142
    iput p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->gsortOrder:I

    return-void
.end method

.method public setHotSale(Ljava/lang/String;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->hotSale:Ljava/lang/String;

    return-void
.end method

.method public setIsTransfer(Ljava/lang/String;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->isTransfer:Ljava/lang/String;

    return-void
.end method

.method public setLableLocation(Ljava/lang/String;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->lableLocation:Ljava/lang/String;

    return-void
.end method

.method public setLineLockType(Ljava/lang/String;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->lineLockType:Ljava/lang/String;

    return-void
.end method

.method public setLineLockValue(D)V
    .locals 0

    .line 383
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->lineLockValue:D

    return-void
.end method

.method public setPackQty(I)V
    .locals 0

    .line 311
    iput p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->packQty:I

    return-void
.end method

.method public setPackStyle(Ljava/lang/String;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->packStyle:Ljava/lang/String;

    return-void
.end method

.method public setPackUnit(Ljava/lang/String;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->packUnit:Ljava/lang/String;

    return-void
.end method

.method public setPgoodsTypeId(Ljava/lang/String;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->pgoodsTypeId:Ljava/lang/String;

    return-void
.end method

.method public setQty(D)V
    .locals 0

    .line 175
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->qty:D

    return-void
.end method

.method public setSaleChannel(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->saleChannel:Ljava/lang/String;

    return-void
.end method

.method public setSearchValue(Ljava/lang/String;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->searchValue:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->isSelect:Z

    return-void
.end method

.method public setShellife(I)V
    .locals 0

    .line 319
    iput p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->shellife:I

    return-void
.end method

.method public setShellifeWarn(I)V
    .locals 0

    .line 335
    iput p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->shellifeWarn:I

    return-void
.end method

.method public setShellifeWarnType(Ljava/lang/String;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->shellifeWarnType:Ljava/lang/String;

    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->sortOrder:Ljava/lang/String;

    return-void
.end method

.method public setStartDay(Ljava/lang/String;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->startDay:Ljava/lang/String;

    return-void
.end method

.method public setStopDay(Ljava/lang/String;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->stopDay:Ljava/lang/String;

    return-void
.end method

.method public setStoreType(Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->storeType:Ljava/lang/String;

    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->style:Ljava/lang/String;

    return-void
.end method

.method public setSupplierId(Ljava/lang/String;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->supplierId:Ljava/lang/String;

    return-void
.end method

.method public setSuppliers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsSuppliers;",
            ">;)V"
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->suppliers:Ljava/util/List;

    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->unit:Ljava/lang/String;

    return-void
.end method

.method public setValidFlag(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->validFlag:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GoodsInfoDtosBean{goodsId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", goodsCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", goodsName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", style=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->style:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", unit=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->unit:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", packStyle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->packStyle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", packUnit=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->packUnit:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", packQty="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->packQty:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", shellife="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->shellife:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", shellifeWarnType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->shellifeWarnType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", shellifeWarn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->shellifeWarn:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", factory=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->factory:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", lableLocation=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->lableLocation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", hotSale=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->hotSale:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isTransfer=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->isTransfer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", lineLockType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->lineLockType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", lineLockValue="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->lineLockValue:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", searchValue=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->searchValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", startDay=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->startDay:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", stopDay=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->stopDay:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sortOrder=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->sortOrder:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", goodsState=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsState:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", company2Id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->company2Id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", company2Code=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->company2Code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", company2Name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->company2Name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", companyId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->companyId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", companyCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->companyCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", companyName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->companyName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", barcode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->barcode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", goodsTypeId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsTypeId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", supplierId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->supplierId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pgoodsTypeId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->pgoodsTypeId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", costPrice0="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->costPrice0:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", costShuilv="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->costShuilv:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", costPrice="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->costPrice:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", goodsPrice="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsPrice:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", suppliers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->suppliers:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", goodsBigTypeName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsBigTypeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", goodsSmallTypeName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->goodsSmallTypeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", birthday=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->birthday:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
