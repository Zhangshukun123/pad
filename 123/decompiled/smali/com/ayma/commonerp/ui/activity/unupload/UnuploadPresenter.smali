.class public Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "UnuploadPresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/unupload/UnuploadContact$IUnuploadPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "Lcom/ayma/commonerp/ui/activity/unupload/UnuploadContact$IUnuploadView;",
        "Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/unupload/UnuploadContact$IUnuploadPresenter;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;)Z
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;)Z
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;)Z
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;)Z
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;)Z
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method


# virtual methods
.method public deleteOrderByNo(Ljava/lang/String;)V
    .locals 3

    .line 83
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadContact$IUnuploadView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "\u5220\u9664\u8ba2\u5355\u3010%s\u3011\u4e2d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadContact$IUnuploadView;->showLoading(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter$2;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter$2;-><init>(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;->deleteOrderByNo(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public getData()V
    .locals 2

    .line 40
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadContact$IUnuploadView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadContact$IUnuploadView;->showLoading()V

    .line 44
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter$1;-><init>(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;->getUnuploadData(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->initModel()Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;
    .locals 2

    .line 24
    new-instance v0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 29
    invoke-super {p0}, Lcom/ayma/commonerp/base/BasePresenter;->onCreate()V

    .line 30
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadContact$IUnuploadView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadContact$IUnuploadView;->init()V

    .line 31
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadContact$IUnuploadView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;->getUnuploadDatas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadContact$IUnuploadView;->initRlv(Ljava/util/List;)V

    .line 32
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->getData()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 128
    invoke-super {p0}, Lcom/ayma/commonerp/base/BasePresenter;->onDestroy()V

    .line 129
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public updataUnuploadData(Lcom/ayma/commonerp/eventbus/UploadSellDataResultEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 117
    invoke-virtual {p1}, Lcom/ayma/commonerp/eventbus/UploadSellDataResultEvent;->isStatue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->getData()V

    return-void

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->isViewAttach()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadContact$IUnuploadView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/eventbus/UploadSellDataResultEvent;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadContact$IUnuploadView;->showToast(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public uploadData()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ayma/commonerp/service/uploaddata/UploadDataService;->restart(Landroid/content/Context;)V

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadContact$IUnuploadView;

    const-string v1, "\u5f00\u59cb\u4e0a\u4f20\u9500\u552e\u6570\u636e"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadContact$IUnuploadView;->showToast(Ljava/lang/String;)V

    return-void
.end method
