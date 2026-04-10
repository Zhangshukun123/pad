.class public Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "QueryTeamPickupPresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;",
        "Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupPresenter;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Z
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Z
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Z
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Z
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Z
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Z
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Z
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4200(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Z
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Z
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getGoodsBigType()V
    .locals 3

    .line 41
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;->showLoading()V

    .line 45
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$1;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$1;-><init>(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)V

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->queryGoodsBigType(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public getGoodsSmallType(Ljava/lang/String;)V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$2;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$2;-><init>(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->queryGoodsSmallType(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->initModel()Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;
    .locals 2

    .line 24
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .line 29
    invoke-super {p0}, Lcom/ayma/commonerp/base/BasePresenter;->onCreate()V

    .line 30
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;->init()V

    .line 31
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->getTeamPickupList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;->initRlv(Ljava/util/List;)V

    .line 32
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->getGoodsBigType()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v2, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

    invoke-virtual {v2}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->getGoodsSmallType()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;->initSpinner(Ljava/util/List;Ljava/util/List;)V

    .line 33
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->getGoodsBigType()V

    return-void
.end method

.method public queryTeamPickupData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 112
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;->showLoading()V

    .line 116
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 117
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    const-string v2, "company2Id"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    const-string v2, "trainsId"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->getGoDate()Ljava/lang/String;

    move-result-object v1

    const-string v2, "outDate"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

    invoke-virtual {v1, p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->getBigTypeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "classMax"

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->getSmallTypeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "classMin"

    invoke-virtual {v0, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "goodsName"

    .line 122
    invoke-virtual {v0, p1, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->clearData()V

    .line 125
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$3;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$3;-><init>(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)V

    invoke-virtual {p1, v0, p2}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->queryWarehouseGoods(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public sortList(IZLandroid/view/View;)V
    .locals 7

    .line 166
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->getTeamPickupList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 170
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;

    const-string v1, "\u6b63\u5728\u6392\u5e8f"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;->showLoading(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    move-object v1, v0

    check-cast v1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

    new-instance v6, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$4;

    invoke-direct {v6, p0, p3}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$4;-><init>(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;Landroid/view/View;)V

    const-string v4, ""

    move v3, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->sortList(Ljava/util/List;ILjava/lang/String;ZLcom/ayma/base/mvp/ModelCallBack;)V

    return-void

    .line 171
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;

    const-string p2, "\u5f53\u524d\u6ca1\u6709\u6570\u636e\u53ef\u6392\u5e8f"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;->showToast(Ljava/lang/String;)V

    return-void
.end method
