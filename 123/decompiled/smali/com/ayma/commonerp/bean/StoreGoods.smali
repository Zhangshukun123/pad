.class public Lcom/ayma/commonerp/bean/StoreGoods;
.super Lorg/litepal/crud/LitePalSupport;
.source "StoreGoods.java"


# instance fields
.field private birthDay:Ljava/lang/String;

.field private goodsId:Ljava/lang/String;

.field private qty:D

.field private storeId:Ljava/lang/String;

.field private storeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/ayma/commonerp/bean/StoreGoods;->storeId:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/ayma/commonerp/bean/StoreGoods;->storeType:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/ayma/commonerp/bean/StoreGoods;->goodsId:Ljava/lang/String;

    .line 43
    iput-wide p4, p0, Lcom/ayma/commonerp/bean/StoreGoods;->qty:D

    .line 44
    iput-object p6, p0, Lcom/ayma/commonerp/bean/StoreGoods;->birthDay:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBirthDay()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/ayma/commonerp/bean/StoreGoods;->birthDay:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsId()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/ayma/commonerp/bean/StoreGoods;->goodsId:Ljava/lang/String;

    return-object v0
.end method

.method public getQty()D
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/StoreGoods;->qty:D

    return-wide v0
.end method

.method public getStoreId()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/ayma/commonerp/bean/StoreGoods;->storeId:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreType()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/ayma/commonerp/bean/StoreGoods;->storeType:Ljava/lang/String;

    return-object v0
.end method

.method public setBirthDay(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/ayma/commonerp/bean/StoreGoods;->birthDay:Ljava/lang/String;

    return-void
.end method

.method public setGoodsId(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/ayma/commonerp/bean/StoreGoods;->goodsId:Ljava/lang/String;

    return-void
.end method

.method public setQty(D)V
    .locals 0

    .line 36
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/StoreGoods;->qty:D

    return-void
.end method

.method public setStoreId(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/ayma/commonerp/bean/StoreGoods;->storeId:Ljava/lang/String;

    return-void
.end method

.method public setStoreType(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/ayma/commonerp/bean/StoreGoods;->storeType:Ljava/lang/String;

    return-void
.end method
