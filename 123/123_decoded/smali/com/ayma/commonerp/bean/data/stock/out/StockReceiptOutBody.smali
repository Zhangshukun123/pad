.class public Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;
.super Lorg/litepal/crud/LitePalSupport;
.source "StockReceiptOutBody.java"


# instance fields
.field private addQty:I

.field private autualQty:I

.field private billNo:Ljava/lang/String;

.field private birthDay:Ljava/lang/String;

.field private costPrice:D

.field private costPrice0:D

.field private costShuilv:D

.field private endDay:Ljava/lang/String;

.field private enough:Z

.field private goodsCode:Ljava/lang/String;

.field private goodsId:Ljava/lang/String;

.field private goodsName:Ljava/lang/String;

.field private goodsState:Ljava/lang/String;

.field private hasPrice:Z

.field private hasStore:Z

.field private needQty:I

.field private orderDate:Ljava/lang/String;

.field private outDate:Ljava/lang/String;

.field private qty:I

.field private salesPrice:D

.field private salesPrice0:D

.field private store:Ljava/lang/String;

.field private storeModel:Ljava/lang/String;

.field private storeNumId:Ljava/lang/String;

.field private style:Ljava/lang/String;

.field private templateId:Ljava/lang/String;

.field private templateName:Ljava/lang/String;

.field private trainNo:Ljava/lang/String;

.field private unit:Ljava/lang/String;

.field private valid:Z

.field private validFlag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->addQty:I

    return-void
.end method


# virtual methods
.method public getAddQty()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->addQty:I

    return v0
.end method

.method public getAutualQty()I
    .locals 1

    .line 217
    iget v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->autualQty:I

    return v0
.end method

.method public getBillNo()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->billNo:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthDay()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->birthDay:Ljava/lang/String;

    return-object v0
.end method

.method public getCostPrice()D
    .locals 2

    .line 265
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->costPrice:D

    return-wide v0
.end method

.method public getCostPrice0()D
    .locals 2

    .line 273
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->costPrice0:D

    return-wide v0
.end method

.method public getCostShuilv()D
    .locals 2

    .line 281
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->costShuilv:D

    return-wide v0
.end method

.method public getEndDay()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->endDay:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsCode()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->goodsCode:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsId()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->goodsId:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsName()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->goodsName:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsState()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->goodsState:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedQty()I
    .locals 1

    .line 209
    iget v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->needQty:I

    return v0
.end method

.method public getOrderDate()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->orderDate:Ljava/lang/String;

    return-object v0
.end method

.method public getOutDate()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->outDate:Ljava/lang/String;

    return-object v0
.end method

.method public getQty()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->qty:I

    return v0
.end method

.method public getSalesPrice()D
    .locals 2

    .line 185
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->salesPrice:D

    return-wide v0
.end method

.method public getSalesPrice0()D
    .locals 2

    .line 193
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->salesPrice0:D

    return-wide v0
.end method

.method public getStore()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->store:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreModel()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->storeModel:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreNumId()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->storeNumId:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->style:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateId()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->templateId:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateName()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->templateName:Ljava/lang/String;

    return-object v0
.end method

.method public getTrainNo()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->trainNo:Ljava/lang/String;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public getValidFlag()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->validFlag:Ljava/lang/String;

    return-object v0
.end method

.method public isEnable()Z
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->goodsState:Ljava/lang/String;

    const-string v1, "\u542f\u7528"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEnough()Z
    .locals 1

    .line 241
    iget-boolean v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->enough:Z

    return v0
.end method

.method public isHasPrice()Z
    .locals 1

    .line 233
    iget-boolean v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->hasPrice:Z

    return v0
.end method

.method public isHasStore()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->hasStore:Z

    return v0
.end method

.method public isInValidityPeriod(Ljava/lang/String;)Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->birthDay:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ayma/base/util/DateTimeUtils;->compareDate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->endDay:Ljava/lang/String;

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

.method public isValid()Z
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->valid:Z

    return v0
.end method

.method public isValidFlag()Z
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->validFlag:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAddQty(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->addQty:I

    return-void
.end method

.method public setAutualQty(I)V
    .locals 0

    .line 221
    iput p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->autualQty:I

    return-void
.end method

.method public setBillNo(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->billNo:Ljava/lang/String;

    return-void
.end method

.method public setBirthDay(Ljava/lang/String;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->birthDay:Ljava/lang/String;

    return-void
.end method

.method public setCostPrice(D)V
    .locals 0

    .line 269
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->costPrice:D

    return-void
.end method

.method public setCostPrice0(D)V
    .locals 0

    .line 277
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->costPrice0:D

    return-void
.end method

.method public setCostShuilv(D)V
    .locals 0

    .line 285
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->costShuilv:D

    return-void
.end method

.method public setEndDay(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->endDay:Ljava/lang/String;

    return-void
.end method

.method public setEnough(Z)V
    .locals 0

    .line 245
    iput-boolean p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->enough:Z

    return-void
.end method

.method public setGoodsCode(Ljava/lang/String;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->goodsCode:Ljava/lang/String;

    return-void
.end method

.method public setGoodsId(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->goodsId:Ljava/lang/String;

    return-void
.end method

.method public setGoodsName(Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->goodsName:Ljava/lang/String;

    return-void
.end method

.method public setGoodsState(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->goodsState:Ljava/lang/String;

    return-void
.end method

.method public setHasPrice(Z)V
    .locals 0

    .line 237
    iput-boolean p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->hasPrice:Z

    return-void
.end method

.method public setHasStore(Z)V
    .locals 0

    .line 229
    iput-boolean p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->hasStore:Z

    return-void
.end method

.method public setNeedQty(I)V
    .locals 0

    .line 213
    iput p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->needQty:I

    return-void
.end method

.method public setOrderDate(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->orderDate:Ljava/lang/String;

    return-void
.end method

.method public setOutDate(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->outDate:Ljava/lang/String;

    return-void
.end method

.method public setQty(I)V
    .locals 0

    .line 205
    iput p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->qty:I

    return-void
.end method

.method public setSalesPrice(D)V
    .locals 0

    .line 189
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->salesPrice:D

    return-void
.end method

.method public setSalesPrice0(D)V
    .locals 0

    .line 197
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->salesPrice0:D

    return-void
.end method

.method public setStore(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->store:Ljava/lang/String;

    return-void
.end method

.method public setStoreModel(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->storeModel:Ljava/lang/String;

    return-void
.end method

.method public setStoreNumId(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->storeNumId:Ljava/lang/String;

    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->style:Ljava/lang/String;

    return-void
.end method

.method public setTemplateId(Ljava/lang/String;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->templateId:Ljava/lang/String;

    return-void
.end method

.method public setTemplateName(Ljava/lang/String;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->templateName:Ljava/lang/String;

    return-void
.end method

.method public setTrainNo(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->trainNo:Ljava/lang/String;

    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->unit:Ljava/lang/String;

    return-void
.end method

.method public setValid(Z)V
    .locals 0

    .line 253
    iput-boolean p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->valid:Z

    return-void
.end method

.method public setValidFlag(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->validFlag:Ljava/lang/String;

    return-void
.end method
