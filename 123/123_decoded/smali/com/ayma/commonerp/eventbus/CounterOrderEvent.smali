.class public Lcom/ayma/commonerp/eventbus/CounterOrderEvent;
.super Ljava/lang/Object;
.source "CounterOrderEvent.java"


# instance fields
.field private isHaveUnprocessedCounterOrder:Z

.field private orderCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    iput-boolean v0, p0, Lcom/ayma/commonerp/eventbus/CounterOrderEvent;->isHaveUnprocessedCounterOrder:Z

    .line 9
    iput p1, p0, Lcom/ayma/commonerp/eventbus/CounterOrderEvent;->orderCount:I

    return-void
.end method


# virtual methods
.method public getOrderCount()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/ayma/commonerp/eventbus/CounterOrderEvent;->orderCount:I

    return v0
.end method

.method public isHaveUnprocessedCounterOrder()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/ayma/commonerp/eventbus/CounterOrderEvent;->isHaveUnprocessedCounterOrder:Z

    return v0
.end method

.method public setHaveUnprocessedCounterOrder(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/ayma/commonerp/eventbus/CounterOrderEvent;->isHaveUnprocessedCounterOrder:Z

    return-void
.end method

.method public setOrderCount(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/ayma/commonerp/eventbus/CounterOrderEvent;->orderCount:I

    return-void
.end method
