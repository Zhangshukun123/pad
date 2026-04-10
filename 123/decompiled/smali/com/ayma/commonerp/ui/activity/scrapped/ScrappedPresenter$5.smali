.class Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$5;
.super Ljava/lang/Object;
.source "ScrappedPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->commitData(Ljava/util/TreeMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$5;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$5;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->access$3500(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$5;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->access$3600(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;->hideLoading()V

    .line 296
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$5;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->access$3700(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;

    if-nez p1, :cond_1

    const-string p1, "\u672a\u77e5\u5f02\u5e38"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 301
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$5;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 5

    .line 281
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$5;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->access$2800(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$5;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->access$2900(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;->hideLoading()V

    .line 285
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$5;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->access$3000(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;->notifyListDataChange()V

    .line 286
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$5;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->access$3300(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$5;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->access$3100(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->getTotalCount()D

    move-result-wide v1

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$5;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-static {v3}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->access$3200(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;

    invoke-virtual {v3}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->getTotalPrice()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;->showCountAndTotalPrice(DLjava/lang/Double;)V

    .line 287
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$5;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->access$3400(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;

    const-string v1, "\u63d0\u4ea4\u6210\u529f"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;->showToast(Ljava/lang/String;)V

    return-void
.end method
