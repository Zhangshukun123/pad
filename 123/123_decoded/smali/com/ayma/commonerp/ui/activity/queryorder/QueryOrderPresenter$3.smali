.class Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$3;
.super Ljava/lang/Object;
.source "QueryOrderPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->queryAllOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->access$3600(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->access$3700(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;->hideLoading()V

    .line 181
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->access$3800(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;

    const-string v1, "\u67e5\u8be2\u5931\u8d25"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;->showToast(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->access$3900(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;->notifyListDataChanged()V

    .line 183
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->access$4000(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 188
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$3;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->access$2800(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->access$2900(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;

    const-string v1, "\u67e5\u8be2\u6210\u529f"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;->showToast(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->access$3000(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;->hideLoading()V

    .line 170
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->access$3300(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->access$3100(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderModel;

    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderModel;->getFilterStartDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->access$3200(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderModel;

    invoke-virtual {v2}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderModel;->getFilterEndDate()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;->initFilterDate(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->access$3400(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;->showFilterAndSortIsNot(Z)V

    .line 172
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->access$3500(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;->notifyListDataChanged()V

    return-void
.end method
