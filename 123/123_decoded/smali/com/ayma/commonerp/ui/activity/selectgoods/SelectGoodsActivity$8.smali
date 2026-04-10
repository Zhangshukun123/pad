.class Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$8;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SelectGoodsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->showGoods(Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

.field final synthetic val$goodsList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;Ljava/util/List;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$8;->val$goodsList:Ljava/util/List;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 276
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 277
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-lez p3, :cond_1

    .line 284
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    :goto_0
    if-ltz p1, :cond_3

    .line 288
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->access$100(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;)Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->getItemCount()I

    move-result p2

    if-lt p1, p2, :cond_2

    goto :goto_1

    .line 291
    :cond_2
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->access$300(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;)Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;

    move-result-object p2

    iget-object p3, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$8;->val$goodsList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/SellDetailBean;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSmallTypeId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;->setItem(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
