.class Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$1;
.super Ljava/lang/Object;
.source "StockReceiptDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter;

.field final synthetic val$bean:Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;

.field final synthetic val$holder:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter;Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$ViewHolder;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$1;->val$holder:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 395
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment;->tvReceiptStatue:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, "\u5df2\u64a4\u9500"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 396
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment;

    const-string v0, "\u5f53\u524d\u5355\u636e\u5df2\u64a4\u9500\uff0c\u4e0d\u80fd\u8fdb\u884c\u7f16\u8f91\u64cd\u4f5c"

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void

    .line 399
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment;->tvReceiptStatue:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, "\u5df2\u63d0\u4ea4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 400
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment;

    const-string v0, "\u5f53\u524d\u5355\u636e\u5df2\u63d0\u4ea4\uff0c\u4e0d\u80fd\u8fdb\u884c\u7f16\u8f91\u64cd\u4f5c"

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void

    .line 403
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$1;->val$holder:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment;->showInputCountDialog(Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;I)V

    return-void
.end method
