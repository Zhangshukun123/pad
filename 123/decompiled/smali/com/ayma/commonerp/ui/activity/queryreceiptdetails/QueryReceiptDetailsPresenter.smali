.class public Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "QueryReceiptDetailsPresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsContact$IQueryReceiptDetailsPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsContact$IQueryReceiptDetailsView;",
        "Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsContact$IQueryReceiptDetailsPresenter;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;)Z
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;)Z
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public fetchGoodsData(Ljava/lang/String;)V
    .locals 2

    .line 35
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsContact$IQueryReceiptDetailsView;

    const-string v1, "\u6b63\u5728\u67e5\u8be2\u6570\u636e"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsContact$IQueryReceiptDetailsView;->showLoading(Ljava/lang/String;)V

    .line 39
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "storeOutId"

    .line 40
    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter$1;-><init>(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;)V

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;->fetchGoodsData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;->initModel()Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;
    .locals 2

    .line 18
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 24
    invoke-super {p0}, Lcom/ayma/commonerp/base/BasePresenter;->onCreate()V

    .line 25
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsContact$IQueryReceiptDetailsView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsModel;->getGoodsData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsContact$IQueryReceiptDetailsView;->notifyGoodsList(Ljava/util/List;)V

    return-void
.end method
