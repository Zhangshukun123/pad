.class public Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "SettingPresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;",
        "Lcom/ayma/commonerp/ui/activity/setting/SettingModel;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingPresenter;"
    }
.end annotation


# static fields
.field private static final VERIFY_PASSWORD:Ljava/lang/String; = "zterp8888"

.field private static final WHAT_CLEAR_DATA_SIMPLE_ERROR:I = 0xd6

.field private static final WHAT_CLEAR_DATA_SIMPLE_FAIL:I = 0xd5

.field private static final WHAT_CLEAR_DATA_SIMPLE_SUCCESS:I = 0xd4


# instance fields
.field private configPresenter:Lcom/ayma/commonerp/multiplex/config/MultiplexConfigPresenter;

.field private handler:Landroid/os/Handler;

.field private pwdVerify:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->pwdVerify:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Z
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Z
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Z
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Z
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Z
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Z
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Z
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Z
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Z
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Z
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Z
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Z
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3500(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Z
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3800(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Z
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4000(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Z
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4300(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Z
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4600(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Z
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5100(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Z
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5400(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Z
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5700(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Z
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Z
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6300(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Landroid/os/Handler;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Z
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method


# virtual methods
.method public boundMachine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 232
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 235
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;

    const-string p2, "\u8bbe\u5907\u578b\u53f7\u4e3a\u7a7a\uff0c\u8bf7\u68c0\u67e5"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;->showToast(Ljava/lang/String;)V

    return-void

    .line 239
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;

    const-string p2, "\u8bbe\u5907\u5e8f\u5217\u53f7\u4e3a\u7a7a\uff0c\u8bf7\u68c0\u67e5"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;->showToast(Ljava/lang/String;)V

    return-void

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;->showLoading()V

    .line 244
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "F_MachineType"

    .line 245
    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "F_MachineSN"

    .line 246
    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$7;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$7;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)V

    invoke-virtual {p1, v0, p2}, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->boundMachine(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public checkOnlinePayInvoicingStatue()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$3;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$3;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->checkOnlinePayInvoicingStatue(Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public checkPayOptionType()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$5;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$5;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->checkPayOptionType(Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public clearData()V
    .locals 2

    .line 382
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;

    const-string v1, "\u6b63\u5728\u6e05\u9664\u9500\u552e\u6570\u636e..."

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;->showLoading(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$10;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$10;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->clearData(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public clearDataSimple()V
    .locals 2

    .line 418
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;

    const-string v1, "\u6b63\u5728\u6e05\u9664\u8d44\u6599\u6570\u636e..."

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;->showLoading(Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$11;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$11;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->clearDataSimple(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public getConfig()V
    .locals 2

    .line 291
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->pwdVerify:Z

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;->showPwdError()V

    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;

    const-string v1, "\u6b63\u5728\u83b7\u53d6\u6570\u636e"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;->showLoading(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$8;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$8;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->getConfig(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public getConfig(Ljava/lang/String;)V
    .locals 1

    .line 281
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "zterp8888"

    .line 284
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->pwdVerify:Z

    .line 285
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;

    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->pwdVerify:Z

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;->passVerify(Z)V

    .line 286
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->getConfig()V

    return-void
.end method

.method public initConfigPresenter()V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->configPresenter:Lcom/ayma/commonerp/multiplex/config/MultiplexConfigPresenter;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Lcom/ayma/commonerp/multiplex/config/MultiplexConfigPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v2, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;

    invoke-direct {v0, v1, v2}, Lcom/ayma/commonerp/multiplex/config/MultiplexConfigPresenter;-><init>(Landroid/content/Context;Lcom/ayma/commonerp/base/IBaseView;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->configPresenter:Lcom/ayma/commonerp/multiplex/config/MultiplexConfigPresenter;

    :cond_0
    return-void
.end method

.method public initHandler()V
    .locals 2

    .line 69
    new-instance v0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$2;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$2;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->handler:Landroid/os/Handler;

    return-void
.end method

.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->initModel()Lcom/ayma/commonerp/ui/activity/setting/SettingModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/ui/activity/setting/SettingModel;
    .locals 2

    .line 34
    new-instance v0, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public invoicingStatueChange(Z)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$4;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$4;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;Z)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->saveOnlinePayInvoicingStatue(ZLcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public isPassVerify()Z
    .locals 1

    .line 221
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->pwdVerify:Z

    return v0
.end method

.method public onCreate()V
    .locals 2

    .line 39
    invoke-super {p0}, Lcom/ayma/commonerp/base/BasePresenter;->onCreate()V

    .line 40
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->initHandler()V

    .line 41
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;->init()V

    .line 42
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->checkOnlinePayInvoicingStatue()V

    .line 43
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->checkPayOptionType()V

    .line 44
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$1;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->getDeviceInfo(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public payOptionType(Z)V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$6;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$6;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;Z)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->savePayOptionType(ZLcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public saveConfig(Ljava/lang/String;Z)V
    .locals 2

    .line 331
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->pwdVerify:Z

    if-nez v0, :cond_0

    .line 332
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;

    const-string p2, "\u8bf7\u5148\u83b7\u53d6\u6570\u636e"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;->showToast(Ljava/lang/String;)V

    return-void

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "http://"

    .line 338
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 339
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;

    const-string p2, "\u8bf7\u68c0\u67e5IP\u5730\u5740\u683c\u5f0f\u662f\u5426\u6b63\u786e"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;->showToast(Ljava/lang/String;)V

    return-void

    .line 342
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;

    const-string v1, "\u6b63\u5728\u4fdd\u5b58..."

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;->showLoading(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->initConfigPresenter()V

    .line 344
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->configPresenter:Lcom/ayma/commonerp/multiplex/config/MultiplexConfigPresenter;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$9;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$9;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/ayma/commonerp/multiplex/config/MultiplexConfigPresenter;->saveConfig(Ljava/lang/String;ZLcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 445
    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 446
    iput p1, v0, Landroid/os/Message;->what:I

    .line 447
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 448
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
