.class Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptDetailAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "QueryReceiptActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceiptDetailAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptDetailAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptDetailAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;",
            ">;)V"
        }
    .end annotation

    .line 379
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptDetailAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 380
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptDetailAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptDetailAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$QueryReceiptActivity$ReceiptDetailAdapter(Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;ILandroid/view/View;)V
    .locals 0

    .line 400
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;->isSelected()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3}, Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;->setSelected(Z)V

    .line 401
    invoke-virtual {p0, p2}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptDetailAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 376
    check-cast p1, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptDetailAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptDetailAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptDetailAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptDetailAdapter$ViewHolder;I)V
    .locals 4

    .line 391
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptDetailAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;

    .line 392
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptDetailAdapter$ViewHolder;->tvGoodsCode:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptDetailAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;->getGoodsName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptDetailAdapter$ViewHolder;->tvCount:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;->getQty()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptDetailAdapter$ViewHolder;->tvTotalPrice:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;->getSalesPriceTotal()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptDetailAdapter$ViewHolder;->tvPrice:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;->getSalesPrice()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptDetailAdapter$ViewHolder;->cbSelect:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 399
    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptDetailAdapter$ViewHolder;->cbSelect:Landroid/widget/CheckBox;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/queryreceipt/-$$Lambda$QueryReceiptActivity$ReceiptDetailAdapter$Cu15KUV6o-j13BXJrLEpJmC7yc8;

    invoke-direct {v1, p0, v0, p2}, Lcom/ayma/commonerp/ui/activity/queryreceipt/-$$Lambda$QueryReceiptActivity$ReceiptDetailAdapter$Cu15KUV6o-j13BXJrLEpJmC7yc8;-><init>(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptDetailAdapter;Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;I)V

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 376
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptDetailAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptDetailAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptDetailAdapter$ViewHolder;
    .locals 3

    .line 386
    new-instance p2, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptDetailAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptDetailAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b009f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptDetailAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptDetailAdapter;Landroid/view/View;)V

    return-object p2
.end method
