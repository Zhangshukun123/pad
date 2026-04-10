.class public Lcom/ayma/commonerp/widget/ItemViewTouchListener;
.super Ljava/lang/Object;
.source "ItemViewTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private layoutParams:Landroid/view/WindowManager$LayoutParams;

.field private windowManager:Landroid/view/WindowManager;

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/ayma/commonerp/widget/ItemViewTouchListener;->x:I

    .line 11
    iput v0, p0, Lcom/ayma/commonerp/widget/ItemViewTouchListener;->y:I

    .line 14
    iput-object p1, p0, Lcom/ayma/commonerp/widget/ItemViewTouchListener;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 15
    iput-object p2, p0, Lcom/ayma/commonerp/widget/ItemViewTouchListener;->windowManager:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 20
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 27
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    .line 28
    iget v1, p0, Lcom/ayma/commonerp/widget/ItemViewTouchListener;->x:I

    sub-int v1, v0, v1

    .line 29
    iget v2, p0, Lcom/ayma/commonerp/widget/ItemViewTouchListener;->y:I

    sub-int v2, p2, v2

    .line 30
    iput v0, p0, Lcom/ayma/commonerp/widget/ItemViewTouchListener;->x:I

    .line 31
    iput p2, p0, Lcom/ayma/commonerp/widget/ItemViewTouchListener;->y:I

    .line 32
    iget-object p2, p0, Lcom/ayma/commonerp/widget/ItemViewTouchListener;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 33
    iget-object p2, p0, Lcom/ayma/commonerp/widget/ItemViewTouchListener;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 35
    iget-object p2, p0, Lcom/ayma/commonerp/widget/ItemViewTouchListener;->windowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/ayma/commonerp/widget/ItemViewTouchListener;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p2, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/ayma/commonerp/widget/ItemViewTouchListener;->x:I

    .line 23
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/ayma/commonerp/widget/ItemViewTouchListener;->y:I

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
