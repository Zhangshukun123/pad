.class Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$3;
.super Ljava/lang/Object;
.source "StockQueryReceiptFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 143
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 156
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->access$000(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->access$000(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 158
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->access$000(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->access$100(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->access$102(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;Z)Z

    return-void

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptPresenter;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptPresenter;->queryTrain(Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
