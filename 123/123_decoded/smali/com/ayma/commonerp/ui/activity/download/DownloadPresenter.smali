.class public Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "DownloadPresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;",
        "Lcom/ayma/commonerp/ui/activity/download/DownloadModel;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadPresenter;"
    }
.end annotation


# instance fields
.field private downloadGoodsPresenter:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter<",
            "Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;",
            ">;"
        }
    .end annotation
.end field

.field private volatile downloadOtherDataPresenter:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter<",
            "Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;",
            ">;"
        }
    .end annotation
.end field

.field private final resultCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private signInStatuePresenter:Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter<",
            "Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->resultCodeMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Z
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Z
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Z
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Z
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Z
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Z
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Z
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Z
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Z
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3100(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Z
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3400(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Z
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Ljava/util/Map;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->resultCodeMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Z
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4100(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Z
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4400(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Z
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4700(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Z
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Z
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5100(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Z
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5400(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Z
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5700(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Z
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Z
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public downloadAllCommonData()V
    .locals 2

    .line 81
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    const-string v1, "\u8bf7\u5148\u767b\u5f55"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d\u6240\u6709\u8d44\u6599"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;->showLoading(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadUserData(Z)V

    .line 90
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadGoodsData(Z)V

    .line 91
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadTrainData(Z)V

    .line 92
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadCrossRoadData(Z)V

    .line 93
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadBaseData(Z)V

    .line 94
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadPermission(Z)V

    .line 95
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadPdaPermission(Z)V

    .line 96
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadTeamData(Z)V

    .line 97
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->updateSignInStatue(Z)V

    return-void
.end method

.method public downloadBaseData(Z)V
    .locals 1

    .line 268
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 272
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    const-string v0, "\u6b63\u5728\u4e0b\u8f7d\u57fa\u7840\u5b57\u5178\u8d44\u6599..."

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;->showLoading(Ljava/lang/String;)V

    .line 274
    :cond_1
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->initDownloadOtherDataPresenter()V

    .line 275
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadOtherDataPresenter:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$5;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$5;-><init>(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)V

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->downloadBaseData(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public downloadCrossRoadData(Z)V
    .locals 1

    .line 230
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 233
    :cond_0
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    const-string v0, "\u8bf7\u5148\u767b\u5f55"

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 238
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    const-string v0, "\u6b63\u5728\u4e0b\u8f7d\u4ea4\u8def\u8d44\u6599"

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;->showLoading(Ljava/lang/String;)V

    .line 240
    :cond_2
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->initDownloadOtherDataPresenter()V

    .line 241
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadOtherDataPresenter:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$4;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$4;-><init>(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)V

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->downloadCrossRoadData(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public downloadGoodsData(Z)V
    .locals 1

    .line 147
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 150
    :cond_0
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    const-string v0, "\u8bf7\u5148\u767b\u5f55"

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 155
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    const-string v0, "\u6b63\u5728\u4e0b\u8f7d\u5546\u54c1\u8d44\u6599"

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;->showLoading(Ljava/lang/String;)V

    .line 157
    :cond_2
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->initDownloadGoodsPresenter()V

    .line 158
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadGoodsPresenter:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$2;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$2;-><init>(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)V

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;->downloadGoodsData(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public downloadPdaPermission(Z)V
    .locals 1

    .line 343
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 346
    :cond_0
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    const-string v0, "\u8bf7\u5148\u767b\u5f55"

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 351
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    const-string v0, "\u6b63\u5728\u4e0b\u8f7d\u6743\u9650\u6570\u636e..."

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;->showLoading(Ljava/lang/String;)V

    .line 353
    :cond_2
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->initDownloadOtherDataPresenter()V

    .line 354
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadOtherDataPresenter:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$7;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$7;-><init>(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)V

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->downloadPdaPermissionData(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public downloadPermission(Z)V
    .locals 1

    .line 303
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 306
    :cond_0
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    const-string v0, "\u8bf7\u5148\u767b\u5f55"

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 311
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    const-string v0, "\u6b63\u5728\u4e0b\u8f7d\u6743\u9650\u6570\u636e..."

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;->showLoading(Ljava/lang/String;)V

    .line 313
    :cond_2
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->initDownloadOtherDataPresenter()V

    .line 314
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadOtherDataPresenter:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$6;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$6;-><init>(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)V

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->downloadPermission(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public downloadTeamData(Z)V
    .locals 1

    .line 384
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 388
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    const-string v0, "\u6b63\u5728\u4e0b\u8f7d\u73ed\u7ec4\u8d44\u6599"

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;->showLoading(Ljava/lang/String;)V

    .line 390
    :cond_1
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->initDownloadOtherDataPresenter()V

    .line 391
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadOtherDataPresenter:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$8;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$8;-><init>(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)V

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->downloadTeamData(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public downloadTrainData(Z)V
    .locals 1

    .line 190
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 193
    :cond_0
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    const-string v0, "\u8bf7\u5148\u767b\u5f55"

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 198
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    const-string v0, "\u6b63\u5728\u4e0b\u8f7d\u8f66\u6b21\u8d44\u6599"

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;->showLoading(Ljava/lang/String;)V

    .line 200
    :cond_2
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->initDownloadOtherDataPresenter()V

    .line 201
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadOtherDataPresenter:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$3;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$3;-><init>(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)V

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->downloadTrainData(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public downloadUserData(Z)V
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    const-string v0, "\u8bf7\u5148\u767b\u5f55"

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 115
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    const-string v0, "\u6b63\u5728\u4e0b\u8f7d\u7528\u6237\u8d44\u6599"

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;->showLoading(Ljava/lang/String;)V

    .line 117
    :cond_2
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->initDownloadOtherDataPresenter()V

    .line 118
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadOtherDataPresenter:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$1;-><init>(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)V

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->downloadUserData(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public initDownloadGoodsPresenter()V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadGoodsPresenter:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v2, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    invoke-direct {v0, v1, v2}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;-><init>(Landroid/content/Context;Lcom/ayma/commonerp/base/IBaseView;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadGoodsPresenter:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;

    :cond_0
    return-void
.end method

.method public initDownloadOtherDataPresenter()V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadOtherDataPresenter:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    if-nez v0, :cond_1

    .line 61
    const-class v0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    monitor-enter v0

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadOtherDataPresenter:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v3, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    invoke-direct {v1, v2, v3}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;-><init>(Landroid/content/Context;Lcom/ayma/commonerp/base/IBaseView;)V

    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadOtherDataPresenter:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    .line 65
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->initModel()Lcom/ayma/commonerp/ui/activity/download/DownloadModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/ui/activity/download/DownloadModel;
    .locals 2

    .line 37
    new-instance v0, Lcom/ayma/commonerp/ui/activity/download/DownloadModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/download/DownloadModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public initSignInStatuePresenter()V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->signInStatuePresenter:Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v2, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    invoke-direct {v0, v1, v2}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;-><init>(Landroid/content/Context;Lcom/ayma/commonerp/base/IBaseView;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->signInStatuePresenter:Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 493
    invoke-super {p0}, Lcom/ayma/commonerp/base/BasePresenter;->onDestroy()V

    .line 494
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadGoodsPresenter:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {v0}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;->onDestroy()V

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadOtherDataPresenter:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    if-eqz v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadOtherDataPresenter:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->onDestroy()V

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->signInStatuePresenter:Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;

    if-eqz v0, :cond_2

    .line 501
    invoke-virtual {v0}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;->onDestroy()V

    :cond_2
    return-void
.end method

.method public saveSignInStatue(Z)V
    .locals 2

    .line 460
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 463
    :cond_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->initSignInStatuePresenter()V

    .line 464
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->signInStatuePresenter:Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$10;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$10;-><init>(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;->saveSignInStatue(ZLcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public setResult()V
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->resultCodeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->resultCodeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 45
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->resultCodeMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    invoke-interface {v1, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;->setResult(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public updateSignInStatue(Z)V
    .locals 1

    .line 424
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 428
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    const-string v0, "\u6b63\u5728\u66f4\u65b0\u7b7e\u5230\u72b6\u6001"

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;->showLoading(Ljava/lang/String;)V

    .line 430
    :cond_1
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->initSignInStatuePresenter()V

    .line 431
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->signInStatuePresenter:Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$9;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$9;-><init>(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)V

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;->getSignInStatueFromServer(Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method
