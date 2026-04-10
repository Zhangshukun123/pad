.class public Lcom/billy/android/swipe/consumer/StretchConsumer;
.super Lcom/billy/android/swipe/SwipeConsumer;
.source "StretchConsumer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/billy/android/swipe/SwipeConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetachFromWrapper()V
    .locals 2

    .line 13
    invoke-super {p0}, Lcom/billy/android/swipe/SwipeConsumer;->onDetachFromWrapper()V

    .line 14
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/StretchConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    invoke-virtual {v0}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public onDisplayDistanceChanged(IIII)V
    .locals 3

    .line 25
    iget-object p3, p0, Lcom/billy/android/swipe/consumer/StretchConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    invoke-virtual {p3}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getContentView()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_5

    const/high16 p4, 0x40000000    # 2.0f

    const/high16 v0, 0x3f800000    # 1.0f

    if-ltz p1, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/billy/android/swipe/consumer/StretchConsumer;->isLeftEnable()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-gtz p1, :cond_2

    invoke-virtual {p0}, Lcom/billy/android/swipe/consumer/StretchConsumer;->isRightEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    int-to-float p1, p1

    .line 28
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/billy/android/swipe/consumer/StretchConsumer;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    invoke-virtual {p3, v1}, Landroid/view/View;->setScaleX(F)V

    div-float/2addr p1, p4

    .line 29
    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_2
    if-ltz p2, :cond_3

    .line 31
    invoke-virtual {p0}, Lcom/billy/android/swipe/consumer/StretchConsumer;->isTopEnable()Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    if-gtz p2, :cond_5

    invoke-virtual {p0}, Lcom/billy/android/swipe/consumer/StretchConsumer;->isBottomEnable()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    int-to-float p1, p2

    .line 32
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v1, p0, Lcom/billy/android/swipe/consumer/StretchConsumer;->mHeight:I

    int-to-float v1, v1

    div-float/2addr p2, v1

    add-float/2addr p2, v0

    invoke-virtual {p3, p2}, Landroid/view/View;->setScaleY(F)V

    div-float/2addr p1, p4

    .line 33
    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    return-void
.end method
