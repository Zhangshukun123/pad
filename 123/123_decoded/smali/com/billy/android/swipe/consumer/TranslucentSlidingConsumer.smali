.class public Lcom/billy/android/swipe/consumer/TranslucentSlidingConsumer;
.super Lcom/billy/android/swipe/consumer/SlidingConsumer;
.source "TranslucentSlidingConsumer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/billy/android/swipe/consumer/SlidingConsumer;-><init>()V

    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/consumer/TranslucentSlidingConsumer;->setDrawerViewRequired(Z)Lcom/billy/android/swipe/consumer/DrawerConsumer;

    return-void
.end method


# virtual methods
.method protected changeDrawerViewVisibility(I)V
    .locals 0

    return-void
.end method

.method public getDrawerView(I)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected initChildrenFormXml()V
    .locals 0

    return-void
.end method

.method protected layoutDrawerView()V
    .locals 0

    return-void
.end method

.method public bridge synthetic setDrawerView(ILandroid/view/View;)Lcom/billy/android/swipe/consumer/DrawerConsumer;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/billy/android/swipe/consumer/TranslucentSlidingConsumer;->setDrawerView(ILandroid/view/View;)Lcom/billy/android/swipe/consumer/TranslucentSlidingConsumer;

    move-result-object p1

    return-object p1
.end method

.method public setDrawerView(ILandroid/view/View;)Lcom/billy/android/swipe/consumer/TranslucentSlidingConsumer;
    .locals 0

    return-object p0
.end method

.method public setOverSwipeFactor(F)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 0

    return-object p0
.end method
