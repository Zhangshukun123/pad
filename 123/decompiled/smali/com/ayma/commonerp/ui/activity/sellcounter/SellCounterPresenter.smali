.class public Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "SellCounterPresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterContact$ISellCounterPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterContact$SellCounterView;",
        "Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterModel;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterContact$ISellCounterPresenter;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;)Z
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;)Z
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method


# virtual methods
.method public checkOpenShop()V
    .locals 5

    .line 30
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterContact$SellCounterView;

    const-string v1, "\u521d\u59cb\u5316\u4e2d"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterContact$SellCounterView;->showLoading(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterModel;

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->trainName:Ljava/lang/String;

    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    new-instance v4, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter$1;

    invoke-direct {v4, p0}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter$1;-><init>(Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterModel;->checkOpenShop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;->initModel()Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterModel;
    .locals 2

    .line 19
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .line 24
    invoke-super {p0}, Lcom/ayma/commonerp/base/BasePresenter;->onCreate()V

    .line 25
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;->checkOpenShop()V

    return-void
.end method
