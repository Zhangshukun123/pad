.class public Lcom/billy/android/swipe/consumer/DrawerConsumer;
.super Lcom/billy/android/swipe/SwipeConsumer;
.source "DrawerConsumer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected b:I

.field protected l:I

.field protected mCurDrawerView:Landroid/view/View;

.field protected mDrawerViewRequired:Z

.field protected final mDrawerViews:[Landroid/view/View;

.field protected mScrimColor:I

.field protected mScrimView:Lcom/billy/android/swipe/internal/ScrimView;

.field protected mShadowColor:I

.field protected mShadowSize:I

.field protected mShowScrimAndShadowOutsideContentView:Z

.field protected r:I

.field protected t:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/billy/android/swipe/SwipeConsumer;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    .line 30
    iput-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mDrawerViews:[Landroid/view/View;

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mScrimColor:I

    .line 34
    iput v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mShadowColor:I

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mDrawerViewRequired:Z

    const/4 v0, 0x3

    .line 42
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->setReleaseMode(I)Lcom/billy/android/swipe/SwipeConsumer;

    return-void
.end method

.method private attachDrawerView(I)V
    .locals 6

    .line 380
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mDrawerViews:[Landroid/view/View;

    aget-object v0, v0, p1

    .line 381
    iget-object v1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 382
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v2, v1, :cond_4

    .line 383
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 384
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 386
    :cond_0
    invoke-virtual {v1}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/billy/android/swipe/SmartSwipeWrapper;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-ltz v2, :cond_4

    .line 388
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v3, -0x1

    const/4 v4, -0x2

    if-eqz p1, :cond_1

    const/4 v5, 0x1

    if-eq p1, v5, :cond_1

    const/4 v5, 0x2

    if-eq p1, v5, :cond_2

    const/4 v5, 0x3

    if-eq p1, v5, :cond_2

    const/4 v3, -0x2

    goto :goto_0

    :cond_1
    const/4 v3, -0x2

    const/4 v4, -0x1

    .line 396
    :cond_2
    :goto_0
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 397
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    :cond_3
    invoke-virtual {v1, v0, v2}, Lcom/billy/android/swipe/SmartSwipeWrapper;->addView(Landroid/view/View;I)V

    const/4 p1, 0x4

    .line 400
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private setOrUpdateDrawerView(ILandroid/view/View;)V
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mDrawerViews:[Landroid/view/View;

    aget-object v1, v0, p1

    if-ne v1, p2, :cond_0

    return-void

    .line 375
    :cond_0
    aput-object p2, v0, p1

    .line 376
    invoke-direct {p0, p1}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->attachDrawerView(I)V

    return-void
.end method


# virtual methods
.method protected calculateDrawerDirectionInitPosition(III)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    iput v1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->l:I

    iget p1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mWidth:I

    iput p1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->r:I

    iget p1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mHeight:I

    iput p1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->t:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->b:I

    goto :goto_0

    .line 204
    :cond_1
    iput v1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->l:I

    iget p1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mWidth:I

    iput p1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->r:I

    neg-int p1, p3

    iput p1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->t:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->b:I

    goto :goto_0

    .line 203
    :cond_2
    iget p1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mWidth:I

    iput p1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->l:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->r:I

    iput v1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->t:I

    iput p3, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->b:I

    goto :goto_0

    :cond_3
    neg-int p1, p2

    .line 202
    iput p1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->l:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->r:I

    iput v1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->t:I

    iput p3, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->b:I

    :goto_0
    return-void
.end method

.method protected canChildScroll(Landroid/view/ViewGroup;IIFFFF)Z
    .locals 3

    .line 488
    iget v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mDirection:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    invoke-virtual {v0}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getContentView()Landroid/view/View;

    move-result-object v0

    float-to-int v1, p4

    float-to-int v2, p5

    invoke-virtual {p0, p1, v1, v2}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->findTopChildUnder(Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 491
    :cond_0
    invoke-super/range {p0 .. p7}, Lcom/billy/android/swipe/SwipeConsumer;->canChildScroll(Landroid/view/ViewGroup;IIFFFF)Z

    move-result p1

    return p1
.end method

.method protected changeDrawerViewVisibility(I)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mCurDrawerView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public getDrawerView(I)Landroid/view/View;
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    if-gez v0, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 321
    :cond_4
    iget-object p1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mDrawerViews:[Landroid/view/View;

    aget-object p1, p1, v0

    return-object p1
.end method

.method public getOpenDistance()I
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mCurDrawerView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 408
    invoke-super {p0}, Lcom/billy/android/swipe/SwipeConsumer;->getOpenDistance()I

    move-result v0

    return v0

    .line 410
    :cond_0
    iget v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mDirection:I

    and-int/lit8 v0, v0, 0x3

    if-lez v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mCurDrawerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mCurDrawerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getShadowSize()I
    .locals 1

    .line 437
    iget v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mShadowSize:I

    return v0
.end method

.method protected initChildrenFormXml()V
    .locals 9

    .line 59
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    .line 60
    invoke-virtual {v0}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getChildCount()I

    move-result v1

    .line 61
    invoke-virtual {v0}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getContentView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_5

    .line 63
    invoke-virtual {v0, v4}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eq v5, v2, :cond_4

    .line 64
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v6, v6, Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;

    if-nez v6, :cond_0

    goto :goto_1

    .line 67
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;

    iget v6, v6, Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;->gravity:I

    .line 68
    iget-object v7, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mDrawerViews:[Landroid/view/View;

    aget-object v7, v7, v3

    const/4 v8, 0x1

    if-nez v7, :cond_1

    and-int/lit8 v7, v6, 0x1

    if-ne v7, v8, :cond_1

    .line 70
    invoke-virtual {p0, v5}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->setLeftDrawerView(Landroid/view/View;)Lcom/billy/android/swipe/consumer/DrawerConsumer;

    .line 71
    iget-object v7, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    invoke-virtual {v7}, Lcom/billy/android/swipe/SmartSwipeWrapper;->consumeInflateFromXml()V

    .line 73
    :cond_1
    iget-object v7, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mDrawerViews:[Landroid/view/View;

    aget-object v7, v7, v8

    const/4 v8, 0x2

    if-nez v7, :cond_2

    and-int/lit8 v7, v6, 0x2

    if-ne v7, v8, :cond_2

    .line 75
    invoke-virtual {p0, v5}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->setRightDrawerView(Landroid/view/View;)Lcom/billy/android/swipe/consumer/DrawerConsumer;

    .line 76
    iget-object v7, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    invoke-virtual {v7}, Lcom/billy/android/swipe/SmartSwipeWrapper;->consumeInflateFromXml()V

    .line 78
    :cond_2
    iget-object v7, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mDrawerViews:[Landroid/view/View;

    aget-object v7, v7, v8

    if-nez v7, :cond_3

    and-int/lit8 v7, v6, 0x4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    .line 80
    invoke-virtual {p0, v5}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->setTopDrawerView(Landroid/view/View;)Lcom/billy/android/swipe/consumer/DrawerConsumer;

    .line 81
    iget-object v7, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    invoke-virtual {v7}, Lcom/billy/android/swipe/SmartSwipeWrapper;->consumeInflateFromXml()V

    .line 83
    :cond_3
    iget-object v7, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mDrawerViews:[Landroid/view/View;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    if-nez v7, :cond_4

    and-int/lit8 v6, v6, 0x8

    const/16 v7, 0x8

    if-ne v6, v7, :cond_4

    .line 85
    invoke-virtual {p0, v5}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->setBottomDrawerView(Landroid/view/View;)Lcom/billy/android/swipe/consumer/DrawerConsumer;

    .line 86
    iget-object v5, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    invoke-virtual {v5}, Lcom/billy/android/swipe/SmartSwipeWrapper;->consumeInflateFromXml()V

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method protected initScrimView()V
    .locals 8

    .line 183
    iget v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mScrimColor:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mShadowColor:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mShadowSize:I

    if-lez v0, :cond_4

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mScrimView:Lcom/billy/android/swipe/internal/ScrimView;

    if-nez v0, :cond_1

    .line 185
    new-instance v0, Lcom/billy/android/swipe/internal/ScrimView;

    iget-object v1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    invoke-virtual {v1}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/billy/android/swipe/internal/ScrimView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mScrimView:Lcom/billy/android/swipe/internal/ScrimView;

    .line 186
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    iget-object v1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mScrimView:Lcom/billy/android/swipe/internal/ScrimView;

    invoke-virtual {v0, v1}, Lcom/billy/android/swipe/SmartSwipeWrapper;->addView(Landroid/view/View;)V

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mScrimView:Lcom/billy/android/swipe/internal/ScrimView;

    iget v1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mScrimColor:I

    invoke-virtual {v0, v1}, Lcom/billy/android/swipe/internal/ScrimView;->setScrimColor(I)V

    .line 189
    iget v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mShadowColor:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mShadowSize:I

    if-lez v0, :cond_3

    .line 190
    iget v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mDirection:I

    .line 191
    iget-boolean v1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mShowScrimAndShadowOutsideContentView:Z

    if-eqz v1, :cond_2

    .line 192
    iget v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mDirection:I

    invoke-static {v0}, Lcom/billy/android/swipe/internal/SwipeUtil;->getReverseDirection(I)I

    move-result v0

    :cond_2
    move v4, v0

    .line 194
    iget-object v1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mScrimView:Lcom/billy/android/swipe/internal/ScrimView;

    iget v2, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mDirection:I

    iget v3, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mShadowColor:I

    iget v5, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mShadowSize:I

    iget v6, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mWidth:I

    iget v7, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mHeight:I

    invoke-virtual/range {v1 .. v7}, Lcom/billy/android/swipe/internal/ScrimView;->setDirection(IIIIII)V

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mScrimView:Lcom/billy/android/swipe/internal/ScrimView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/billy/android/swipe/internal/ScrimView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public isDrawerViewRequired()Z
    .locals 1

    .line 451
    iget-boolean v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mDrawerViewRequired:Z

    return v0
.end method

.method public isScrimAndShadowOutsideContentView()Z
    .locals 1

    .line 467
    iget-boolean v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mShowScrimAndShadowOutsideContentView:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    invoke-virtual {v0}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->layoutContentView(Landroid/view/View;)V

    .line 244
    invoke-virtual {p0}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->layoutDrawerView()V

    .line 245
    invoke-virtual {p0}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->layoutScrimView()V

    return-void
.end method

.method protected layoutContentView(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 250
    iget v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mWidth:I

    iget v1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mHeight:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected layoutDrawerView()V
    .locals 6

    .line 255
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mCurDrawerView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mCurDrawerView:Landroid/view/View;

    iget v1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->l:I

    iget v2, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mCurDisplayDistanceX:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->t:I

    iget v3, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mCurDisplayDistanceY:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->r:I

    iget v4, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mCurDisplayDistanceX:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->b:I

    iget v5, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mCurDisplayDistanceY:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected layoutScrimView()V
    .locals 8

    .line 261
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mScrimView:Lcom/billy/android/swipe/internal/ScrimView;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/billy/android/swipe/internal/ScrimView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    .line 262
    iget v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mWidth:I

    iget v1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mHeight:I

    .line 263
    iget-boolean v2, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mShowScrimAndShadowOutsideContentView:Z

    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    .line 264
    iget v2, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mDirection:I

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    iget v2, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mCurDisplayDistanceY:I

    add-int/2addr v2, v1

    goto :goto_2

    .line 267
    :cond_1
    iget v1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mCurDisplayDistanceY:I

    goto :goto_0

    .line 266
    :cond_2
    iget v2, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mCurDisplayDistanceX:I

    add-int/2addr v2, v0

    goto :goto_1

    .line 265
    :cond_3
    iget v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mCurDisplayDistanceX:I

    goto :goto_0

    .line 272
    :cond_4
    iget v2, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mDirection:I

    if-eq v2, v6, :cond_8

    if-eq v2, v5, :cond_7

    if-eq v2, v4, :cond_6

    if-eq v2, v3, :cond_5

    :goto_0
    const/4 v2, 0x0

    goto :goto_2

    .line 276
    :cond_5
    iget v2, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mCurDisplayDistanceY:I

    add-int/2addr v1, v2

    goto :goto_0

    .line 275
    :cond_6
    iget v2, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mCurDisplayDistanceY:I

    goto :goto_2

    .line 274
    :cond_7
    iget v2, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mCurDisplayDistanceX:I

    add-int/2addr v0, v2

    goto :goto_0

    .line 273
    :cond_8
    iget v2, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mCurDisplayDistanceX:I

    :goto_1
    move v7, v2

    goto :goto_0

    .line 280
    :goto_2
    iget-object v3, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mScrimView:Lcom/billy/android/swipe/internal/ScrimView;

    invoke-virtual {v3, v7, v2, v0, v1}, Lcom/billy/android/swipe/internal/ScrimView;->layout(IIII)V

    .line 281
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mScrimView:Lcom/billy/android/swipe/internal/ScrimView;

    iget-boolean v1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mShowScrimAndShadowOutsideContentView:Z

    if-eqz v1, :cond_9

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mProgress:F

    sub-float/2addr v1, v2

    goto :goto_3

    :cond_9
    iget v1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mProgress:F

    :goto_3
    invoke-virtual {v0, v1}, Lcom/billy/android/swipe/internal/ScrimView;->setProgress(F)V

    :cond_a
    return-void
.end method

.method protected notifySwipeProgress(Z)V
    .locals 8

    .line 295
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mCurDrawerView:Landroid/view/View;

    instance-of v1, v0, Lcom/billy/android/swipe/listener/SwipeListener;

    if-eqz v1, :cond_0

    .line 296
    move-object v2, v0

    check-cast v2, Lcom/billy/android/swipe/listener/SwipeListener;

    iget-object v3, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    iget v5, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mDirection:I

    iget v7, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mProgress:F

    move-object v4, p0

    move v6, p1

    invoke-interface/range {v2 .. v7}, Lcom/billy/android/swipe/listener/SwipeListener;->onSwipeProcess(Lcom/billy/android/swipe/SmartSwipeWrapper;Lcom/billy/android/swipe/SwipeConsumer;IZF)V

    .line 298
    :cond_0
    invoke-super {p0, p1}, Lcom/billy/android/swipe/SwipeConsumer;->notifySwipeProgress(Z)V

    return-void
.end method

.method protected notifySwipeRelease(FF)V
    .locals 9

    .line 303
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mCurDrawerView:Landroid/view/View;

    instance-of v1, v0, Lcom/billy/android/swipe/listener/SwipeListener;

    if-eqz v1, :cond_0

    .line 304
    move-object v2, v0

    check-cast v2, Lcom/billy/android/swipe/listener/SwipeListener;

    iget-object v3, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    iget v5, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mDirection:I

    iget v6, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mProgress:F

    move-object v4, p0

    move v7, p1

    move v8, p2

    invoke-interface/range {v2 .. v8}, Lcom/billy/android/swipe/listener/SwipeListener;->onSwipeRelease(Lcom/billy/android/swipe/SmartSwipeWrapper;Lcom/billy/android/swipe/SwipeConsumer;IFFF)V

    .line 306
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/billy/android/swipe/SwipeConsumer;->notifySwipeRelease(FF)V

    return-void
.end method

.method protected notifySwipeStart()V
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mCurDrawerView:Landroid/view/View;

    instance-of v1, v0, Lcom/billy/android/swipe/listener/SwipeListener;

    if-eqz v1, :cond_0

    .line 288
    check-cast v0, Lcom/billy/android/swipe/listener/SwipeListener;

    iget-object v1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    iget v2, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mDirection:I

    invoke-interface {v0, v1, p0, v2}, Lcom/billy/android/swipe/listener/SwipeListener;->onSwipeStart(Lcom/billy/android/swipe/SmartSwipeWrapper;Lcom/billy/android/swipe/SwipeConsumer;I)V

    .line 290
    :cond_0
    invoke-super {p0}, Lcom/billy/android/swipe/SwipeConsumer;->notifySwipeStart()V

    return-void
.end method

.method public onAttachToWrapper(Lcom/billy/android/swipe/SmartSwipeWrapper;Lcom/billy/android/swipe/internal/SwipeHelper;)V
    .locals 1

    .line 47
    invoke-super {p0, p1, p2}, Lcom/billy/android/swipe/SwipeConsumer;->onAttachToWrapper(Lcom/billy/android/swipe/SmartSwipeWrapper;Lcom/billy/android/swipe/internal/SwipeHelper;)V

    const/4 p2, 0x0

    .line 48
    :goto_0
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mDrawerViews:[Landroid/view/View;

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 49
    invoke-direct {p0, p2}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->attachDrawerView(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 51
    :cond_0
    iget p2, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mShadowSize:I

    if-nez p2, :cond_1

    const/16 p2, 0xa

    .line 53
    invoke-virtual {p1}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/billy/android/swipe/SmartSwipe;->dp2px(ILandroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mShadowSize:I

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 481
    invoke-virtual {p0}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->getDragState()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mShowScrimAndShadowOutsideContentView:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mScrimView:Lcom/billy/android/swipe/internal/ScrimView;

    if-ne p1, v0, :cond_0

    .line 482
    invoke-virtual {p0}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->smoothClose()Lcom/billy/android/swipe/SwipeConsumer;

    :cond_0
    return-void
.end method

.method protected onClosed()V
    .locals 2

    .line 117
    invoke-super {p0}, Lcom/billy/android/swipe/SwipeConsumer;->onClosed()V

    .line 118
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mCurDrawerView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 119
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->changeDrawerViewVisibility(I)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mScrimView:Lcom/billy/android/swipe/internal/ScrimView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 122
    invoke-virtual {v0, v1}, Lcom/billy/android/swipe/internal/ScrimView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mScrimView:Lcom/billy/android/swipe/internal/ScrimView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/billy/android/swipe/internal/ScrimView;->setClickable(Z)V

    .line 124
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mScrimView:Lcom/billy/android/swipe/internal/ScrimView;

    invoke-virtual {v0, v1}, Lcom/billy/android/swipe/internal/ScrimView;->setFocusable(Z)V

    .line 125
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mScrimView:Lcom/billy/android/swipe/internal/ScrimView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/billy/android/swipe/internal/ScrimView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onDetachFromWrapper()V
    .locals 6

    .line 93
    invoke-super {p0}, Lcom/billy/android/swipe/SwipeConsumer;->onDetachFromWrapper()V

    .line 94
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mScrimView:Lcom/billy/android/swipe/internal/ScrimView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    iget-object v2, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mScrimView:Lcom/billy/android/swipe/internal/ScrimView;

    invoke-virtual {v0, v2}, Lcom/billy/android/swipe/SmartSwipeWrapper;->removeView(Landroid/view/View;)V

    .line 96
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mScrimView:Lcom/billy/android/swipe/internal/ScrimView;

    invoke-virtual {v0, v1}, Lcom/billy/android/swipe/internal/ScrimView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iput-object v1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mScrimView:Lcom/billy/android/swipe/internal/ScrimView;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mDrawerViews:[Landroid/view/View;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    if-eqz v4, :cond_1

    .line 101
    iget-object v5, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    invoke-virtual {v5, v4}, Lcom/billy/android/swipe/SmartSwipeWrapper;->removeView(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    :cond_2
    iput-object v1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mCurDrawerView:Landroid/view/View;

    return-void
.end method

.method protected onDisplayDistanceChanged(IIII)V
    .locals 1

    .line 221
    iget-object p1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mCurDrawerView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    iget-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    if-ne p2, v0, :cond_2

    .line 223
    iget p2, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mDirection:I

    and-int/lit8 p2, p2, 0x3

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 225
    invoke-static {p1, p3}, Lcom/billy/android/swipe/internal/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    goto :goto_1

    .line 227
    :cond_1
    invoke-static {p1, p4}, Lcom/billy/android/swipe/internal/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 229
    :goto_1
    invoke-virtual {p0}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->layoutScrimView()V

    :cond_2
    return-void
.end method

.method public onLayout(ZIIII)Z
    .locals 0

    .line 212
    iget-object p1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->layoutChildren()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onOpened()V
    .locals 2

    .line 109
    invoke-super {p0}, Lcom/billy/android/swipe/SwipeConsumer;->onOpened()V

    .line 110
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mScrimView:Lcom/billy/android/swipe/internal/ScrimView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mShowScrimAndShadowOutsideContentView:Z

    if-nez v1, :cond_0

    .line 111
    invoke-virtual {v0, p0}, Lcom/billy/android/swipe/internal/ScrimView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onSwipeAccepted(IZFF)V
    .locals 4

    .line 142
    iget v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mCachedSwipeDistanceX:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mCachedSwipeDistanceY:I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 143
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->changeDrawerViewVisibility(I)V

    .line 144
    iget v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mDirection:I

    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->getDrawerView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mCurDrawerView:Landroid/view/View;

    .line 145
    invoke-virtual {p0, v1}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->changeDrawerViewVisibility(I)V

    .line 147
    :cond_0
    iget v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mWidth:I

    .line 148
    iget v2, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mHeight:I

    .line 149
    iget-object v3, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mCurDrawerView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 150
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 151
    iget-object v2, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mCurDrawerView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    goto :goto_0

    .line 152
    :cond_1
    iget-boolean v3, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mDrawerViewRequired:Z

    if-eqz v3, :cond_2

    return-void

    .line 155
    :cond_2
    :goto_0
    iget-boolean v3, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mOpenDistanceSpecified:Z

    if-nez v3, :cond_4

    .line 156
    iget v3, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mDirection:I

    and-int/lit8 v3, v3, 0x3

    if-lez v3, :cond_3

    .line 157
    iput v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mOpenDistance:I

    goto :goto_1

    .line 159
    :cond_3
    iput v2, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mOpenDistance:I

    .line 162
    :cond_4
    :goto_1
    iget v3, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mDirection:I

    invoke-virtual {p0, v3, v0, v2}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->calculateDrawerDirectionInitPosition(III)V

    .line 163
    invoke-virtual {p0, v1}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->changeDrawerViewVisibility(I)V

    .line 164
    invoke-virtual {p0}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->initScrimView()V

    .line 165
    invoke-virtual {p0}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->layoutChildren()V

    .line 166
    invoke-virtual {p0}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->orderChildren()V

    .line 167
    invoke-super {p0, p1, p2, p3, p4}, Lcom/billy/android/swipe/SwipeConsumer;->onSwipeAccepted(IZFF)V

    return-void
.end method

.method protected orderChildren()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mCurDrawerView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mScrimView:Lcom/billy/android/swipe/internal/ScrimView;

    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {v0}, Lcom/billy/android/swipe/internal/ScrimView;->bringToFront()V

    :cond_1
    return-void
.end method

.method public setAllDirectionDrawerView(Landroid/view/View;)Lcom/billy/android/swipe/consumer/DrawerConsumer;
    .locals 1

    const/16 v0, 0xf

    .line 343
    invoke-virtual {p0, v0, p1}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->setDrawerView(ILandroid/view/View;)Lcom/billy/android/swipe/consumer/DrawerConsumer;

    move-result-object p1

    return-object p1
.end method

.method public setBottomDrawerView(Landroid/view/View;)Lcom/billy/android/swipe/consumer/DrawerConsumer;
    .locals 1

    const/16 v0, 0x8

    .line 334
    invoke-virtual {p0, v0, p1}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->setDrawerView(ILandroid/view/View;)Lcom/billy/android/swipe/consumer/DrawerConsumer;

    move-result-object p1

    return-object p1
.end method

.method public setCurrentStateAsClosed()V
    .locals 1

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mCurDrawerView:Landroid/view/View;

    .line 179
    invoke-super {p0}, Lcom/billy/android/swipe/SwipeConsumer;->setCurrentStateAsClosed()V

    return-void
.end method

.method public setDrawerView(ILandroid/view/View;)Lcom/billy/android/swipe/consumer/DrawerConsumer;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 354
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->enableDirection(IZ)Lcom/billy/android/swipe/SwipeConsumer;

    and-int/lit8 v2, p1, 0x1

    if-lez v2, :cond_1

    .line 356
    invoke-direct {p0, v0, p2}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->setOrUpdateDrawerView(ILandroid/view/View;)V

    :cond_1
    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_2

    .line 359
    invoke-direct {p0, v1, p2}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->setOrUpdateDrawerView(ILandroid/view/View;)V

    :cond_2
    and-int/lit8 v0, p1, 0x4

    if-lez v0, :cond_3

    const/4 v0, 0x2

    .line 362
    invoke-direct {p0, v0, p2}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->setOrUpdateDrawerView(ILandroid/view/View;)V

    :cond_3
    and-int/lit8 p1, p1, 0x8

    if-lez p1, :cond_4

    const/4 p1, 0x3

    .line 365
    invoke-direct {p0, p1, p2}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->setOrUpdateDrawerView(ILandroid/view/View;)V

    :cond_4
    return-object p0
.end method

.method public setDrawerViewRequired(Z)Lcom/billy/android/swipe/consumer/DrawerConsumer;
    .locals 0

    .line 462
    iput-boolean p1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mDrawerViewRequired:Z

    return-object p0
.end method

.method public setHorizontalDrawerView(Landroid/view/View;)Lcom/billy/android/swipe/consumer/DrawerConsumer;
    .locals 1

    const/4 v0, 0x3

    .line 337
    invoke-virtual {p0, v0, p1}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->setDrawerView(ILandroid/view/View;)Lcom/billy/android/swipe/consumer/DrawerConsumer;

    move-result-object p1

    return-object p1
.end method

.method public setLeftDrawerView(Landroid/view/View;)Lcom/billy/android/swipe/consumer/DrawerConsumer;
    .locals 1

    const/4 v0, 0x1

    .line 325
    invoke-virtual {p0, v0, p1}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->setDrawerView(ILandroid/view/View;)Lcom/billy/android/swipe/consumer/DrawerConsumer;

    move-result-object p1

    return-object p1
.end method

.method public setRightDrawerView(Landroid/view/View;)Lcom/billy/android/swipe/consumer/DrawerConsumer;
    .locals 1

    const/4 v0, 0x2

    .line 328
    invoke-virtual {p0, v0, p1}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->setDrawerView(ILandroid/view/View;)Lcom/billy/android/swipe/consumer/DrawerConsumer;

    move-result-object p1

    return-object p1
.end method

.method public setScrimColor(I)Lcom/billy/android/swipe/consumer/DrawerConsumer;
    .locals 0

    .line 422
    iput p1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mScrimColor:I

    return-object p0
.end method

.method public setShadowColor(I)Lcom/billy/android/swipe/consumer/DrawerConsumer;
    .locals 0

    .line 432
    iput p1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mShadowColor:I

    return-object p0
.end method

.method public setShadowSize(I)Lcom/billy/android/swipe/consumer/DrawerConsumer;
    .locals 0

    .line 446
    iput p1, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mShadowSize:I

    return-object p0
.end method

.method public setTopDrawerView(Landroid/view/View;)Lcom/billy/android/swipe/consumer/DrawerConsumer;
    .locals 1

    const/4 v0, 0x4

    .line 331
    invoke-virtual {p0, v0, p1}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->setDrawerView(ILandroid/view/View;)Lcom/billy/android/swipe/consumer/DrawerConsumer;

    move-result-object p1

    return-object p1
.end method

.method public setVerticalDrawerView(Landroid/view/View;)Lcom/billy/android/swipe/consumer/DrawerConsumer;
    .locals 1

    const/16 v0, 0xc

    .line 340
    invoke-virtual {p0, v0, p1}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->setDrawerView(ILandroid/view/View;)Lcom/billy/android/swipe/consumer/DrawerConsumer;

    move-result-object p1

    return-object p1
.end method

.method public showScrimAndShadowInsideContentView()Lcom/billy/android/swipe/consumer/DrawerConsumer;
    .locals 1

    const/4 v0, 0x0

    .line 475
    iput-boolean v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mShowScrimAndShadowOutsideContentView:Z

    return-object p0
.end method

.method public showScrimAndShadowOutsideContentView()Lcom/billy/android/swipe/consumer/DrawerConsumer;
    .locals 1

    const/4 v0, 0x1

    .line 471
    iput-boolean v0, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mShowScrimAndShadowOutsideContentView:Z

    return-object p0
.end method

.method public tryAcceptMoving(IFFFF)Z
    .locals 0

    .line 131
    invoke-super/range {p0 .. p5}, Lcom/billy/android/swipe/SwipeConsumer;->tryAcceptMoving(IFFFF)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 132
    iget p2, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mCachedSwipeDistanceX:I

    if-nez p2, :cond_0

    iget p2, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mCachedSwipeDistanceY:I

    if-nez p2, :cond_0

    .line 133
    iget-boolean p2, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mDrawerViewRequired:Z

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/billy/android/swipe/consumer/DrawerConsumer;->mDirection:I

    invoke-virtual {p0, p2}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->getDrawerView(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method
