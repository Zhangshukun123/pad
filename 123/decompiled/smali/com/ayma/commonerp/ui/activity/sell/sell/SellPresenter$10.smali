.class Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;
.super Ljava/lang/Object;
.source "SellPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->queryOrderStatue()V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)V
    .locals 0

    .line 675
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 3

    .line 709
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$10100(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$10200(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->hideLoading()V

    .line 713
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$9100(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 714
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$9108(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)I

    .line 715
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$7000(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->queryOrderDelayed(Ljava/lang/String;)V

    return-void

    .line 718
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$10300(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->hidePayLoading()V

    .line 719
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$10400(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->setPayDialogBtnEnable(Z)V

    .line 720
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$10500(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->setPayQueryEnable(Z)V

    .line 721
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->resetQueryTimes()V

    .line 722
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$9202(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;Z)Z

    .line 723
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$10600(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\n\u5982\u65c5\u5ba2\u672a\u652f\u4ed8\u6210\u529f\uff0c\u8bf7\u91cd\u8bd5\n\u5982\u65c5\u5ba2\u5df2\u652f\u4ed8\u6210\u529f\u4f46\u67e5\u8be2\u5931\u8d25\uff0c\u8bf7\u5230\u83dc\u5355\u9875\u9762\u70b9\u51fb\u66f4\u65b0\u8ba2\u5355\u72b6\u6001\n\u5982PDA\u5f53\u524d\u7f51\u7edc\u4fe1\u53f7\u957f\u65f6\u95f4\u5f31\uff0c\u5efa\u8bae\u4f7f\u7528\u73b0\u91d1\u65b9\u5f0f\u8fdb\u884c\u9500\u552e"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showPayErrorInfo(ILjava/lang/String;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 728
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess(Lcom/ayma/commonerp/bean/PayResult;)V
    .locals 4

    .line 679
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$8800(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$8900(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->hidePayLoading()V

    .line 683
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$9000(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->hideLoading()V

    .line 684
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$9100(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_2

    .line 685
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/PayResult;->getPayStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 686
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0, v2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$9202(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;Z)Z

    .line 687
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$7002(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 688
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$9300(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->updateStock()V

    .line 689
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->deleteAllGoods()V

    .line 690
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$9400(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->dismissPayDialog()V

    .line 691
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$9500(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {v0, v3}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->setPayDialogBtnEnable(Z)V

    .line 692
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$9600(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->resetDiscount()V

    .line 693
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$9700(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u652f\u4ed8\u6210\u529f\uff0c\n\u65c5\u5ba2\u4f7f\u7528\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void

    .line 696
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$9108(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)I

    .line 697
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$7000(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->queryOrderDelayed(Ljava/lang/String;)V

    return-void

    .line 700
    :cond_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$9800(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {p1, v3}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->setPayDialogBtnEnable(Z)V

    .line 701
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$9900(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {p1, v3}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->setPayQueryEnable(Z)V

    .line 702
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->resetQueryTimes()V

    .line 703
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {p1, v2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$9202(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;Z)Z

    .line 704
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$10000(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    const-string v0, "\u8ba2\u5355\u67e5\u8be2\u5931\u8d25\uff0c\u8bf7\u4e0e\u65c5\u5ba2\u786e\u8ba4\uff0c\u5982\u65c5\u5ba2\u672a\u652f\u4ed8\u6210\u529f\uff0c\u8bf7\u91cd\u8bd5\n\u5982\u65c5\u5ba2\u5df2\u652f\u4ed8\u6210\u529f\u4f46\u67e5\u8be2\u5931\u8d25\uff0c\u8bf7\u5230\u83dc\u5355\u9875\u9762\u70b9\u51fb\u66f4\u65b0\u8ba2\u5355\u72b6\u6001\n\u5982PDA\u5f53\u524d\u7f51\u7edc\u4fe1\u53f7\u957f\u65f6\u95f4\u5f31\uff0c\u5efa\u8bae\u4f7f\u7528\u73b0\u91d1\u65b9\u5f0f\u8fdb\u884c\u9500\u552e"

    invoke-interface {p1, v3, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showPayErrorInfo(ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 675
    check-cast p1, Lcom/ayma/commonerp/bean/PayResult;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;->requestSuccess(Lcom/ayma/commonerp/bean/PayResult;)V

    return-void
.end method
