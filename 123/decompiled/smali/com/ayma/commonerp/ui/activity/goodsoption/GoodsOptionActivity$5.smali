.class Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$5;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "GoodsOptionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->notifyGoodsList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;Ljava/util/List;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$5;->val$list:Ljava/util/List;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 144
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 145
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-lez p3, :cond_1

    .line 152
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    :goto_0
    if-ltz p1, :cond_3

    .line 156
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->access$000(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;)Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;->getItemCount()I

    move-result p2

    if-lt p1, p2, :cond_2

    goto :goto_1

    .line 159
    :cond_2
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->access$100(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;)Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;

    move-result-object p2

    iget-object p3, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$5;->val$list:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/GoodsOptionBean;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsOptionBean;->getGoodsTypeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;->setItem(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
