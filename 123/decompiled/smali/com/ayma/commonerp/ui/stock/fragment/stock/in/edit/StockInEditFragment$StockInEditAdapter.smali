.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "StockInEditFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StockInEditAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;",
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
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;",
            ">;)V"
        }
    .end annotation

    .line 1019
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 1020
    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1085
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;->list:Ljava/util/List;

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

    .line 1015
    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$ViewHolder;I)V
    .locals 4

    .line 1031
    rem-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_0

    .line 1032
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    const v1, 0x7f070076

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 1034
    :cond_0
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    const v1, 0x7f070077

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1036
    :goto_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;

    .line 1037
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getGoodsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1038
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$ViewHolder;->tvGoodsCostPrice:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getCostPrice()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1039
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$ViewHolder;->tvBirth:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getBirthDay()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yyyyMMdd"

    const-string v3, "yyyy-MM-dd"

    invoke-static {v1, v2, v3}, Lcom/ayma/base/util/DateTimeUtils;->formatDateStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1040
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$ViewHolder;->tvQty:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getQty()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1041
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1065
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$2;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1015
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$ViewHolder;
    .locals 3

    .line 1026
    new-instance p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00b2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;Landroid/view/View;)V

    return-object p2
.end method
