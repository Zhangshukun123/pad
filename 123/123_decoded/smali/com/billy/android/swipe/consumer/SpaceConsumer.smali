.class public Lcom/billy/android/swipe/consumer/SpaceConsumer;
.super Lcom/billy/android/swipe/SwipeConsumer;
.source "SpaceConsumer.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/billy/android/swipe/SwipeConsumer;-><init>()V

    .line 13
    new-instance v0, Lcom/billy/android/swipe/calculator/ScaledCalculator;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lcom/billy/android/swipe/calculator/ScaledCalculator;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/consumer/SpaceConsumer;->setSwipeDistanceCalculator(Lcom/billy/android/swipe/calculator/SwipeDistanceCalculator;)Lcom/billy/android/swipe/SwipeConsumer;

    return-void
.end method


# virtual methods
.method public onDetachFromWrapper()V
    .locals 2

    .line 18
    invoke-super {p0}, Lcom/billy/android/swipe/SwipeConsumer;->onDetachFromWrapper()V

    .line 19
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/SpaceConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    invoke-virtual {v0}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public onDisplayDistanceChanged(IIII)V
    .locals 0

    .line 28
    iget-object p3, p0, Lcom/billy/android/swipe/consumer/SpaceConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    invoke-virtual {p3}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getContentView()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_5

    if-ltz p1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/billy/android/swipe/consumer/SpaceConsumer;->isLeftEnable()Z

    move-result p4

    if-nez p4, :cond_1

    :cond_0
    if-gtz p1, :cond_2

    invoke-virtual {p0}, Lcom/billy/android/swipe/consumer/SpaceConsumer;->isRightEnable()Z

    move-result p4

    if-eqz p4, :cond_2

    :cond_1
    int-to-float p1, p1

    .line 31
    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_2
    if-ltz p2, :cond_3

    .line 33
    invoke-virtual {p0}, Lcom/billy/android/swipe/consumer/SpaceConsumer;->isTopEnable()Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    if-gtz p2, :cond_5

    invoke-virtual {p0}, Lcom/billy/android/swipe/consumer/SpaceConsumer;->isBottomEnable()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    int-to-float p1, p2

    .line 34
    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    return-void
.end method
