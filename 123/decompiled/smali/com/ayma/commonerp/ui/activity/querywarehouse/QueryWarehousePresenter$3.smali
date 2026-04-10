.class Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$3;
.super Ljava/lang/Object;
.source "QueryWarehousePresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->queryWarehouse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ayma/base/mvp/ModelParamCallBack<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$2600(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$2700(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;->hideLoading()V

    .line 173
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "\u64cd\u4f5c\u5931\u8d25"

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 178
    :goto_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$2800(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;->showToast(Ljava/lang/String;)V

    .line 179
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$3100(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$2900(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->getTotalCount()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$3000(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;

    invoke-virtual {v2}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->getTotalPrice()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;->showTotalCountAndPrice(DLjava/lang/String;)V

    .line 180
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$3200(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;->notifyListChange()V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$3300(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$3400(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;->hideLoading()V

    .line 189
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$3500(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;->showToast(Ljava/lang/String;)V

    .line 190
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$3800(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$3600(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->getTotalCount()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$3700(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;

    invoke-virtual {v2}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->getTotalPrice()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;->showTotalCountAndPrice(DLjava/lang/String;)V

    .line 191
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$3900(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;->notifyListChange()V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 151
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$3;->requestSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public requestSuccess(Ljava/lang/String;)V
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$1800(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$1900(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;->hideLoading()V

    .line 158
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$2000(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;->resetSortIcon(Landroid/view/View;)V

    .line 159
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$2300(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$2100(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->getTotalCount()D

    move-result-wide v1

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {v3}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$2200(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;

    invoke-virtual {v3}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->getTotalPrice()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;->showTotalCountAndPrice(DLjava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$2400(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;->notifyListChange()V

    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$2500(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
