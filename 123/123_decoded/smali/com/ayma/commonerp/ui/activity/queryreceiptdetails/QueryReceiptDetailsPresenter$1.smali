.class Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter$1;
.super Ljava/lang/Object;
.source "QueryReceiptDetailsPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;->fetchGoodsData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;->access$900(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;->access$1000(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsContact$IQueryReceiptDetailsView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsContact$IQueryReceiptDetailsView;->hideLoading()V

    .line 59
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;->access$1100(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsContact$IQueryReceiptDetailsView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsContact$IQueryReceiptDetailsView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter$1;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 5

    .line 44
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;->access$000(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;->access$100(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsContact$IQueryReceiptDetailsView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsContact$IQueryReceiptDetailsView;->hideLoading()V

    .line 48
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;->access$300(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsContact$IQueryReceiptDetailsView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;->access$200(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;->getOutHeadData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsContact$IQueryReceiptDetailsView;->init(Ljava/util/List;)V

    .line 49
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;->access$500(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsContact$IQueryReceiptDetailsView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;->access$400(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;->getGoodsData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsContact$IQueryReceiptDetailsView;->notifyGoodsList(Ljava/util/List;)V

    .line 50
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;->access$800(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsContact$IQueryReceiptDetailsView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;->access$600(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;->getAllCount()D

    move-result-wide v1

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;

    invoke-static {v3}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;->access$700(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;

    invoke-virtual {v3}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;->getAllMoney()D

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsContact$IQueryReceiptDetailsView;->showAllCountandAllMoney(DD)V

    return-void
.end method
