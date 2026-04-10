.class public Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "LoginPresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;",
        "Lcom/ayma/commonerp/ui/activity/login/LoginModel;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginPresenter;"
    }
.end annotation


# instance fields
.field private configPresenter:Lcom/ayma/commonerp/multiplex/config/MultiplexConfigPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ayma/commonerp/multiplex/config/MultiplexConfigPresenter<",
            "Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;",
            ">;"
        }
    .end annotation
.end field

.field private downloadGoodsPresenter:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter<",
            "Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;",
            ">;"
        }
    .end annotation
.end field

.field private downloadOtherDataPresenter:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter<",
            "Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;",
            ">;"
        }
    .end annotation
.end field

.field private isLoginFromServer:Z

.field private signInStatuePresenter:Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter<",
            "Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isLoginFromServer:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3100(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3500(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3900(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4200(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4300(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4400(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4500(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4900(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Landroid/content/Context;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5200(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5600(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6100(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6500(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6700(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6800(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6900(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$7000(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$7100(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7200(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7300(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7400(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$7500(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7600(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7700(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7800(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7900(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$8000(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8100(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8200(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$8300(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8400(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8500(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$8600(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$8700(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8800(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$8900(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$9000(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$9100(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$9200(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$9300(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$9400(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$9500(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method


# virtual methods
.method public checkData()Z
    .locals 3

    .line 878
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->queryUserDataSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isSizeNotZero(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    const-string v2, "\u8bf7\u5148\u4e0b\u8f7d\u7528\u6237\u8d44\u6599"

    invoke-interface {v0, v2}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showToast(Ljava/lang/String;)V

    return v1

    .line 882
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->queryGoodsDataSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isSizeNotZero(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->queryGoodsPriceDataSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isSizeNotZero(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->queryGoodsTypeDataSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isSizeNotZero(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 886
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->queryTrainDataSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isSizeNotZero(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 887
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    const-string v2, "\u8bf7\u5148\u4e0b\u8f7d\u8f66\u6b21\u8d44\u6599"

    invoke-interface {v0, v2}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showToast(Ljava/lang/String;)V

    return v1

    .line 890
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->queryCrossRoadDataSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isSizeNotZero(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 891
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    const-string v2, "\u8bf7\u5148\u4e0b\u8f7d\u4ea4\u8def\u8d44\u6599"

    invoke-interface {v0, v2}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showToast(Ljava/lang/String;)V

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0

    .line 883
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    const-string v2, "\u8bf7\u5148\u4e0b\u8f7d\u5546\u54c1\u8d44\u6599"

    invoke-interface {v0, v2}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showToast(Ljava/lang/String;)V

    return v1
.end method

.method public checkIsLastLoginUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 219
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->context:Landroid/content/Context;

    const-string v1, "userCode"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/ayma/base/util/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->context:Landroid/content/Context;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "timestamp"

    invoke-static {v1, v3, v2}, Lcom/ayma/base/util/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 221
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v0, 0x2255100

    cmp-long v2, v3, v0

    if-gez v2, :cond_0

    .line 222
    invoke-static {}, Lcom/ayma/commonerp/app/App;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "accessToken"

    const-string v2, "Bearer "

    invoke-static {v0, v1, v2}, Lcom/ayma/base/util/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->TOKEN:Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->saveUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->userId:Ljava/lang/String;

    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->queryCrossRoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ayma/commonerp/util/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "hadUpdatedToken"

    invoke-static {v0, v2, v1}, Lcom/ayma/base/util/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 229
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->saveUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->userId:Ljava/lang/String;

    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->queryCrossRoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 232
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/ayma/commonerp/eventbus/UpdateTokenEvent;

    invoke-direct {p2}, Lcom/ayma/commonerp/eventbus/UpdateTokenEvent;-><init>()V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$4;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p3, v1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->loginFromServer(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public confirm()V
    .locals 2

    .line 782
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->getCrossRoadDataBean()Lcom/ayma/commonerp/bean/CrossRoadDataBean;

    move-result-object v0

    .line 783
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/CrossRoadDataBean;->getEmployeeCode()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    .line 784
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/CrossRoadDataBean;->getEmployeeName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ayma/commonerp/app/AppUserData;->userName:Ljava/lang/String;

    .line 785
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/CrossRoadDataBean;->getRoadDay()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    .line 786
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/CrossRoadDataBean;->getTrainName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ayma/commonerp/app/AppUserData;->trainName:Ljava/lang/String;

    .line 787
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/CrossRoadDataBean;->getTrainId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    .line 788
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/CrossRoadDataBean;->getStoreId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ayma/commonerp/app/AppUserData;->storeId:Ljava/lang/String;

    .line 790
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/CrossRoadDataBean;->getTeamId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ayma/commonerp/app/AppUserData;->teamId:Ljava/lang/String;

    .line 791
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/CrossRoadDataBean;->getTeamName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ayma/commonerp/app/AppUserData;->teamName:Ljava/lang/String;

    .line 792
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/CrossRoadDataBean;->getCompanyId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    .line 793
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/CrossRoadDataBean;->getCompany2Id()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    .line 794
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/CrossRoadDataBean;->getCompanyName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ayma/commonerp/app/AppUserData;->companyName:Ljava/lang/String;

    .line 795
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/CrossRoadDataBean;->getCompany2Name()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ayma/commonerp/app/AppUserData;->company2Name:Ljava/lang/String;

    .line 796
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/CrossRoadDataBean;->getFleetId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->fleetId:Ljava/lang/String;

    .line 799
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->storeId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isLoginFromServer:Z

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->setNewStoreId(Z)V

    goto :goto_0

    .line 802
    :cond_0
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isLoginFromServer:Z

    if-eqz v0, :cond_1

    .line 803
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->updateSignInStatue()V

    goto :goto_0

    .line 805
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->confirmDownloadPickingList()V

    :goto_0
    return-void
.end method

.method public downloadBasic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 394
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d\u57fa\u7840\u5b57\u5178"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showLoading(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->initDownloadOtherDataPresenter()V

    .line 399
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->downloadOtherDataPresenter:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$8;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->downloadBaseData(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public downloadCrossRoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 534
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    if-eqz p4, :cond_1

    const-string v1, "\u6b63\u5728\u66f4\u65b0\u4ea4\u8def\u4fe1\u606f"

    goto :goto_0

    :cond_1
    const-string v1, "\u6b63\u5728\u4e0b\u8f7d\u4ea4\u8def\u4fe1\u606f"

    :goto_0
    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showLoading(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->initDownloadOtherDataPresenter()V

    .line 539
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->downloadOtherDataPresenter:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    new-instance v7, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$12;

    move-object v1, v7

    move-object v2, p0

    move v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$12;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->downloadCrossRoadData(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public downloadGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 581
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 584
    :cond_0
    invoke-static {}, Lcom/ayma/commonerp/app/AppUserData;->isQC()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 585
    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->userId:Ljava/lang/String;

    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->queryCrossRoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 588
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d\u5546\u54c1\u8d44\u6599"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showLoading(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->initDownloadGoodsPresenter()V

    .line 590
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->downloadGoodsPresenter:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$13;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$13;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;->downloadGoodsData(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public downloadPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 362
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d\u6743\u9650"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showLoading(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->initDownloadOtherDataPresenter()V

    .line 367
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->downloadOtherDataPresenter:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$7;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->downloadPermission(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public downloadPickingList(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 817
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 820
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    const-string v0, "\u6b63\u5728\u4e0b\u8f7d\u9886\u6599\u5355..."

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showLoading(Ljava/lang/String;)V

    .line 821
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    .line 822
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    const-string v1, "trainsId"

    invoke-virtual {p1, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    const-string v1, "company2Id"

    invoke-virtual {p1, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->getGoDate()Ljava/lang/String;

    move-result-object v0

    const-string v1, "outDate"

    invoke-virtual {p1, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "classMax"

    const-string v1, ""

    .line 825
    invoke-virtual {p1, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "classMin"

    .line 826
    invoke-virtual {p1, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "goodsName"

    .line 827
    invoke-virtual {p1, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$17;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$17;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->downloadTeamSaleOutList(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void

    .line 873
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->toMenu()V

    return-void
.end method

.method public downloadTeamData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 498
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d\u73ed\u7ec4\u8d44\u6599"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showLoading(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->initDownloadOtherDataPresenter()V

    .line 503
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->downloadOtherDataPresenter:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$11;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$11;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->downloadTeamData(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public downloadTrainData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 464
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d\u8f66\u6b21\u8d44\u6599"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showLoading(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->initDownloadOtherDataPresenter()V

    .line 469
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->downloadOtherDataPresenter:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$10;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$10;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->downloadTrainData(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public downloadUserList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 430
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d\u7528\u6237\u8d44\u6599"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showLoading(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->initDownloadOtherDataPresenter()V

    .line 435
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->downloadOtherDataPresenter:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$9;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->downloadUserData(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public generateLoginTipsContent(Lcom/ayma/commonerp/bean/CrossRoadDataBean;)Ljava/lang/String;
    .locals 3

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n\u5f53\u524d\u8f66\u6b21\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/CrossRoadDataBean;->getTrainName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n\u51fa\u4e58\u65e5\u671f\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/CrossRoadDataBean;->getRoadDay()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2f

    const/16 v2, 0x2d

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\n\u5f53\u524d\u65f6\u95f4\uff1a"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMddHHmm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public initConfigPresenter()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->configPresenter:Lcom/ayma/commonerp/multiplex/config/MultiplexConfigPresenter;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/ayma/commonerp/multiplex/config/MultiplexConfigPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v2, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    invoke-direct {v0, v1, v2}, Lcom/ayma/commonerp/multiplex/config/MultiplexConfigPresenter;-><init>(Landroid/content/Context;Lcom/ayma/commonerp/base/IBaseView;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->configPresenter:Lcom/ayma/commonerp/multiplex/config/MultiplexConfigPresenter;

    :cond_0
    return-void
.end method

.method public initDownloadGoodsPresenter()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->downloadGoodsPresenter:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v2, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    invoke-direct {v0, v1, v2}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;-><init>(Landroid/content/Context;Lcom/ayma/commonerp/base/IBaseView;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->downloadGoodsPresenter:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;

    :cond_0
    return-void
.end method

.method public initDownloadOtherDataPresenter()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->downloadOtherDataPresenter:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v2, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    invoke-direct {v0, v1, v2}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;-><init>(Landroid/content/Context;Lcom/ayma/commonerp/base/IBaseView;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->downloadOtherDataPresenter:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    :cond_0
    return-void
.end method

.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->initModel()Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/ui/activity/login/LoginModel;
    .locals 2

    .line 62
    new-instance v0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public initSignInStatuePresenter()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->signInStatuePresenter:Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v2, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    invoke-direct {v0, v1, v2}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;-><init>(Landroid/content/Context;Lcom/ayma/commonerp/base/IBaseView;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->signInStatuePresenter:Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;

    :cond_0
    return-void
.end method

.method public initUserInfo()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$1;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->getUserInfo(Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public isSizeNotZero(I)Z
    .locals 0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 155
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->hideSoftKeyboard()V

    .line 159
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    const-string v1, "\u6b63\u5728\u767b\u5f55..."

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showLoading(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "hadUpdatedToken"

    invoke-static {v0, v3, v2}, Lcom/ayma/base/util/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/ayma/commonerp/app/AppUserData;->isDefaultToken()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->queryUserDataSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isSizeNotZero(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    invoke-virtual {p0, p1, p2, p3}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->loginFromLocal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_2
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->loginFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    .line 161
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->loginFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public loginFromLocal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 182
    iput-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isLoginFromServer:Z

    .line 183
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$3;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->queryUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public loginFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 268
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ayma/commonerp/util/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 272
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->hideLoading()V

    .line 273
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    const/4 p2, 0x0

    const-string p3, "\u63d0\u793a"

    const-string p4, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u68c0\u67e5"

    const-string v0, "\u786e\u5b9a"

    invoke-interface {p1, p3, p4, v0, p2}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 279
    iput-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isLoginFromServer:Z

    .line 280
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    new-instance v7, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$5;

    move-object v1, v7

    move-object v2, p0

    move v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$5;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p3, v7}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->loginFromServer(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 67
    invoke-super {p0}, Lcom/ayma/commonerp/base/BasePresenter;->onCreate()V

    .line 68
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->initUserInfo()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1023
    invoke-super {p0}, Lcom/ayma/commonerp/base/BasePresenter;->onDestroy()V

    .line 1024
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->downloadGoodsPresenter:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1025
    invoke-virtual {v0}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;->onDestroy()V

    .line 1026
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->downloadGoodsPresenter:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;

    .line 1028
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->downloadOtherDataPresenter:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    if-eqz v0, :cond_1

    .line 1029
    invoke-virtual {v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->onDestroy()V

    .line 1030
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->downloadOtherDataPresenter:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    .line 1032
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->signInStatuePresenter:Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;

    if-eqz v0, :cond_2

    .line 1033
    invoke-virtual {v0}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;->onDestroy()V

    .line 1034
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->signInStatuePresenter:Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;

    .line 1036
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->configPresenter:Lcom/ayma/commonerp/multiplex/config/MultiplexConfigPresenter;

    if-eqz v0, :cond_3

    .line 1037
    invoke-virtual {v0}, Lcom/ayma/commonerp/multiplex/config/MultiplexConfigPresenter;->onDestroy()V

    .line 1038
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->configPresenter:Lcom/ayma/commonerp/multiplex/config/MultiplexConfigPresenter;

    :cond_3
    return-void
.end method

.method public queryCrossRoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .line 713
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 716
    :cond_0
    invoke-static {}, Lcom/ayma/commonerp/app/AppUserData;->isQC()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 717
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->hideLoading()V

    .line 718
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p2, Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    invoke-virtual {p2}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->getSearchCrossRoadList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showSearchCrossRoadPopup(Ljava/util/List;)V

    return-void

    .line 721
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    const-string v1, "\u6b63\u5728\u67e5\u8be2\u4ea4\u8def..."

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showLoading(Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMdWithNoneSep()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$16;

    move-object v2, v8

    move-object v3, p0

    move v4, p6

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$16;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1, v8}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->queryCrossRoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public queryUser(Ljava/lang/String;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$2;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$2;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->queryUser(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public queryUserInfoForServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 312
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    const-string v1, "\u6b63\u5728\u83b7\u53d6\u7528\u6237\u4fe1\u606f"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showLoading(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$6;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3, v1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->getUserInfoFromServer(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public saveSignInStatue(Z)V
    .locals 2

    .line 663
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    const-string v1, "\u6b63\u5728\u4fdd\u5b58\u7b7e\u5230\u72b6\u6001"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showLoading(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->initSignInStatuePresenter()V

    .line 668
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->signInStatuePresenter:Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$15;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$15;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;->saveSignInStatue(ZLcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public searchCrossRoad(Ljava/lang/String;)V
    .locals 2

    .line 995
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$20;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$20;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->searchCrossRoad(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public selectCrossRoad(Lcom/ayma/commonerp/bean/CrossRoadDataBean;)V
    .locals 1

    .line 765
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->setCrossRoadDataBean(Lcom/ayma/commonerp/bean/CrossRoadDataBean;)V

    .line 766
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->generateLoginTipsContent(Lcom/ayma/commonerp/bean/CrossRoadDataBean;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showConfirmDialog(Ljava/lang/String;)V

    return-void
.end method

.method public setNewStoreId(Z)V
    .locals 3

    .line 952
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 955
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    const-string v1, "\u52a0\u8f7d\u4fe1\u606f\u4e2d"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showLoading(Ljava/lang/String;)V

    .line 956
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$19;

    invoke-direct {v2, p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$19;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->setNewStoreId(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public switchToProductEnvironment()V
    .locals 4

    .line 908
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    const-string v1, "\u6b63\u5728\u5207\u6362\u81f3\u751f\u4ea7\u73af\u5883..."

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showLoading(Ljava/lang/String;)V

    .line 912
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->initConfigPresenter()V

    .line 913
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->configPresenter:Lcom/ayma/commonerp/multiplex/config/MultiplexConfigPresenter;

    sget-object v1, Lcom/ayma/commonerp/net/NetConfig;->IP_ADDRESS_RELEASE:Ljava/lang/String;

    const/4 v2, 0x1

    new-instance v3, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$18;

    invoke-direct {v3, p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$18;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/ayma/commonerp/multiplex/config/MultiplexConfigPresenter;->saveConfig(Ljava/lang/String;ZLcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public updateSignInStatue()V
    .locals 2

    .line 623
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    const-string v1, "\u6b63\u5728\u83b7\u53d6\u7b7e\u5230\u72b6\u6001"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showLoading(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->initSignInStatuePresenter()V

    .line 628
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->signInStatuePresenter:Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$14;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$14;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;->getSignInStatueFromServer(Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method
