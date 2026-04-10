.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$16;
.super Ljava/lang/Object;
.source "StockOutEditPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;)V
    .locals 0

    .line 721
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$16;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 733
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$16;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;->access$14800(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$16;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;->access$14900(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditContact$IStockOutEditView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditContact$IStockOutEditView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 741
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$16;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 2

    .line 724
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$16;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;->access$14300(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$16;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;->access$14500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditContact$IStockOutEditView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$16;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;->access$14400(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->getSelectedTrain()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditContact$IStockOutEditView;->notifyTrainList(Ljava/util/List;)V

    .line 728
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$16;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;->access$14700(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditContact$IStockOutEditView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$16;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;->access$14600(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->getSelectedTrain()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditContact$IStockOutEditView;->showTrainNo(Ljava/util/List;)V

    return-void
.end method
