.class public Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "StockInPresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;",
        "Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;",
        ">;",
        "Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInPresenter;"
    }
.end annotation


# instance fields
.field private currentPage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->currentPage:I

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3710(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)I
    .locals 2

    .line 21
    iget v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->currentPage:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->currentPage:I

    return v0
.end method

.method static synthetic access$3800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5900(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6900(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$7300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$7600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$7900(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$8000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$8200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$8500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$8800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8900(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$9000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$9100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$9200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$9300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$9400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$9500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method


# virtual methods
.method public dataChange(Lcom/ayma/commonerp/eventbus/StockInUpdateEvent;)V
    .locals 2

    .line 519
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$12;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$12;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;Lcom/ayma/commonerp/eventbus/StockInUpdateEvent;)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->dataChange(Lcom/ayma/commonerp/eventbus/StockInUpdateEvent;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public deleteLocalReceipt(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;IZ)V
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$9;

    invoke-direct {v1, p0, p3, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$9;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;ZI)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->deleteLocalReceipt(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public deleteReceipt(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;I)V
    .locals 4

    .line 454
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 457
    :cond_0
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getStoreInId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;

    const-string p2, "\u5355\u636e\u672a\u4e0a\u4f20\uff0c\u65e0\u6cd5\u5220\u9664"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;->showToast(Ljava/lang/String;)V

    return-void

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getBillNo()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "\u5220\u9664%s\u5165\u5e93\u5355\u4e2d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;->showLoading(Ljava/lang/String;)V

    .line 462
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 463
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getStoreInId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "storeInId"

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$10;

    invoke-direct {v1, p0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$10;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;I)V

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->deleteReceipt(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public fetchGoodsDataFromServer(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;I)V
    .locals 3

    .line 376
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 377
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getStoreInId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "storeInId"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$8;

    invoke-direct {v2, p0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$8;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;I)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->fetchGoodsData(Ljava/util/TreeMap;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public fetchStockType(Ljava/lang/String;)V
    .locals 2

    .line 493
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$11;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$11;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->fetchStockType(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public getStoreData()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;->showLoading()V

    .line 45
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 46
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    const-string v2, "company2Id"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)V

    invoke-virtual {v1, v0, v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->fetchStore(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public getSupplier()V
    .locals 3

    .line 102
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;->showLoading()V

    .line 106
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 107
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    const-string v2, "companyId"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$2;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$2;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)V

    invoke-virtual {v1, v0, v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->fetchSupplier(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->initModel()Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;
    .locals 2

    .line 31
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 36
    invoke-super {p0}, Lcom/ayma/commonerp/base/BasePresenter;->onCreate()V

    .line 37
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->getStoreData()V

    .line 38
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->getSupplier()V

    .line 39
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->getPostMark()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;->showPostMark(Ljava/util/List;)V

    return-void
.end method

.method public prepareUploadData(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;I)V
    .locals 3

    .line 310
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;

    const-string v1, "\u5904\u7406\u6570\u636e\u4e2d"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;->showLoading(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$6;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;I)V

    const-string p2, "storeIn"

    const-string v2, "storeInDS"

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->prepareUploadData(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public queryStockInReceipt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eqz p8, :cond_1

    goto :goto_0

    .line 171
    :cond_1
    iget v2, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->currentPage:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->currentPage:I

    :goto_0
    iput v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->currentPage:I

    .line 172
    iget-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->getStockReceiptInHeadData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 173
    iget-object v2, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;

    if-eqz p8, :cond_2

    const-string v3, "\u67e5\u8be2\u5355\u636e\u4e2d"

    goto :goto_1

    :cond_2
    const-string v3, "\u52a0\u8f7d\u66f4\u591a\u6570\u636e\u4e2d"

    :goto_1
    invoke-interface {v2, v3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;->showLoading(Ljava/lang/String;)V

    .line 174
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 175
    iget-object v2, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->getStoreId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 176
    iget-object v2, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->getStoreModelId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 177
    iget-object v2, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    move-object/from16 v3, p6

    invoke-virtual {v2, v3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->getSupplierId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 178
    iget-object v2, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    move-object/from16 v3, p5

    invoke-virtual {v2, v3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->getPostMarkId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "storeId"

    .line 179
    invoke-virtual {v5, v2, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "storeType"

    .line 180
    invoke-virtual {v5, v2, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "yyyy-MM-dd"

    const-string v3, "yyyyMMdd"

    move-object/from16 v8, p3

    .line 181
    invoke-static {v8, v2, v3}, Lcom/ayma/base/util/DateTimeUtils;->formatDateStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v9, p4

    .line 182
    invoke-static {v9, v2, v3}, Lcom/ayma/base/util/DateTimeUtils;->formatDateStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "startBillDay"

    .line 183
    invoke-virtual {v5, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "endBillDay"

    .line 184
    invoke-virtual {v5, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "supplierId"

    .line 185
    invoke-virtual {v5, v2, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget v2, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->currentPage:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "index"

    invoke-virtual {v5, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xf

    .line 187
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "size"

    invoke-virtual {v5, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "postMark"

    .line 188
    invoke-virtual {v5, v2, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "opStoreType"

    const-string v3, "SI5"

    .line 189
    invoke-virtual {v5, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "billNo"

    move-object/from16 v3, p7

    .line 190
    invoke-virtual {v5, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    const-string v4, "companyId"

    invoke-virtual {v5, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    const-string v4, "company2Id"

    invoke-virtual {v5, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v2, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    move-object v4, v2

    check-cast v4, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    iget v11, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->currentPage:I

    const/16 v12, 0xf

    new-instance v15, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$3;

    invoke-direct {v15, v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$3;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;I)V

    move-object/from16 v14, p7

    invoke-virtual/range {v4 .. v15}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->fetchData(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public revokeOrder(Ljava/lang/String;)V
    .locals 2

    .line 232
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;

    const-string v1, "\u6b63\u5728\u64a4\u9500"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;->showLoading(Ljava/lang/String;)V

    .line 236
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "storeInId"

    .line 237
    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$4;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$4;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)V

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->revokeOrder(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public submitOrder(Ljava/lang/String;)V
    .locals 2

    .line 271
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;

    const-string v1, "\u6b63\u5728\u63d0\u4ea4"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;->showLoading(Ljava/lang/String;)V

    .line 275
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "storeInId"

    .line 276
    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$5;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$5;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)V

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->submitOrder(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public uploadReceipt(Ljava/util/TreeMap;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;",
            "I)V"
        }
    .end annotation

    .line 341
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;

    const-string v1, "\u4e0a\u4f20\u5355\u636e\u4e2d"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;->showLoading(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$7;

    invoke-direct {v1, p0, p2, p3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$7;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;I)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->uploadReceipt(Ljava/util/TreeMap;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method
