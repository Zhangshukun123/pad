.class Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$3;
.super Ljava/lang/Object;
.source "SellAnalysisPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->querySaleData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->access$2500(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->access$2600(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;->hideLoading()V

    .line 152
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->access$2700(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;->notifyDataListChange()V

    .line 153
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->access$2800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->access$2900(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->access$3000(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;->hideLoading()V

    .line 162
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->access$3100(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;->notifyDataListChange()V

    .line 163
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->access$3200(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->access$1600(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->access$1700(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;->resetSortIcon(Landroid/view/View;)V

    .line 140
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->access$1800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;->hideLoading()V

    .line 141
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->access$2100(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->access$1900(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->getSaleAnalysisAmount()Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v1

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->access$2000(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-virtual {v2}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->getAmountTips()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;->showAmount(Lcom/ayma/commonerp/bean/SaleAnalysisAmount;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->access$2300(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->access$2200(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->getErrorTip()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;->showErrorTip(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->access$2400(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;->notifyDataListChange()V

    return-void
.end method
