.class public Lcom/billy/android/swipe/internal/SwipeHelper;
.super Ljava/lang/Object;
.source "SwipeHelper.java"


# static fields
.field public static final INVALID_POINTER:I = -0x1

.field public static final POINTER_NESTED_FLY:I = -0x3

.field public static final POINTER_NESTED_SCROLL:I = -0x2

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_NONE_TOUCH:I = 0x3

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SwipeHelper"

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private mClampedDistanceX:I

.field private mClampedDistanceY:I

.field private mDragState:I

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private mMaxVelocity:F

.field private mMinVelocity:F

.field private final mParentView:Landroid/view/ViewGroup;

.field private mPointersDown:I

.field private mReleaseInProgress:Z

.field private mScroller:Landroid/widget/OverScroller;

.field private final mSwipeConsumer:Lcom/billy/android/swipe/SwipeConsumer;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private maxSettleDuration:I

.field private final viewConfiguration:Landroid/view/ViewConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Lcom/billy/android/swipe/internal/SwipeHelper$1;

    invoke-direct {v0}, Lcom/billy/android/swipe/internal/SwipeHelper$1;-><init>()V

    sput-object v0, Lcom/billy/android/swipe/internal/SwipeHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/billy/android/swipe/SwipeConsumer;Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x258

    .line 52
    iput v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->maxSettleDuration:I

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mActivePointerId:I

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 150
    iput-object p2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mParentView:Landroid/view/ViewGroup;

    .line 151
    iput-object p3, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mSwipeConsumer:Lcom/billy/android/swipe/SwipeConsumer;

    .line 153
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    iput-object p2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->viewConfiguration:Landroid/view/ViewConfiguration;

    .line 155
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mTouchSlop:I

    .line 156
    iget-object p2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->viewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mMaxVelocity:F

    .line 157
    iget-object p2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->viewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mMinVelocity:F

    .line 158
    invoke-virtual {p0, p1, p4}, Lcom/billy/android/swipe/internal/SwipeHelper;->setInterpolator(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void

    .line 147
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Callback may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parent view may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkTouchSlop(FF)Z
    .locals 4

    .line 873
    iget-object v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mSwipeConsumer:Lcom/billy/android/swipe/SwipeConsumer;

    invoke-virtual {v0, p1, p2}, Lcom/billy/android/swipe/SwipeConsumer;->getHorizontalRange(FF)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 874
    :goto_0
    iget-object v3, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mSwipeConsumer:Lcom/billy/android/swipe/SwipeConsumer;

    invoke-virtual {v3, p1, p2}, Lcom/billy/android/swipe/SwipeConsumer;->getVerticalRange(FF)I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    mul-float p1, p1, p1

    mul-float p2, p2, p2

    add-float/2addr p1, p2

    .line 877
    iget p2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mTouchSlop:I

    mul-int p2, p2, p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1

    :cond_3
    if-eqz v0, :cond_5

    .line 879
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mTouchSlop:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    return v1

    :cond_5
    if-eqz v3, :cond_7

    .line 881
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mTouchSlop:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    return v1

    :cond_7
    return v2
.end method

.method private clampMag(FFF)F
    .locals 2

    .line 409
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float p2, v0, p2

    if-gez p2, :cond_0

    return v1

    :cond_0
    cmpl-float p2, v0, p3

    if-lez p2, :cond_2

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    neg-float p3, p3

    :goto_0
    return p3

    :cond_2
    return p1
.end method

.method private clampMag(III)I
    .locals 1

    .line 388
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-le v0, p3, :cond_2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    neg-int p3, p3

    :goto_0
    return p3

    :cond_2
    return p1
.end method

.method private clearMotionHistory()V
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 482
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 483
    iget-object v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mInitialMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 484
    iget-object v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mLastMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 485
    iget-object v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mLastMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    const/4 v0, 0x0

    .line 486
    iput v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mPointersDown:I

    return-void
.end method

.method private clearMotionHistory(I)V
    .locals 2

    .line 490
    iget-object v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mInitialMotionX:[F

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/billy/android/swipe/internal/SwipeHelper;->isPointerDown(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mInitialMotionX:[F

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 494
    iget-object v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mInitialMotionY:[F

    aput v1, v0, p1

    .line 495
    iget-object v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mLastMotionX:[F

    aput v1, v0, p1

    .line 496
    iget-object v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mLastMotionY:[F

    aput v1, v0, p1

    .line 497
    iget v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mPointersDown:I

    :cond_1
    :goto_0
    return-void
.end method

.method private computeAxisDuration(III)I
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    shr-int/lit8 v1, v0, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 362
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float v1, v1

    .line 364
    invoke-direct {p0, v0}, Lcom/billy/android/swipe/internal/SwipeHelper;->distanceInfluenceForSnapDuration(F)F

    move-result v0

    mul-float v0, v0, v1

    add-float/2addr v1, v0

    .line 367
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_1

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p2, p2

    div-float/2addr v1, p2

    .line 369
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    .line 371
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p3

    div-float/2addr p1, p2

    .line 372
    iget p2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->maxSettleDuration:I

    int-to-float p2, p2

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 374
    :goto_0
    iget p2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->maxSettleDuration:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private computeSettleDuration(IIII)I
    .locals 6

    .line 335
    iget v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mMinVelocity:F

    float-to-int v0, v0

    iget v1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mMaxVelocity:F

    float-to-int v1, v1

    invoke-direct {p0, p3, v0, v1}, Lcom/billy/android/swipe/internal/SwipeHelper;->clampMag(III)I

    move-result p3

    .line 336
    iget v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mMinVelocity:F

    float-to-int v0, v0

    iget v1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mMaxVelocity:F

    float-to-int v1, v1

    invoke-direct {p0, p4, v0, v1}, Lcom/billy/android/swipe/internal/SwipeHelper;->clampMag(III)I

    move-result p4

    .line 337
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 338
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 339
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 340
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v4, v2, v3

    add-int v5, v0, v1

    if-eqz p3, :cond_0

    int-to-float v0, v2

    int-to-float v2, v4

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    int-to-float v2, v5

    :goto_0
    div-float/2addr v0, v2

    if-eqz p4, :cond_1

    int-to-float v1, v3

    int-to-float v2, v4

    goto :goto_1

    :cond_1
    int-to-float v1, v1

    int-to-float v2, v5

    :goto_1
    div-float/2addr v1, v2

    .line 349
    iget-object v2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mSwipeConsumer:Lcom/billy/android/swipe/SwipeConsumer;

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {v2, v3, v4}, Lcom/billy/android/swipe/SwipeConsumer;->getHorizontalRange(FF)I

    move-result v2

    invoke-direct {p0, p1, p3, v2}, Lcom/billy/android/swipe/internal/SwipeHelper;->computeAxisDuration(III)I

    move-result p1

    .line 350
    iget-object p3, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mSwipeConsumer:Lcom/billy/android/swipe/SwipeConsumer;

    invoke-virtual {p3, v3, v4}, Lcom/billy/android/swipe/SwipeConsumer;->getVerticalRange(FF)I

    move-result p3

    invoke-direct {p0, p2, p4, p3}, Lcom/billy/android/swipe/internal/SwipeHelper;->computeAxisDuration(III)I

    move-result p2

    int-to-float p1, p1

    mul-float p1, p1, v0

    int-to-float p2, p2

    mul-float p2, p2, v1

    add-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method

.method public static create(Landroid/view/ViewGroup;FLcom/billy/android/swipe/SwipeConsumer;)Lcom/billy/android/swipe/internal/SwipeHelper;
    .locals 1

    const/4 v0, 0x0

    .line 126
    invoke-static {p0, p1, p2, v0}, Lcom/billy/android/swipe/internal/SwipeHelper;->create(Landroid/view/ViewGroup;FLcom/billy/android/swipe/SwipeConsumer;Landroid/view/animation/Interpolator;)Lcom/billy/android/swipe/internal/SwipeHelper;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/view/ViewGroup;FLcom/billy/android/swipe/SwipeConsumer;Landroid/view/animation/Interpolator;)Lcom/billy/android/swipe/internal/SwipeHelper;
    .locals 0

    .line 120
    invoke-static {p0, p2, p3}, Lcom/billy/android/swipe/internal/SwipeHelper;->create(Landroid/view/ViewGroup;Lcom/billy/android/swipe/SwipeConsumer;Landroid/view/animation/Interpolator;)Lcom/billy/android/swipe/internal/SwipeHelper;

    move-result-object p0

    .line 121
    iget p2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mTouchSlop:I

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    div-float/2addr p3, p1

    mul-float p2, p2, p3

    float-to-int p1, p2

    iput p1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mTouchSlop:I

    return-object p0
.end method

.method public static create(Landroid/view/ViewGroup;Lcom/billy/android/swipe/SwipeConsumer;)Lcom/billy/android/swipe/internal/SwipeHelper;
    .locals 1

    const/4 v0, 0x0

    .line 106
    invoke-static {p0, p1, v0}, Lcom/billy/android/swipe/internal/SwipeHelper;->create(Landroid/view/ViewGroup;Lcom/billy/android/swipe/SwipeConsumer;Landroid/view/animation/Interpolator;)Lcom/billy/android/swipe/internal/SwipeHelper;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/view/ViewGroup;Lcom/billy/android/swipe/SwipeConsumer;Landroid/view/animation/Interpolator;)Lcom/billy/android/swipe/internal/SwipeHelper;
    .locals 2

    .line 103
    new-instance v0, Lcom/billy/android/swipe/internal/SwipeHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/billy/android/swipe/internal/SwipeHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/billy/android/swipe/SwipeConsumer;Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    const v0, 0x3ef1463b

    mul-float p1, p1, v0

    float-to-double v0, p1

    .line 422
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private dragTo(IIII)V
    .locals 3

    .line 934
    iget v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mClampedDistanceX:I

    .line 935
    iget v1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mClampedDistanceY:I

    if-eqz p3, :cond_0

    .line 937
    iget-object v2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mSwipeConsumer:Lcom/billy/android/swipe/SwipeConsumer;

    invoke-virtual {v2, p1, p3}, Lcom/billy/android/swipe/SwipeConsumer;->clampDistanceHorizontal(II)I

    move-result p1

    .line 938
    iput p1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mClampedDistanceX:I

    :cond_0
    if-eqz p4, :cond_1

    .line 941
    iget-object v2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mSwipeConsumer:Lcom/billy/android/swipe/SwipeConsumer;

    invoke-virtual {v2, p2, p4}, Lcom/billy/android/swipe/SwipeConsumer;->clampDistanceVertical(II)I

    move-result p2

    .line 942
    iput p2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mClampedDistanceY:I

    :cond_1
    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    :cond_2
    sub-int p3, p1, v0

    sub-int p4, p2, v1

    .line 948
    iget-object v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mSwipeConsumer:Lcom/billy/android/swipe/SwipeConsumer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/billy/android/swipe/SwipeConsumer;->onSwipeDistanceChanged(IIII)V

    :cond_3
    return-void
.end method

.method private ensureMotionHistorySizeForId(I)V
    .locals 6

    .line 501
    iget-object v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mInitialMotionX:[F

    if-eqz v0, :cond_0

    array-length v0, v0

    if-gt v0, p1, :cond_2

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 502
    new-array v0, p1, [F

    .line 503
    new-array v1, p1, [F

    .line 504
    new-array v2, p1, [F

    .line 505
    new-array p1, p1, [F

    .line 507
    iget-object v3, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mInitialMotionX:[F

    if-eqz v3, :cond_1

    .line 508
    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 509
    iget-object v3, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mInitialMotionY:[F

    array-length v4, v3

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 510
    iget-object v3, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mLastMotionX:[F

    array-length v4, v3

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 511
    iget-object v3, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mLastMotionY:[F

    array-length v4, v3

    invoke-static {v3, v5, p1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 514
    :cond_1
    iput-object v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mInitialMotionX:[F

    .line 515
    iput-object v1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mInitialMotionY:[F

    .line 516
    iput-object v2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mLastMotionX:[F

    .line 517
    iput-object p1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mLastMotionY:[F

    :cond_2
    return-void
.end method

.method private isValidPointerForActionMove(I)Z
    .locals 2

    .line 957
    invoke-virtual {p0, p1}, Lcom/billy/android/swipe/internal/SwipeHelper;->isPointerDown(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring pointerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  SwipeHelper did not receive all the events in the event stream."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SwipeHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private releaseViewForPointerUp()V
    .locals 4

    .line 887
    iget-object v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mMaxVelocity:F

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 888
    iget-object v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mActivePointerId:I

    .line 889
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    iget v1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mMinVelocity:F

    iget v2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mMaxVelocity:F

    .line 888
    invoke-direct {p0, v0, v1, v2}, Lcom/billy/android/swipe/internal/SwipeHelper;->clampMag(FFF)F

    move-result v0

    .line 891
    iget-object v1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mActivePointerId:I

    .line 892
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    iget v2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mMinVelocity:F

    iget v3, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mMaxVelocity:F

    .line 891
    invoke-direct {p0, v1, v2, v3}, Lcom/billy/android/swipe/internal/SwipeHelper;->clampMag(FFF)F

    move-result v1

    .line 894
    invoke-virtual {p0, v0, v1}, Lcom/billy/android/swipe/internal/SwipeHelper;->dispatchViewReleased(FF)V

    return-void
.end method

.method private saveInitialMotion(FFI)V
    .locals 2

    .line 522
    invoke-direct {p0, p3}, Lcom/billy/android/swipe/internal/SwipeHelper;->ensureMotionHistorySizeForId(I)V

    .line 523
    iget-object v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mInitialMotionX:[F

    iget-object v1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mLastMotionX:[F

    aput p1, v1, p3

    aput p1, v0, p3

    .line 524
    iget-object p1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mInitialMotionY:[F

    iget-object v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mLastMotionY:[F

    aput p2, v0, p3

    aput p2, p1, p3

    .line 525
    iget p1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mPointersDown:I

    const/4 p2, 0x1

    shl-int/2addr p2, p3

    or-int/2addr p1, p2

    iput p1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mPointersDown:I

    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .locals 6

    .line 529
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 531
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 533
    invoke-direct {p0, v2}, Lcom/billy/android/swipe/internal/SwipeHelper;->isValidPointerForActionMove(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 536
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 537
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 538
    iget-object v5, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mLastMotionX:[F

    aput v3, v5, v2

    .line 539
    iget-object v3, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mLastMotionY:[F

    aput v4, v3, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private smoothSettleCapturedViewTo(IIII)Z
    .locals 7

    .line 314
    iget v1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mClampedDistanceX:I

    .line 315
    iget v2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mClampedDistanceY:I

    sub-int v3, p1, v1

    sub-int v4, p2, v2

    .line 319
    iget-object v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 v6, 0x2

    if-nez v3, :cond_0

    if-nez v4, :cond_0

    .line 321
    invoke-virtual {p0, v6}, Lcom/billy/android/swipe/internal/SwipeHelper;->setDragState(I)V

    .line 322
    iget-object p3, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mSwipeConsumer:Lcom/billy/android/swipe/SwipeConsumer;

    invoke-virtual {p3, p1, p2, v3, v4}, Lcom/billy/android/swipe/SwipeConsumer;->onSwipeDistanceChanged(IIII)V

    const/4 p1, 0x0

    .line 323
    invoke-virtual {p0, p1}, Lcom/billy/android/swipe/internal/SwipeHelper;->setDragState(I)V

    return p1

    .line 327
    :cond_0
    invoke-direct {p0, v3, v4, p3, p4}, Lcom/billy/android/swipe/internal/SwipeHelper;->computeSettleDuration(IIII)I

    move-result v5

    .line 328
    iget-object v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 330
    invoke-virtual {p0, v6}, Lcom/billy/android/swipe/internal/SwipeHelper;->setDragState(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private trySwipe(IZFFFF)Z
    .locals 8

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 580
    invoke-direct/range {v0 .. v7}, Lcom/billy/android/swipe/internal/SwipeHelper;->trySwipe(IZFFFFZ)Z

    move-result p1

    return p1
.end method

.method private trySwipe(IZFFFFZ)Z
    .locals 10

    move-object v0, p0

    move v7, p1

    move v8, p2

    .line 584
    iget v1, v0, Lcom/billy/android/swipe/internal/SwipeHelper;->mActivePointerId:I

    const/4 v9, 0x1

    if-ne v1, v7, :cond_0

    return v9

    :cond_0
    if-nez v8, :cond_2

    .line 589
    iget v1, v0, Lcom/billy/android/swipe/internal/SwipeHelper;->mDragState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 592
    :cond_1
    iget-object v1, v0, Lcom/billy/android/swipe/internal/SwipeHelper;->mSwipeConsumer:Lcom/billy/android/swipe/SwipeConsumer;

    move v2, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/billy/android/swipe/SwipeConsumer;->tryAcceptMoving(IFFFF)Z

    move-result v1

    goto :goto_1

    .line 590
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/billy/android/swipe/internal/SwipeHelper;->mSwipeConsumer:Lcom/billy/android/swipe/SwipeConsumer;

    move v2, p3

    move v3, p4

    invoke-virtual {v1, p1, p3, p4}, Lcom/billy/android/swipe/SwipeConsumer;->tryAcceptSettling(IFF)Z

    move-result v1

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 595
    iput v7, v0, Lcom/billy/android/swipe/internal/SwipeHelper;->mActivePointerId:I

    const/4 v1, 0x0

    if-ltz v7, :cond_3

    .line 598
    iget-object v3, v0, Lcom/billy/android/swipe/internal/SwipeHelper;->mInitialMotionX:[F

    array-length v4, v3

    if-ge v7, v4, :cond_3

    iget-object v4, v0, Lcom/billy/android/swipe/internal/SwipeHelper;->mInitialMotionY:[F

    array-length v5, v4

    if-ge v7, v5, :cond_3

    .line 599
    aget v1, v3, v7

    .line 600
    aget v3, v4, v7

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 602
    :goto_2
    iget-object v4, v0, Lcom/billy/android/swipe/internal/SwipeHelper;->mSwipeConsumer:Lcom/billy/android/swipe/SwipeConsumer;

    invoke-virtual {v4, p1, p2, v1, v3}, Lcom/billy/android/swipe/SwipeConsumer;->onSwipeAccepted(IZFF)V

    .line 603
    iget-object v1, v0, Lcom/billy/android/swipe/internal/SwipeHelper;->mSwipeConsumer:Lcom/billy/android/swipe/SwipeConsumer;

    invoke-virtual {v1, v2, v2}, Lcom/billy/android/swipe/SwipeConsumer;->clampDistanceHorizontal(II)I

    move-result v1

    iput v1, v0, Lcom/billy/android/swipe/internal/SwipeHelper;->mClampedDistanceX:I

    .line 604
    iget-object v1, v0, Lcom/billy/android/swipe/internal/SwipeHelper;->mSwipeConsumer:Lcom/billy/android/swipe/SwipeConsumer;

    invoke-virtual {v1, v2, v2}, Lcom/billy/android/swipe/SwipeConsumer;->clampDistanceVertical(II)I

    move-result v1

    iput v1, v0, Lcom/billy/android/swipe/internal/SwipeHelper;->mClampedDistanceY:I

    if-eqz p7, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x3

    .line 605
    :goto_3
    invoke-virtual {p0, v1}, Lcom/billy/android/swipe/internal/SwipeHelper;->setDragState(I)V

    return v9

    :cond_5
    return v2
.end method


# virtual methods
.method public abort()V
    .locals 5

    .line 239
    invoke-virtual {p0}, Lcom/billy/android/swipe/internal/SwipeHelper;->cancel()V

    .line 240
    iget v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mDragState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    .line 242
    iget-object v1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    .line 243
    iget-object v2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 244
    iget-object v2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v2

    .line 245
    iget-object v3, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    .line 246
    iget-object v4, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mSwipeConsumer:Lcom/billy/android/swipe/SwipeConsumer;

    sub-int v0, v2, v0

    sub-int v1, v3, v1

    invoke-virtual {v4, v2, v3, v0, v1}, Lcom/billy/android/swipe/SwipeConsumer;->onSwipeDistanceChanged(IIII)V

    :cond_1
    const/4 v0, 0x0

    .line 248
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/internal/SwipeHelper;->setDragState(I)V

    return-void
.end method

.method public cancel()V
    .locals 1

    const/4 v0, -0x1

    .line 225
    iput v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mActivePointerId:I

    .line 226
    invoke-direct {p0}, Lcom/billy/android/swipe/internal/SwipeHelper;->clearMotionHistory()V

    .line 228
    iget-object v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public continueSettling()Z
    .locals 8

    .line 427
    iget v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mDragState:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    .line 428
    iget-object v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    .line 429
    iget-object v3, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v3

    .line 430
    iget-object v4, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v4

    .line 431
    iget v5, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mClampedDistanceX:I

    sub-int v5, v3, v5

    .line 432
    iget v6, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mClampedDistanceY:I

    sub-int v6, v4, v6

    if-eqz v5, :cond_0

    .line 435
    iput v3, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mClampedDistanceX:I

    :cond_0
    if-eqz v6, :cond_1

    .line 438
    iput v4, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mClampedDistanceY:I

    :cond_1
    if-nez v5, :cond_2

    if-eqz v6, :cond_3

    .line 442
    :cond_2
    iget-object v7, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mSwipeConsumer:Lcom/billy/android/swipe/SwipeConsumer;

    invoke-virtual {v7, v3, v4, v5, v6}, Lcom/billy/android/swipe/SwipeConsumer;->onSwipeDistanceChanged(IIII)V

    :cond_3
    if-eqz v0, :cond_4

    .line 445
    iget-object v5, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v5

    if-ne v3, v5, :cond_4

    iget-object v3, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v3

    if-ne v4, v3, :cond_4

    .line 448
    iget-object v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 v0, 0x0

    :cond_4
    if-nez v0, :cond_5

    .line 453
    invoke-virtual {p0, v2}, Lcom/billy/android/swipe/internal/SwipeHelper;->setDragState(I)V

    .line 457
    :cond_5
    iget v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mDragState:I

    if-ne v0, v1, :cond_6

    const/4 v2, 0x1

    :cond_6
    return v2
.end method

.method public dispatchViewReleased(FF)V
    .locals 2

    const/4 v0, 0x1

    .line 468
    iput-boolean v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mReleaseInProgress:Z

    .line 469
    iget-object v1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mSwipeConsumer:Lcom/billy/android/swipe/SwipeConsumer;

    invoke-virtual {v1, p1, p2}, Lcom/billy/android/swipe/SwipeConsumer;->onSwipeReleased(FF)V

    const/4 p1, 0x0

    .line 470
    iput-boolean p1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mReleaseInProgress:Z

    .line 472
    iget p2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mDragState:I

    if-ne p2, v0, :cond_0

    .line 474
    invoke-virtual {p0, p1}, Lcom/billy/android/swipe/internal/SwipeHelper;->setDragState(I)V

    :cond_0
    return-void
.end method

.method public getActivePointerId()I
    .locals 1

    .line 209
    iget v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mActivePointerId:I

    return v0
.end method

.method public getDragState()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mDragState:I

    return v0
.end method

.method public getMaxSettleDuration()I
    .locals 1

    .line 967
    iget v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->maxSettleDuration:I

    return v0
.end method

.method public getMinVelocity()F
    .locals 1

    .line 192
    iget v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mMinVelocity:F

    return v0
.end method

.method public getSwipeConsumer()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    .line 953
    iget-object v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mSwipeConsumer:Lcom/billy/android/swipe/SwipeConsumer;

    return-object v0
.end method

.method public getTouchSlop()I
    .locals 1

    .line 217
    iget v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mTouchSlop:I

    return v0
.end method

.method public isPointerDown(I)Z
    .locals 2

    .line 557
    iget v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public nestedScrollingDrag(II[IZ)Z
    .locals 3

    .line 903
    iget v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mDragState:I

    if-nez v0, :cond_0

    .line 904
    invoke-virtual {p0, p1, p2, p4}, Lcom/billy/android/swipe/internal/SwipeHelper;->nestedScrollingTrySwipe(IIZ)Z

    move-result p1

    return p1

    .line 907
    :cond_0
    iget p4, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mClampedDistanceX:I

    const/4 v0, 0x0

    if-nez p4, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    .line 908
    :cond_2
    :goto_0
    iget-object p4, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mSwipeConsumer:Lcom/billy/android/swipe/SwipeConsumer;

    iget v1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mClampedDistanceX:I

    add-int/2addr v1, p1

    invoke-virtual {p4, v1, p1}, Lcom/billy/android/swipe/SwipeConsumer;->clampDistanceHorizontal(II)I

    move-result p1

    .line 909
    iget p4, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mClampedDistanceX:I

    sub-int p4, p1, p4

    aput p4, p3, v0

    .line 911
    :goto_1
    iget p4, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mClampedDistanceY:I

    const/4 v1, 0x1

    if-nez p4, :cond_4

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    goto :goto_3

    .line 912
    :cond_4
    :goto_2
    iget-object p4, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mSwipeConsumer:Lcom/billy/android/swipe/SwipeConsumer;

    iget v2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mClampedDistanceY:I

    add-int/2addr v2, p2

    invoke-virtual {p4, v2, p2}, Lcom/billy/android/swipe/SwipeConsumer;->clampDistanceVertical(II)I

    move-result p2

    .line 913
    iget p4, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mClampedDistanceY:I

    sub-int p4, p2, p4

    aput p4, p3, v1

    .line 915
    :goto_3
    iget p4, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mClampedDistanceX:I

    if-nez p4, :cond_5

    iget p4, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mClampedDistanceY:I

    if-nez p4, :cond_5

    aget p4, p3, v0

    if-nez p4, :cond_5

    aget p4, p3, v1

    if-nez p4, :cond_5

    const/4 p1, -0x1

    .line 916
    iput p1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mActivePointerId:I

    .line 917
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/internal/SwipeHelper;->setDragState(I)V

    return v0

    .line 920
    :cond_5
    aget p4, p3, v0

    aget p3, p3, v1

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/billy/android/swipe/internal/SwipeHelper;->dragTo(IIII)V

    return v1
.end method

.method public nestedScrollingRelease()V
    .locals 2

    .line 926
    iget v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mDragState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 927
    invoke-virtual {p0, v0, v0}, Lcom/billy/android/swipe/internal/SwipeHelper;->dispatchViewReleased(FF)V

    :cond_0
    return-void
.end method

.method public nestedScrollingTrySwipe(IIZ)Z
    .locals 8

    if-eqz p3, :cond_0

    const/4 p3, -0x3

    const/4 v1, -0x3

    goto :goto_0

    :cond_0
    const/4 p3, -0x2

    const/4 v1, -0x2

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, p1

    int-to-float v6, p2

    const/4 v7, 0x0

    move-object v0, p0

    .line 900
    invoke-direct/range {v0 .. v7}, Lcom/billy/android/swipe/internal/SwipeHelper;->trySwipe(IZFFFFZ)Z

    move-result p1

    return p1
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 13

    .line 724
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 725
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 727
    iget v3, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mDragState:I

    if-eq v3, v2, :cond_0

    .line 730
    invoke-virtual {p0}, Lcom/billy/android/swipe/internal/SwipeHelper;->cancel()V

    .line 733
    :cond_0
    iget-object v3, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_1

    .line 734
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 736
    :cond_1
    iget-object v3, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v0, :cond_14

    if-eq v0, v2, :cond_12

    if-eq v0, v4, :cond_b

    if-eq v0, v3, :cond_9

    const/4 v3, 0x5

    if-eq v0, v3, :cond_8

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    goto/16 :goto_6

    .line 814
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 815
    iget v1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mDragState:I

    if-ne v1, v2, :cond_7

    iget v1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mActivePointerId:I

    if-ne v0, v1, :cond_7

    .line 818
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    if-ge v5, v1, :cond_6

    .line 820
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 821
    iget v3, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mActivePointerId:I

    if-ne v7, v3, :cond_3

    goto :goto_1

    .line 825
    :cond_3
    invoke-direct {p0, v7}, Lcom/billy/android/swipe/internal/SwipeHelper;->isValidPointerForActionMove(I)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v8, 0x1

    .line 829
    iget-object v3, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mInitialMotionX:[F

    aget v9, v3, v7

    aget v10, v3, v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/billy/android/swipe/internal/SwipeHelper;->trySwipe(IZFFFF)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 830
    iget p1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mActivePointerId:I

    goto :goto_2

    :cond_5
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    const/4 p1, -0x1

    :goto_2
    if-ne p1, v2, :cond_7

    .line 837
    invoke-direct {p0}, Lcom/billy/android/swipe/internal/SwipeHelper;->releaseViewForPointerUp()V

    .line 840
    :cond_7
    invoke-direct {p0, v0}, Lcom/billy/android/swipe/internal/SwipeHelper;->clearMotionHistory(I)V

    goto/16 :goto_6

    .line 757
    :cond_8
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 758
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 759
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 760
    invoke-direct {p0, v6, v7, v4}, Lcom/billy/android/swipe/internal/SwipeHelper;->saveInitialMotion(FFI)V

    .line 761
    iget p1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mDragState:I

    if-ne p1, v2, :cond_17

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    .line 762
    invoke-direct/range {v3 .. v9}, Lcom/billy/android/swipe/internal/SwipeHelper;->trySwipe(IZFFFF)Z

    goto/16 :goto_6

    .line 853
    :cond_9
    iget p1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mDragState:I

    if-ne p1, v2, :cond_a

    const/4 p1, 0x0

    .line 854
    invoke-virtual {p0, p1, p1}, Lcom/billy/android/swipe/internal/SwipeHelper;->dispatchViewReleased(FF)V

    .line 856
    :cond_a
    invoke-virtual {p0}, Lcom/billy/android/swipe/internal/SwipeHelper;->cancel()V

    goto/16 :goto_6

    .line 768
    :cond_b
    iget v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mDragState:I

    if-ne v0, v2, :cond_e

    .line 770
    iget v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mActivePointerId:I

    invoke-direct {p0, v0}, Lcom/billy/android/swipe/internal/SwipeHelper;->isValidPointerForActionMove(I)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_6

    .line 774
    :cond_c
    iget v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_d

    goto/16 :goto_6

    .line 778
    :cond_d
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 779
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 780
    iget-object v2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mLastMotionX:[F

    iget v3, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mActivePointerId:I

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 781
    iget-object v2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mLastMotionY:[F

    aget v2, v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 783
    iget v2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mClampedDistanceX:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mClampedDistanceY:I

    add-int/2addr v3, v0

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/billy/android/swipe/internal/SwipeHelper;->dragTo(IIII)V

    .line 785
    invoke-direct {p0, p1}, Lcom/billy/android/swipe/internal/SwipeHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_6

    .line 788
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    :goto_3
    if-ge v5, v0, :cond_11

    .line 790
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 793
    invoke-direct {p0, v7}, Lcom/billy/android/swipe/internal/SwipeHelper;->isValidPointerForActionMove(I)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_4

    .line 797
    :cond_f
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 798
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 799
    iget-object v3, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mInitialMotionX:[F

    aget v9, v3, v7

    .line 800
    iget-object v3, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mInitialMotionY:[F

    aget v10, v3, v7

    sub-float v11, v1, v9

    sub-float v12, v2, v10

    .line 804
    invoke-direct {p0, v11, v12}, Lcom/billy/android/swipe/internal/SwipeHelper;->checkTouchSlop(FF)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v8, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/billy/android/swipe/internal/SwipeHelper;->trySwipe(IZFFFF)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_5

    :cond_10
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 808
    :cond_11
    :goto_5
    invoke-direct {p0, p1}, Lcom/billy/android/swipe/internal/SwipeHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto :goto_6

    .line 845
    :cond_12
    iget p1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mDragState:I

    if-ne p1, v2, :cond_13

    .line 846
    invoke-direct {p0}, Lcom/billy/android/swipe/internal/SwipeHelper;->releaseViewForPointerUp()V

    .line 848
    :cond_13
    invoke-virtual {p0}, Lcom/billy/android/swipe/internal/SwipeHelper;->cancel()V

    goto :goto_6

    .line 740
    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 741
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 742
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 744
    invoke-direct {p0, v6, v7, p1}, Lcom/billy/android/swipe/internal/SwipeHelper;->saveInitialMotion(FFI)V

    .line 749
    iget v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mDragState:I

    if-eq v0, v2, :cond_17

    if-eq v0, v4, :cond_15

    if-ne v0, v3, :cond_16

    :cond_15
    const/4 v5, 0x1

    :cond_16
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move v4, p1

    .line 750
    invoke-direct/range {v3 .. v9}, Lcom/billy/android/swipe/internal/SwipeHelper;->trySwipe(IZFFFF)Z

    :cond_17
    :goto_6
    return-void
.end method

.method setDragState(I)V
    .locals 1

    .line 561
    iget v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mDragState:I

    if-eq v0, p1, :cond_0

    .line 562
    iput p1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mDragState:I

    .line 563
    iget-object v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mSwipeConsumer:Lcom/billy/android/swipe/SwipeConsumer;

    invoke-virtual {v0, p1}, Lcom/billy/android/swipe/SwipeConsumer;->onStateChanged(I)V

    :cond_0
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    if-nez p2, :cond_0

    .line 163
    sget-object p2, Lcom/billy/android/swipe/internal/SwipeHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mScroller:Landroid/widget/OverScroller;

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/billy/android/swipe/internal/SwipeHelper;->abort()V

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mScroller:Landroid/widget/OverScroller;

    .line 169
    :cond_1
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mScroller:Landroid/widget/OverScroller;

    return-void
.end method

.method public setMaxSettleDuration(I)V
    .locals 0

    .line 971
    iput p1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->maxSettleDuration:I

    return-void
.end method

.method public setMinVelocity(F)Lcom/billy/android/swipe/internal/SwipeHelper;
    .locals 0

    .line 180
    iput p1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mMinVelocity:F

    return-object p0
.end method

.method public setSensitivity(F)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->viewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p1

    mul-float v0, v0, v1

    float-to-int p1, v0

    iput p1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mTouchSlop:I

    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .locals 3

    .line 294
    iget-boolean v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mReleaseInProgress:Z

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mActivePointerId:I

    .line 300
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mActivePointerId:I

    .line 301
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    .line 299
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/billy/android/swipe/internal/SwipeHelper;->smoothSettleCapturedViewTo(IIII)Z

    move-result p1

    return p1

    .line 295
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 619
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 620
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v0, :cond_0

    .line 625
    invoke-virtual {p0}, Lcom/billy/android/swipe/internal/SwipeHelper;->cancel()V

    .line 628
    :cond_0
    iget-object v2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 629
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 631
    :cond_1
    iget-object v2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_c

    if-eq v0, v5, :cond_b

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_b

    const/4 v6, 0x5

    if-eq v0, v6, :cond_3

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    goto/16 :goto_3

    .line 701
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 702
    invoke-direct {p0, p1}, Lcom/billy/android/swipe/internal/SwipeHelper;->clearMotionHistory(I)V

    goto/16 :goto_3

    .line 648
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 649
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    .line 650
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 652
    invoke-direct {p0, v9, v10, v7}, Lcom/billy/android/swipe/internal/SwipeHelper;->saveInitialMotion(FFI)V

    .line 655
    iget p1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mDragState:I

    if-eq p1, v4, :cond_4

    if-ne p1, v3, :cond_e

    :cond_4
    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, p0

    .line 657
    invoke-direct/range {v6 .. v12}, Lcom/billy/android/swipe/internal/SwipeHelper;->trySwipe(IZFFFF)Z

    goto/16 :goto_3

    .line 663
    :cond_5
    iget-object v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mInitialMotionX:[F

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mInitialMotionY:[F

    if-nez v0, :cond_6

    goto/16 :goto_3

    .line 668
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_a

    .line 670
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 673
    invoke-direct {p0, v7}, Lcom/billy/android/swipe/internal/SwipeHelper;->isValidPointerForActionMove(I)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    .line 677
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 678
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 679
    iget-object v6, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mInitialMotionX:[F

    aget v9, v6, v7

    .line 680
    iget-object v6, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mInitialMotionY:[F

    aget v10, v6, v7

    sub-float v11, v3, v9

    sub-float v12, v4, v10

    .line 684
    invoke-direct {p0, v11, v12}, Lcom/billy/android/swipe/internal/SwipeHelper;->checkTouchSlop(FF)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 686
    iget-object v4, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mSwipeConsumer:Lcom/billy/android/swipe/SwipeConsumer;

    invoke-virtual {v4, v11, v12}, Lcom/billy/android/swipe/SwipeConsumer;->getHorizontalRange(FF)I

    move-result v4

    .line 687
    iget-object v6, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mSwipeConsumer:Lcom/billy/android/swipe/SwipeConsumer;

    invoke-virtual {v6, v11, v12}, Lcom/billy/android/swipe/SwipeConsumer;->getVerticalRange(FF)I

    move-result v6

    if-nez v4, :cond_8

    if-nez v6, :cond_8

    goto :goto_1

    :cond_8
    if-eqz v3, :cond_9

    const/4 v8, 0x0

    move-object v6, p0

    .line 692
    invoke-direct/range {v6 .. v12}, Lcom/billy/android/swipe/internal/SwipeHelper;->trySwipe(IZFFFF)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_9
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 696
    :cond_a
    :goto_2
    invoke-direct {p0, p1}, Lcom/billy/android/swipe/internal/SwipeHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 708
    :cond_b
    invoke-virtual {p0}, Lcom/billy/android/swipe/internal/SwipeHelper;->cancel()V

    goto :goto_3

    .line 635
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 636
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 637
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 638
    invoke-direct {p0, v9, v10, v7}, Lcom/billy/android/swipe/internal/SwipeHelper;->saveInitialMotion(FFI)V

    .line 641
    iget p1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mDragState:I

    if-eq p1, v4, :cond_d

    if-ne p1, v3, :cond_e

    :cond_d
    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, p0

    .line 642
    invoke-direct/range {v6 .. v12}, Lcom/billy/android/swipe/internal/SwipeHelper;->trySwipe(IZFFFF)Z

    .line 714
    :cond_e
    :goto_3
    iget p1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mDragState:I

    if-ne p1, v5, :cond_f

    const/4 v2, 0x1

    :cond_f
    return v2
.end method

.method public smoothSlideTo(II)Z
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 272
    iget v1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mActivePointerId:I

    .line 273
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mActivePointerId:I

    .line 274
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    .line 272
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/billy/android/swipe/internal/SwipeHelper;->smoothSettleCapturedViewTo(IIII)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 276
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/billy/android/swipe/internal/SwipeHelper;->smoothSettleCapturedViewTo(IIII)Z

    move-result p1

    :goto_0
    const/4 p2, -0x1

    .line 278
    iput p2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mActivePointerId:I

    return p1
.end method

.method public smoothSlideTo(IIII)Z
    .locals 0

    .line 264
    iput p1, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mClampedDistanceX:I

    .line 265
    iput p2, p0, Lcom/billy/android/swipe/internal/SwipeHelper;->mClampedDistanceY:I

    .line 266
    invoke-virtual {p0, p3, p4}, Lcom/billy/android/swipe/internal/SwipeHelper;->smoothSlideTo(II)Z

    move-result p1

    return p1
.end method
