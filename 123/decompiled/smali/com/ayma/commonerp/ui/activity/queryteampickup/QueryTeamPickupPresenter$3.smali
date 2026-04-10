.class Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$3;
.super Ljava/lang/Object;
.source "QueryTeamPickupPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->queryTeamPickupData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->access$2200(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->access$2300(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;->hideLoading()V

    .line 146
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->access$2400(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;->showToast(Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->access$2700(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->access$2500(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->getTotalCount()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->access$2600(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

    invoke-virtual {v2}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->getTotalPrice()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;->showTotalCountAndPrice(DLjava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->access$2800(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;->notifyListChange()V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->access$2900(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->access$3000(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;->hideLoading()V

    .line 157
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->access$3100(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;->showToast(Ljava/lang/String;)V

    .line 158
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->access$3400(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->access$3200(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->getTotalCount()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->access$3300(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

    invoke-virtual {v2}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->getTotalPrice()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;->showTotalCountAndPrice(DLjava/lang/String;)V

    .line 159
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->access$3500(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;->notifyListChange()V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 125
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$3;->requestSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public requestSuccess(Ljava/lang/String;)V
    .locals 3

    .line 128
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->access$1300(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->access$1400(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;->resetSortIcon(Landroid/view/View;)V

    .line 132
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->access$1500(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;->hideLoading()V

    .line 133
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->access$1800(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->access$1600(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->getTotalCount()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->access$1700(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

    invoke-virtual {v2}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->getTotalPrice()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;->showTotalCountAndPrice(DLjava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->access$1900(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;->notifyListChange()V

    .line 135
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->access$2000(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->getTeamPickupList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 136
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->access$2100(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;

    const-string v0, "\u6682\u65e0\u6570\u636e"

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;->showToast(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
