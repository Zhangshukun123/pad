.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$9;
.super Ljava/lang/Object;
.source "StockInEditPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->checkCommitReceipt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ayma/base/mvp/ModelParamCallBack<",
        "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->access$10400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->access$10500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;->hideLoading()V

    .line 519
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->access$10600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 524
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$9;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;)V
    .locals 2

    .line 505
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->access$10000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->access$10100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;->hideLoading()V

    .line 509
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->access$10200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;

    const-string v1, "\u63d0\u4ea4\u6210\u529f"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;->showToast(Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->access$10300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;->commitSuccess(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;Z)V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 502
    check-cast p1, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$9;->requestSuccess(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;)V

    return-void
.end method
