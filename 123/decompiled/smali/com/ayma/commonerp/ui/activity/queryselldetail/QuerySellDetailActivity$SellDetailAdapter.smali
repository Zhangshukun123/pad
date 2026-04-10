.class Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "QuerySellDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SellDetailAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SaleDetailBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SaleDetailBean;",
            ">;)V"
        }
    .end annotation

    .line 449
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 450
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter;->list:Ljava/util/List;

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

    .line 446
    check-cast p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;I)V
    .locals 6

    .line 462
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/SaleDetailBean;

    .line 463
    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_0

    .line 464
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    const v1, 0x7f070076

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 466
    :cond_0
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    const v1, 0x7f070077

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 468
    :goto_0
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;->tvGoodsCode:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SaleDetailBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SaleDetailBean;->getGoodsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SaleDetailBean;->getQty()D

    move-result-wide v1

    .line 471
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;->tvGoodsCount:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SaleDetailBean;->getSalePriceReal()D

    move-result-wide v3

    .line 473
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;->tvGoodsPrice:Landroid/widget/TextView;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;->tvGoodsTotalMoney:Landroid/widget/TextView;

    invoke-static {v1, v2, v3, v4}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;->tvPayType:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SaleDetailBean;->getPaymentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;->tvSellType:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SaleDetailBean;->getSaleType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;->tvSellTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SaleDetailBean;->getSaleUploadDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;->tvOrderType:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SaleDetailBean;->getTradeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$1;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$1;-><init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 446
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;
    .locals 2

    .line 456
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b00a8

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 457
    new-instance p2, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter;Landroid/view/View;)V

    return-object p2
.end method
