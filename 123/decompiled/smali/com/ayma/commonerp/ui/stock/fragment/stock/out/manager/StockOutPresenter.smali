.class public Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "StockOutPresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;",
        "Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;",
        ">;",
        "Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutPresenter;"
    }
.end annotation


# instance fields
.field private currentPage:I

.field private isLoading:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->currentPage:I

    .line 25
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isLoading:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->currentPage:I

    return p0
.end method

.method static synthetic access$2402(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->currentPage:I

    return p1
.end method

.method static synthetic access$2500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$2702(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isLoading:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4200(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4900(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5200(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5600(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5900(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6200(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6700(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6800(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6900(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$7000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7100(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$7200(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7300(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7400(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$7600(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7700(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7800(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$7900(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$8000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$8100(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8200(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$8300(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8400(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$8500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8600(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8700(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$8800(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method


# virtual methods
.method public commitOutReceipt(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;I)V
    .locals 3

    .line 451
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isViewAttach()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 454
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getBillNo()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "\u6b63\u5728\u63d0\u4ea4\u5355\u636e%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;->showLoading(Ljava/lang/String;)V

    .line 455
    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    .line 456
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getStoreOutId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "storeOutId"

    invoke-virtual {p2, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$9;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$9;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;)V

    invoke-virtual {v0, p2, p1, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->commitOutReceipt(Ljava/util/TreeMap;Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public dataChange(Lcom/ayma/commonerp/eventbus/StockOutUpdateEvent;)V
    .locals 2

    .line 557
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$12;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$12;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;Lcom/ayma/commonerp/eventbus/StockOutUpdateEvent;)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->dataChange(Lcom/ayma/commonerp/eventbus/StockOutUpdateEvent;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public deletOutReceiptOnLine(Ljava/lang/String;I)V
    .locals 2

    .line 412
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;

    const-string v1, "\u6b63\u5728\u5220\u9664\u5355\u636e"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;->showLoading(Ljava/lang/String;)V

    .line 416
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "storeOutId"

    .line 417
    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$8;

    invoke-direct {v1, p0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$8;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;I)V

    invoke-virtual {p1, v0, p2, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->deletOutReceiptOnLine(Ljava/util/TreeMap;ILcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public deleteOutReceipt(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;I)V
    .locals 4

    .line 374
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getBillNo()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "\u5220\u9664\u5355\u636e%s\u4e2d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;->showLoading(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$7;

    invoke-direct {v1, p0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$7;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;I)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->deleteOutReceipt(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;ILcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public downloadTrainData()V
    .locals 3

    .line 107
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 111
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->storeId:Ljava/lang/String;

    const-string v2, "storeId"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$2;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$2;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)V

    invoke-virtual {v1, v0, v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->downloadTrainData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public fetchTrain(Ljava/lang/String;)V
    .locals 2

    .line 139
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$3;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$3;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->fetchTrain(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public getStockOutReceipt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p10

    move/from16 v2, p11

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isViewAttach()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 171
    :cond_0
    iget-boolean v3, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isLoading:Z

    if-eqz v3, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x1

    if-eqz v1, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    .line 174
    :cond_2
    iget v4, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->currentPage:I

    add-int/2addr v4, v3

    iput v4, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->currentPage:I

    :goto_0
    iput v4, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->currentPage:I

    .line 175
    iget-object v4, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v4, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    invoke-virtual {v4}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->getStockOutHeadList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    if-eqz v2, :cond_4

    .line 177
    iget-object v4, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v4, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;

    if-eqz v1, :cond_3

    const-string v5, "\u67e5\u8be2\u5355\u636e\u4e2d"

    goto :goto_1

    :cond_3
    const-string v5, "\u52a0\u8f7d\u66f4\u591a\u6570\u636e\u4e2d"

    :goto_1
    invoke-interface {v4, v5}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;->showLoading(Ljava/lang/String;)V

    .line 179
    :cond_4
    iget-object v4, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v4, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    move-object/from16 v5, p3

    invoke-virtual {v4, v5}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->getStockTypeCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 180
    iget-object v4, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v4, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    move-object/from16 v5, p4

    invoke-virtual {v4, v5}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->getReceiptTypeCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 181
    iget-object v4, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v4, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    move-object/from16 v5, p9

    invoke-virtual {v4, v5}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->getReceiptStatueCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 182
    iget-object v4, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v4, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    move-object/from16 v5, p2

    invoke-virtual {v4, v5}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->getStoreId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 184
    new-instance v15, Ljava/util/TreeMap;

    invoke-direct {v15}, Ljava/util/TreeMap;-><init>()V

    .line 185
    sget-object v5, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 186
    sget-object v5, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    const-string v6, "company1Id"

    invoke-virtual {v15, v6, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_5
    sget-object v5, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 189
    sget-object v5, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    const-string v6, "company2Id"

    invoke-virtual {v15, v6, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_6
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "billNo"

    move-object/from16 v6, p1

    .line 192
    invoke-virtual {v15, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    move-object/from16 v6, p1

    :goto_2
    const-string v5, "storeId"

    .line 194
    invoke-virtual {v15, v5, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "storeType1"

    .line 196
    invoke-virtual {v15, v4, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_8
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "yyyyMMdd"

    const-string v9, "yyyy-MM-dd"

    if-nez v4, :cond_9

    move-object/from16 v4, p6

    .line 199
    invoke-static {v4, v9, v5}, Lcom/ayma/base/util/DateTimeUtils;->formatDateStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v10, "outDay"

    .line 200
    invoke-virtual {v15, v10, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    move-object/from16 v4, p6

    .line 202
    :goto_3
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 203
    iget-object v10, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v10, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    move-object/from16 v11, p5

    invoke-virtual {v10, v11}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->gettrainId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "trainChoose"

    .line 204
    invoke-virtual {v15, v11, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_a
    const-string v10, ""

    .line 206
    :goto_4
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    move-object/from16 v11, p7

    .line 207
    invoke-static {v11, v9, v5}, Lcom/ayma/base/util/DateTimeUtils;->formatDateStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "startDay"

    .line 208
    invoke-virtual {v15, v12, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_b
    move-object/from16 v11, p7

    .line 210
    :goto_5
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_c

    move-object/from16 v12, p8

    .line 211
    invoke-static {v12, v9, v5}, Lcom/ayma/base/util/DateTimeUtils;->formatDateStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "stopDay"

    .line 212
    invoke-virtual {v15, v9, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v5

    goto :goto_6

    :cond_c
    move-object/from16 v12, p8

    :goto_6
    const/16 v5, 0xf

    .line 216
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v9, "size"

    invoke-virtual {v15, v9, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget v5, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->currentPage:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v9, "current"

    invoke-virtual {v15, v9, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "postMark"

    .line 221
    invoke-virtual {v15, v5, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_d
    iput-boolean v3, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isLoading:Z

    .line 225
    iget-object v3, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    move-object v5, v3

    check-cast v5, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    iget v14, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->currentPage:I

    const/16 v3, 0xf

    new-instance v9, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$4;

    invoke-direct {v9, v0, v2, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$4;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;ZZ)V

    move-object/from16 v6, p1

    move-object v1, v9

    move-object v9, v4

    move-object v2, v15

    move v15, v3

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    invoke-virtual/range {v5 .. v17}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->fetchStockOutReceipt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public getStoreData()V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;->showLoading()V

    .line 48
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 49
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    const-string v2, "company2Id"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)V

    invoke-virtual {v1, v0, v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->getStoreData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->initModel()Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;
    .locals 2

    .line 33
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 38
    invoke-super {p0}, Lcom/ayma/commonerp/base/BasePresenter;->onCreate()V

    .line 39
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->getOutStockTypeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;->showOutStockTye(Ljava/util/List;)V

    .line 40
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->getReceiptStatueList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;->showReceiptStatue(Ljava/util/List;)V

    .line 41
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->getStoreData()V

    .line 42
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->downloadTrainData()V

    return-void
.end method

.method public prepareUploadReceipt(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;I)V
    .locals 4

    .line 276
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getBillNo()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "\u4e0a\u4f20\u5355\u636e%s\u4e2d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;->showLoading(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getBillNo()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$5;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;I)V

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->getOutReceiptBody(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public revokeOutReceipt(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;I)V
    .locals 3

    .line 492
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->isViewAttach()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 495
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getBillNo()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "\u6b63\u5728\u64a4\u9500\u5355\u636e%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;->showLoading(Ljava/lang/String;)V

    .line 496
    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    .line 497
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getStoreOutId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "storeOutId"

    invoke-virtual {p2, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$10;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$10;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->revokeOutReceipt(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public storeChange(Ljava/lang/String;)V
    .locals 2

    .line 528
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$11;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$11;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->queryTypeFromStore(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public uploadReceipt(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;ILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;",
            "I",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;",
            ">;)V"
        }
    .end annotation

    .line 315
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 316
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    const-string v1, "companyId"

    invoke-virtual {v4, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    const-string v1, "company2Id"

    invoke-virtual {v4, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getBillDay()Ljava/lang/String;

    move-result-object v0

    const-string v1, "billDay"

    invoke-virtual {v4, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getStoreId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "storeId"

    invoke-virtual {v4, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getStoreType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "storeType"

    invoke-virtual {v4, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getOpStoreType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "opStoreType"

    invoke-virtual {v4, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-string v1, "description"

    invoke-virtual {v4, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getOutDay()Ljava/lang/String;

    move-result-object v0

    const-string v1, "outDay"

    invoke-virtual {v4, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 325
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getBillNo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "billNos"

    .line 326
    invoke-virtual {v4, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getTrainId()Ljava/lang/String;

    move-result-object v0

    .line 329
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 330
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "trainIds"

    .line 331
    invoke-virtual {v4, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "storeOutD"

    .line 337
    invoke-virtual {v4, v0, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getBillNo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    new-instance v5, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$6;

    invoke-direct {v5, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$6;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)V

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->uploadOutReceipt(Ljava/lang/String;IILjava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method
