.class public Lcom/billy/android/swipe/refresh/ClassicHeader;
.super Landroid/widget/RelativeLayout;
.source "ClassicHeader.java"

# interfaces
.implements Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshHeader;


# instance fields
.field public animator:Landroid/animation/ObjectAnimator;

.field public mProgressImageView:Landroid/widget/ImageView;

.field public mStrResId:I

.field public mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p0}, Lcom/billy/android/swipe/refresh/ClassicHeader;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, p1}, Lcom/billy/android/swipe/refresh/ClassicHeader;->onInit(Z)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-virtual {p0}, Lcom/billy/android/swipe/refresh/ClassicHeader;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 40
    invoke-virtual {p0, p1}, Lcom/billy/android/swipe/refresh/ClassicHeader;->onInit(Z)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-virtual {p0}, Lcom/billy/android/swipe/refresh/ClassicHeader;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 47
    invoke-virtual {p0, p1}, Lcom/billy/android/swipe/refresh/ClassicHeader;->onInit(Z)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    invoke-virtual {p0}, Lcom/billy/android/swipe/refresh/ClassicHeader;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 55
    invoke-virtual {p0, p1}, Lcom/billy/android/swipe/refresh/ClassicHeader;->onInit(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/billy/android/swipe/refresh/ClassicHeader;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 99
    iget-object v0, p0, Lcom/billy/android/swipe/refresh/ClassicHeader;->mProgressImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onDataLoading()V
    .locals 1

    .line 135
    invoke-virtual {p0}, Lcom/billy/android/swipe/refresh/ClassicHeader;->showAnimation()V

    .line 136
    sget v0, Lcom/billy/android/swipe/R$string;->ssr_footer_refreshing:I

    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/refresh/ClassicHeader;->setText(I)V

    return-void
.end method

.method public onFinish(Z)J
    .locals 2

    .line 123
    invoke-virtual {p0}, Lcom/billy/android/swipe/refresh/ClassicHeader;->cancelAnimation()V

    if-eqz p1, :cond_0

    .line 124
    sget p1, Lcom/billy/android/swipe/R$string;->ssr_header_finish:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/billy/android/swipe/R$string;->ssr_header_failed:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/billy/android/swipe/refresh/ClassicHeader;->setText(I)V

    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public onInit(Z)V
    .locals 4

    .line 67
    invoke-virtual {p0}, Lcom/billy/android/swipe/refresh/ClassicHeader;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/16 v1, 0x3c

    const/4 v2, -0x1

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/billy/android/swipe/refresh/ClassicHeader;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v3, Lcom/billy/android/swipe/R$layout;->ssr_classic_header_footer_horizontal:I

    invoke-virtual {p1, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    if-nez v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/billy/android/swipe/refresh/ClassicHeader;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/billy/android/swipe/SmartSwipe;->dp2px(ILandroid/content/Context;)I

    move-result p1

    .line 72
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/billy/android/swipe/refresh/ClassicHeader;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v3, Lcom/billy/android/swipe/R$layout;->ssr_classic_header_footer:I

    invoke-virtual {p1, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    if-nez v0, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/billy/android/swipe/refresh/ClassicHeader;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/billy/android/swipe/SmartSwipe;->dp2px(ILandroid/content/Context;)I

    move-result p1

    .line 78
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 81
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/refresh/ClassicHeader;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    invoke-virtual {p0}, Lcom/billy/android/swipe/refresh/ClassicHeader;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_2

    const p1, -0x111112

    .line 84
    invoke-virtual {p0, p1}, Lcom/billy/android/swipe/refresh/ClassicHeader;->setBackgroundColor(I)V

    .line 86
    :cond_2
    sget p1, Lcom/billy/android/swipe/R$id;->ssr_classics_progress:I

    invoke-virtual {p0, p1}, Lcom/billy/android/swipe/refresh/ClassicHeader;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/billy/android/swipe/refresh/ClassicHeader;->mProgressImageView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    .line 87
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    sget p1, Lcom/billy/android/swipe/R$id;->ssr_classics_title:I

    invoke-virtual {p0, p1}, Lcom/billy/android/swipe/refresh/ClassicHeader;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/billy/android/swipe/refresh/ClassicHeader;->mTitleTextView:Landroid/widget/TextView;

    .line 89
    sget v0, Lcom/billy/android/swipe/R$string;->ssr_header_pulling:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 90
    iget-object p1, p0, Lcom/billy/android/swipe/refresh/ClassicHeader;->mProgressImageView:Landroid/widget/ImageView;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "rotation"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/billy/android/swipe/refresh/ClassicHeader;->animator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x1388

    .line 91
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 92
    iget-object p1, p0, Lcom/billy/android/swipe/refresh/ClassicHeader;->animator:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 93
    iget-object p1, p0, Lcom/billy/android/swipe/refresh/ClassicHeader;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 94
    iget-object p1, p0, Lcom/billy/android/swipe/refresh/ClassicHeader;->animator:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x45610000    # 3600.0f
    .end array-data
.end method

.method public onProgress(ZF)V
    .locals 0

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    .line 115
    sget p1, Lcom/billy/android/swipe/R$string;->ssr_header_release:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/billy/android/swipe/R$string;->ssr_header_pulling:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/billy/android/swipe/refresh/ClassicHeader;->setText(I)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_2

    .line 117
    invoke-virtual {p0}, Lcom/billy/android/swipe/refresh/ClassicHeader;->cancelAnimation()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onReset()V
    .locals 0

    return-void
.end method

.method public onStartDragging()V
    .locals 0

    return-void
.end method

.method public setText(I)V
    .locals 1

    .line 141
    iget v0, p0, Lcom/billy/android/swipe/refresh/ClassicHeader;->mStrResId:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/billy/android/swipe/refresh/ClassicHeader;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 142
    iput p1, p0, Lcom/billy/android/swipe/refresh/ClassicHeader;->mStrResId:I

    .line 143
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public showAnimation()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/billy/android/swipe/refresh/ClassicHeader;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 104
    iget-object v0, p0, Lcom/billy/android/swipe/refresh/ClassicHeader;->mProgressImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
