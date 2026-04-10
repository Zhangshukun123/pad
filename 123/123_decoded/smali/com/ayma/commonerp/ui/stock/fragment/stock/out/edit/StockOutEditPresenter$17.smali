.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$17;
.super Ljava/lang/Object;
.source "StockOutEditPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;->saveData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;

.field final synthetic val$isUpload:Z

.field final synthetic val$orderDate:Ljava/lang/String;

.field final synthetic val$outDate:Ljava/lang/String;

.field final synthetic val$remark:Ljava/lang/String;

.field final synthetic val$store:Ljava/lang/String;

.field final synthetic val$storeModel:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 757
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$17;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;

    iput-boolean p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$17;->val$isUpload:Z

    iput-object p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$17;->val$store:Ljava/lang/String;

    iput-object p4, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$17;->val$storeModel:Ljava/lang/String;

    iput-object p5, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$17;->val$outDate:Ljava/lang/String;

    iput-object p6, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$17;->val$orderDate:Ljava/lang/String;

    iput-object p7, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$17;->val$remark:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$17;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;->access$15800(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$17;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;->access$15900(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditContact$IStockOutEditView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditContact$IStockOutEditView;->hideLoading()V

    .line 779
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$17;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;->access$16000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditContact$IStockOutEditView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditContact$IStockOutEditView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 784
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$17;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 7

    .line 760
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$17;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;->access$15000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$17;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;->access$15100(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditContact$IStockOutEditView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditContact$IStockOutEditView;->hideLoading()V

    .line 764
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$17;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;->access$15300(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditContact$IStockOutEditView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$17;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;->access$15200(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->getGoodsData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditContact$IStockOutEditView;->notifyGoodsList(Ljava/util/List;)V

    .line 765
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$17;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;->access$15600(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditContact$IStockOutEditView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$17;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;->access$15400(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->getAllCount()D

    move-result-wide v1

    iget-object v3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$17;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;

    invoke-static {v3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;->access$15500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-virtual {v3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->getAllMoney()D

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditContact$IStockOutEditView;->allCountandAllMoney(DD)V

    .line 766
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$17;->val$isUpload:Z

    if-eqz v0, :cond_1

    .line 767
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$17;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$17;->val$store:Ljava/lang/String;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$17;->val$storeModel:Ljava/lang/String;

    iget-object v4, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$17;->val$outDate:Ljava/lang/String;

    iget-object v5, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$17;->val$orderDate:Ljava/lang/String;

    iget-object v6, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$17;->val$remark:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;->submitData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 770
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$17;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;->access$15700(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditContact$IStockOutEditView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditContact$IStockOutEditView;->saveSuccess()V

    return-void
.end method
