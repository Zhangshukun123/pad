.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "StockOutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 4

    .line 161
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 163
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 166
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 168
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getBottom()I

    move-result v2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 170
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p2

    if-lez p3, :cond_0

    sub-int/2addr v2, v0

    const/16 p3, 0x14

    if-ge v2, p3, :cond_0

    .line 175
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v1

    if-ne p2, p1, :cond_0

    .line 177
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->getStockOutReceipt(ZZ)V

    :cond_0
    return-void
.end method
