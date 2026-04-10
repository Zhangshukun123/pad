.class Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailPresenter$1;
.super Ljava/lang/Object;
.source "StockReceiptDetailPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailPresenter;->onCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailPresenter;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 40
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailPresenter;->access$000(Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailContact$IStockReceiptDetailView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailContact$IStockReceiptDetailView;->finishActivity()V

    return-void
.end method
