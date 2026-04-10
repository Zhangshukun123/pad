.class public Lcom/billy/android/swipe/refresh/ClassicFooter;
.super Lcom/billy/android/swipe/refresh/ClassicHeader;
.source "ClassicFooter.java"

# interfaces
.implements Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshFooter;


# instance fields
.field public mNoMoreData:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/billy/android/swipe/refresh/ClassicHeader;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/billy/android/swipe/refresh/ClassicHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/billy/android/swipe/refresh/ClassicHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/billy/android/swipe/refresh/ClassicHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public onDataLoading()V
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/billy/android/swipe/refresh/ClassicFooter;->mNoMoreData:Z

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/billy/android/swipe/refresh/ClassicFooter;->showAnimation()V

    .line 61
    sget v0, Lcom/billy/android/swipe/R$string;->ssr_footer_refreshing:I

    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/refresh/ClassicFooter;->setText(I)V

    :cond_0
    return-void
.end method

.method public onFinish(Z)J
    .locals 2

    .line 50
    invoke-virtual {p0}, Lcom/billy/android/swipe/refresh/ClassicFooter;->cancelAnimation()V

    .line 51
    iget-boolean v0, p0, Lcom/billy/android/swipe/refresh/ClassicFooter;->mNoMoreData:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 52
    sget p1, Lcom/billy/android/swipe/R$string;->ssr_footer_finish:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/billy/android/swipe/R$string;->ssr_footer_failed:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/billy/android/swipe/refresh/ClassicFooter;->setText(I)V

    :cond_1
    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public onProgress(ZF)V
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/billy/android/swipe/refresh/ClassicFooter;->mNoMoreData:Z

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/billy/android/swipe/refresh/ClassicFooter;->cancelAnimation()V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_1

    .line 42
    sget p1, Lcom/billy/android/swipe/R$string;->ssr_footer_release:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/billy/android/swipe/R$string;->ssr_footer_pulling:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/billy/android/swipe/refresh/ClassicFooter;->setText(I)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_3

    .line 44
    invoke-virtual {p0}, Lcom/billy/android/swipe/refresh/ClassicFooter;->cancelAnimation()V

    :cond_3
    :goto_1
    return-void
.end method

.method public setNoMoreData(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/billy/android/swipe/refresh/ClassicFooter;->mNoMoreData:Z

    .line 69
    sget p1, Lcom/billy/android/swipe/R$string;->ssr_footer_no_more_data:I

    invoke-virtual {p0, p1}, Lcom/billy/android/swipe/refresh/ClassicFooter;->setText(I)V

    return-void
.end method
