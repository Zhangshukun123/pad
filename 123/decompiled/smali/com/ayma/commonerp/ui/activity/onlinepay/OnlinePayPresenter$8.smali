.class Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$8;
.super Ljava/lang/Object;
.source "OnlinePayPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->queryOrderStatue(Ljava/lang/String;Z)V
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

    .line 315
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    iput-boolean p2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$8;->val$isJDPay:Z

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$8;->val$orderNo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$3200(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$2500(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 357
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$2508(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)I

    .line 358
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$8;->val$orderNo:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$8;->val$isJDPay:Z

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->queryOrderDelayed(Ljava/lang/String;Z)V

    return-void

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$3300(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->hidePayLoading()V

    .line 362
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->resetQueryTimes()V

    .line 363
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$3400(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\n\u5982\u65c5\u5ba2\u672a\u652f\u4ed8\u6210\u529f\uff0c\u8bf7\u91cd\u8bd5\n\u5982\u65c5\u5ba2\u5df2\u652f\u4ed8\u6210\u529f\u4f46\u67e5\u8be2\u5931\u8d25\uff0c\u8bf7\u5230\u83dc\u5355\u9875\u9762\u70b9\u51fb\u66f4\u65b0\u8ba2\u5355\u72b6\u6001\n\u5982PDA\u5f53\u524d\u7f51\u7edc\u4fe1\u53f7\u957f\u65f6\u95f4\u5f31\uff0c\u5efa\u8bae\u4f7f\u7528\u73b0\u91d1\u65b9\u5f0f\u8fdb\u884c\u9500\u552e"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 368
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$8;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess(Lcom/ayma/commonerp/bean/PayResult;)V
    .locals 4

    .line 319
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$2300(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$2400(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->hidePayLoading()V

    .line 323
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$2500(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    .line 324
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/PayResult;->getPayStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$2600(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->updateStock()V

    .line 326
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$8;->val$isJDPay:Z

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$2700(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->hideJDPayQrCode()V

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$2800(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    const/16 v1, 0x3e7

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->setResultCode(I)V

    .line 331
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/eventbus/SaveSellServiceResult;

    invoke-direct {v1}, Lcom/ayma/commonerp/eventbus/SaveSellServiceResult;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 332
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$3000(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u652f\u4ed8\u6210\u529f\uff0c\n\u65c5\u5ba2\u4f7f\u7528\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/PayResult;->getPayChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u652f\u4ed8\u91d1\u989d\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/PayResult;->getTotalFee()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u5143"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$8$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$8$1;-><init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$8;)V

    const-string v2, ""

    const-string v3, "\u786e\u5b9a"

    .line 332
    invoke-interface {v0, v2, p1, v3, v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 343
    :cond_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$2508(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)I

    .line 344
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$8;->val$orderNo:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$8;->val$isJDPay:Z

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->queryOrderDelayed(Ljava/lang/String;Z)V

    return-void

    .line 347
    :cond_3
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->resetQueryTimes()V

    .line 348
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$3100(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    const-string v0, "\u8ba2\u5355\u67e5\u8be2\u5931\u8d25\uff0c\u8bf7\u4e0e\u65c5\u5ba2\u786e\u8ba4\uff0c\u5982\u65c5\u5ba2\u672a\u652f\u4ed8\u6210\u529f\uff0c\u8bf7\u91cd\u8bd5\n\u5982\u65c5\u5ba2\u5df2\u652f\u4ed8\u6210\u529f\u4f46\u67e5\u8be2\u5931\u8d25\uff0c\u8bf7\u5230\u83dc\u5355\u9875\u9762\u70b9\u51fb\u66f4\u65b0\u8ba2\u5355\u72b6\u6001\n\u5982PDA\u5f53\u524d\u7f51\u7edc\u4fe1\u53f7\u957f\u65f6\u95f4\u5f31\uff0c\u5efa\u8bae\u4f7f\u7528\u73b0\u91d1\u65b9\u5f0f\u8fdb\u884c\u9500\u552e"

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 315
    check-cast p1, Lcom/ayma/commonerp/bean/PayResult;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$8;->requestSuccess(Lcom/ayma/commonerp/bean/PayResult;)V

    return-void
.end method
