.class Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$8;
.super Ljava/lang/Object;
.source "SellPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->pay(Ljava/lang/String;Ljava/lang/String;DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ayma/base/mvp/ModelParamCallBack<",
        "Lcom/ayma/commonerp/bean/RequestHeaderBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)V
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 3

    .line 614
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$8400(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$8500(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    const-string v1, "\u51c6\u5907\u67e5\u8be2\u652f\u4ed8\u7ed3\u679c\u4e2d"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showLoading(Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$8600(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\uff0c\u51c6\u5907\u786e\u8ba4\u662f\u5426\u652f\u4ed8\u6210\u529f\u4e2d"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showPayErrorInfo(ILjava/lang/String;)V

    .line 619
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$8700(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$7000(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showPayOrderNo(Ljava/lang/String;)V

    .line 620
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$7000(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->queryOrderDelayed(Ljava/lang/String;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 625
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$8;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess(Lcom/ayma/commonerp/bean/RequestHeaderBean;)V
    .locals 9

    .line 584
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$6900(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$7100(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$7000(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showPayOrderNo(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 589
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$7200(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    invoke-virtual {v1, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->requestResult(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "\u67e5\u8be2\u652f\u4ed8\u7ed3\u679c\u4e2d"

    const/4 v3, 0x0

    const-string v4, "\u51c6\u5907\u67e5\u8be2\u652f\u4ed8\u7ed3\u679c\u4e2d"

    const-string v5, "-"

    const/4 v6, 0x1

    if-eqz v1, :cond_2

    .line 590
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$7300(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {v1, v4}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showLoading(Ljava/lang/String;)V

    .line 591
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$7400(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 592
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ayma/commonerp/net/RetrofitFactory;->getGson()Lcom/google/gson/Gson;

    move-result-object v7

    const-class v8, Lcom/ayma/commonerp/bean/PayResult;

    invoke-virtual {v7, v1, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/PayResult;

    if-nez v1, :cond_1

    .line 594
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$7500(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u6570\u636e\u8f6c\u6362\u5931\u8d25\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v6, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showPayErrorInfo(ILjava/lang/String;)V

    goto :goto_0

    .line 596
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$7600(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {p1, v3, v2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showPayErrorInfo(ILjava/lang/String;)V

    .line 598
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->queryOrderStatue()V

    goto :goto_1

    :cond_2
    const-string v1, "105"

    .line 599
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 600
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$7700(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->hideLoading()V

    .line 601
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$7800(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->hidePayLoading()V

    .line 602
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$7900(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v6, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showPayErrorInfo(ILjava/lang/String;)V

    .line 603
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$8000(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {p1, v6}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->setPayDialogBtnEnable(Z)V

    .line 604
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$8100(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {p1, v6}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->setPayQueryEnable(Z)V

    return-void

    .line 607
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$8200(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {p1, v4}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showLoading(Ljava/lang/String;)V

    .line 608
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$8300(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {p1, v3, v2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showPayErrorInfo(ILjava/lang/String;)V

    .line 609
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->queryOrderStatue()V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 581
    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$8;->requestSuccess(Lcom/ayma/commonerp/bean/RequestHeaderBean;)V

    return-void
.end method
