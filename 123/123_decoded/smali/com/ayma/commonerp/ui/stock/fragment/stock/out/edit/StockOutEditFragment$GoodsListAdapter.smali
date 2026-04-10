.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "StockOutEditFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GoodsListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1394
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsListAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 1395
    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsListAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1422
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsListAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$StockOutEditFragment$GoodsListAdapter(Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    .line 1409
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsListAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->access$000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;)Landroid/widget/PopupWindow;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsListAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->access$000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;)Landroid/widget/PopupWindow;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1410
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsListAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->access$000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;)Landroid/widget/PopupWindow;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1412
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsListAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->access$102(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;Z)Z

    .line 1413
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsListAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->etGoodsCode:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p2, p1}, Lcom/ayma/base/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1414
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsListAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->etGoodsCode:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ayma/base/widget/ClearEditText;->setSelection(I)V

    .line 1415
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsListAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

    invoke-virtual {p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->hideSoftKeyboard()V

    .line 1416
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsListAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsListAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->spStockModel:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsListAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->spStore:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;->addGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1390
    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsListAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsListAdapter$ViewHolder;I)V
    .locals 1

    .line 1406
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsListAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1407
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsListAdapter$ViewHolder;->tvGoods:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1408
    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsListAdapter$ViewHolder;->tvGoods:Landroid/widget/TextView;

    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/-$$Lambda$StockOutEditFragment$GoodsListAdapter$RRO_Ulq5t1v4ciECvYdkhzWZvBQ;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/-$$Lambda$StockOutEditFragment$GoodsListAdapter$RRO_Ulq5t1v4ciECvYdkhzWZvBQ;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsListAdapter;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1390
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsListAdapter$ViewHolder;
    .locals 3

    .line 1401
    new-instance p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsListAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsListAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00b6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsListAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsListAdapter;Landroid/view/View;)V

    return-object p2
.end method
