.class Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$2;
.super Ljava/lang/Object;
.source "QuerySellPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->querySaleDataList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$2500(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$2600(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;->hideLoading()V

    .line 110
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$2700(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;

    if-nez p1, :cond_1

    const-string p1, "\u672a\u77e5\u9519\u8bef"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;->showToast(Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$2800(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;->notifyListChange()V

    .line 112
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$3100(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$2900(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->getTotalCount()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$3000(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;

    invoke-virtual {v2}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->getTotalPrice()D

    move-result-wide v2

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;->showTotalCountAndPrice(DD)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$2;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 5

    .line 94
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$1700(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$1800(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;->resetSortIcon(Landroid/view/View;)V

    .line 98
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$1900(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;->notifyListChange()V

    .line 99
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$2200(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$2000(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->getTotalCount()D

    move-result-wide v1

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v3}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$2100(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;

    invoke-virtual {v3}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->getTotalPrice()D

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;->showTotalCountAndPrice(DD)V

    .line 100
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$2300(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;->hideLoading()V

    .line 101
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$2400(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;

    const-string v1, "\u67e5\u8be2\u6210\u529f"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;->showToast(Ljava/lang/String;)V

    return-void
.end method
