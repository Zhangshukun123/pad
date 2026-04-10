.class public Lcom/ayma/commonerp/bean/StoresBean$GoodsIdsBean;
.super Ljava/lang/Object;
.source "StoresBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/bean/StoresBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GoodsIdsBean"
.end annotation


# instance fields
.field private birthDay:Ljava/lang/String;

.field private goodsId:Ljava/lang/String;

.field private qty:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBirthDay()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/ayma/commonerp/bean/StoresBean$GoodsIdsBean;->birthDay:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsId()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/ayma/commonerp/bean/StoresBean$GoodsIdsBean;->goodsId:Ljava/lang/String;

    return-object v0
.end method

.method public getQty()D
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/StoresBean$GoodsIdsBean;->qty:D

    return-wide v0
.end method

.method public setBirthDay(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/ayma/commonerp/bean/StoresBean$GoodsIdsBean;->birthDay:Ljava/lang/String;

    return-void
.end method

.method public setGoodsId(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/ayma/commonerp/bean/StoresBean$GoodsIdsBean;->goodsId:Ljava/lang/String;

    return-void
.end method

.method public setQty(D)V
    .locals 0

    .line 62
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/StoresBean$GoodsIdsBean;->qty:D

    return-void
.end method
