.class public Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "SCOpenShopPresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopContact$ISCOpenShopPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopContact$SCOpenShopView;",
        "Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;",
        ">;",
        "Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopContact$ISCOpenShopPresenter;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;)Z
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;)Z
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;->initModel()Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;
    .locals 2

    .line 18
    new-instance v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public openShop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 29
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopContact$SCOpenShopView;

    const-string v1, "\u6b63\u5728\u6fc0\u6d3b\u5f00\u5e97\uff0c\u8bf7\u7a0d\u5019"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopContact$SCOpenShopView;->showLoading(Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "qrCode"

    .line 38
    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "carCode"

    .line 39
    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "trainCode"

    .line 40
    invoke-virtual {v0, p1, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object p1, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    const-string v1, "createUser"

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;

    new-instance v1, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter$1;

    invoke-direct {v1, p0, p2}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter$1;-><init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;Ljava/lang/String;)V

    invoke-virtual {p1, v0, p3, p2, v1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;->openShop(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method
