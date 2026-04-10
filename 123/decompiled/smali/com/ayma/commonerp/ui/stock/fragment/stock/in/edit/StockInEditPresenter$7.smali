.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$7;
.super Ljava/lang/Object;
.source "StockInEditPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->uploadOption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

.field final synthetic val$storeIn:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$7;->val$storeIn:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 4

    .line 421
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->access$9000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->access$9100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;->hideLoading()V

    .line 425
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->access$9200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    .line 426
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->access$9500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->access$9300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->getAllCount()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->access$9400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-virtual {v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->getAllMoney()D

    move-result-wide v2

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;->showQtyAndAmount(DD)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 431
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$7;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 5

    .line 406
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->access$8100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->access$8200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;->hideLoading()V

    .line 410
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->access$8400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->access$8300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->getGoodsData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;->notifyGoodsList(Ljava/util/List;)V

    .line 411
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->access$8700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->access$8500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->getAllCount()D

    move-result-wide v1

    iget-object v3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-static {v3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->access$8600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-virtual {v3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->getAllMoney()D

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;->showQtyAndAmount(DD)V

    .line 412
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->access$8800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$7;->val$storeIn:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;->uploadSuccess(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;)V

    .line 413
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$7;->val$storeIn:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getBillNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->deleteStockData(Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->access$8900(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;

    const-string v1, "\u5355\u636e\u5df2\u4e0a\u4f20"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;->showToast(Ljava/lang/String;)V

    return-void
.end method
