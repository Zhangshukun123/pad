.class public Lcom/billy/android/swipe/consumer/StayConsumer;
.super Lcom/billy/android/swipe/SwipeConsumer;
.source "StayConsumer.java"


# instance fields
.field private mMinVelocity:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Lcom/billy/android/swipe/SwipeConsumer;-><init>()V

    const/16 v0, 0x3e8

    .line 11
    iput v0, p0, Lcom/billy/android/swipe/consumer/StayConsumer;->mMinVelocity:I

    const v0, 0x7fffffff

    .line 14
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/consumer/StayConsumer;->setOpenDistance(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lcom/billy/android/swipe/SwipeConsumer;->setMaxSettleDuration(I)Lcom/billy/android/swipe/SwipeConsumer;

    return-void
.end method


# virtual methods
.method public getMinVelocity()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/billy/android/swipe/consumer/StayConsumer;->mMinVelocity:I

    return v0
.end method

.method protected onDisplayDistanceChanged(IIII)V
    .locals 0

    return-void
.end method

.method public onSwipeReleased(FF)V
    .locals 3

    .line 25
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 26
    iget v0, p0, Lcom/billy/android/swipe/consumer/StayConsumer;->mDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/billy/android/swipe/consumer/StayConsumer;->mMinVelocity:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-gez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/billy/android/swipe/consumer/StayConsumer;->mDirection:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/billy/android/swipe/consumer/StayConsumer;->mMinVelocity:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_5

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/billy/android/swipe/consumer/StayConsumer;->getSwipeOpenDistance()I

    move-result v0

    iput v0, p0, Lcom/billy/android/swipe/consumer/StayConsumer;->mCurSwipeDistanceX:I

    .line 28
    iput v2, p0, Lcom/billy/android/swipe/consumer/StayConsumer;->mProgress:F

    goto :goto_0

    .line 31
    :cond_2
    iget v0, p0, Lcom/billy/android/swipe/consumer/StayConsumer;->mDirection:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/billy/android/swipe/consumer/StayConsumer;->mMinVelocity:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-gez v0, :cond_4

    :cond_3
    iget v0, p0, Lcom/billy/android/swipe/consumer/StayConsumer;->mDirection:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/billy/android/swipe/consumer/StayConsumer;->mMinVelocity:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_5

    .line 32
    :cond_4
    invoke-virtual {p0}, Lcom/billy/android/swipe/consumer/StayConsumer;->getSwipeOpenDistance()I

    move-result v0

    iput v0, p0, Lcom/billy/android/swipe/consumer/StayConsumer;->mCurSwipeDistanceY:I

    .line 33
    iput v2, p0, Lcom/billy/android/swipe/consumer/StayConsumer;->mProgress:F

    .line 36
    :cond_5
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/billy/android/swipe/SwipeConsumer;->onSwipeReleased(FF)V

    return-void
.end method

.method public setMinVelocity(I)Lcom/billy/android/swipe/consumer/StayConsumer;
    .locals 0

    if-lez p1, :cond_0

    .line 45
    iput p1, p0, Lcom/billy/android/swipe/consumer/StayConsumer;->mMinVelocity:I

    :cond_0
    return-object p0
.end method
