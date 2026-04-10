.class Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$9;
.super Ljava/lang/Object;
.source "TeamReturnPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->queryTrainSellData(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$9;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 5

    .line 565
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$9;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$9200(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$9;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$9300(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->resetSortIcon(Landroid/view/View;)V

    .line 569
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$9;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$9400(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->hideLoading()V

    .line 570
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$9;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$9700(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$9;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$9500(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->getTotalCount()D

    move-result-wide v1

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$9;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {v3}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$9600(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-virtual {v3}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->getTotalMoney()D

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->showCountAndTotalPrice(DD)V

    .line 571
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$9;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$9800(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->notifyListChange()V

    .line 572
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$9;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$9900(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 577
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$9;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 551
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$9;->requestSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public requestSuccess(Ljava/lang/String;)V
    .locals 4

    .line 554
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$9;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$8500(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 557
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$9;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$8600(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->resetSortIcon(Landroid/view/View;)V

    .line 558
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$9;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$8700(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->hideLoading()V

    .line 559
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$9;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$9000(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$9;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$8800(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->getTotalCount()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$9;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$8900(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-virtual {v2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->getTotalMoney()D

    move-result-wide v2

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->showCountAndTotalPrice(DD)V

    .line 560
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$9;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$9100(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->notifyListChange()V

    return-void
.end method
