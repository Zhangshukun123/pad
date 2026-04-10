.class Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$OrderDetailAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "QueryOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OrderDetailAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$OrderDetailAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$OrderDetailAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;",
            ">;)V"
        }
    .end annotation

    .line 430
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$OrderDetailAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$OrderDetailAdapter;->list:Ljava/util/List;

    .line 432
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 433
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->notifyListDataChanged()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$OrderDetailAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 427
    check-cast p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$OrderDetailAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$OrderDetailAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$OrderDetailAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$OrderDetailAdapter$ViewHolder;I)V
    .locals 4

    .line 451
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$OrderDetailAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;

    .line 452
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$OrderDetailAdapter$ViewHolder;->tvGoodsCode:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;->getProductCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$OrderDetailAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$OrderDetailAdapter$ViewHolder;->tvPrice:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;->getSalePriceReal()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Lcom/ayma/base/util/MoneyUtils;->toMoneyStrWithout$(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$OrderDetailAdapter$ViewHolder;->tvQty:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;->getQty()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$OrderDetailAdapter$ViewHolder;->tvAmount:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;->getSalePriceSum()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/ayma/base/util/MoneyUtils;->toMoneyStrWithout$(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$OrderDetailAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$OrderDetailAdapter$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$OrderDetailAdapter$1;-><init>(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$OrderDetailAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$OrderDetailAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$OrderDetailAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->setTableBackground(Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 427
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$OrderDetailAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$OrderDetailAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$OrderDetailAdapter$ViewHolder;
    .locals 3

    .line 445
    new-instance p2, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$OrderDetailAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$OrderDetailAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b007e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$OrderDetailAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$OrderDetailAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setNewData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;",
            ">;)V"
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$OrderDetailAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 438
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$OrderDetailAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 439
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$OrderDetailAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->notifyListDataChanged()V

    return-void
.end method
