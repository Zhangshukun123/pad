.class Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$1;
.super Landroid/os/Handler;
.source "TeamHandoverPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;Landroid/os/Looper;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 60
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x141

    if-eq v0, v1, :cond_3

    const/16 v1, 0x142

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->access$300(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->access$400(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;->hideLoading()V

    .line 73
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->access$500(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_2

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    goto :goto_0

    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 62
    :cond_3
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->access$000(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 65
    :cond_4
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->access$100(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;->hideLoading()V

    .line 66
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->access$200(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;

    const-string v1, "\u5df2\u5b8c\u6210"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;->showToast(Ljava/lang/String;)V

    .line 76
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
