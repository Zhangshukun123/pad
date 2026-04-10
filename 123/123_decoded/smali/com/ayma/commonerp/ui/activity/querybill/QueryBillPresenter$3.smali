.class Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter$3;
.super Ljava/lang/Object;
.source "QueryBillPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;->querySaleBill(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;->access$2100(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;->access$2200(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillContact$IQueryBillView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillContact$IQueryBillView;->hideLoading()V

    .line 149
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;->access$2300(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillContact$IQueryBillView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillContact$IQueryBillView;->notifyDataListChange()V

    .line 150
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;->access$2400(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillContact$IQueryBillView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillContact$IQueryBillView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 156
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter$3;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;->access$1600(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;->access$1700(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillContact$IQueryBillView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillContact$IQueryBillView;->hideLoading()V

    .line 139
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;->access$1800(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillContact$IQueryBillView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillContact$IQueryBillView;->notifyDataListChange()V

    .line 140
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;->access$2000(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillContact$IQueryBillView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;->access$1900(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->getCountAndAmount()Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillContact$IQueryBillView;->showCountAndAmount(Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;)V

    return-void
.end method
