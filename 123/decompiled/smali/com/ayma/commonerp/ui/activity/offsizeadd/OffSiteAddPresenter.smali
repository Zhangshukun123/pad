.class public Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "OffSiteAddPresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSizeAddPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;",
        "Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSizeAddPresenter;"
    }
.end annotation


# instance fields
.field private priceType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    const-string p1, "\u6b63\u5e38\u9500\u552e"

    .line 38
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->priceType:Ljava/lang/String;

    .line 42
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Z
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Z
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Z
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Z
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Z
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Z
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Z
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Z
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Z
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3400(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Z
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4302(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->dealingOption:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Z
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4500(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4702(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->dealingOption:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Z
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4900(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5102(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->dealingOption:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Z
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5300(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Z
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5700(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Z
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5900(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Z
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6000(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Z
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6200(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Z
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6700(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6800(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method


# virtual methods
.method public addGoods(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

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

    .line 323
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;->showLoading()V

    .line 327
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$3;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$3;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->addSelectGoodsToList(Ljava/util/List;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public clearAllData()V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$4;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$4;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->clearAllData(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public commitData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->object:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_0
    iget-boolean v1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->dealingOption:Z

    if-eqz v1, :cond_0

    .line 285
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 287
    iput-boolean v1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->dealingOption:Z

    .line 288
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 289
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;

    const-string p2, "\u8bf7\u8f93\u5165\u8865\u8d27\u8f66\u7ad9"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;->showToast(Ljava/lang/String;)V

    .line 290
    iput-boolean v2, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->dealingOption:Z

    .line 291
    monitor-exit v0

    return-void

    .line 293
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\u8bf7\u9009\u62e9"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 298
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->offSizeAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    monitor-exit v0

    return-void

    .line 294
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;

    const-string p2, "\u8bf7\u9009\u62e9\u4f9b\u5e94\u5546"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;->showToast(Ljava/lang/String;)V

    .line 295
    iput-boolean v2, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->dealingOption:Z

    .line 296
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 299
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dealManyGoodsSameCode(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;",
            ">;)V"
        }
    .end annotation

    .line 222
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 225
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    .line 227
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v2, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getCompany2Id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->queryGoodsCompany(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 228
    new-instance v3, Lcom/ayma/commonerp/bean/SellSelectGoodsBean;

    invoke-direct {v3}, Lcom/ayma/commonerp/bean/SellSelectGoodsBean;-><init>()V

    .line 229
    invoke-virtual {v3, v1}, Lcom/ayma/commonerp/bean/SellSelectGoodsBean;->setGoodsBean(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;)V

    .line 230
    invoke-virtual {v3, v2}, Lcom/ayma/commonerp/bean/SellSelectGoodsBean;->setCompanyName(Ljava/lang/String;)V

    .line 231
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 233
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;->hideLoading()V

    .line 235
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;->showSelectPopup(Ljava/util/List;)V

    return-void
.end method

.method public dealSelectGoodsResult(Lcom/ayma/commonerp/eventbus/ReceiptSelectGoodsResult;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 312
    :cond_0
    invoke-virtual {p1}, Lcom/ayma/commonerp/eventbus/ReceiptSelectGoodsResult;->getGoodsList()Ljava/util/List;

    move-result-object p1

    .line 313
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->addSelectGoods(Ljava/util/List;)V

    return-void
.end method

.method public deleteGoods(Lcom/ayma/commonerp/bean/ReceiptSelectBean;)V
    .locals 2

    .line 476
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$6;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$6;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->deleteGoods(Lcom/ayma/commonerp/bean/ReceiptSelectBean;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public getData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getSupplierList()V
    .locals 4

    .line 108
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;

    const-string v1, "\u6b63\u5728\u83b7\u53d6\u4f9b\u5e94\u5546\u5217\u8868"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;->showLoading(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    new-instance v3, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$2;

    invoke-direct {v3, p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$2;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->querySuppliers(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public initBaseDate()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->storeId:Ljava/lang/String;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$1;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$1;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)V

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->queryPermission(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->initModel()Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;
    .locals 2

    .line 47
    new-instance v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public offSizeAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 390
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->getStationCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 394
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 395
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;

    const-string p2, "\u8bf7\u68c0\u67e5\u8f66\u7ad9\u540d\u662f\u5426\u6b63\u786e"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;->showToast(Ljava/lang/String;)V

    .line 396
    iput-boolean v1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->dealingOption:Z

    return-void

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

    invoke-virtual {v0, p2}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->getSupplierId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 400
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;

    const-string p2, "\u8bf7\u91cd\u65b0\u9009\u62e9\u4f9b\u5e94\u5546"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;->showToast(Ljava/lang/String;)V

    .line 402
    iput-boolean v1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->dealingOption:Z

    return-void

    .line 405
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;

    const-string v2, "\u6b63\u5728\u63d0\u4ea4\u8865\u8d27\u6570\u636e..."

    invoke-interface {v0, v2}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;->showLoading(Ljava/lang/String;)V

    .line 406
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 407
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMdWithNoneSep()Ljava/lang/String;

    move-result-object v2

    const-string v3, "billDay"

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    const-string v3, "companyId"

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    const-string v3, "company2Id"

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->teamId:Ljava/lang/String;

    const-string v3, "teamId"

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->storeId:Ljava/lang/String;

    const-string v3, "storeId"

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "supplierId"

    .line 412
    invoke-virtual {v0, v2, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object p2, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    const-string v2, "trainId"

    invoke-virtual {v0, v2, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->getGoDate()Ljava/lang/String;

    move-result-object p2

    const-string v2, "outDay"

    invoke-virtual {v0, v2, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "inStationCode"

    .line 415
    invoke-virtual {v0, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "description"

    .line 416
    invoke-virtual {v0, p1, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

    invoke-virtual {p1, p3}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->getAddList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 419
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const-string p2, "trainInDetails"

    .line 424
    invoke-virtual {v0, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$5;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$5;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)V

    invoke-virtual {p1, v0, p2}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->postAddData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void

    .line 420
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;

    const-string p2, "\u6570\u636e\u6709\u8bef"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;->showToast(Ljava/lang/String;)V

    .line 421
    iput-boolean v1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->dealingOption:Z

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/ayma/commonerp/base/BasePresenter;->onCreate()V

    .line 53
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;->init()V

    .line 54
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->initBaseDate()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 152
    invoke-super {p0}, Lcom/ayma/commonerp/base/BasePresenter;->onDestroy()V

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    .line 154
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public openSelectGoodsPage()V
    .locals 4

    .line 467
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->priceType:Ljava/lang/String;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v2, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v3, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;

    invoke-interface {v3}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;->getSupplierName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->getSupplierId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v3, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;

    invoke-interface {v3}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;->getSupplierName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;->toSelectGoodsPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public queryStation(Ljava/lang/String;)V
    .locals 2

    .line 503
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "stationName"

    .line 504
    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$7;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$7;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)V

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->queryStationFromServer(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public sortList(IZLandroid/view/View;)V
    .locals 7

    .line 528
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->getSelectBeanList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 532
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;

    const-string v1, "\u6b63\u5728\u6392\u5e8f"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;->showLoading(Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    move-object v1, v0

    check-cast v1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

    new-instance v6, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$8;

    invoke-direct {v6, p0, p3}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$8;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;Landroid/view/View;)V

    const-string v4, ""

    move v3, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->sortList(Ljava/util/List;ILjava/lang/String;ZLcom/ayma/base/mvp/ModelCallBack;)V

    return-void

    .line 533
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;

    const-string p2, "\u5f53\u524d\u6ca1\u6709\u6570\u636e\u53ef\u6392\u5e8f"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;->showToast(Ljava/lang/String;)V

    return-void
.end method
