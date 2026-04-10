.class Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$1;
.super Ljava/lang/Object;
.source "QuerySellPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->initBaseData()V
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

    .line 39
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$900(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$1000(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;->hideLoading()V

    .line 57
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$1100(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;->showLoading(Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$1200(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;->finishActivity()V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$1300(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$1400(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;->hideLoading()V

    .line 67
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$1500(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;->showLoading(Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$1600(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;->finishActivity()V

    return-void
.end method

.method public requestSuccess()V
    .locals 5

    .line 42
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$000(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$500(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$100(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->getGoodsBigType()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$200(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;

    invoke-virtual {v2}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->getGoodsSmallType()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v3}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$300(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;

    invoke-virtual {v3}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->getSellTypeList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v4}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$400(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v4

    check-cast v4, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;

    invoke-virtual {v4}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->getPayTypeList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;->initSpinners(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 46
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$600(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;->notifyBigTypeChange()V

    .line 47
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$700(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;->notifySmallTypeChange()V

    .line 48
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$800(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;->hideLoading()V

    return-void
.end method
