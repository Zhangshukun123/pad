.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$9;
.super Ljava/lang/Object;
.source "StockInPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->deleteLocalReceipt(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

.field final synthetic val$i:I

.field final synthetic val$upload:Z


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;ZI)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    iput-boolean p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$9;->val$upload:Z

    iput p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$9;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->access$7800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 433
    :cond_0
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$9;->val$upload:Z

    if-eqz v0, :cond_1

    return-void

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->access$7900(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;->hideLoading()V

    .line 437
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->access$8000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 442
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$9;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->access$7500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 420
    :cond_0
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$9;->val$upload:Z

    if-eqz v0, :cond_1

    return-void

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->access$7600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;->hideLoading()V

    .line 425
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->access$7700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;

    iget v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$9;->val$i:I

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;->notifyItemRemove(I)V

    return-void
.end method
