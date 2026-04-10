.class public final synthetic Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/-$$Lambda$StockQueryReceiptFragment$pA6vqk_q2GTtwPrQ5Dz7heHLOI0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;

.field public final synthetic f$1:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/-$$Lambda$StockQueryReceiptFragment$pA6vqk_q2GTtwPrQ5Dz7heHLOI0;->f$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/-$$Lambda$StockQueryReceiptFragment$pA6vqk_q2GTtwPrQ5Dz7heHLOI0;->f$1:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/-$$Lambda$StockQueryReceiptFragment$pA6vqk_q2GTtwPrQ5Dz7heHLOI0;->f$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/-$$Lambda$StockQueryReceiptFragment$pA6vqk_q2GTtwPrQ5Dz7heHLOI0;->f$1:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->lambda$showSelectDateDialog$6$StockQueryReceiptFragment(Landroid/widget/TextView;Landroid/content/DialogInterface;I)V

    return-void
.end method
