.class Lcom/yzq/zxinglibrary/view/ViewfinderView$1;
.super Ljava/lang/Object;
.source "ViewfinderView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yzq/zxinglibrary/view/ViewfinderView;->initAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yzq/zxinglibrary/view/ViewfinderView;


# direct methods
.method constructor <init>(Lcom/yzq/zxinglibrary/view/ViewfinderView;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView$1;->this$0:Lcom/yzq/zxinglibrary/view/ViewfinderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView$1;->this$0:Lcom/yzq/zxinglibrary/view/ViewfinderView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/yzq/zxinglibrary/view/ViewfinderView;->access$002(Lcom/yzq/zxinglibrary/view/ViewfinderView;I)I

    .line 138
    iget-object p1, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView$1;->this$0:Lcom/yzq/zxinglibrary/view/ViewfinderView;

    invoke-virtual {p1}, Lcom/yzq/zxinglibrary/view/ViewfinderView;->invalidate()V

    return-void
.end method
