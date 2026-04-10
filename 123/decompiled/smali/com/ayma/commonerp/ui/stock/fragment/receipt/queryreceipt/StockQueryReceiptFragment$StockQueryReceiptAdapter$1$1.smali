.class Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$1$1;
.super Ljava/lang/Object;
.source "StockQueryReceiptFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$1;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$1;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$1$1;->this$2:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 605
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$1$1;->this$2:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$1;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptPresenter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$1$1;->this$2:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$1;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/StockReceiptBean;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/StockReceiptBean;->getBillId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$1$1;->this$2:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$1;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/StockReceiptBean;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/StockReceiptBean;->getBillNo()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$1$1;->this$2:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$1;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/StockReceiptBean;

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/StockReceiptBean;->getBillType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptPresenter;->commitStockReceipt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
