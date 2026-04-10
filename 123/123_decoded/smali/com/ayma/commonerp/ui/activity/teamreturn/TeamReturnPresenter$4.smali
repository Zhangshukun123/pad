.class Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$4;
.super Ljava/lang/Object;
.source "TeamReturnPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->addSelectGoods(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$3700(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$3800(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->hideLoading()V

    .line 237
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$3900(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->showToast(Ljava/lang/String;)V

    .line 238
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$4000(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->notifyListChange()V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 243
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$4;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 5

    .line 223
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$3100(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$3200(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->hideLoading()V

    .line 227
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$3300(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->notifyListChange()V

    .line 228
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$3600(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$3400(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->getTotalCount()D

    move-result-wide v1

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {v3}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$3500(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-virtual {v3}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->getTotalMoney()D

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->showCountAndTotalPrice(DD)V

    return-void
.end method
