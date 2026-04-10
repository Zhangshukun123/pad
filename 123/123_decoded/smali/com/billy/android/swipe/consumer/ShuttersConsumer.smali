.class public Lcom/billy/android/swipe/consumer/ShuttersConsumer;
.super Lcom/billy/android/swipe/SwipeConsumer;
.source "ShuttersConsumer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/billy/android/swipe/consumer/ShuttersConsumer$ScreenshotCreateRunnable;
    }
.end annotation


# instance fields
.field private lastRefreshTime:J

.field protected lastScreenDirection:I

.field protected mBaseAlpha:I

.field protected final mCamera:Landroid/graphics/Camera;

.field protected mHorizontalSwiping:Z

.field protected mLeavesCount:I

.field protected mPaint:Landroid/graphics/Paint;

.field protected volatile mRefreshable:Z

.field protected volatile mRefreshing:Z

.field protected volatile mScreenshots:[Landroid/graphics/Bitmap;

.field protected mScrimColor:I

.field protected mWaitForScreenshot:Z

.field private refreshBitmapRunnable:Ljava/lang/Runnable;

.field protected refreshDelay:I

.field private refreshWrapperRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 39
    invoke-direct {p0}, Lcom/billy/android/swipe/SwipeConsumer;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->lastScreenDirection:I

    const/4 v0, 0x5

    .line 32
    iput v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mLeavesCount:I

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mRefreshable:Z

    .line 34
    iput-boolean v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mWaitForScreenshot:Z

    const/16 v0, 0x21

    .line 36
    iput v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->refreshDelay:I

    .line 81
    new-instance v0, Lcom/billy/android/swipe/consumer/ShuttersConsumer$1;

    invoke-direct {v0, p0}, Lcom/billy/android/swipe/consumer/ShuttersConsumer$1;-><init>(Lcom/billy/android/swipe/consumer/ShuttersConsumer;)V

    iput-object v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->refreshWrapperRunnable:Ljava/lang/Runnable;

    .line 88
    new-instance v0, Lcom/billy/android/swipe/consumer/ShuttersConsumer$2;

    invoke-direct {v0, p0}, Lcom/billy/android/swipe/consumer/ShuttersConsumer$2;-><init>(Lcom/billy/android/swipe/consumer/ShuttersConsumer;)V

    iput-object v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->refreshBitmapRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x3

    .line 40
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->setReleaseMode(I)Lcom/billy/android/swipe/SwipeConsumer;

    .line 41
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mCamera:Landroid/graphics/Camera;

    const/4 v1, 0x0

    const/high16 v2, -0x3e600000    # -20.0f

    .line 42
    invoke-virtual {v0, v1, v1, v2}, Landroid/graphics/Camera;->setLocation(FFF)V

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method static synthetic access$000(Lcom/billy/android/swipe/consumer/ShuttersConsumer;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->layoutChildren()V

    return-void
.end method

.method static synthetic access$100(Lcom/billy/android/swipe/consumer/ShuttersConsumer;)Lcom/billy/android/swipe/SmartSwipeWrapper;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/billy/android/swipe/consumer/ShuttersConsumer;)Ljava/lang/Runnable;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->refreshBitmapRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private layoutChildren()V
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    invoke-virtual {v0}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 225
    iget v1, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mDirection:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mScreenshots:[Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mWaitForScreenshot:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    iget-boolean v1, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mRefreshable:Z

    if-eqz v1, :cond_1

    .line 230
    iget v1, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mWidth:I

    add-int/lit16 v1, v1, -0x270f

    iget v2, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mHeight:I

    add-int/lit16 v2, v2, -0x270f

    const/16 v3, -0x270f

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    .line 232
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 226
    :cond_2
    :goto_0
    iget v1, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mWidth:I

    iget v2, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 227
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private setRefreshing(Z)V
    .locals 0

    .line 220
    iput-boolean p1, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mRefreshing:Z

    return-void
.end method


# virtual methods
.method public clampDistanceHorizontal(II)I
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mScreenshots:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mWaitForScreenshot:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 310
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/billy/android/swipe/SwipeConsumer;->clampDistanceHorizontal(II)I

    move-result p1

    return p1
.end method

.method public clampDistanceVertical(II)I
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mScreenshots:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mWaitForScreenshot:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 318
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/billy/android/swipe/SwipeConsumer;->clampDistanceVertical(II)I

    move-result p1

    return p1
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 239
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mScreenshots:[Landroid/graphics/Bitmap;

    .line 240
    iget v1, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mDirection:I

    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    array-length v1, v0

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 243
    :cond_0
    iget v1, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mScrimColor:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mBaseAlpha:I

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 244
    iget v1, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mWidth:I

    int-to-float v5, v1

    iget v1, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mHeight:I

    int-to-float v6, v1

    iget-object v7, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 246
    :cond_1
    iget v1, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mWidth:I

    const/4 v2, 0x1

    shr-int/2addr v1, v2

    .line 247
    iget v3, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mHeight:I

    shr-int/2addr v3, v2

    .line 248
    iget-boolean v4, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mHorizontalSwiping:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mWidth:I

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mHeight:I

    :goto_0
    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v4, v4, v5

    array-length v5, v0

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    shr-int/lit8 v5, v4, 0x1

    .line 250
    iget v6, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mDirection:I

    if-eq v6, v2, :cond_4

    iget v6, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mDirection:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    :cond_4
    :goto_1
    const/4 v6, 0x0

    .line 251
    :goto_2
    array-length v7, v0

    if-ge v6, v7, :cond_8

    .line 252
    aget-object v7, v0, v6

    if-eqz v7, :cond_7

    .line 253
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_4

    .line 256
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 257
    iget-object v8, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v8}, Landroid/graphics/Camera;->save()V

    .line 258
    iget-boolean v8, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mHorizontalSwiping:Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v8, :cond_6

    mul-int v8, v4, v6

    add-int/2addr v8, v5

    int-to-float v8, v8

    int-to-float v11, v3

    .line 259
    invoke-virtual {p1, v8, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 260
    iget-object v8, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mCamera:Landroid/graphics/Camera;

    mul-int/lit8 v11, v2, 0x5a

    int-to-float v11, v11

    iget v12, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mProgress:F

    mul-float v11, v11, v12

    invoke-virtual {v8, v11}, Landroid/graphics/Camera;->rotateY(F)V

    .line 261
    iget-object v8, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v8, p1}, Landroid/graphics/Camera;->applyToCanvas(Landroid/graphics/Canvas;)V

    neg-int v8, v5

    int-to-float v8, v8

    .line 262
    invoke-virtual {p1, v8, v10}, Landroid/graphics/Canvas;->translate(FF)V

    neg-int v8, v3

    int-to-float v8, v8

    .line 263
    invoke-virtual {p1, v7, v10, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_6
    int-to-float v8, v1

    mul-int v11, v4, v6

    add-int/2addr v11, v5

    int-to-float v11, v11

    .line 265
    invoke-virtual {p1, v8, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 266
    iget-object v8, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mCamera:Landroid/graphics/Camera;

    mul-int/lit8 v11, v2, 0x5a

    int-to-float v11, v11

    iget v12, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mProgress:F

    mul-float v11, v11, v12

    invoke-virtual {v8, v11}, Landroid/graphics/Camera;->rotateX(F)V

    .line 267
    iget-object v8, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v8, p1}, Landroid/graphics/Camera;->applyToCanvas(Landroid/graphics/Canvas;)V

    neg-int v8, v5

    int-to-float v8, v8

    .line 268
    invoke-virtual {p1, v10, v8}, Landroid/graphics/Canvas;->translate(FF)V

    neg-int v8, v1

    int-to-float v8, v8

    .line 269
    invoke-virtual {p1, v7, v8, v10, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 271
    :goto_3
    iget-object v7, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v7}, Landroid/graphics/Camera;->restore()V

    .line 272
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_8
    :goto_5
    return-void
.end method

.method public getLeavesCount()I
    .locals 1

    .line 335
    iget v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mLeavesCount:I

    return v0
.end method

.method public getScrimColor()I
    .locals 1

    .line 324
    iget v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mScrimColor:I

    return v0
.end method

.method public isRefreshable()Z
    .locals 1

    .line 348
    iget-boolean v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mRefreshable:Z

    return v0
.end method

.method public isWaitForScreenshot()Z
    .locals 1

    .line 357
    iget-boolean v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mWaitForScreenshot:Z

    return v0
.end method

.method protected onClosed()V
    .locals 1

    .line 284
    invoke-super {p0}, Lcom/billy/android/swipe/SwipeConsumer;->onClosed()V

    .line 285
    invoke-virtual {p0}, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->recycleScreenshots()V

    const/4 v0, 0x0

    .line 286
    invoke-direct {p0, v0}, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->setRefreshing(Z)V

    .line 287
    invoke-direct {p0}, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->layoutChildren()V

    return-void
.end method

.method public onDetachFromWrapper()V
    .locals 1

    .line 48
    invoke-super {p0}, Lcom/billy/android/swipe/SwipeConsumer;->onDetachFromWrapper()V

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, v0}, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->setRefreshing(Z)V

    .line 50
    invoke-virtual {p0}, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->recycleScreenshots()V

    .line 51
    invoke-direct {p0}, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->layoutChildren()V

    return-void
.end method

.method protected onDisplayDistanceChanged(IIII)V
    .locals 0

    .line 297
    iget p1, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mScrimColor:I

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mBaseAlpha:I

    if-eqz p1, :cond_0

    .line 298
    iget p1, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mProgress:F

    const/4 p2, 0x0

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p1, p2, p3}, Lcom/billy/android/swipe/SmartSwipe;->ensureBetween(FFF)F

    move-result p1

    .line 299
    iget p2, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mBaseAlpha:I

    int-to-float p2, p2

    sub-float/2addr p3, p1

    mul-float p2, p2, p3

    float-to-int p1, p2

    .line 300
    iget-object p2, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 302
    :cond_0
    iget-boolean p1, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mRefreshable:Z

    if-nez p1, :cond_1

    .line 303
    iget-object p1, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    invoke-virtual {p1}, Lcom/billy/android/swipe/SmartSwipeWrapper;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public onLayout(ZIIII)Z
    .locals 0

    .line 278
    invoke-direct {p0}, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->layoutChildren()V

    const/4 p1, 0x1

    return p1
.end method

.method public onSwipeAccepted(IZFF)V
    .locals 4

    .line 56
    iget v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->lastScreenDirection:I

    iget v1, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mDirection:I

    if-eq v0, v1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->recycleScreenshots()V

    .line 59
    :cond_0
    iget v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mDirection:I

    iput v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->lastScreenDirection:I

    const-wide/16 v0, 0x0

    .line 60
    iput-wide v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->lastRefreshTime:J

    .line 61
    iget v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mCurSwipeDistanceX:I

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mCurSwipeDistanceY:I

    if-nez v0, :cond_2

    .line 62
    iget v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mWidth:I

    shr-int/2addr v0, v1

    .line 63
    iget v2, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mHeight:I

    shr-int/2addr v2, v1

    .line 64
    invoke-virtual {p0}, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->isHorizontalDirection()Z

    move-result v3

    iput-boolean v3, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mHorizontalSwiping:Z

    .line 65
    iget-boolean v3, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mOpenDistanceSpecified:Z

    if-nez v3, :cond_2

    .line 66
    iget-boolean v3, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mHorizontalSwiping:Z

    if-eqz v3, :cond_1

    .line 67
    iput v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mOpenDistance:I

    goto :goto_0

    .line 69
    :cond_1
    iput v2, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mOpenDistance:I

    .line 73
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/billy/android/swipe/SwipeConsumer;->onSwipeAccepted(IZFF)V

    .line 74
    invoke-direct {p0}, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->layoutChildren()V

    .line 75
    iget-boolean p1, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mRefreshing:Z

    if-nez p1, :cond_3

    .line 76
    invoke-direct {p0, v1}, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->setRefreshing(Z)V

    .line 77
    iget-object p1, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->refreshBitmapRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/billy/android/swipe/internal/SwipeUtil;->runInThreadPool(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method protected recycleScreenshots()V
    .locals 1

    const/4 v0, 0x0

    .line 291
    iput v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->lastScreenDirection:I

    const/4 v0, 0x0

    .line 292
    iput-object v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mScreenshots:[Landroid/graphics/Bitmap;

    return-void
.end method

.method protected refreshBitmap()V
    .locals 26

    move-object/from16 v11, p0

    .line 150
    iget-wide v0, v11, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->lastRefreshTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 151
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v11, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->lastRefreshTime:J

    .line 153
    :cond_0
    iget-object v0, v11, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    invoke-virtual {v0}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getContentView()Landroid/view/View;

    move-result-object v12

    .line 154
    iget v13, v11, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mLeavesCount:I

    .line 155
    iget v0, v11, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mWidth:I

    int-to-float v0, v0

    const/high16 v14, 0x3f800000    # 1.0f

    mul-float v0, v0, v14

    iget-boolean v1, v11, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mHorizontalSwiping:Z

    if-eqz v1, :cond_1

    move v1, v13

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 156
    iget v2, v11, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mHeight:I

    int-to-float v2, v2

    mul-float v2, v2, v14

    iget-boolean v3, v11, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mHorizontalSwiping:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v13

    :goto_1
    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    float-to-int v10, v2

    .line 157
    iget-boolean v1, v11, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mHorizontalSwiping:Z

    if-eqz v1, :cond_3

    iget v1, v11, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mWidth:I

    add-int/lit8 v2, v13, -0x1

    mul-int v2, v2, v0

    sub-int/2addr v1, v2

    move/from16 v16, v1

    goto :goto_2

    :cond_3
    move/from16 v16, v0

    .line 158
    :goto_2
    iget-boolean v1, v11, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mHorizontalSwiping:Z

    if-eqz v1, :cond_4

    move/from16 v17, v10

    goto :goto_3

    :cond_4
    iget v1, v11, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mHeight:I

    add-int/lit8 v2, v13, -0x1

    mul-int v2, v2, v10

    sub-int/2addr v1, v2

    move/from16 v17, v1

    .line 160
    :goto_3
    new-array v9, v13, [Landroid/graphics/Bitmap;

    .line 161
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v8, v13}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v13, :cond_9

    .line 164
    iget-boolean v3, v11, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mHorizontalSwiping:Z

    if-eqz v3, :cond_5

    mul-int v1, v0, v6

    goto :goto_5

    :cond_5
    mul-int v2, v10, v6

    :goto_5
    move/from16 v18, v1

    move/from16 v19, v2

    add-int/lit8 v1, v13, -0x1

    if-ne v6, v1, :cond_8

    if-lez v16, :cond_7

    if-gtz v17, :cond_6

    goto :goto_6

    .line 173
    :cond_6
    new-instance v20, Lcom/billy/android/swipe/consumer/ShuttersConsumer$ScreenshotCreateRunnable;

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v6

    move/from16 v21, v6

    move-object v6, v9

    const/4 v15, 0x0

    move-object v7, v8

    move-object/from16 v23, v8

    move-object v8, v12

    move-object/from16 v24, v9

    move/from16 v9, v18

    move/from16 v25, v10

    move/from16 v10, v19

    invoke-direct/range {v1 .. v10}, Lcom/billy/android/swipe/consumer/ShuttersConsumer$ScreenshotCreateRunnable;-><init>(Lcom/billy/android/swipe/consumer/ShuttersConsumer;III[Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;Landroid/view/View;II)V

    invoke-static/range {v20 .. v20}, Lcom/billy/android/swipe/internal/SwipeUtil;->runInThreadPool(Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_7
    :goto_6
    move/from16 v21, v6

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move/from16 v25, v10

    const/4 v15, 0x0

    .line 171
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_7

    :cond_8
    move/from16 v21, v6

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move/from16 v25, v10

    const/4 v15, 0x0

    .line 176
    new-instance v20, Lcom/billy/android/swipe/consumer/ShuttersConsumer$ScreenshotCreateRunnable;

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move v3, v0

    move/from16 v4, v25

    move/from16 v5, v21

    move-object/from16 v6, v24

    move-object/from16 v7, v23

    move-object v8, v12

    move/from16 v9, v18

    move/from16 v10, v19

    invoke-direct/range {v1 .. v10}, Lcom/billy/android/swipe/consumer/ShuttersConsumer$ScreenshotCreateRunnable;-><init>(Lcom/billy/android/swipe/consumer/ShuttersConsumer;III[Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;Landroid/view/View;II)V

    invoke-static/range {v20 .. v20}, Lcom/billy/android/swipe/internal/SwipeUtil;->runInThreadPool(Ljava/lang/Runnable;)V

    :goto_7
    add-int/lit8 v6, v21, 0x1

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move/from16 v10, v25

    const/4 v7, 0x0

    goto :goto_4

    :cond_9
    move-object/from16 v23, v8

    move-object/from16 v24, v9

    const/4 v15, 0x0

    .line 180
    :try_start_0
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 182
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 184
    :goto_8
    iget-boolean v0, v11, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mSwiping:Z

    if-nez v0, :cond_b

    iget v0, v11, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mProgress:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_a

    iget v0, v11, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mProgress:F

    cmpl-float v0, v0, v14

    if-ltz v0, :cond_b

    .line 185
    :cond_a
    invoke-direct {v11, v15}, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->setRefreshing(Z)V

    .line 187
    :cond_b
    iget-boolean v0, v11, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mRefreshing:Z

    if-nez v0, :cond_c

    return-void

    :cond_c
    const/4 v7, 0x0

    :goto_9
    move-object/from16 v1, v24

    if-ge v7, v13, :cond_e

    .line 191
    aget-object v0, v1, v7

    if-nez v0, :cond_d

    const/16 v22, 0x1

    goto :goto_a

    :cond_d
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v24, v1

    goto :goto_9

    :cond_e
    const/16 v22, 0x0

    :goto_a
    if-nez v22, :cond_f

    .line 198
    iput-object v1, v11, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mScreenshots:[Landroid/graphics/Bitmap;

    .line 200
    :cond_f
    iget-object v0, v11, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->refreshWrapperRunnable:Ljava/lang/Runnable;

    invoke-virtual {v12, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 201
    iget-boolean v0, v11, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mRefreshable:Z

    if-eqz v0, :cond_11

    .line 202
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, v11, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->lastRefreshTime:J

    sub-long/2addr v0, v2

    .line 203
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v11, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->lastRefreshTime:J

    .line 204
    iget v2, v11, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->refreshDelay:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_10

    .line 205
    new-instance v2, Lcom/billy/android/swipe/consumer/ShuttersConsumer$3;

    invoke-direct {v2, v11}, Lcom/billy/android/swipe/consumer/ShuttersConsumer$3;-><init>(Lcom/billy/android/swipe/consumer/ShuttersConsumer;)V

    iget v3, v11, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->refreshDelay:I

    int-to-long v3, v3

    sub-long/2addr v3, v0

    invoke-virtual {v12, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b

    .line 212
    :cond_10
    iget-object v0, v11, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->refreshBitmapRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/billy/android/swipe/internal/SwipeUtil;->runInThreadPool(Ljava/lang/Runnable;)V

    goto :goto_b

    .line 215
    :cond_11
    invoke-direct {v11, v15}, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->setRefreshing(Z)V

    :goto_b
    return-void
.end method

.method public setLeavesCount(I)Lcom/billy/android/swipe/consumer/ShuttersConsumer;
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x64

    .line 339
    invoke-static {p1, v0, v1}, Lcom/billy/android/swipe/SmartSwipe;->ensureBetween(III)I

    move-result p1

    .line 340
    iget v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mLeavesCount:I

    if-eq p1, v0, :cond_0

    .line 341
    iput p1, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mLeavesCount:I

    .line 342
    invoke-virtual {p0}, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->recycleScreenshots()V

    :cond_0
    return-object p0
.end method

.method public setRefreshFrameRate(I)Lcom/billy/android/swipe/consumer/ShuttersConsumer;
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x3c

    .line 371
    invoke-static {p1, v0, v1}, Lcom/billy/android/swipe/SmartSwipe;->ensureBetween(III)I

    move-result p1

    const/16 v0, 0x3e8

    .line 372
    div-int/2addr v0, p1

    iput v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->refreshDelay:I

    return-object p0
.end method

.method public setRefreshable(Z)Lcom/billy/android/swipe/consumer/ShuttersConsumer;
    .locals 0

    .line 352
    iput-boolean p1, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mRefreshable:Z

    return-object p0
.end method

.method public setScrimColor(I)Lcom/billy/android/swipe/consumer/ShuttersConsumer;
    .locals 1

    .line 328
    iput p1, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mScrimColor:I

    .line 329
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 330
    iget p1, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mScrimColor:I

    const/high16 v0, -0x1000000

    and-int/2addr p1, v0

    ushr-int/lit8 p1, p1, 0x18

    iput p1, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mBaseAlpha:I

    return-object p0
.end method

.method public setWaitForScreenshot(Z)Lcom/billy/android/swipe/consumer/ShuttersConsumer;
    .locals 0

    .line 366
    iput-boolean p1, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->mWaitForScreenshot:Z

    return-object p0
.end method
