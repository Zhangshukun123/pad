.class Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$3;
.super Ljava/lang/Object;
.source "QuerySellDetailPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->queryData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 12

    .line 140
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$2600(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$2700(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;->hideLoading()V

    .line 144
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$2800(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;->notifyDataListChange()V

    .line 145
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$3400(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$2900(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->getTotalSellCount()D

    move-result-wide v2

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$3000(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->getTotalSellAmount()D

    move-result-wide v4

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$3100(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->getTotalReturnCount()D

    move-result-wide v6

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$3200(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->getTotalReturnAmount()D

    move-result-wide v8

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$3300(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->getDiscountAmount()D

    move-result-wide v10

    invoke-interface/range {v1 .. v11}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;->updateCountAndMoney(DDDDD)V

    .line 146
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$3500(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 151
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$3;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 12

    .line 129
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$1600(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$1700(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;->resetSortIcon(Landroid/view/View;)V

    .line 133
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$1800(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;->hideLoading()V

    .line 134
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$1900(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;->notifyDataListChange()V

    .line 135
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$2500(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$2000(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->getTotalSellCount()D

    move-result-wide v2

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$2100(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->getTotalSellAmount()D

    move-result-wide v4

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$2200(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->getTotalReturnCount()D

    move-result-wide v6

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$2300(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->getTotalReturnAmount()D

    move-result-wide v8

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$2400(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->getDiscountAmount()D

    move-result-wide v10

    invoke-interface/range {v1 .. v11}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;->updateCountAndMoney(DDDDD)V

    return-void
.end method
