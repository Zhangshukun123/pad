.class public Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;
.super Lcom/billy/android/swipe/consumer/TranslucentSlidingConsumer;
.source "ActivitySlidingBackConsumer.java"


# instance fields
.field protected initTranslation:I

.field protected mActivity:Landroid/app/Activity;

.field protected final mActivityTranslucentUtil:Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;

.field protected mHorizontalSwiping:Z

.field protected mPreviousActivityContentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/billy/android/swipe/consumer/TranslucentSlidingConsumer;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->initTranslation:I

    .line 28
    iput-object p1, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mActivity:Landroid/app/Activity;

    .line 29
    new-instance v0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;

    invoke-direct {v0, p1}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mActivityTranslucentUtil:Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;

    .line 30
    invoke-virtual {p0}, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->showScrimAndShadowOutsideContentView()Lcom/billy/android/swipe/consumer/DrawerConsumer;

    const/high16 v0, -0x80000000

    .line 32
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->setShadowColor(I)Lcom/billy/android/swipe/consumer/DrawerConsumer;

    const/16 v0, 0xa

    .line 33
    invoke-static {v0, p1}, Lcom/billy/android/swipe/SmartSwipe;->dp2px(ILandroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->setShadowSize(I)Lcom/billy/android/swipe/consumer/DrawerConsumer;

    return-void
.end method

.method private movePreviousActivityContentView(I)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mPreviousActivityContentView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mActivityTranslucentUtil:Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;

    invoke-virtual {v0}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->isTranslucent()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    iget-boolean v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mHorizontalSwiping:Z

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mPreviousActivityContentView:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mPreviousActivityContentView:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method private resetPreviousActivityContentView()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mPreviousActivityContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 81
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mPreviousActivityContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mPreviousActivityContentView:Landroid/view/View;

    :cond_0
    return-void
.end method


# virtual methods
.method public clampDistanceHorizontal(II)I
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mActivityTranslucentUtil:Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;

    invoke-virtual {v0}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->isTranslucent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-super {p0, p1, p2}, Lcom/billy/android/swipe/consumer/TranslucentSlidingConsumer;->clampDistanceHorizontal(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public clampDistanceVertical(II)I
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mActivityTranslucentUtil:Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;

    invoke-virtual {v0}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->isTranslucent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-super {p0, p1, p2}, Lcom/billy/android/swipe/consumer/TranslucentSlidingConsumer;->clampDistanceVertical(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected initChildrenFormXml()V
    .locals 0

    return-void
.end method

.method protected layoutContentView(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 156
    iget v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mWidth:I

    iget v1, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mHeight:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public onAttachToWrapper(Lcom/billy/android/swipe/SmartSwipeWrapper;Lcom/billy/android/swipe/internal/SwipeHelper;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2}, Lcom/billy/android/swipe/consumer/TranslucentSlidingConsumer;->onAttachToWrapper(Lcom/billy/android/swipe/SmartSwipeWrapper;Lcom/billy/android/swipe/internal/SwipeHelper;)V

    .line 49
    iget-object p1, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->convertWindowToTranslucent(Landroid/app/Activity;)V

    return-void
.end method

.method protected onClosed()V
    .locals 1

    .line 73
    invoke-super {p0}, Lcom/billy/android/swipe/consumer/TranslucentSlidingConsumer;->onClosed()V

    .line 74
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mActivityTranslucentUtil:Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;

    invoke-virtual {v0}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->convertActivityFromTranslucent()V

    .line 75
    invoke-direct {p0}, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->resetPreviousActivityContentView()V

    return-void
.end method

.method public onDetachFromWrapper()V
    .locals 1

    .line 54
    invoke-super {p0}, Lcom/billy/android/swipe/consumer/TranslucentSlidingConsumer;->onDetachFromWrapper()V

    .line 55
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mActivityTranslucentUtil:Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;

    invoke-virtual {v0}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->convertActivityFromTranslucent()V

    .line 56
    invoke-direct {p0}, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->resetPreviousActivityContentView()V

    return-void
.end method

.method protected onDisplayDistanceChanged(IIII)V
    .locals 3

    .line 127
    iget-object p3, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mActivityTranslucentUtil:Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;

    invoke-virtual {p3}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->isTranslucent()Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object p3, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mPreviousActivityContentView:Landroid/view/View;

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_5

    .line 132
    iget p3, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mDirection:I

    if-eq p3, p4, :cond_4

    const/4 v1, 0x2

    if-eq p3, v1, :cond_3

    const/4 v1, 0x4

    if-eq p3, v1, :cond_2

    const/16 v1, 0x8

    if-eq p3, v1, :cond_1

    const/4 p3, 0x0

    goto :goto_2

    .line 136
    :cond_1
    iget p3, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->initTranslation:I

    iget v1, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mProgress:F

    mul-float v1, v1, v2

    iget v2, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mRelativeMoveFactor:F

    goto :goto_0

    .line 135
    :cond_2
    iget p3, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->initTranslation:I

    iget v1, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mProgress:F

    mul-float v1, v1, v2

    iget v2, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mRelativeMoveFactor:F

    goto :goto_1

    .line 134
    :cond_3
    iget p3, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->initTranslation:I

    iget v1, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mProgress:F

    mul-float v1, v1, v2

    iget v2, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mRelativeMoveFactor:F

    :goto_0
    mul-float v1, v1, v2

    float-to-int v1, v1

    sub-int/2addr p3, v1

    goto :goto_2

    .line 133
    :cond_4
    iget p3, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->initTranslation:I

    iget v1, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mProgress:F

    mul-float v1, v1, v2

    iget v2, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mRelativeMoveFactor:F

    :goto_1
    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr p3, v1

    .line 139
    :goto_2
    invoke-direct {p0, p3}, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->movePreviousActivityContentView(I)V

    .line 141
    :cond_5
    iget p3, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mDirection:I

    and-int/lit8 p3, p3, 0x3

    if-lez p3, :cond_6

    goto :goto_3

    :cond_6
    const/4 p4, 0x0

    .line 142
    :goto_3
    iget-object p3, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    invoke-virtual {p3}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getContentView()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_8

    if-eqz p4, :cond_7

    int-to-float p1, p1

    .line 145
    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_4

    :cond_7
    int-to-float p1, p2

    .line 147
    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 150
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->layoutScrimView()V

    return-void
.end method

.method protected onOpened()V
    .locals 3

    .line 61
    invoke-super {p0}, Lcom/billy/android/swipe/consumer/TranslucentSlidingConsumer;->onOpened()V

    .line 62
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 65
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/billy/android/swipe/R$anim;->anim_none:I

    sget v2, Lcom/billy/android/swipe/R$anim;->anim_none:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 68
    :cond_1
    invoke-direct {p0}, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->resetPreviousActivityContentView()V

    return-void
.end method

.method public onSwipeAccepted(IZFF)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mActivityTranslucentUtil:Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;

    invoke-virtual {v0}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->isTranslucent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mActivityTranslucentUtil:Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;

    invoke-virtual {v0}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->convertActivityToTranslucent()V

    .line 96
    :cond_0
    iget v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mRelativeMoveFactor:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 97
    iget v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mDirection:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mHorizontalSwiping:Z

    .line 98
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/billy/android/swipe/SmartSwipeBack;->findPreviousActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 100
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mPreviousActivityContentView:Landroid/view/View;

    .line 101
    iget v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mDirection:I

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    goto :goto_1

    .line 105
    :cond_2
    iget v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mRelativeMoveFactor:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->initTranslation:I

    goto :goto_1

    .line 104
    :cond_3
    iget v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mRelativeMoveFactor:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    neg-int v0, v0

    iput v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->initTranslation:I

    goto :goto_1

    .line 103
    :cond_4
    iget v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mRelativeMoveFactor:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->initTranslation:I

    goto :goto_1

    .line 102
    :cond_5
    iget v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->mRelativeMoveFactor:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    neg-int v0, v0

    iput v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->initTranslation:I

    .line 108
    :goto_1
    iget v0, p0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->initTranslation:I

    invoke-direct {p0, v0}, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->movePreviousActivityContentView(I)V

    .line 111
    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Lcom/billy/android/swipe/consumer/TranslucentSlidingConsumer;->onSwipeAccepted(IZFF)V

    return-void
.end method

.method public tryAcceptMoving(IFFFF)Z
    .locals 0

    .line 38
    invoke-super/range {p0 .. p5}, Lcom/billy/android/swipe/consumer/TranslucentSlidingConsumer;->tryAcceptMoving(IFFFF)Z

    move-result p1

    return p1
.end method

.method public tryAcceptSettling(IFF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
