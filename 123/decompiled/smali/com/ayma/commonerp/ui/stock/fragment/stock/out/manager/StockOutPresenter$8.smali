.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$8;
.super Ljava/lang/Object;
.source "StockOutPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->deletOutReceiptOnLine(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;I)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$8;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    iput p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$8;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$8;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$6100(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$8;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$6200(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;->hideLoading()V

    .line 434
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$8;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$6300(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 439
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$8;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$8;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$5800(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$8;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$5900(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;->hideLoading()V

    .line 425
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$8;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$6000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;

    iget v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$8;->val$position:I

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;->notifyListItemRemove(I)V

    return-void
.end method
