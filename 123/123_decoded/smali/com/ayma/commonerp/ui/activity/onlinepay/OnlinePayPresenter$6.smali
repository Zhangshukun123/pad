.class Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$6;
.super Ljava/lang/Object;
.source "OnlinePayPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->pay(Ljava/lang/String;Ljava/lang/String;Z)V
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

.field final synthetic val$isJDPay:Z

.field final synthetic val$orderNo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;ZLjava/lang/String;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    iput-boolean p2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$6;->val$isJDPay:Z

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$6;->val$orderNo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$1700(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$1800(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->updatePayingStatue(Z)V

    .line 263
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$1900(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->showPayErrorInfo(Ljava/lang/String;)V

    .line 264
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$6;->val$isJDPay:Z

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$2000(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->hidePayLoading()V

    .line 266
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$2100(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 268
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$6;->val$orderNo:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->queryOrderDelayed(Ljava/lang/String;Z)V

    .line 270
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {p1, v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$2202(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;Z)Z

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 275
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$6;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess(Lcom/ayma/commonerp/bean/PayResult;)V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$1100(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$1200(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->updatePayingStatue(Z)V

    .line 246
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$1300(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    const-string v2, ""

    invoke-interface {v0, v2}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->showPayErrorInfo(Ljava/lang/String;)V

    .line 247
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$6;->val$isJDPay:Z

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$1400(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->hidePayLoading()V

    .line 250
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$1500(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$6;->val$orderNo:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/PayResult;->getQrCodeUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->showJDPayQrCode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$6;->val$orderNo:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->queryOrderStatue(Ljava/lang/String;Z)V

    .line 254
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {p1, v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$1602(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;Z)Z

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 239
    check-cast p1, Lcom/ayma/commonerp/bean/PayResult;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$6;->requestSuccess(Lcom/ayma/commonerp/bean/PayResult;)V

    return-void
.end method
