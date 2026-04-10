.class public Lcom/billy/android/swipe/consumer/ActivityShuttersBackConsumer;
.super Lcom/billy/android/swipe/consumer/ShuttersConsumer;
.source "ActivityShuttersBackConsumer.java"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mActivityTranslucentUtil:Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/billy/android/swipe/consumer/ShuttersConsumer;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/billy/android/swipe/consumer/ActivityShuttersBackConsumer;->mActivity:Landroid/app/Activity;

    .line 18
    new-instance v0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;

    invoke-direct {v0, p1}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/billy/android/swipe/consumer/ActivityShuttersBackConsumer;->mActivityTranslucentUtil:Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;

    return-void
.end method


# virtual methods
.method public clampDistanceHorizontal(II)I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ActivityShuttersBackConsumer;->mActivityTranslucentUtil:Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;

    invoke-virtual {v0}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->isTranslucent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-super {p0, p1, p2}, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->clampDistanceHorizontal(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public clampDistanceVertical(II)I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ActivityShuttersBackConsumer;->mActivityTranslucentUtil:Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;

    invoke-virtual {v0}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->isTranslucent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-super {p0, p1, p2}, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->clampDistanceVertical(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onAttachToWrapper(Lcom/billy/android/swipe/SmartSwipeWrapper;Lcom/billy/android/swipe/internal/SwipeHelper;)V
    .locals 0

    .line 23
    invoke-super {p0, p1, p2}, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->onAttachToWrapper(Lcom/billy/android/swipe/SmartSwipeWrapper;Lcom/billy/android/swipe/internal/SwipeHelper;)V

    .line 24
    iget-object p1, p0, Lcom/billy/android/swipe/consumer/ActivityShuttersBackConsumer;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->convertWindowToTranslucent(Landroid/app/Activity;)V

    return-void
.end method

.method protected onClosed()V
    .locals 1

    .line 61
    invoke-super {p0}, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->onClosed()V

    .line 62
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ActivityShuttersBackConsumer;->mActivityTranslucentUtil:Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;

    invoke-virtual {v0}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->convertActivityFromTranslucent()V

    return-void
.end method

.method public onDetachFromWrapper()V
    .locals 1

    .line 44
    invoke-super {p0}, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->onDetachFromWrapper()V

    .line 45
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ActivityShuttersBackConsumer;->mActivityTranslucentUtil:Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;

    invoke-virtual {v0}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->convertActivityFromTranslucent()V

    return-void
.end method

.method protected onDisplayDistanceChanged(IIII)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ActivityShuttersBackConsumer;->mActivityTranslucentUtil:Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;

    invoke-virtual {v0}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->isTranslucent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-super {p0, p1, p2, p3, p4}, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->onDisplayDistanceChanged(IIII)V

    :cond_0
    return-void
.end method

.method protected onOpened()V
    .locals 3

    .line 50
    invoke-super {p0}, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->onOpened()V

    .line 51
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ActivityShuttersBackConsumer;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ActivityShuttersBackConsumer;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ActivityShuttersBackConsumer;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 54
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ActivityShuttersBackConsumer;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/billy/android/swipe/R$anim;->anim_none:I

    sget v2, Lcom/billy/android/swipe/R$anim;->anim_none:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method

.method public onSwipeAccepted(IZFF)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ActivityShuttersBackConsumer;->mActivityTranslucentUtil:Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;

    invoke-virtual {v0}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->isTranslucent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ActivityShuttersBackConsumer;->mActivityTranslucentUtil:Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;

    invoke-virtual {v0}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->convertActivityToTranslucent()V

    .line 32
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->onSwipeAccepted(IZFF)V

    return-void
.end method
