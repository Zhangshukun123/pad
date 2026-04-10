.class Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "StockReceiptDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StockReceiptDetailAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;",
            ">;)V"
        }
    .end annotation

    .line 363
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 364
    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$StockReceiptDetailFragment$StockReceiptDetailAdapter(Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    .line 389
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;->isSelect()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3}, Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;->setSelect(Z)V

    .line 390
    invoke-virtual {p2}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$ViewHolder;->getLayoutPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 360
    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$ViewHolder;I)V
    .locals 3

    .line 375
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;

    .line 376
    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_0

    .line 377
    iget-object p2, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    const v1, 0x7f070076

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 379
    :cond_0
    iget-object p2, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    const v1, 0x7f070077

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 381
    :goto_0
    iget-object p2, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;->getGoodsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object p2, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$ViewHolder;->tvPrice:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;->getUnitPrice()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object p2, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$ViewHolder;->tvTotalPrice:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;->getTotalPrice()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object p2, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$ViewHolder;->tvCount:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;->getQty()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object p2, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$ViewHolder;->tvStockCount:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;->getActualQty()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object p2, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$ViewHolder;->cbSelect:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;->isSelect()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 388
    iget-object p2, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$ViewHolder;->cbSelect:Landroid/widget/CheckBox;

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/-$$Lambda$StockReceiptDetailFragment$StockReceiptDetailAdapter$xRqsOsKEmFCGhnRGgAqF99IOwd0;

    invoke-direct {v1, p0, v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/-$$Lambda$StockReceiptDetailFragment$StockReceiptDetailAdapter$xRqsOsKEmFCGhnRGgAqF99IOwd0;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter;Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$ViewHolder;)V

    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    iget-object p2, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter;Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$ViewHolder;)V

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 360
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$ViewHolder;
    .locals 3

    .line 370
    new-instance p2, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00af

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter;Landroid/view/View;)V

    return-object p2
.end method
