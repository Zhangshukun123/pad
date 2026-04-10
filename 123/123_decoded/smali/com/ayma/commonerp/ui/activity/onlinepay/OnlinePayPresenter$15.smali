.class Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$15;
.super Ljava/lang/Object;
.source "OnlinePayPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->cancelPayQueryRequest(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$15;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 3

    .line 612
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$15;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$6002(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;Z)Z

    .line 613
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$15;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$6600(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$15;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$6700(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bf7\u6c42\u53d6\u6d88\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 621
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$15;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$15;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$6002(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;Z)Z

    .line 600
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$15;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$6100(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$15;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$6200(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->updatePayingStatue(Z)V

    .line 604
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$15;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$6300(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->hideLoading()V

    .line 605
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$15;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$6400(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->hidePayLoading()V

    .line 606
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$15;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->resetQueryTimes()V

    .line 607
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$15;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$6500(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    const-string v1, "\u5df2\u53d6\u6d88\u8be5\u8bf7\u6c42"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->showToast(Ljava/lang/String;)V

    return-void
.end method
