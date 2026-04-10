.class public Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PayGoodsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter;->list:Ljava/util/List;

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

    .line 22
    check-cast p1, Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder;I)V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ayma/commonerp/bean/SellDetailBean;

    .line 40
    iget-object v0, p1, Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SellDetailBean;->getGoodsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p1, Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder;->tvGoodsPrice:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSalesPrice()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p1, Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder;->tvCount:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SellDetailBean;->getQty()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p1, Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder;->tvAmount:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSaleAmount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p1, Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder;->tvSaleType:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSaleType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object p1, p1, Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$1;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$1;-><init>(Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder;
    .locals 3

    .line 34
    new-instance p2, Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0084

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter;Landroid/view/View;)V

    return-object p2
.end method
