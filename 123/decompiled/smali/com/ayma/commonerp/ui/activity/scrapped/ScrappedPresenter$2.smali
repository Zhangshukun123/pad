.class Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$2;
.super Ljava/lang/Object;
.source "ScrappedPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->addSelectGoods(Ljava/util/List;)V
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

    .line 148
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 0

    .line 162
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->access$1300(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->access$1400(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;->hideLoading()V

    .line 166
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->access$1500(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;->notifyListDataChange()V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 171
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$2;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 5

    .line 152
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->access$700(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->access$800(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;->hideLoading()V

    .line 156
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->access$900(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;->notifyListDataChange()V

    .line 157
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->access$1200(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->access$1000(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->getTotalCount()D

    move-result-wide v1

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-static {v3}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->access$1100(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;

    invoke-virtual {v3}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->getTotalPrice()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;->showCountAndTotalPrice(DLjava/lang/Double;)V

    return-void
.end method
