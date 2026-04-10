.class Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SellActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SellDetailAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;)V"
        }
    .end annotation

    .line 1677
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 1678
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1716
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;->list:Ljava/util/List;

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

    .line 1674
    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$ViewHolder;I)V
    .locals 8

    .line 1689
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ayma/commonerp/bean/SellDetailBean;

    .line 1690
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$ViewHolder;->tvAllnumber:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SellDetailBean;->getGoodsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1691
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$ViewHolder;->tvAllmoeys:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSaleType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1692
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$ViewHolder;->tvAllmoney:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSalesPrice()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1693
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SellDetailBean;->getQty()D

    move-result-wide v4

    .line 1694
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$ViewHolder;->tvWarenumbers:Landroid/widget/TextView;

    invoke-static {v4, v5}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1695
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$ViewHolder;->tvWareCode:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SellDetailBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1696
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$ViewHolder;->tvGoodsAll:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSalesPrice()D

    move-result-wide v1

    invoke-static {v4, v5, v1, v2}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1698
    iget-object v6, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$ViewHolder;->clRoot:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$1;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$ViewHolder;Lcom/ayma/commonerp/bean/SellDetailBean;D)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1706
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$ViewHolder;->clRoot:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$2;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;Lcom/ayma/commonerp/bean/SellDetailBean;Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1674
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$ViewHolder;
    .locals 3

    .line 1684
    new-instance p2, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b008b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public removeData(I)V
    .locals 1

    .line 1720
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 1723
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1724
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;->notifyItemRemoved(I)V

    .line 1725
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;->notifyItemRangeChanged(II)V

    :cond_1
    :goto_0
    return-void
.end method
