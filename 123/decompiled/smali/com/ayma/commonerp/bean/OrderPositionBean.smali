.class public Lcom/ayma/commonerp/bean/OrderPositionBean;
.super Ljava/lang/Object;
.source "OrderPositionBean.java"


# instance fields
.field private orderPosition:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add1()V
    .locals 1

    .line 7
    iget v0, p0, Lcom/ayma/commonerp/bean/OrderPositionBean;->orderPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ayma/commonerp/bean/OrderPositionBean;->orderPosition:I

    return-void
.end method

.method public getOrderPosition()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/ayma/commonerp/bean/OrderPositionBean;->orderPosition:I

    return v0
.end method

.method public setOrderPosition(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/ayma/commonerp/bean/OrderPositionBean;->orderPosition:I

    return-void
.end method

.method public setZero()V
    .locals 1

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/ayma/commonerp/bean/OrderPositionBean;->orderPosition:I

    return-void
.end method
