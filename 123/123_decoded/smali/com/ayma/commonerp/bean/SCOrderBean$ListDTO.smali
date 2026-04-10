.class public Lcom/ayma/commonerp/bean/SCOrderBean$ListDTO;
.super Ljava/lang/Object;
.source "SCOrderBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/bean/SCOrderBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListDTO"
.end annotation


# instance fields
.field private goodsName:Ljava/lang/String;

.field private qty:Ljava/lang/String;

.field private salePriceReal:Ljava/lang/String;

.field private salePriceSum:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGoodsName()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SCOrderBean$ListDTO;->goodsName:Ljava/lang/String;

    return-object v0
.end method

.method public getQty()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SCOrderBean$ListDTO;->qty:Ljava/lang/String;

    return-object v0
.end method

.method public getSalePriceReal()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SCOrderBean$ListDTO;->salePriceReal:Ljava/lang/String;

    return-object v0
.end method

.method public getSalePriceSum()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SCOrderBean$ListDTO;->salePriceSum:Ljava/lang/String;

    return-object v0
.end method

.method public setGoodsName(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SCOrderBean$ListDTO;->goodsName:Ljava/lang/String;

    return-void
.end method

.method public setQty(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SCOrderBean$ListDTO;->qty:Ljava/lang/String;

    return-void
.end method

.method public setSalePriceReal(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SCOrderBean$ListDTO;->salePriceReal:Ljava/lang/String;

    return-void
.end method

.method public setSalePriceSum(Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SCOrderBean$ListDTO;->salePriceSum:Ljava/lang/String;

    return-void
.end method
