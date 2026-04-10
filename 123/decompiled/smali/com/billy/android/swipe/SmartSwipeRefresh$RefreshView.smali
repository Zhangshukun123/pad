.class interface abstract Lcom/billy/android/swipe/SmartSwipeRefresh$RefreshView;
.super Ljava/lang/Object;
.source "SmartSwipeRefresh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/billy/android/swipe/SmartSwipeRefresh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "RefreshView"
.end annotation


# virtual methods
.method public abstract getView()Landroid/view/View;
.end method

.method public abstract onDataLoading()V
.end method

.method public abstract onFinish(Z)J
.end method

.method public abstract onInit(Z)V
.end method

.method public abstract onProgress(ZF)V
.end method

.method public abstract onReset()V
.end method

.method public abstract onStartDragging()V
.end method
