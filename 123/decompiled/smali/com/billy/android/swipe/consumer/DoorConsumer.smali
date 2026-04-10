.class public Lcom/billy/android/swipe/consumer/DoorConsumer;
.super Lcom/billy/android/swipe/consumer/ShuttersConsumer;
.source "DoorConsumer.java"


# static fields
.field private static final LEAVES_COUNT:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/billy/android/swipe/consumer/ShuttersConsumer;-><init>()V

    const/4 v0, 0x2

    .line 14
    iput v0, p0, Lcom/billy/android/swipe/consumer/DoorConsumer;->mLeavesCount:I

    const/16 v0, 0x3e8

    .line 15
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/consumer/DoorConsumer;->setMaxSettleDuration(I)Lcom/billy/android/swipe/SwipeConsumer;

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 20
    iget-object v6, p0, Lcom/billy/android/swipe/consumer/DoorConsumer;->mScreenshots:[Landroid/graphics/Bitmap;

    .line 21
    iget v0, p0, Lcom/billy/android/swipe/consumer/DoorConsumer;->mDirection:I

    if-eqz v0, :cond_5

    if-eqz v6, :cond_5

    array-length v0, v6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v7, 0x0

    .line 24
    aget-object v0, v6, v7

    if-eqz v0, :cond_5

    aget-object v0, v6, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v8, 0x1

    aget-object v0, v6, v8

    if-eqz v0, :cond_5

    aget-object v0, v6, v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 27
    :cond_1
    iget v0, p0, Lcom/billy/android/swipe/consumer/DoorConsumer;->mWidth:I

    shr-int/lit8 v9, v0, 0x1

    .line 28
    iget v0, p0, Lcom/billy/android/swipe/consumer/DoorConsumer;->mHeight:I

    shr-int/lit8 v10, v0, 0x1

    .line 29
    iget v0, p0, Lcom/billy/android/swipe/consumer/DoorConsumer;->mScrimColor:I

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/billy/android/swipe/consumer/DoorConsumer;->mBaseAlpha:I

    if-eqz v0, :cond_3

    .line 30
    iget-boolean v0, p0, Lcom/billy/android/swipe/consumer/DoorConsumer;->mHorizontalSwiping:Z

    if-eqz v0, :cond_2

    int-to-float v0, v9

    .line 31
    iget v1, p0, Lcom/billy/android/swipe/consumer/DoorConsumer;->mProgress:F

    sub-float v1, v11, v1

    mul-float v1, v1, v0

    const/4 v2, 0x0

    iget v3, p0, Lcom/billy/android/swipe/consumer/DoorConsumer;->mProgress:F

    add-float/2addr v3, v11

    mul-float v3, v3, v0

    iget v0, p0, Lcom/billy/android/swipe/consumer/DoorConsumer;->mHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/billy/android/swipe/consumer/DoorConsumer;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    int-to-float v0, v10

    .line 33
    iget v2, p0, Lcom/billy/android/swipe/consumer/DoorConsumer;->mProgress:F

    sub-float v2, v11, v2

    mul-float v2, v2, v0

    iget v3, p0, Lcom/billy/android/swipe/consumer/DoorConsumer;->mWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/billy/android/swipe/consumer/DoorConsumer;->mProgress:F

    add-float/2addr v4, v11

    mul-float v4, v4, v0

    iget-object v5, p0, Lcom/billy/android/swipe/consumer/DoorConsumer;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 37
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 38
    iget-boolean v0, p0, Lcom/billy/android/swipe/consumer/DoorConsumer;->mHorizontalSwiping:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    neg-int v0, v9

    int-to-float v0, v0

    .line 39
    iget v3, p0, Lcom/billy/android/swipe/consumer/DoorConsumer;->mProgress:F

    mul-float v0, v0, v3

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 40
    aget-object v0, v6, v7

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v0, v9

    .line 43
    iget v3, p0, Lcom/billy/android/swipe/consumer/DoorConsumer;->mProgress:F

    add-float/2addr v3, v11

    mul-float v0, v0, v3

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 44
    aget-object v0, v6, v8

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    neg-int v0, v10

    int-to-float v0, v0

    .line 46
    iget v3, p0, Lcom/billy/android/swipe/consumer/DoorConsumer;->mProgress:F

    mul-float v0, v0, v3

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 47
    aget-object v0, v6, v7

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 48
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v0, v10

    .line 50
    iget v3, p0, Lcom/billy/android/swipe/consumer/DoorConsumer;->mProgress:F

    add-float/2addr v3, v11

    mul-float v0, v0, v3

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 51
    aget-object v0, v6, v8

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 53
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    :goto_2
    return-void
.end method

.method public setLeavesCount(I)Lcom/billy/android/swipe/consumer/ShuttersConsumer;
    .locals 0

    return-object p0
.end method
