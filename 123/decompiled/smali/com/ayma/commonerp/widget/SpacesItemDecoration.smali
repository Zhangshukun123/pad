.class public Lcom/ayma/commonerp/widget/SpacesItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SpacesItemDecoration.java"


# instance fields
.field private bottom:I

.field private left:I

.field private right:I

.field private top:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 29
    iput p1, p0, Lcom/ayma/commonerp/widget/SpacesItemDecoration;->left:I

    .line 30
    iput p1, p0, Lcom/ayma/commonerp/widget/SpacesItemDecoration;->top:I

    .line 31
    iput p1, p0, Lcom/ayma/commonerp/widget/SpacesItemDecoration;->right:I

    .line 32
    iput p1, p0, Lcom/ayma/commonerp/widget/SpacesItemDecoration;->bottom:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 22
    iput p1, p0, Lcom/ayma/commonerp/widget/SpacesItemDecoration;->left:I

    .line 23
    iput p2, p0, Lcom/ayma/commonerp/widget/SpacesItemDecoration;->top:I

    .line 24
    iput p1, p0, Lcom/ayma/commonerp/widget/SpacesItemDecoration;->right:I

    .line 25
    iput p2, p0, Lcom/ayma/commonerp/widget/SpacesItemDecoration;->bottom:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 15
    iput p1, p0, Lcom/ayma/commonerp/widget/SpacesItemDecoration;->left:I

    .line 16
    iput p2, p0, Lcom/ayma/commonerp/widget/SpacesItemDecoration;->top:I

    .line 17
    iput p3, p0, Lcom/ayma/commonerp/widget/SpacesItemDecoration;->right:I

    .line 18
    iput p4, p0, Lcom/ayma/commonerp/widget/SpacesItemDecoration;->bottom:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 37
    iget p2, p0, Lcom/ayma/commonerp/widget/SpacesItemDecoration;->left:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 38
    iget p2, p0, Lcom/ayma/commonerp/widget/SpacesItemDecoration;->right:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 39
    iget p2, p0, Lcom/ayma/commonerp/widget/SpacesItemDecoration;->bottom:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 40
    iget p2, p0, Lcom/ayma/commonerp/widget/SpacesItemDecoration;->top:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method
