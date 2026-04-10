.class public Lcom/ayma/commonerp/widget/DragViewTouchListener;
.super Ljava/lang/Object;
.source "DragViewTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/ayma/commonerp/widget/DragViewTouchListener;->x:I

    .line 13
    iput v0, p0, Lcom/ayma/commonerp/widget/DragViewTouchListener;->y:I

    .line 16
    iput-object p1, p0, Lcom/ayma/commonerp/widget/DragViewTouchListener;->layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 21
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 28
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    .line 29
    iget v1, p0, Lcom/ayma/commonerp/widget/DragViewTouchListener;->x:I

    sub-int v1, v0, v1

    .line 30
    iget v2, p0, Lcom/ayma/commonerp/widget/DragViewTouchListener;->y:I

    sub-int v2, p2, v2

    .line 31
    iput v0, p0, Lcom/ayma/commonerp/widget/DragViewTouchListener;->x:I

    .line 32
    iput p2, p0, Lcom/ayma/commonerp/widget/DragViewTouchListener;->y:I

    .line 33
    iget-object p2, p0, Lcom/ayma/commonerp/widget/DragViewTouchListener;->layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 34
    iget-object p2, p0, Lcom/ayma/commonerp/widget/DragViewTouchListener;->layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 35
    iget-object p2, p0, Lcom/ayma/commonerp/widget/DragViewTouchListener;->layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/ayma/commonerp/widget/DragViewTouchListener;->x:I

    .line 24
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/ayma/commonerp/widget/DragViewTouchListener;->y:I

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
