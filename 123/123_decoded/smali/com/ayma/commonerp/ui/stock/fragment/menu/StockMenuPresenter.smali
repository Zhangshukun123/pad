.class public Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "StockMenuPresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;",
        "Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;",
        ">;",
        "Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuPresenter;"
    }
.end annotation


# instance fields
.field private downloadGoodsPresenter:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter<",
            "Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;",
            ">;"
        }
    .end annotation
.end field

.field private downloadOtherDataPresenter:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter<",
            "Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Z
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Z
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Z
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Z
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Z
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Z
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Z
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Z
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Z
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Z
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public downloadBase()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->downloadOtherDataPresenter:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->downloadOtherDataPresenter:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->downloadOtherDataPresenter:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$5;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$5;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->downloadBaseData(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public downloadGoodsData()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->downloadGoodsPresenter:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->downloadGoodsPresenter:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->downloadGoodsPresenter:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$2;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$2;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;->downloadGoodsData(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public downloadStockOutTemp()V
    .locals 3

    .line 32
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d\u5546\u54c1\u51fa\u5e93\u6a21\u677f\u6570\u636e"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;->showLoading(Ljava/lang/String;)V

    .line 36
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 37
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    const-string v2, "company1Id"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    const-string v2, "company2Id"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    const-string v2, "outDay"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$1;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)V

    invoke-virtual {v1, v0, v2}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;->downLoadStockOutTemp(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public downloadStoreData()V
    .locals 3

    .line 99
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d\u4ed3\u5e93\u8d44\u6599"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;->showLoading(Ljava/lang/String;)V

    .line 103
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 104
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    const-string v2, "company2Id"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$3;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$3;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)V

    invoke-virtual {v1, v0, v2}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;->downLodaStoreData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public downloadSupplierData()V
    .locals 3

    .line 133
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d\u4f9b\u5e94\u5546\u8d44\u6599"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;->showLoading(Ljava/lang/String;)V

    .line 137
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 138
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    const-string v2, "companyId"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$4;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$4;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)V

    invoke-virtual {v1, v0, v2}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;->downLoadSupplierData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->initModel()Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;
    .locals 2

    .line 26
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
