.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1$1;
.super Ljava/lang/Object;
.source "StockInPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1;->requestError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->access$1800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->access$1900(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;->hideLoading()V

    .line 83
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->access$2000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1$1;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->access$1000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->access$1100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;->hideLoading()V

    .line 72
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->access$1300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->access$1200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->getStockReceiptInHeadData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;->notifyListChange(Ljava/util/List;)V

    .line 73
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->access$1500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->access$1400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->getStore()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;->showStore(Ljava/util/List;)V

    .line 74
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->access$1700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->access$1600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->getStoreTypeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;->showStoreModel(Ljava/util/List;)V

    return-void
.end method
