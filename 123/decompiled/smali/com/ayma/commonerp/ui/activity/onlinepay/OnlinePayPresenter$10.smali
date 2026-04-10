.class Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10;
.super Ljava/lang/Object;
.source "OnlinePayPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->toOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ayma/base/mvp/ModelParamCallBack<",
        "Lcom/ayma/commonerp/bean/PayResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

.field final synthetic val$orderNo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;Ljava/lang/String;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10;->val$orderNo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 9

    .line 437
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$4100(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$4200(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->updatePayingStatue(Z)V

    .line 441
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$4300(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->hideLoading()V

    .line 442
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$4400(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->hidePayLoading()V

    .line 443
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->resetQueryTimes()V

    .line 444
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$4500(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->showPayErrorInfo(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$4700(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 446
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%s\n\n\u662f\u5426\u8981\u67e5\u8be2\u652f\u4ed8\u72b6\u6001\uff1f"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-instance v8, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10$1;

    invoke-direct {v8, p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10$1;-><init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10;)V

    const-string v3, ""

    const-string v5, "\u4e0d\u67e5\u8be2"

    const-string v7, "\u67e5\u8be2"

    .line 445
    invoke-interface/range {v2 .. v8}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 459
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess(Lcom/ayma/commonerp/bean/PayResult;)V
    .locals 2

    .line 426
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$3700(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 429
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$3800(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->updatePayingStatue(Z)V

    .line 430
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$3900(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    const-string v1, ""

    invoke-interface {p1, v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->showPayErrorInfo(Ljava/lang/String;)V

    .line 431
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {p1, v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$4002(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;Z)Z

    .line 432
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10;->val$orderNo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->queryCashToOnline(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 423
    check-cast p1, Lcom/ayma/commonerp/bean/PayResult;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10;->requestSuccess(Lcom/ayma/commonerp/bean/PayResult;)V

    return-void
.end method
