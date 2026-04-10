.class public Lcom/ayma/commonerp/bean/Sell12306CommitBean;
.super Ljava/lang/Object;
.source "Sell12306CommitBean.java"


# instance fields
.field private goodsId:Ljava/lang/String;

.field private qtySum:D


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/ayma/commonerp/bean/Sell12306CommitBean;->goodsId:Ljava/lang/String;

    .line 8
    iput-wide p2, p0, Lcom/ayma/commonerp/bean/Sell12306CommitBean;->qtySum:D

    return-void
.end method


# virtual methods
.method public getGoodsId()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/ayma/commonerp/bean/Sell12306CommitBean;->goodsId:Ljava/lang/String;

    return-object v0
.end method

.method public getQtySum()D
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/Sell12306CommitBean;->qtySum:D

    return-wide v0
.end method

.method public setGoodsId(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/ayma/commonerp/bean/Sell12306CommitBean;->goodsId:Ljava/lang/String;

    return-void
.end method

.method public setQtySum(D)V
    .locals 0

    .line 36
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/Sell12306CommitBean;->qtySum:D

    return-void
.end method
