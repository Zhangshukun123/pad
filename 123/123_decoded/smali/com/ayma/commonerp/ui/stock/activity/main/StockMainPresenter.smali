.class public Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "StockMainPresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/stock/activity/main/StockMainContact$IStockMainPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "Lcom/ayma/commonerp/ui/stock/activity/main/StockMainContact$IStockMainView;",
        "Lcom/ayma/commonerp/ui/stock/activity/main/StockMainModel;",
        ">;",
        "Lcom/ayma/commonerp/ui/stock/activity/main/StockMainContact$IStockMainPresenter;"
    }
.end annotation


# instance fields
.field private updatePresenter:Lcom/ayma/commonerp/multiplex/update/MultiplexUpdatePresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 15
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v0, Lcom/ayma/commonerp/multiplex/update/MultiplexUpdatePresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v1, Lcom/ayma/commonerp/base/IBaseView;

    invoke-direct {v0, p1, v1}, Lcom/ayma/commonerp/multiplex/update/MultiplexUpdatePresenter;-><init>(Landroid/content/Context;Lcom/ayma/commonerp/base/IBaseView;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;->updatePresenter:Lcom/ayma/commonerp/multiplex/update/MultiplexUpdatePresenter;

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;)Z
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;)Z
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;)Ljava/lang/String;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;->TAG:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public checkUpdate(Z)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;->updatePresenter:Lcom/ayma/commonerp/multiplex/update/MultiplexUpdatePresenter;

    new-instance v1, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter$1;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter$1;-><init>(Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;Z)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/multiplex/update/MultiplexUpdatePresenter;->checkUpdate(Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;->initModel()Lcom/ayma/commonerp/ui/stock/activity/main/StockMainModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/ui/stock/activity/main/StockMainModel;
    .locals 2

    .line 21
    new-instance v0, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
