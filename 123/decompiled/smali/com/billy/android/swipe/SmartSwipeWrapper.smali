.class public Lcom/billy/android/swipe/SmartSwipeWrapper;
.super Landroid/view/ViewGroup;
.source "SmartSwipeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;
    }
.end annotation


# static fields
.field private static final NESTED_TYPE_INVALID:I = -0x1


# instance fields
.field private flyToClose:Ljava/lang/Boolean;

.field private flyToOpen:Ljava/lang/Boolean;

.field protected final mConsumers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/billy/android/swipe/SwipeConsumer;",
            ">;"
        }
    .end annotation
.end field

.field protected mContentView:Landroid/view/View;

.field protected mCurNestedType:I

.field protected mHelper:Lcom/billy/android/swipe/internal/SwipeHelper;

.field protected final mHelpers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/billy/android/swipe/internal/SwipeHelper;",
            ">;"
        }
    .end annotation
.end field

.field protected mInflateFromXml:Z

.field protected mIsNestedScrollingEnabled:Z

.field private final mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mNestedFlyConsumed:Z

.field protected mNestedInProgress:Z

.field protected mParentOffsetInWindow:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, v0, v1}, Lcom/billy/android/swipe/SmartSwipeWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/billy/android/swipe/SmartSwipeWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mHelpers:Ljava/util/List;

    .line 38
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mConsumers:Ljava/util/List;

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mIsNestedScrollingEnabled:Z

    .line 134
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mMatchParentChildren:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 519
    iput p1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mCurNestedType:I

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 557
    iput-object p1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mParentOffsetInWindow:[I

    .line 53
    invoke-virtual {p0}, Lcom/billy/android/swipe/SmartSwipeWrapper;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mHelpers:Ljava/util/List;

    .line 38
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mConsumers:Ljava/util/List;

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mIsNestedScrollingEnabled:Z

    .line 134
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mMatchParentChildren:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 519
    iput p1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mCurNestedType:I

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 557
    iput-object p1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mParentOffsetInWindow:[I

    .line 59
    invoke-virtual {p0}, Lcom/billy/android/swipe/SmartSwipeWrapper;->init()V

    return-void
.end method

.method private wrapperNestedScroll(II[II)V
    .locals 6

    .line 603
    iget v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mCurNestedType:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 612
    iput p4, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mCurNestedType:I

    .line 613
    iput-boolean v2, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mNestedFlyConsumed:Z

    .line 614
    iput-object v1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->flyToClose:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->flyToOpen:Ljava/lang/Boolean;

    :cond_0
    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 617
    :goto_0
    iget-object v4, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mHelper:Lcom/billy/android/swipe/internal/SwipeHelper;

    if-eqz v4, :cond_13

    .line 618
    invoke-virtual {v4}, Lcom/billy/android/swipe/internal/SwipeHelper;->getSwipeConsumer()Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p4

    const/high16 v4, 0x3f800000    # 1.0f

    .line 619
    invoke-virtual {p4}, Lcom/billy/android/swipe/SwipeConsumer;->getOverSwipeFactor()F

    move-result v5

    add-float/2addr v5, v4

    const/4 v4, 0x0

    if-eqz v3, :cond_11

    .line 621
    iget-object v1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->flyToOpen:Ljava/lang/Boolean;

    if-nez v1, :cond_e

    .line 625
    invoke-virtual {p4}, Lcom/billy/android/swipe/SwipeConsumer;->getDirection()I

    move-result v1

    if-eq v1, v0, :cond_b

    const/4 v3, 0x2

    if-eq v1, v3, :cond_8

    const/4 v3, 0x4

    if-eq v1, v3, :cond_5

    const/16 v3, 0x8

    if-eq v1, v3, :cond_2

    .line 630
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->flyToClose:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->flyToOpen:Ljava/lang/Boolean;

    goto :goto_5

    :cond_2
    if-lez p2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 627
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->flyToOpen:Ljava/lang/Boolean;

    if-gez p2, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->flyToClose:Ljava/lang/Boolean;

    if-nez p2, :cond_e

    return-void

    :cond_5
    if-gez p2, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    .line 626
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->flyToOpen:Ljava/lang/Boolean;

    if-lez p2, :cond_7

    const/4 v2, 0x1

    :cond_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->flyToClose:Ljava/lang/Boolean;

    if-nez p2, :cond_e

    return-void

    :cond_8
    if-lez p1, :cond_9

    const/4 v1, 0x1

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    .line 629
    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->flyToOpen:Ljava/lang/Boolean;

    if-gez p1, :cond_a

    const/4 v2, 0x1

    :cond_a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->flyToClose:Ljava/lang/Boolean;

    if-nez p1, :cond_e

    return-void

    :cond_b
    if-gez p1, :cond_c

    const/4 v1, 0x1

    goto :goto_4

    :cond_c
    const/4 v1, 0x0

    .line 628
    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->flyToOpen:Ljava/lang/Boolean;

    if-lez p1, :cond_d

    const/4 v2, 0x1

    :cond_d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->flyToClose:Ljava/lang/Boolean;

    if-nez p1, :cond_e

    return-void

    .line 633
    :cond_e
    :goto_5
    iget-boolean v1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mNestedFlyConsumed:Z

    if-nez v1, :cond_16

    .line 634
    iget-object v1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mHelper:Lcom/billy/android/swipe/internal/SwipeHelper;

    neg-int p1, p1

    neg-int p2, p2

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/billy/android/swipe/internal/SwipeHelper;->nestedScrollingDrag(II[IZ)Z

    .line 635
    iget-object p1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->flyToOpen:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p4}, Lcom/billy/android/swipe/SwipeConsumer;->getProgress()F

    move-result p1

    cmpl-float p1, p1, v5

    if-gez p1, :cond_10

    :cond_f
    iget-object p1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->flyToClose:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-virtual {p4}, Lcom/billy/android/swipe/SwipeConsumer;->getProgress()F

    move-result p1

    cmpg-float p1, p1, v4

    if-gtz p1, :cond_16

    .line 636
    :cond_10
    iput-boolean v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mNestedFlyConsumed:Z

    .line 637
    iget-object p1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mHelper:Lcom/billy/android/swipe/internal/SwipeHelper;

    invoke-virtual {p1}, Lcom/billy/android/swipe/internal/SwipeHelper;->nestedScrollingRelease()V

    goto :goto_7

    .line 641
    :cond_11
    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mHelper:Lcom/billy/android/swipe/internal/SwipeHelper;

    neg-int p1, p1

    neg-int p2, p2

    invoke-virtual {v0, p1, p2, p3, v2}, Lcom/billy/android/swipe/internal/SwipeHelper;->nestedScrollingDrag(II[IZ)Z

    .line 642
    invoke-virtual {p4}, Lcom/billy/android/swipe/SwipeConsumer;->getProgress()F

    move-result p1

    cmpl-float p1, p1, v5

    if-gez p1, :cond_12

    invoke-virtual {p4}, Lcom/billy/android/swipe/SwipeConsumer;->getProgress()F

    move-result p1

    cmpg-float p1, p1, v4

    if-gtz p1, :cond_16

    .line 643
    :cond_12
    iput-object v1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mHelper:Lcom/billy/android/swipe/internal/SwipeHelper;

    goto :goto_7

    .line 647
    :cond_13
    iget-object p3, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mHelpers:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_14
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/billy/android/swipe/internal/SwipeHelper;

    if-eqz v1, :cond_14

    neg-int v3, p1

    neg-int v4, p2

    if-ne p4, v0, :cond_15

    const/4 v5, 0x1

    goto :goto_6

    :cond_15
    const/4 v5, 0x0

    .line 650
    :goto_6
    invoke-virtual {v1, v3, v4, v5}, Lcom/billy/android/swipe/internal/SwipeHelper;->nestedScrollingTrySwipe(IIZ)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 651
    iput-object v1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mHelper:Lcom/billy/android/swipe/internal/SwipeHelper;

    :cond_16
    :goto_7
    return-void
.end method


# virtual methods
.method public addConsumer(Lcom/billy/android/swipe/SwipeConsumer;)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/billy/android/swipe/SwipeConsumer;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 262
    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mConsumers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-virtual {p1}, Lcom/billy/android/swipe/SwipeConsumer;->getSwipeHelper()Lcom/billy/android/swipe/internal/SwipeHelper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 265
    invoke-virtual {p1}, Lcom/billy/android/swipe/SwipeConsumer;->getSensitivity()F

    move-result v0

    invoke-virtual {p1}, Lcom/billy/android/swipe/SwipeConsumer;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-static {p0, v0, p1, v1}, Lcom/billy/android/swipe/internal/SwipeHelper;->create(Landroid/view/ViewGroup;FLcom/billy/android/swipe/SwipeConsumer;Landroid/view/animation/Interpolator;)Lcom/billy/android/swipe/internal/SwipeHelper;

    move-result-object v0

    .line 267
    :cond_0
    invoke-virtual {p1, p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->onAttachToWrapper(Lcom/billy/android/swipe/SmartSwipeWrapper;Lcom/billy/android/swipe/internal/SwipeHelper;)V

    .line 268
    iget-object v1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mHelpers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p1
.end method

.method public computeScroll()V
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mHelpers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 249
    iget-object v1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mHelpers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/billy/android/swipe/internal/SwipeHelper;

    .line 250
    invoke-virtual {v2}, Lcom/billy/android/swipe/internal/SwipeHelper;->continueSettling()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 255
    invoke-static {p0}, Lcom/billy/android/swipe/internal/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public consumeInflateFromXml()V
    .locals 1

    const/4 v0, 0x0

    .line 354
    iput-boolean v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mInflateFromXml:Z

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 112
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 113
    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mConsumers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/billy/android/swipe/SwipeConsumer;

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {v1, p1}, Lcom/billy/android/swipe/SwipeConsumer;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 2

    .line 749
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 750
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 2

    .line 757
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 758
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 737
    invoke-virtual/range {v0 .. v5}, Lcom/billy/android/swipe/SmartSwipeWrapper;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 1

    .line 741
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p5, v0, :cond_0

    .line 742
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 722
    invoke-virtual/range {v0 .. v6}, Lcom/billy/android/swipe/SmartSwipeWrapper;->dispatchNestedScroll(IIII[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .locals 1

    .line 728
    sget p6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p6, v0, :cond_0

    .line 729
    invoke-super/range {p0 .. p5}, Landroid/view/ViewGroup;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mHelper:Lcom/billy/android/swipe/internal/SwipeHelper;

    .line 70
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getDrawingTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/billy/android/swipe/SmartSwipeWrapper;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    return-void
.end method

.method public enableDirection(I)Lcom/billy/android/swipe/SmartSwipeWrapper;
    .locals 1

    const/4 v0, 0x1

    .line 339
    invoke-virtual {p0, p1, v0}, Lcom/billy/android/swipe/SmartSwipeWrapper;->enableDirection(IZ)Lcom/billy/android/swipe/SmartSwipeWrapper;

    move-result-object p1

    return-object p1
.end method

.method public enableDirection(IZ)Lcom/billy/android/swipe/SmartSwipeWrapper;
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mConsumers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/billy/android/swipe/SwipeConsumer;

    .line 344
    invoke-virtual {v1, p1, p2}, Lcom/billy/android/swipe/SwipeConsumer;->enableDirection(IZ)Lcom/billy/android/swipe/SwipeConsumer;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/billy/android/swipe/SmartSwipeWrapper;->generateDefaultLayoutParams()Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;
    .locals 2

    .line 364
    new-instance v0, Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/billy/android/swipe/SmartSwipeWrapper;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 373
    instance-of v0, p1, Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;

    if-eqz v0, :cond_0

    .line 374
    new-instance v0, Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;

    check-cast p1, Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;

    invoke-direct {v0, p1}, Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;-><init>(Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;)V

    return-object v0

    .line 375
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 376
    new-instance v0, Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 378
    :cond_1
    new-instance v0, Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;

    invoke-direct {v0, p1}, Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;
    .locals 2

    .line 368
    new-instance v0, Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;

    invoke-virtual {p0}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAllConsumers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/billy/android/swipe/SwipeConsumer;",
            ">;"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mConsumers:Ljava/util/List;

    return-object v0
.end method

.method public getConsumerByType(Ljava/lang/Class;)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/billy/android/swipe/SwipeConsumer;",
            ">;)",
            "Lcom/billy/android/swipe/SwipeConsumer;"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mConsumers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/billy/android/swipe/SwipeConsumer;

    if-eqz v1, :cond_0

    .line 313
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    const/4 v0, 0x0

    .line 709
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SmartSwipeWrapper;->hasNestedScrollingParent(I)Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .locals 1

    .line 713
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 714
    invoke-super {p0}, Landroid/view/ViewGroup;->hasNestedScrollingParent()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected helperOnNestedPreScroll(Landroid/view/View;II[II)V
    .locals 1

    .line 666
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p5, v0, :cond_0

    .line 667
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onNestedPreScroll(Landroid/view/View;II[I)V

    :cond_0
    return-void
.end method

.method protected helperOnNestedScroll(Landroid/view/View;IIIII)V
    .locals 6

    .line 672
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p6, 0x15

    if-lt p1, p6, :cond_0

    .line 673
    iget-object v5, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mParentOffsetInWindow:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/billy/android/swipe/SmartSwipeWrapper;->dispatchNestedScroll(IIII[I)Z

    :cond_0
    return-void
.end method

.method protected helperOnNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 1

    .line 660
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p4, v0, :cond_0

    .line 661
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method protected helperOnStopNestedScroll(Landroid/view/View;I)V
    .locals 1

    .line 678
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_0

    .line 679
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onStopNestedScroll(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected init()V
    .locals 0

    return-void
.end method

.method public isInflateFromXml()Z
    .locals 1

    .line 350
    iget-boolean v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mInflateFromXml:Z

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 2

    .line 459
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 460
    invoke-super {p0}, Landroid/view/ViewGroup;->isNestedScrollingEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 445
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 446
    iget-boolean v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mIsNestedScrollingEnabled:Z

    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SmartSwipeWrapper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 275
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 276
    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mConsumers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/billy/android/swipe/SwipeConsumer;

    .line 277
    invoke-virtual {v1}, Lcom/billy/android/swipe/SwipeConsumer;->close()Lcom/billy/android/swipe/SwipeConsumer;

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 126
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 127
    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mConsumers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/billy/android/swipe/SwipeConsumer;

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {v1, p1}, Lcom/billy/android/swipe/SwipeConsumer;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 226
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mInflateFromXml:Z

    .line 229
    invoke-virtual {p0}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 230
    iget-object v1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 232
    invoke-virtual {p0, v1}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 233
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 234
    instance-of v4, v3, Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;

    if-eqz v4, :cond_0

    .line 235
    check-cast v3, Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;

    iget v3, v3, Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;->gravity:I

    if-nez v3, :cond_0

    .line 237
    invoke-virtual {p0, v2}, Lcom/billy/android/swipe/SmartSwipeWrapper;->setContentView(Landroid/view/View;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 75
    iget-boolean v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mNestedInProgress:Z

    if-nez v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mHelper:Lcom/billy/android/swipe/internal/SwipeHelper;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0, p1}, Lcom/billy/android/swipe/internal/SwipeHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mHelpers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/billy/android/swipe/internal/SwipeHelper;

    .line 80
    invoke-virtual {v1, p1}, Lcom/billy/android/swipe/internal/SwipeHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    iput-object v1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mHelper:Lcom/billy/android/swipe/internal/SwipeHelper;

    const/4 p1, 0x1

    return p1

    .line 87
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .line 208
    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mHelper:Lcom/billy/android/swipe/internal/SwipeHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Lcom/billy/android/swipe/internal/SwipeHelper;->getSwipeConsumer()Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/billy/android/swipe/SwipeConsumer;->onLayout(ZIIII)Z

    move-result p1

    goto :goto_1

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mConsumers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/billy/android/swipe/SwipeConsumer;

    if-eqz v4, :cond_1

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    .line 212
    invoke-virtual/range {v4 .. v9}, Lcom/billy/android/swipe/SwipeConsumer;->onLayout(ZIIII)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_1
    if-nez p1, :cond_3

    .line 218
    iget-object p1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mContentView:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 219
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget-object p3, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {p1, v1, v1, p2, p3}, Landroid/view/View;->layout(IIII)V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getChildCount()I

    move-result v3

    .line 140
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    const/4 v5, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x0

    if-ne v4, v6, :cond_1

    .line 141
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    if-eq v4, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 142
    :goto_1
    iget-object v8, v0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2
    const/4 v12, -0x1

    if-ge v8, v3, :cond_4

    .line 149
    invoke-virtual {v0, v8}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 150
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 151
    iget v15, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v7, v15}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getChildMeasureSpec(III)I

    move-result v15

    .line 152
    iget v6, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v2, v7, v6}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getChildMeasureSpec(III)I

    move-result v6

    .line 153
    invoke-virtual {v13, v15, v6}, Landroid/view/View;->measure(II)V

    .line 154
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 155
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 156
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredState()I

    move-result v6

    invoke-static {v11, v6}, Lcom/billy/android/swipe/SmartSwipeWrapper;->combineMeasuredStates(II)I

    move-result v11

    if-eqz v4, :cond_3

    .line 158
    iget v6, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v6, v12, :cond_2

    iget v6, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v6, v12, :cond_3

    .line 160
    :cond_2
    iget-object v6, v0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v8, v8, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    goto :goto_2

    .line 166
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 169
    invoke-static {v4, v1, v11}, Lcom/billy/android/swipe/SmartSwipeWrapper;->resolveSizeAndState(III)I

    move-result v4

    shl-int/lit8 v6, v11, 0x10

    .line 170
    invoke-static {v3, v2, v6}, Lcom/billy/android/swipe/SmartSwipeWrapper;->resolveSizeAndState(III)I

    move-result v3

    .line 169
    invoke-virtual {v0, v4, v3}, Lcom/billy/android/swipe/SmartSwipeWrapper;->setMeasuredDimension(II)V

    .line 173
    iget-object v3, v0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_7

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_7

    .line 176
    iget-object v5, v0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 177
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 180
    iget v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v8, v12, :cond_5

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getMeasuredWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    .line 182
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_4

    :cond_5
    const/high16 v9, 0x40000000    # 2.0f

    .line 184
    iget v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v7, v8}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getChildMeasureSpec(III)I

    move-result v8

    .line 188
    :goto_4
    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v10, v12, :cond_6

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getMeasuredHeight()I

    move-result v6

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 190
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_5

    .line 192
    :cond_6
    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v2, v7, v6}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getChildMeasureSpec(III)I

    move-result v6

    .line 195
    :goto_5
    invoke-virtual {v5, v8, v6}, Landroid/view/View;->measure(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 198
    :cond_7
    iget-object v3, v0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mConsumers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/billy/android/swipe/SwipeConsumer;

    if-eqz v4, :cond_8

    .line 200
    invoke-virtual {v4, v1, v2}, Lcom/billy/android/swipe/SwipeConsumer;->onMeasure(II)V

    goto :goto_6

    :cond_9
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 2

    .line 551
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 552
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 2

    .line 543
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 544
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 482
    invoke-virtual/range {v0 .. v5}, Lcom/billy/android/swipe/SmartSwipeWrapper;->onNestedPreScroll(Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 12

    move-object v6, p0

    move-object/from16 v7, p4

    .line 576
    iget-object v0, v6, Lcom/billy/android/swipe/SmartSwipeWrapper;->mHelper:Lcom/billy/android/swipe/internal/SwipeHelper;

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/billy/android/swipe/internal/SwipeHelper;->getSwipeConsumer()Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/billy/android/swipe/SwipeConsumer;->getProgress()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_1

    .line 578
    :cond_1
    :goto_0
    invoke-static {v7, v9}, Ljava/util/Arrays;->fill([II)V

    .line 579
    invoke-virtual/range {p0 .. p5}, Lcom/billy/android/swipe/SmartSwipeWrapper;->helperOnNestedPreScroll(Landroid/view/View;II[II)V

    .line 580
    aget v0, v7, v9

    add-int/2addr v0, v9

    .line 581
    aget v1, v7, v8

    add-int/2addr v1, v9

    const/4 v2, 0x1

    .line 583
    :goto_1
    iget-object v3, v6, Lcom/billy/android/swipe/SmartSwipeWrapper;->mHelper:Lcom/billy/android/swipe/internal/SwipeHelper;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/billy/android/swipe/internal/SwipeHelper;->getSwipeConsumer()Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/billy/android/swipe/SwipeConsumer;->getDirection()I

    move-result v3

    if-eqz v3, :cond_2

    .line 584
    invoke-static {v7, v9}, Ljava/util/Arrays;->fill([II)V

    sub-int v3, p2, v0

    sub-int v4, p3, v1

    move/from16 v5, p5

    .line 585
    invoke-direct {p0, v3, v4, v7, v5}, Lcom/billy/android/swipe/SmartSwipeWrapper;->wrapperNestedScroll(II[II)V

    .line 586
    aget v3, v7, v9

    sub-int/2addr v0, v3

    .line 587
    aget v3, v7, v8

    sub-int/2addr v1, v3

    goto :goto_2

    :cond_2
    move/from16 v5, p5

    :goto_2
    move v10, v0

    move v11, v1

    if-nez v2, :cond_3

    .line 590
    invoke-static {v7, v9}, Ljava/util/Arrays;->fill([II)V

    sub-int v2, p2, v10

    sub-int v3, p3, v11

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p4

    move/from16 v5, p5

    .line 591
    invoke-virtual/range {v0 .. v5}, Lcom/billy/android/swipe/SmartSwipeWrapper;->helperOnNestedPreScroll(Landroid/view/View;II[II)V

    .line 592
    aget v0, v7, v9

    add-int/2addr v10, v0

    .line 593
    aget v0, v7, v8

    add-int/2addr v11, v0

    .line 595
    :cond_3
    aput v10, v7, v9

    .line 596
    aput v11, v7, v8

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 487
    invoke-virtual/range {v0 .. v6}, Lcom/billy/android/swipe/SmartSwipeWrapper;->onNestedScroll(Landroid/view/View;IIIII)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 0

    .line 560
    invoke-virtual/range {p0 .. p6}, Lcom/billy/android/swipe/SmartSwipeWrapper;->helperOnNestedScroll(Landroid/view/View;IIIII)V

    .line 561
    iget-object p1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mParentOffsetInWindow:[I

    const/4 p2, 0x0

    aget p3, p1, p2

    add-int/2addr p4, p3

    const/4 p3, 0x1

    .line 562
    aget p1, p1, p3

    add-int/2addr p5, p1

    if-nez p4, :cond_0

    if-eqz p5, :cond_2

    :cond_0
    if-ne p6, p3, :cond_1

    .line 566
    invoke-virtual {p0, p2}, Lcom/billy/android/swipe/SmartSwipeWrapper;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 569
    invoke-direct {p0, p4, p5, p1, p6}, Lcom/billy/android/swipe/SmartSwipeWrapper;->wrapperNestedScroll(II[II)V

    :cond_2
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 472
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/billy/android/swipe/SmartSwipeWrapper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x1

    .line 523
    iput-boolean v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mNestedInProgress:Z

    const/4 v0, 0x0

    .line 524
    iput-boolean v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mNestedFlyConsumed:Z

    const/4 v0, 0x0

    .line 525
    iput-object v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->flyToClose:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->flyToOpen:Ljava/lang/Boolean;

    .line 526
    iput p4, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mCurNestedType:I

    .line 527
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/billy/android/swipe/SmartSwipeWrapper;->helperOnNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 467
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/billy/android/swipe/SmartSwipeWrapper;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 5

    and-int/lit8 p1, p3, 0x2

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 499
    :goto_1
    iget-object v2, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mConsumers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/billy/android/swipe/SwipeConsumer;

    .line 500
    invoke-virtual {v3}, Lcom/billy/android/swipe/SwipeConsumer;->getDirection()I

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v1, :cond_4

    if-eq v4, v0, :cond_3

    const/4 v3, 0x2

    if-ne v4, v3, :cond_4

    :cond_3
    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_6

    if-eqz p1, :cond_5

    const/4 v3, 0x4

    if-eq v4, v3, :cond_6

    const/16 v3, 0x8

    if-ne v4, v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    goto :goto_5

    :cond_6
    :goto_3
    const/4 v3, 0x1

    goto :goto_5

    :cond_7
    if-eqz v1, :cond_9

    .line 507
    invoke-virtual {v3}, Lcom/billy/android/swipe/SwipeConsumer;->isLeftEnable()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v3}, Lcom/billy/android/swipe/SwipeConsumer;->isRightEnable()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    const/4 v4, 0x1

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    :goto_4
    if-nez v4, :cond_6

    if-eqz p1, :cond_5

    .line 508
    invoke-virtual {v3}, Lcom/billy/android/swipe/SwipeConsumer;->isTopEnable()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Lcom/billy/android/swipe/SwipeConsumer;->isBottomEnable()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :goto_5
    if-eqz v3, :cond_2

    .line 511
    invoke-virtual {p0, p3, p4}, Lcom/billy/android/swipe/SmartSwipeWrapper;->startNestedScroll(II)Z

    return v0

    :cond_a
    return p2
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 477
    invoke-virtual {p0, p1, v0}, Lcom/billy/android/swipe/SmartSwipeWrapper;->onStopNestedScroll(Landroid/view/View;I)V

    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 531
    iput-boolean v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mNestedInProgress:Z

    .line 532
    invoke-virtual {p0, p1, p2}, Lcom/billy/android/swipe/SmartSwipeWrapper;->helperOnStopNestedScroll(Landroid/view/View;I)V

    .line 533
    iget p1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mCurNestedType:I

    if-ne p2, p1, :cond_0

    const/4 p1, -0x1

    .line 534
    iput p1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mCurNestedType:I

    .line 535
    iget-object p1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mHelper:Lcom/billy/android/swipe/internal/SwipeHelper;

    if-eqz p1, :cond_0

    .line 536
    invoke-virtual {p1}, Lcom/billy/android/swipe/internal/SwipeHelper;->nestedScrollingRelease()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 92
    iget-boolean v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mNestedInProgress:Z

    if-nez v0, :cond_3

    .line 93
    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mHelper:Lcom/billy/android/swipe/internal/SwipeHelper;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0, p1}, Lcom/billy/android/swipe/internal/SwipeHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mHelpers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/billy/android/swipe/internal/SwipeHelper;

    .line 97
    invoke-virtual {v2, p1}, Lcom/billy/android/swipe/internal/SwipeHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 98
    invoke-virtual {v2}, Lcom/billy/android/swipe/internal/SwipeHelper;->getDragState()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 99
    iput-object v2, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mHelper:Lcom/billy/android/swipe/internal/SwipeHelper;

    :cond_2
    :goto_0
    return v1

    .line 106
    :cond_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public removeAllConsumers()Lcom/billy/android/swipe/SmartSwipeWrapper;
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mConsumers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 283
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/billy/android/swipe/SwipeConsumer;

    .line 285
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    if-eqz v1, :cond_0

    .line 287
    invoke-virtual {v1}, Lcom/billy/android/swipe/SwipeConsumer;->onDetachFromWrapper()V

    .line 288
    invoke-virtual {v1}, Lcom/billy/android/swipe/SwipeConsumer;->getSwipeHelper()Lcom/billy/android/swipe/internal/SwipeHelper;

    move-result-object v1

    .line 289
    iget-object v2, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mHelpers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 290
    iget-object v2, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mHelper:Lcom/billy/android/swipe/internal/SwipeHelper;

    if-ne v2, v1, :cond_0

    const/4 v1, 0x0

    .line 291
    iput-object v1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mHelper:Lcom/billy/android/swipe/internal/SwipeHelper;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public removeConsumer(Lcom/billy/android/swipe/SwipeConsumer;)Lcom/billy/android/swipe/SmartSwipeWrapper;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mConsumers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p1}, Lcom/billy/android/swipe/SwipeConsumer;->onDetachFromWrapper()V

    .line 302
    invoke-virtual {p1}, Lcom/billy/android/swipe/SwipeConsumer;->getSwipeHelper()Lcom/billy/android/swipe/internal/SwipeHelper;

    move-result-object p1

    .line 303
    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mHelpers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 304
    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mHelper:Lcom/billy/android/swipe/internal/SwipeHelper;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 305
    iput-object p1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mHelper:Lcom/billy/android/swipe/internal/SwipeHelper;

    :cond_0
    return-object p0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 321
    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mContentView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    iput-object p1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mContentView:Landroid/view/View;

    .line 325
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 326
    invoke-virtual {p0, p1}, Lcom/billy/android/swipe/SmartSwipeWrapper;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 2

    .line 451
    iput-boolean p1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper;->mIsNestedScrollingEnabled:Z

    .line 452
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 453
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setNestedScrollingEnabled(Z)V

    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public startNestedScroll(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 685
    invoke-virtual {p0, p1, v0}, Lcom/billy/android/swipe/SmartSwipeWrapper;->startNestedScroll(II)Z

    move-result p1

    return p1
.end method

.method public startNestedScroll(II)Z
    .locals 1

    .line 690
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_0

    .line 691
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->startNestedScroll(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 698
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SmartSwipeWrapper;->stopNestedScroll(I)V

    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 1

    .line 702
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 703
    invoke-super {p0}, Landroid/view/ViewGroup;->stopNestedScroll()V

    :cond_0
    return-void
.end method
