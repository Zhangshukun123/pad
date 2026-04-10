.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInGoodsListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "StockInEditFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StockInGoodsListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInGoodsListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInGoodsListAdapter$ViewHolder;",
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

.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1157
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInGoodsListAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 1158
    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInGoodsListAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1185
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInGoodsListAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$StockInEditFragment$StockInGoodsListAdapter(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .line 1172
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInGoodsListAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->access$000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)Landroid/widget/PopupWindow;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInGoodsListAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->access$000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)Landroid/widget/PopupWindow;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1173
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInGoodsListAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->access$000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)Landroid/widget/PopupWindow;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1175
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInGoodsListAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->access$102(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;Z)Z

    .line 1176
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInGoodsListAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->etGoodsCode:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1177
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInGoodsListAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->etGoodsCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1178
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInGoodsListAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

    invoke-virtual {p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->hideSoftKeyboard()V

    .line 1179
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInGoodsListAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->searchGoods(Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1153
    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInGoodsListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInGoodsListAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInGoodsListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInGoodsListAdapter$ViewHolder;I)V
    .locals 1

    .line 1169
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInGoodsListAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1170
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInGoodsListAdapter$ViewHolder;->tvGoods:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1171
    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInGoodsListAdapter$ViewHolder;->tvGoods:Landroid/widget/TextView;

    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$StockInGoodsListAdapter$_ZUdsLWHXycu8ROm9RpQgrC4yQs;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$StockInGoodsListAdapter$_ZUdsLWHXycu8ROm9RpQgrC4yQs;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInGoodsListAdapter;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1153
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInGoodsListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInGoodsListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInGoodsListAdapter$ViewHolder;
    .locals 3

    .line 1164
    new-instance p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInGoodsListAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInGoodsListAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00b6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInGoodsListAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInGoodsListAdapter;Landroid/view/View;)V

    return-object p2
.end method
