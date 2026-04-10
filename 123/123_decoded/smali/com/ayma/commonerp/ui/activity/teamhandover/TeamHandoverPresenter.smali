.class public Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "TeamHandoverPresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;",
        "Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverPresenter;"
    }
.end annotation


# static fields
.field private static final WHAT_CANCEL_FAIL:I = 0x142

.field private static final WHAT_CANCEL_SUCCESS:I = 0x141


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Z
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Z
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Z
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Z
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Z
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Z
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Z
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Z
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3500(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Z
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4300(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Z
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4600(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Z
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5400(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Z
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5700(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Z
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Z
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6000(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Z
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6700(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6800(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6900(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Z
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7000(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7100(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7200(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$7300(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$7400(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7500(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7600(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Z
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$7700(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7800(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7900(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Z
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8000(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8100(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8200(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$8300(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$8400(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8500(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Z
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$8600(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8700(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$8800(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Z
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$8900(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$9000(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$9100(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$9200(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$9300(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Z
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$9400(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$9500(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method


# virtual methods
.method public cancelSelect()V
    .locals 2

    .line 431
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;

    const-string v1, "\u6b63\u5728\u6267\u884c\u64cd\u4f5c..."

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;->showLoading(Ljava/lang/String;)V

    .line 435
    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$9;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$9;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)V

    invoke-static {v0}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public commitData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptJsonBean;",
            ">;Z)V"
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    invoke-virtual {v0, p3}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->checkCanHandover(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;

    const-string p2, "\u5f53\u524d\u5b58\u5728\u8d1f\u5e93\u5b58\u6216\u80050\u5e93\u5b58\uff0c\u4e0d\u80fd\u8fdb\u884c\u4ea4\u63a5\uff0c\u8bf7\u68c0\u67e5"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->queryTrainId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p2, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    const-string p1, "\u67e5\u8be2\u4e0d\u5230\u8f66\u6b21%s\u7684\u4fe1\u606f\uff0c\u8bf7\u68c0\u67e5\u8f66\u6b21\u8d44\u6599\u662f\u5426\u5df2\u4e0b\u8f7d"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;->showToast(Ljava/lang/String;)V

    return-void

    .line 178
    :cond_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;

    const-string v1, "\u6b63\u5728\u63d0\u4ea4\u4ea4\u63a5\u6570\u636e..."

    invoke-interface {p1, v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;->showLoading(Ljava/lang/String;)V

    .line 179
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    .line 180
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMdWithNoneSep()Ljava/lang/String;

    move-result-object v1

    const-string v2, "billDay"

    invoke-virtual {p1, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    const-string v2, "companyId"

    invoke-virtual {p1, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    const-string v2, "company2Id"

    invoke-virtual {p1, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->teamId:Ljava/lang/String;

    const-string v2, "teamId"

    invoke-virtual {p1, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->storeId:Ljava/lang/String;

    const-string v2, "storeId"

    invoke-virtual {p1, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    const-string v2, "trainId"

    invoke-virtual {p1, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->getGoDate()Ljava/lang/String;

    move-result-object v1

    const-string v2, "outDay"

    invoke-virtual {p1, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "toTrainId"

    .line 187
    invoke-virtual {p1, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "toOutDay"

    .line 188
    invoke-virtual {p1, v0, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "description"

    const-string v0, ""

    .line 189
    invoke-virtual {p1, p2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_4

    .line 190
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const-string p2, "trainOutDetails"

    .line 195
    invoke-virtual {p1, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p2, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    new-instance p3, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$3;

    invoke-direct {p3, p0, p4}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$3;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;Z)V

    invoke-virtual {p2, p1, p3}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->commitTeamHandoverData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void

    .line 191
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;->hideLoading()V

    .line 192
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;

    const-string p2, "\u6570\u636e\u751f\u6210\u9519\u8bef"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public deleteGoods(Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V
    .locals 2

    .line 236
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;

    const-string v1, "\u6b63\u5728\u6267\u884c\u64cd\u4f5c..."

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;->showLoading(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$4;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$4;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->deleteGoods(Lcom/ayma/commonerp/bean/ReceiptSelectBean;ILcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public initHandler()V
    .locals 2

    .line 57
    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$1;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$1;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->handler:Landroid/os/Handler;

    return-void
.end method

.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->initModel()Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;
    .locals 2

    .line 41
    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 46
    invoke-super {p0}, Lcom/ayma/commonerp/base/BasePresenter;->onCreate()V

    .line 47
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;->init()V

    .line 51
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->initHandler()V

    .line 52
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->getDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;->initRlv(Ljava/util/List;)V

    return-void
.end method

.method public prepareCommitData(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptJsonBean;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->generateBillDetail(Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryTrainStock(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 100
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->isViewAttach()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->clearData(Z)V

    .line 104
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;

    const-string p2, "\u6b63\u5728\u83b7\u53d6\u6570\u636e..."

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;->showLoading(Ljava/lang/String;)V

    .line 105
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    .line 106
    sget-object p2, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    const-string v0, "company2Id"

    invoke-virtual {p1, v0, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object p2, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    const-string v0, "trainsId"

    invoke-virtual {p1, v0, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->getGoDate()Ljava/lang/String;

    move-result-object p2

    const-string v0, "outDate"

    invoke-virtual {p1, v0, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "classMax"

    const-string v0, ""

    .line 109
    invoke-virtual {p1, p2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "classMin"

    .line 110
    invoke-virtual {p1, p2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "goodsName"

    .line 111
    invoke-virtual {p1, p2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p2, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$2;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$2;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)V

    invoke-virtual {p2, p1, v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->queryTeamWarehouseStock(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public selectAll()V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->TAG:Ljava/lang/String;

    const-string v1, "\u5168\u9009"

    invoke-static {v0, v1}, Lcom/ayma/commonerp/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;

    const-string v1, "\u6b63\u5728\u6267\u884c\u64cd\u4f5c..."

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;->showLoading(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$6;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$6;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->selectAll(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public selectItem(Lcom/ayma/commonerp/bean/ReceiptSelectBean;IZ)V
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$8;

    invoke-direct {v1, p0, p2, p3}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$8;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;IZ)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->selectData(Lcom/ayma/commonerp/bean/ReceiptSelectBean;IZLcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public selectReverse()V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->TAG:Ljava/lang/String;

    const-string v1, "\u53cd\u9009"

    invoke-static {v0, v1}, Lcom/ayma/commonerp/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;

    const-string v1, "\u6b63\u5728\u6267\u884c\u64cd\u4f5c..."

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;->showLoading(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$7;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$7;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->selectReverse(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 87
    iput p1, v0, Landroid/os/Message;->what:I

    .line 88
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sortList(IZLandroid/view/View;)V
    .locals 7

    .line 465
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->getDataList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 469
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;

    const-string v1, "\u6b63\u5728\u6392\u5e8f..."

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;->showLoading(Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    move-object v1, v0

    check-cast v1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    new-instance v6, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$10;

    invoke-direct {v6, p0, p3}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$10;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;Landroid/view/View;)V

    const-string v4, ""

    move v3, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->sortList(Ljava/util/List;ILjava/lang/String;ZLcom/ayma/base/mvp/ModelCallBack;)V

    return-void

    .line 470
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;

    const-string p2, "\u5f53\u524d\u6ca1\u6709\u6570\u636e\u53ef\u6392\u5e8f"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public updateGoodsCount(Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V
    .locals 2

    .line 275
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;

    const-string v1, "\u6b63\u5728\u4fee\u6539.."

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;->showLoading(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$5;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$5;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->updateGoodsCount(Lcom/ayma/commonerp/bean/ReceiptSelectBean;ILcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method
