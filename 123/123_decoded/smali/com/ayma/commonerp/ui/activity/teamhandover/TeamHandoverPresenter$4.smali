.class Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$4;
.super Ljava/lang/Object;
.source "TeamHandoverPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->deleteGoods(Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->access$4200(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->access$4300(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;->hideLoading()V

    .line 258
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->access$4400(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;

    if-nez p1, :cond_1

    const-string p1, "\u672a\u77e5\u5f02\u5e38"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 263
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$4;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 5

    .line 243
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->access$3400(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->access$3500(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;->hideLoading()V

    .line 248
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->access$3800(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->access$3600(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->getSelectCount()D

    move-result-wide v1

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-static {v3}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->access$3700(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    invoke-virtual {v3}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->getSelectAmount()D

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;->showSelectedCountAndAmount(DD)V

    .line 249
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->access$4100(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->access$3900(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->getTotalCount()D

    move-result-wide v1

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-static {v3}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->access$4000(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    invoke-virtual {v3}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->getTotalMoney()D

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;->showCountAndTotalPrice(DD)V

    return-void
.end method
