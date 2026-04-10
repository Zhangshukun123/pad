.class Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$8;
.super Ljava/lang/Object;
.source "TeamHandoverPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->selectItem(Lcom/ayma/commonerp/bean/ReceiptSelectBean;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

.field final synthetic val$position:I

.field final synthetic val$select:Z


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;IZ)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    iput p2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$8;->val$position:I

    iput-boolean p3, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$8;->val$select:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->access$8500(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->access$8600(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

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

    .line 419
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$8;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 5

    .line 401
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->access$7900(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->access$8000(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;

    iget v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$8;->val$position:I

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;->notifyItemChange(I)V

    .line 405
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->access$8100(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;

    iget v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$8;->val$position:I

    iget-boolean v2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$8;->val$select:Z

    invoke-interface {v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;->movePosition(IZ)V

    .line 406
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->access$8400(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->access$8200(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->getSelectCount()D

    move-result-wide v1

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-static {v3}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->access$8300(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    invoke-virtual {v3}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->getSelectAmount()D

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;->showSelectedCountAndAmount(DD)V

    return-void
.end method
