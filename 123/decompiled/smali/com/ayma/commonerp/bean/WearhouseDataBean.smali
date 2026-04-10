.class public Lcom/ayma/commonerp/bean/WearhouseDataBean;
.super Lorg/litepal/crud/LitePalSupport;
.source "WearhouseDataBean.java"

# interfaces
.implements Lcom/ayma/commonerp/behavior/InfoDetailBehavior;
.implements Lcom/ayma/commonerp/behavior/ComparatorBehavior;


# instance fields
.field private baseClass:Ljava/lang/String;

.field private batchNo:Ljava/lang/String;

.field private birthDay:Ljava/lang/String;

.field private company2Id:Ljava/lang/String;

.field private companyId:Ljava/lang/String;

.field private costPrice:D

.field private costPrice0:D

.field private costShuilv:D

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

.field private goodsTypeId:Ljava/lang/String;

.field private goodsTypeName:Ljava/lang/String;

.field private outDay:Ljava/lang/String;

.field private qty:D

.field private salesPrice:D

.field private storeType:Ljava/lang/String;

.field private sumMoney:Ljava/lang/String;

.field private teamNumId:Ljava/lang/String;

.field private trainCode:Ljava/lang/String;

.field private trainId:Ljava/lang/String;

.field private trainName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaseClass()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->baseClass:Ljava/lang/String;

    return-object v0
.end method

.method public getBatchNo()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->batchNo:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthDay()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->birthDay:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany2Id()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->company2Id:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyId()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->companyId:Ljava/lang/String;

    return-object v0
.end method

.method public getComparatorAmount()D
    .locals 3

    .line 429
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->sumMoney:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    .line 434
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->sumMoney:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 436
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-wide v1
.end method

.method public getComparatorGoodsCode()Ljava/lang/String;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->goodsCode:Ljava/lang/String;

    return-object v0
.end method

.method public getComparatorGoodsName()Ljava/lang/String;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->goodsName:Ljava/lang/String;

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

    .line 424
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->salesPrice:D

    return-wide v0
.end method

.method public getComparatorQty()D
    .locals 2

    .line 419
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->qty:D

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

.method public getCostPrice()D
    .locals 2

    .line 233
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->costPrice:D

    return-wide v0
.end method

.method public getCostPrice0()D
    .locals 2

    .line 217
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->costPrice0:D

    return-wide v0
.end method

.method public getCostShuilv()D
    .locals 2

    .line 225
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->costShuilv:D

    return-wide v0
.end method

.method public getFlag1()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->flag1:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag10()Ljava/lang/String;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->flag10:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag2()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->flag2:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag3()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->flag3:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag4()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->flag4:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag5()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->flag5:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag6()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->flag6:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag7()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->flag7:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag8()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->flag8:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag9()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->flag9:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsCode()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->goodsCode:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsId()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->goodsId:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsName()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->goodsName:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsTypeId()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->goodsTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsTypeName()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->goodsTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getOutDay()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->outDay:Ljava/lang/String;

    return-object v0
.end method

.method public getQty()D
    .locals 2

    .line 209
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->qty:D

    return-wide v0
.end method

.method public getSalesPrice()D
    .locals 2

    .line 321
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->salesPrice:D

    return-wide v0
.end method

.method public getStoreType()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->storeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSumMoney()Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->sumMoney:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamNumId()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->teamNumId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrainCode()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->trainCode:Ljava/lang/String;

    return-object v0
.end method

.method public getTrainId()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->trainId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrainName()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->trainName:Ljava/lang/String;

    return-object v0
.end method

.method public goodsBarCode()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public goodsBigType()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public goodsBirthday()Ljava/lang/String;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->birthDay:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public goodsCode()Ljava/lang/String;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->goodsCode:Ljava/lang/String;

    return-object v0
.end method

.method public goodsCompany2Name()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public goodsFactory()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public goodsName()Ljava/lang/String;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->goodsName:Ljava/lang/String;

    return-object v0
.end method

.method public goodsPriceValidityPeriod()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public goodsSalePrice()Ljava/lang/String;
    .locals 2

    .line 384
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->salesPrice:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goodsSmallType()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public goodsSupplierName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public goodsSupplierValidityPeriod()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public goodsValidityPeriod()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setBaseClass(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->baseClass:Ljava/lang/String;

    return-void
.end method

.method public setBatchNo(Ljava/lang/String;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->batchNo:Ljava/lang/String;

    return-void
.end method

.method public setBirthDay(Ljava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->birthDay:Ljava/lang/String;

    return-void
.end method

.method public setCompany2Id(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->company2Id:Ljava/lang/String;

    return-void
.end method

.method public setCompanyId(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->companyId:Ljava/lang/String;

    return-void
.end method

.method public setCostPrice(D)V
    .locals 0

    .line 237
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->costPrice:D

    return-void
.end method

.method public setCostPrice0(D)V
    .locals 0

    .line 221
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->costPrice0:D

    return-void
.end method

.method public setCostShuilv(D)V
    .locals 0

    .line 229
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->costShuilv:D

    return-void
.end method

.method public setFlag1(Ljava/lang/String;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->flag1:Ljava/lang/String;

    return-void
.end method

.method public setFlag10(Ljava/lang/String;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->flag10:Ljava/lang/String;

    return-void
.end method

.method public setFlag2(Ljava/lang/String;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->flag2:Ljava/lang/String;

    return-void
.end method

.method public setFlag3(Ljava/lang/String;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->flag3:Ljava/lang/String;

    return-void
.end method

.method public setFlag4(Ljava/lang/String;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->flag4:Ljava/lang/String;

    return-void
.end method

.method public setFlag5(Ljava/lang/String;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->flag5:Ljava/lang/String;

    return-void
.end method

.method public setFlag6(Ljava/lang/String;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->flag6:Ljava/lang/String;

    return-void
.end method

.method public setFlag7(Ljava/lang/String;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->flag7:Ljava/lang/String;

    return-void
.end method

.method public setFlag8(Ljava/lang/String;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->flag8:Ljava/lang/String;

    return-void
.end method

.method public setFlag9(Ljava/lang/String;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->flag9:Ljava/lang/String;

    return-void
.end method

.method public setGoodsCode(Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->goodsCode:Ljava/lang/String;

    return-void
.end method

.method public setGoodsId(Ljava/lang/String;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->goodsId:Ljava/lang/String;

    return-void
.end method

.method public setGoodsName(Ljava/lang/String;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->goodsName:Ljava/lang/String;

    return-void
.end method

.method public setGoodsTypeId(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->goodsTypeId:Ljava/lang/String;

    return-void
.end method

.method public setGoodsTypeName(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->goodsTypeName:Ljava/lang/String;

    return-void
.end method

.method public setOutDay(Ljava/lang/String;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->outDay:Ljava/lang/String;

    return-void
.end method

.method public setQty(D)V
    .locals 0

    .line 213
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->qty:D

    return-void
.end method

.method public setSalesPrice(D)V
    .locals 0

    .line 325
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->salesPrice:D

    return-void
.end method

.method public setStoreType(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->storeType:Ljava/lang/String;

    return-void
.end method

.method public setSumMoney(Ljava/lang/String;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->sumMoney:Ljava/lang/String;

    return-void
.end method

.method public setTeamNumId(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->teamNumId:Ljava/lang/String;

    return-void
.end method

.method public setTrainCode(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->trainCode:Ljava/lang/String;

    return-void
.end method

.method public setTrainId(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->trainId:Ljava/lang/String;

    return-void
.end method

.method public setTrainName(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WearhouseDataBean;->trainName:Ljava/lang/String;

    return-void
.end method
