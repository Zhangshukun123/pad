.class public Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;
.super Lorg/litepal/crud/LitePalSupport;
.source "StockOutTemplateInfoBody.java"


# instance fields
.field private autualQty:I

.field private birthDay:Ljava/lang/String;

.field private costPrice:D

.field private costPrice0:D

.field private costShuilv:D

.field private enough:Z

.field private goodsCode:Ljava/lang/String;

.field private goodsId:Ljava/lang/String;

.field private goodsName:Ljava/lang/String;

.field private hasPrice:Z

.field private hasStore:Z

.field private needQty:I

.field private outTemplateId:Ljava/lang/String;

.field private qty:I

.field private salesPrice:D

.field private salesPrice0:D

.field private storeNumId:Ljava/lang/String;

.field private unit:Ljava/lang/String;

.field private valid:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutualQty()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->autualQty:I

    return v0
.end method

.method public getBirthDay()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->birthDay:Ljava/lang/String;

    return-object v0
.end method

.method public getCostPrice()D
    .locals 2

    .line 158
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->costPrice:D

    return-wide v0
.end method

.method public getCostPrice0()D
    .locals 2

    .line 166
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->costPrice0:D

    return-wide v0
.end method

.method public getCostShuilv()D
    .locals 2

    .line 174
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->costShuilv:D

    return-wide v0
.end method

.method public getGoodsCode()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->goodsCode:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsId()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->goodsId:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->goodsName:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedQty()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->needQty:I

    return v0
.end method

.method public getOutTemplateId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->outTemplateId:Ljava/lang/String;

    return-object v0
.end method

.method public getQty()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->qty:I

    return v0
.end method

.method public getSalesPrice()D
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->salesPrice:D

    return-wide v0
.end method

.method public getSalesPrice0()D
    .locals 2

    .line 86
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->salesPrice0:D

    return-wide v0
.end method

.method public getStoreNumId()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->storeNumId:Ljava/lang/String;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public isEnough()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->enough:Z

    return v0
.end method

.method public isHasPrice()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->hasPrice:Z

    return v0
.end method

.method public isHasStore()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->hasStore:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->valid:Z

    return v0
.end method

.method public setAutualQty(I)V
    .locals 0

    .line 114
    iput p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->autualQty:I

    return-void
.end method

.method public setBirthDay(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->birthDay:Ljava/lang/String;

    return-void
.end method

.method public setCostPrice(D)V
    .locals 0

    .line 162
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->costPrice:D

    return-void
.end method

.method public setCostPrice0(D)V
    .locals 0

    .line 170
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->costPrice0:D

    return-void
.end method

.method public setCostShuilv(D)V
    .locals 0

    .line 178
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->costShuilv:D

    return-void
.end method

.method public setEnough(Z)V
    .locals 0

    .line 138
    iput-boolean p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->enough:Z

    return-void
.end method

.method public setGoodsCode(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->goodsCode:Ljava/lang/String;

    return-void
.end method

.method public setGoodsId(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->goodsId:Ljava/lang/String;

    return-void
.end method

.method public setGoodsName(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->goodsName:Ljava/lang/String;

    return-void
.end method

.method public setHasPrice(Z)V
    .locals 0

    .line 130
    iput-boolean p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->hasPrice:Z

    return-void
.end method

.method public setHasStore(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->hasStore:Z

    return-void
.end method

.method public setNeedQty(I)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->needQty:I

    return-void
.end method

.method public setOutTemplateId(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->outTemplateId:Ljava/lang/String;

    return-void
.end method

.method public setQty(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->qty:I

    return-void
.end method

.method public setSalesPrice(D)V
    .locals 0

    .line 82
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->salesPrice:D

    return-void
.end method

.method public setSalesPrice0(D)V
    .locals 0

    .line 90
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->salesPrice0:D

    return-void
.end method

.method public setStoreNumId(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->storeNumId:Ljava/lang/String;

    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->unit:Ljava/lang/String;

    return-void
.end method

.method public setValid(Z)V
    .locals 0

    .line 146
    iput-boolean p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->valid:Z

    return-void
.end method
