.class Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "QueryReceiptDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryReceiptDetailsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;",
            ">;)V"
        }
    .end annotation

    .line 202
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 203
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;->list:Ljava/util/List;

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

    .line 198
    check-cast p1, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$ViewHolder;I)V
    .locals 6

    .line 223
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;

    .line 224
    rem-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_0

    .line 225
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    const v2, 0x7f070076

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    const v2, 0x7f070077

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 229
    :goto_0
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$ViewHolder;->tvGoodsCode:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getGoodsCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getGoodsName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$ViewHolder;->tvCount:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getQty()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$ViewHolder;->tvPrice:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getSalesPrice()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$ViewHolder;->tvSalePrice:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getSalesPrice()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getQty()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$ViewHolder;->tvSpecifications:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getStyle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$ViewHolder;->tvUnit:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$ViewHolder;->tvBrith:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getBirthDay()Ljava/lang/String;

    move-result-object v2

    const-string v3, "yyyyMMdd"

    const-string v4, "yyyy-MM-dd"

    invoke-static {v2, v3, v4}, Lcom/ayma/base/util/DateTimeUtils;->formatDateStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$ViewHolder;->tvEndDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getEndDay()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3, v4}, Lcom/ayma/base/util/DateTimeUtils;->formatDateStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->access$200(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$1;-><init>(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;I)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 198
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$ViewHolder;
    .locals 3

    .line 218
    new-instance p2, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b009d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public removeData(I)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 211
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;->notifyItemRemoved(I)V

    .line 212
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method
