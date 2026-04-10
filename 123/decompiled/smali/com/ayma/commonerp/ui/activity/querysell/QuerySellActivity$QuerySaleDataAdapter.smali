.class Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "QuerySellActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QuerySaleDataAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SaleDataBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SaleDataBean;",
            ">;)V"
        }
    .end annotation

    .line 295
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 296
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter;->list:Ljava/util/List;

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

    .line 292
    check-cast p1, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter$ViewHolder;I)V
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ayma/commonerp/bean/SaleDataBean;

    .line 308
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter$ViewHolder;->tvGoodsCode:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SaleDataBean;->getGoods_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SaleDataBean;->getGoods_name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SaleDataBean;->getGoods_name()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter$ViewHolder;->tvGoodsqty:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SaleDataBean;->getQty()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter$ViewHolder;->tvGoodsPrice:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SaleDataBean;->getSale_price_real()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter$ViewHolder;->tvGoodsSumMoney:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SaleDataBean;->getSale_price_sum()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter$1;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter$1;-><init>(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 292
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter$ViewHolder;
    .locals 3

    .line 302
    new-instance p2, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0089

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter;Landroid/view/View;)V

    return-object p2
.end method
