.class Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$1;
.super Ljava/lang/Object;
.source "QuerySellDetailPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->getBaseData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public requestSuccess()V
    .locals 5

    .line 43
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$000(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$500(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$100(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->getGoodsBigType()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$200(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;

    invoke-virtual {v2}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->getGoodsSmallType()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v3}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$300(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;

    invoke-virtual {v3}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->getSellTypeList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v4}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$400(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v4

    check-cast v4, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;

    invoke-virtual {v4}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailModel;->getPayTypeList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;->initSpinners(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 47
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$600(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;->notifyBigTypeChange()V

    .line 48
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$700(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;->notifySmallTypeChange()V

    .line 49
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$800(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;->hideLoading()V

    .line 50
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$900(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;->initSuccess()V

    return-void
.end method
