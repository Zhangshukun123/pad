.class public Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "ScrappedPresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;",
        "Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedPresenter;"
    }
.end annotation


# instance fields
.field private priceType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Z
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Z
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Z
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Z
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Z
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Z
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Z
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Z
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Z
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4200(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Z
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4700(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Z
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method


# virtual methods
.method public addSelectGoods(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;)V"
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;->showLoading()V

    .line 148
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$2;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$2;-><init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->addSelectGoodsToList(Ljava/util/List;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public clearAllData()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$3;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$3;-><init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->clearAllData(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public commitData(Ljava/util/TreeMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$5;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$5;-><init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->postScrappedData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public dealSelectGoodsResult(Lcom/ayma/commonerp/eventbus/ReceiptSelectGoodsResult;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 133
    :cond_0
    invoke-virtual {p1}, Lcom/ayma/commonerp/eventbus/ReceiptSelectGoodsResult;->getGoodsList()Ljava/util/List;

    move-result-object p1

    .line 134
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->addSelectGoods(Ljava/util/List;)V

    return-void
.end method

.method public deleteGoods(Lcom/ayma/commonerp/bean/ReceiptSelectBean;)V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$6;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$6;-><init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->deleteGoods(Lcom/ayma/commonerp/bean/ReceiptSelectBean;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public getScrappedType()V
    .locals 2

    .line 76
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;->showLoading()V

    .line 80
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$1;-><init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->queryScrappedType(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public initBaseDate()V
    .locals 2

    .line 58
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->getReceiptList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;->initReceiptType(Ljava/util/List;)V

    .line 62
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->getScrappedTypeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;->initScrappedType(Ljava/util/List;)V

    .line 63
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->getSelectBeanList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;->initRlv(Ljava/util/List;)V

    .line 64
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;->hideLoading()V

    .line 65
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;

    const-string v1, "\u521d\u59cb\u5316\u5b8c\u6210"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->initModel()Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;
    .locals 2

    .line 43
    new-instance v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreate(Landroid/content/Intent;)V
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->isViewAttach()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;

    const-string v0, "\u6b63\u5728\u521d\u59cb\u5316\u6570\u636e"

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;->showLoading(Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;->init()V

    .line 53
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->initBaseDate()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/ayma/commonerp/base/BasePresenter;->onDestroy()V

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    .line 119
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public openSelectGoodsPage()V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->priceType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;

    const-string v1, "\u8bf7\u5148\u9009\u62e9\u5355\u636e\u7c7b\u578b"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;->showToast(Ljava/lang/String;)V

    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->priceType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;->toSelectGoodsPage(Ljava/lang/String;)V

    return-void
.end method

.method public prepareCommitData(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 213
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 216
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;

    const-string p2, "\u8bf7\u9009\u62e9\u62a5\u5e9f\u7c7b\u578b"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;->showToast(Ljava/lang/String;)V

    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;->hideSoftKeyboard()V

    .line 221
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;

    if-eqz p1, :cond_2

    const-string v1, "\u6b63\u5728\u63d0\u4ea4\u62a5\u5e9f\u6570\u636e..."

    goto :goto_0

    :cond_2
    const-string v1, "\u6b63\u5728\u63d0\u4ea4\u4e22\u5931\u6570\u636e..."

    :goto_0
    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;->showLoading(Ljava/lang/String;)V

    .line 222
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 223
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMdWithNoneSep()Ljava/lang/String;

    move-result-object v1

    const-string v2, "billDay"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v1, Lcom/ayma/commonerp/config/Constants;->SCRAPPED_LOST_TYPE_MAP:Ljava/util/TreeMap;

    invoke-virtual {v1, p2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 225
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 226
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;

    const-string p2, "\u5355\u636e\u7c7b\u578b\u4e0d\u6b63\u786e\uff0c\u8bf7\u68c0\u67e5"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    .line 227
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;->hideLoading()V

    return-void

    :cond_3
    const-string v1, "billType"

    .line 230
    invoke-virtual {v0, v1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object p2, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    const-string v1, "companyId"

    invoke-virtual {v0, v1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object p2, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    const-string v1, "company2Id"

    invoke-virtual {v0, v1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object p2, Lcom/ayma/commonerp/app/AppUserData;->teamId:Ljava/lang/String;

    const-string v1, "teamId"

    invoke-virtual {v0, v1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object p2, Lcom/ayma/commonerp/app/AppUserData;->storeId:Ljava/lang/String;

    const-string v1, "storeId"

    invoke-virtual {v0, v1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object p2, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    const-string v1, "trainId"

    invoke-virtual {v0, v1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->getGoDate()Ljava/lang/String;

    move-result-object p2

    const-string v1, "outDay"

    invoke-virtual {v0, v1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "description"

    .line 237
    invoke-virtual {v0, p2, p4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p2, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$4;

    invoke-direct {v1, p0, v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$4;-><init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;Ljava/util/TreeMap;)V

    invoke-virtual {p2, p3, p4, p1, v1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->getScrappedList(Ljava/lang/String;Ljava/lang/String;ZLcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public setPriceType(Ljava/lang/String;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->priceType:Ljava/lang/String;

    return-void
.end method

.method public sortList(IZLandroid/view/View;)V
    .locals 7

    .line 342
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->getSelectBeanList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 346
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;

    const-string v1, "\u6b63\u5728\u6392\u5e8f"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;->showLoading(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    move-object v1, v0

    check-cast v1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;

    new-instance v6, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$7;

    invoke-direct {v6, p0, p3}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$7;-><init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;Landroid/view/View;)V

    const-string v4, ""

    move v3, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->sortList(Ljava/util/List;ILjava/lang/String;ZLcom/ayma/base/mvp/ModelCallBack;)V

    return-void

    .line 347
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;

    const-string p2, "\u5f53\u524d\u6ca1\u6709\u6570\u636e\u53ef\u6392\u5e8f"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;->showToast(Ljava/lang/String;)V

    return-void
.end method
