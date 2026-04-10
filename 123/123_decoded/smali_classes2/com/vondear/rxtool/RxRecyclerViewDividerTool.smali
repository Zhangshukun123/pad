.class public Lcom/vondear/rxtool/RxRecyclerViewDividerTool;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "RxRecyclerViewDividerTool.java"


# instance fields
.field private bottomSpace:I

.field private isTop:Z

.field private leftSpace:I

.field private rightSpace:I

.field private space:I

.field private topSpace:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->space:I

    .line 15
    iput v0, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->leftSpace:I

    .line 16
    iput v0, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->rightSpace:I

    .line 17
    iput v0, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->topSpace:I

    .line 18
    iput v0, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->bottomSpace:I

    .line 19
    iput-boolean v0, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->isTop:Z

    .line 42
    iput p1, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->space:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->space:I

    .line 15
    iput v0, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->leftSpace:I

    .line 16
    iput v0, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->rightSpace:I

    .line 17
    iput v0, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->topSpace:I

    .line 18
    iput v0, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->bottomSpace:I

    .line 19
    iput-boolean v0, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->isTop:Z

    .line 22
    iput p1, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->leftSpace:I

    .line 23
    iput p2, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->rightSpace:I

    .line 24
    iput p3, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->topSpace:I

    .line 25
    iput p4, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->bottomSpace:I

    return-void
.end method

.method public constructor <init>(IIIIZ)V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->space:I

    .line 15
    iput v0, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->leftSpace:I

    .line 16
    iput v0, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->rightSpace:I

    .line 17
    iput v0, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->topSpace:I

    .line 18
    iput v0, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->bottomSpace:I

    .line 19
    iput-boolean v0, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->isTop:Z

    .line 29
    iput p1, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->leftSpace:I

    .line 30
    iput p2, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->rightSpace:I

    .line 31
    iput p3, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->topSpace:I

    .line 32
    iput p4, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->bottomSpace:I

    .line 33
    iput-boolean p5, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->isTop:Z

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->space:I

    .line 15
    iput v0, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->leftSpace:I

    .line 16
    iput v0, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->rightSpace:I

    .line 17
    iput v0, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->topSpace:I

    .line 18
    iput v0, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->bottomSpace:I

    .line 19
    iput-boolean v0, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->isTop:Z

    .line 37
    iput p1, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->space:I

    .line 38
    iput-boolean p2, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->isTop:Z

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 48
    iget p4, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->space:I

    if-nez p4, :cond_0

    .line 49
    iget p4, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->leftSpace:I

    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 50
    iget p4, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->rightSpace:I

    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 51
    iget p4, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->topSpace:I

    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    .line 52
    iget p4, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->bottomSpace:I

    iput p4, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 55
    :cond_0
    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 56
    iget p4, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->space:I

    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 57
    iget p4, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->space:I

    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    .line 58
    iget p4, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->space:I

    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 61
    :goto_0
    iget-boolean p4, p0, Lcom/vondear/rxtool/RxRecyclerViewDividerTool;->isTop:Z

    if-eqz p4, :cond_2

    .line 62
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_1

    .line 63
    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 65
    :cond_1
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 66
    iput p3, p1, Landroid/graphics/Rect;->right:I

    :cond_2
    return-void
.end method
