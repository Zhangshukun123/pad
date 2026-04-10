.class Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$4;
.super Ljava/lang/Object;
.source "SellAnalysisPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->sortList(IZLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

.field final synthetic val$clickedView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;Landroid/view/View;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$4;->val$clickedView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->access$3800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->access$3900(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;->hideLoading()V

    .line 197
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->access$4000(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6392\u5e8f\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const-string p1, "\u672a\u77e5\u539f\u56e0"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 202
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$4;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->access$3300(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->access$3400(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$4;->val$clickedView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;->resetSortIcon(Landroid/view/View;)V

    .line 186
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->access$3500(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;->hideLoading()V

    .line 187
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->access$3600(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;->notifyDataListChange()V

    .line 188
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->access$3700(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;

    const-string v1, "\u6392\u5e8f\u5b8c\u6210"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;->showToast(Ljava/lang/String;)V

    return-void
.end method
