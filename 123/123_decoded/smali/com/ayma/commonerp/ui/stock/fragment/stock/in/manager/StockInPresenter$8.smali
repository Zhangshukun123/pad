.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$8;
.super Ljava/lang/Object;
.source "StockInPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->fetchGoodsDataFromServer(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;I)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$8;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    iput p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$8;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$8;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->access$7200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$8;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->access$7300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;->hideLoading()V

    .line 394
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$8;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->access$7400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 399
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$8;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$8;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->access$6900(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$8;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->access$7000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;->hideLoading()V

    .line 385
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$8;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->access$7100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;

    iget v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$8;->val$i:I

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;->notifyItemChange(I)V

    return-void
.end method
