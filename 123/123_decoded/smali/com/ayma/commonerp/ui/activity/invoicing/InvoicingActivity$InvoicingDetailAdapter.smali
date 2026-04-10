.class Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "InvoicingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InvoicingDetailAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder;",
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

.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;",
            ">;)V"
        }
    .end annotation

    .line 652
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 653
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter;->list:Ljava/util/List;

    .line 654
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 655
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->notifyListDataChanged()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter;->list:Ljava/util/List;

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

    .line 649
    check-cast p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder;I)V
    .locals 4

    .line 673
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;

    .line 674
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder;->tvGoodsCode:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;->getProductCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 675
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder;->tvPrice:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;->getSalePriceReal()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Lcom/ayma/base/util/MoneyUtils;->toMoneyStrWithout$(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder;->tvQty:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;->getQty()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder;->tvAmount:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;->getSalePriceSum()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/ayma/base/util/MoneyUtils;->toMoneyStrWithout$(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$1;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 686
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->setTableBackground(Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 649
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder;
    .locals 3

    .line 667
    new-instance p2, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b007e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter;Landroid/view/View;)V

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

    .line 659
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 660
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 661
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->notifyListDataChanged()V

    return-void
.end method
