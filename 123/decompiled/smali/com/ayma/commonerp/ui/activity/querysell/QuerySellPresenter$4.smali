.class Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$4;
.super Ljava/lang/Object;
.source "QuerySellPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->sortList(IZLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

.field final synthetic val$clickedView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;Landroid/view/View;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$4;->val$clickedView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$4300(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$4400(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;->hideLoading()V

    .line 187
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$4500(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;

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

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 192
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$4;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$3800(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$3900(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$4;->val$clickedView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;->resetSortIcon(Landroid/view/View;)V

    .line 176
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$4000(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;->hideLoading()V

    .line 177
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$4100(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;->notifyListChange()V

    .line 178
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$4200(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;

    const-string v1, "\u6392\u5e8f\u5b8c\u6210"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;->showToast(Ljava/lang/String;)V

    return-void
.end method
