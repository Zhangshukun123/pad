.class public Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "QuerySellPresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;",
        "Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelPresenter;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Z
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Z
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Z
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Z
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Z
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3300(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Z
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3500(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Z
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Z
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3900(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Z
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4400(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Z
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getSmallType(Ljava/lang/String;)V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$3;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$3;-><init>(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->queryGoodsSmallType(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public initBaseData()V
    .locals 3

    .line 33
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d..."

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;->showLoading(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;->init()V

    .line 38
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->getSaleDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;->initRl(Ljava/util/List;)V

    .line 39
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$1;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$1;-><init>(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)V

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->initSaleAndPayAndBigType(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->initModel()Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;
    .locals 2

    .line 22
    new-instance v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .line 27
    invoke-super {p0}, Lcom/ayma/commonerp/base/BasePresenter;->onCreate()V

    .line 28
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->initBaseData()V

    return-void
.end method

.method public querySaleDataList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 77
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;->showLoading()V

    .line 81
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 82
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    const-string v2, "companyId"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    const-string v2, "company2Id"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    const-string v2, "trainsId"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->getGoDate()Ljava/lang/String;

    move-result-object v1

    const-string v2, "outDate"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;

    invoke-virtual {v1, p4}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->getPayTypeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v1, "paymentType"

    invoke-virtual {v0, v1, p4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object p4, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p4, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;

    invoke-virtual {p4, p5}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->getSellTypeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string p5, "saleType"

    invoke-virtual {v0, p5, p4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object p4, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p4, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;

    invoke-virtual {p4, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->getBigTypeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "classMax"

    invoke-virtual {v0, p4, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->getSmallTypeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "classMin"

    invoke-virtual {v0, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "goodsName"

    .line 90
    invoke-virtual {v0, p1, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$2;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$2;-><init>(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)V

    invoke-virtual {p1, v0, p2}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->querySaleData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public sortList(IZLandroid/view/View;)V
    .locals 7

    .line 160
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->getSaleDataList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 164
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;

    const-string v1, "\u6b63\u5728\u6392\u5e8f"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;->showLoading(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    move-object v1, v0

    check-cast v1, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;

    new-instance v6, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$4;

    invoke-direct {v6, p0, p3}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$4;-><init>(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;Landroid/view/View;)V

    const-string v4, ""

    move v3, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModel;->sortList(Ljava/util/List;ILjava/lang/String;ZLcom/ayma/base/mvp/ModelCallBack;)V

    return-void

    .line 165
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;

    const-string p2, "\u5f53\u524d\u6ca1\u6709\u6570\u636e\u53ef\u6392\u5e8f"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;->showToast(Ljava/lang/String;)V

    return-void
.end method
