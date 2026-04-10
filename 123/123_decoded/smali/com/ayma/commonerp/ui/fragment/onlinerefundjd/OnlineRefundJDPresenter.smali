.class public Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "OnlineRefundJDPresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;",
        "Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;",
        ">;",
        "Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDPresenter;"
    }
.end annotation


# static fields
.field public static final WHAT_FILTER_FAIL:I = 0x15c

.field public static final WHAT_FILTER_SUCCESS:I = 0x15b

.field public static final WHAT_SORT_FAIL:I = 0x15a

.field public static final WHAT_SORT_SUCCESS:I = 0x159


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Z
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Z
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Z
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Z
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Z
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Z
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Z
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Z
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method


# virtual methods
.method public filterList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 167
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;

    const-string v1, "\u6b63\u5728\u7b5b\u9009\u6570\u636e..."

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;->showLoading(Ljava/lang/String;)V

    .line 171
    new-instance v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$4;-><init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initHandler()V
    .locals 2

    .line 45
    new-instance v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$1;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$1;-><init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->handler:Landroid/os/Handler;

    return-void
.end method

.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->initModel()Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;
    .locals 2

    .line 32
    new-instance v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 37
    invoke-super {p0}, Lcom/ayma/commonerp/base/BasePresenter;->onCreate()V

    .line 38
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->initHandler()V

    .line 39
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;->init()V

    .line 40
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;->getShowList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;->initRlv(Ljava/util/List;)V

    return-void
.end method

.method public queryJDOrder()V
    .locals 3

    .line 89
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 90
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    const-string v2, "trainId"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    const-string v2, "outDay"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "payChannel"

    const-string v2, "D"

    .line 92
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "orderClass"

    const-string v2, "1"

    .line 93
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;

    const-string v2, "\u6b63\u5728\u67e5\u8be2\u4eac\u4e1c\u8ba2\u5355\u6570\u636e"

    invoke-interface {v1, v2}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;->showLoading(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;

    new-instance v2, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$2;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$2;-><init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)V

    invoke-virtual {v1, v0, v2}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;->queryOrder(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public refundOrder(Ljava/lang/String;I)V
    .locals 2

    .line 202
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 205
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;

    const-string p2, "\u652f\u4ed8\u6d41\u6c34\u53f7\u6709\u8bef\uff0c\u8bf7\u68c0\u67e5"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;->showToast(Ljava/lang/String;)V

    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;

    const-string v1, "\u6b63\u5728\u9000\u6b3e..."

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;->showLoading(Ljava/lang/String;)V

    .line 210
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "transactionNo"

    .line 211
    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;

    new-instance v1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$5;

    invoke-direct {v1, p0, p2}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$5;-><init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;I)V

    invoke-virtual {p1, v0, p2, v1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;->refundOrder(Ljava/util/TreeMap;ILcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public sendMsg(ILjava/lang/Object;)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 245
    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 246
    iput p1, v0, Landroid/os/Message;->what:I

    .line 247
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 248
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sortList(Z)V
    .locals 2

    .line 133
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;->getShowList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 137
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;

    const-string v1, "\u6b63\u5728\u6392\u5e8f"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;->showLoading(Ljava/lang/String;)V

    .line 142
    new-instance v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$3;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$3;-><init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;Z)V

    invoke-static {v0}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 138
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;

    const-string v0, "\u5f53\u524d\u6ca1\u6709\u6570\u636e\u53ef\u6392\u5e8f"

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;->showToast(Ljava/lang/String;)V

    return-void
.end method
