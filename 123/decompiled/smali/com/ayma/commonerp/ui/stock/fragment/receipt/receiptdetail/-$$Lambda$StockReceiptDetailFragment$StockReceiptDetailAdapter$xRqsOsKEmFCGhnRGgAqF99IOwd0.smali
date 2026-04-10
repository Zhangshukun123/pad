.class public final synthetic Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/-$$Lambda$StockReceiptDetailFragment$StockReceiptDetailAdapter$xRqsOsKEmFCGhnRGgAqF99IOwd0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter;

.field public final synthetic f$1:Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;

.field public final synthetic f$2:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$ViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter;Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$ViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/-$$Lambda$StockReceiptDetailFragment$StockReceiptDetailAdapter$xRqsOsKEmFCGhnRGgAqF99IOwd0;->f$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/-$$Lambda$StockReceiptDetailFragment$StockReceiptDetailAdapter$xRqsOsKEmFCGhnRGgAqF99IOwd0;->f$1:Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/-$$Lambda$StockReceiptDetailFragment$StockReceiptDetailAdapter$xRqsOsKEmFCGhnRGgAqF99IOwd0;->f$2:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$ViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/-$$Lambda$StockReceiptDetailFragment$StockReceiptDetailAdapter$xRqsOsKEmFCGhnRGgAqF99IOwd0;->f$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/-$$Lambda$StockReceiptDetailFragment$StockReceiptDetailAdapter$xRqsOsKEmFCGhnRGgAqF99IOwd0;->f$1:Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/-$$Lambda$StockReceiptDetailFragment$StockReceiptDetailAdapter$xRqsOsKEmFCGhnRGgAqF99IOwd0;->f$2:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$ViewHolder;

    invoke-virtual {v0, v1, v2, p1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter;->lambda$onBindViewHolder$0$StockReceiptDetailFragment$StockReceiptDetailAdapter(Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragment$StockReceiptDetailAdapter$ViewHolder;Landroid/view/View;)V

    return-void
.end method
