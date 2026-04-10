.class final Lcom/vondear/rxtool/RxAnimationTool$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RxAnimationTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vondear/rxtool/RxAnimationTool;->popout(Landroid/view/View;JLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$animatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/vondear/rxtool/RxAnimationTool$4;->val$view:Landroid/view/View;

    iput-object p2, p0, Lcom/vondear/rxtool/RxAnimationTool$4;->val$animatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 217
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 218
    iget-object v0, p0, Lcom/vondear/rxtool/RxAnimationTool$4;->val$view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/vondear/rxtool/RxAnimationTool$4;->val$animatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method
