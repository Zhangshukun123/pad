.class Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$1;
.super Ljava/lang/Object;
.source "SellAnalysisPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->getGoodsBigType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->access$400(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->access$500(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;->hideLoading()V

    .line 70
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->access$600(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->access$700(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;->hideLoading()V

    .line 79
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->access$900(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->access$000(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->access$100(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;->hideLoading()V

    .line 60
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->access$200(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;->notifyBigTypeChange()V

    .line 61
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->access$300(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;->notifySmallTypeChange()V

    return-void
.end method
