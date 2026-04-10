.class Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$1;
.super Ljava/lang/Object;
.source "StockQueryReceiptFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 124
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->rightClick()V

    return-void
.end method
