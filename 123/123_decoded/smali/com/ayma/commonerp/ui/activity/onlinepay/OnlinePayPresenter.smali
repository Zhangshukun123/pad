.class public Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "OnlinePayPresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;",
        "Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayPresenter;"
    }
.end annotation


# static fields
.field public static final PAY_RESULT_SUCCESS:I = 0x3e7

.field public static final QUERY_ORDER_DELAYED:I = 0x7d0

.field public static final QUERY_ORDER_RETRY_TIMES:I = 0x3


# instance fields
.field private handler:Landroid/os/Handler;

.field private isCancelQuery:Z

.field private isToOnline:Z

.field private payJson:Ljava/lang/String;

.field private payMoney:Ljava/lang/String;

.field private queryTimes:I

.field private saleType:Ljava/lang/String;

.field private toOnlineType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 63
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 57
    iput v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->queryTimes:I

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->isCancelQuery:Z

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Z
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->dealingOption:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Z
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->dealingOption:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Z
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->queryTimes:I

    return p0
.end method

.method static synthetic access$2508(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)I
    .locals 2

    .line 49
    iget v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->queryTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->queryTimes:I

    return v0
.end method

.method static synthetic access$2600(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Z
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Z
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3300(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3602(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->dealingOption:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Z
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3800(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$4002(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->dealingOption:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Z
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4200(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4602(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->dealingOption:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Z
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4900(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Z
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5600(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6002(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->isCancelQuery:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Z
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6200(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Z
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6700(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Z
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method


# virtual methods
.method public cancelPayQueryRequest(Ljava/lang/String;)V
    .locals 2

    .line 596
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$15;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$15;-><init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->cancelPayQueryRequest(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public confirmIsShowInvoicingQrCode(Ljava/lang/String;)V
    .locals 8

    .line 557
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->getIsShowInvoicing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    move-object v1, v0

    check-cast v1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    new-instance v5, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$13;

    invoke-direct {v5, p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$13;-><init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)V

    new-instance v7, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$14;

    invoke-direct {v7, p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$14;-><init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;Ljava/lang/String;)V

    const-string v2, ""

    const-string v3, "\u65c5\u5ba2\u662f\u5426\u9700\u8981\u5f00\u5177\u7535\u5b50\u53d1\u7968\uff1f"

    const-string v4, "\u4e0d\u5f00\u5177"

    const-string v6, "\u5f00\u5177\u7535\u5b50\u53d1\u7968"

    invoke-interface/range {v1 .. v7}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 575
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->finishActivity()V

    :goto_0
    return-void
.end method

.method public initBaseData()V
    .locals 2

    .line 133
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    const-string v1, "\u6b63\u5728\u521d\u59cb\u5316..."

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->showLoading(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$4;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$4;-><init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->queryPayType(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->initModel()Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;
    .locals 2

    .line 69
    new-instance v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreate(Landroid/content/Intent;)V
    .locals 5

    .line 75
    invoke-super {p0}, Lcom/ayma/commonerp/base/BasePresenter;->onCreate()V

    .line 76
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->init()V

    const-string v0, "payMode"

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toOnlineType"

    .line 79
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->toOnlineType:Ljava/lang/String;

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "\u786e\u5b9a"

    const-string v3, "\u6570\u636e\u9519\u8bef"

    const-string v4, ""

    if-eqz v1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$1;-><init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)V

    invoke-interface {p1, v4, v3, v2, v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    :cond_0
    const-string v1, "toOnline"

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->isToOnline:Z

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->toOnlineType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$2;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$2;-><init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)V

    const-string v1, "\u7c7b\u578b\u5fc5\u4f20"

    invoke-interface {p1, v4, v1, v2, v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    :cond_1
    const-string v0, "payJson"

    .line 101
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->payJson:Ljava/lang/String;

    const-string v0, "payMoney"

    .line 102
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->payMoney:Ljava/lang/String;

    const-string v0, "saleType"

    .line 103
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->saleType:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->payMoney:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$3;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$3;-><init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)V

    invoke-interface {p1, v4, v3, v2, v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 114
    :cond_2
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->isToOnline:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_3

    .line 115
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->payMoney:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->showPayMoney(DLjava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "data"

    .line 117
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 118
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->payJson:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->payMoney:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->saleType:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 119
    :cond_4
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v4, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    invoke-interface {v4, v3}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->showToast(Ljava/lang/String;)V

    .line 120
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v3, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    invoke-interface {v3}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->finishActivity()V

    .line 122
    :cond_5
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v3, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    invoke-virtual {v3, v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->saveGoodsList(Ljava/util/List;)V

    const-string v0, "goodsCount"

    .line 123
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    .line 124
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->setGoodsCount(D)V

    .line 125
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v2, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    invoke-virtual {v2}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->showGoods(Ljava/util/List;)V

    .line 126
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->payMoney:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->showPayMoney(DLjava/lang/String;)V

    .line 128
    :goto_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->initBaseData()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 628
    invoke-super {p0}, Lcom/ayma/commonerp/base/BasePresenter;->onDestroy()V

    .line 629
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 630
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 631
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 632
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->handler:Landroid/os/Handler;

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->clearRequest()V

    return-void
.end method

.method public pay(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .line 190
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 193
    iput-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->isCancelQuery:Z

    .line 194
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->isToOnline:Z

    if-eqz v0, :cond_1

    .line 195
    iget-object p3, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->toOnlineType:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->toOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 198
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->object:Ljava/lang/Object;

    monitor-enter p1

    .line 199
    :try_start_0
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->dealingOption:Z

    if-eqz v0, :cond_2

    .line 200
    monitor-exit p1

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->dealingOption:Z

    .line 203
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    invoke-interface {v1, v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->updatePayingStatue(Z)V

    .line 204
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    const-string v1, "\u65c5\u5ba2\u652f\u4ed8\u4e2d.....\n\u8bf7\u786e\u8ba4\u65c5\u5ba2\u652f\u4ed8\u6210\u529f\u540e\u518d\u7ed9\u4e88\u5546\u54c1"

    const-string v2, "pay"

    invoke-interface {v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->showPayLoading(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 213
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->generateOrderNo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lineOrderNo"

    .line 214
    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tradeType"

    const-string v3, "1"

    .line 215
    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "orderDay"

    .line 216
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMdWithNoneSep()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "companyId"

    .line 217
    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "company2Id"

    .line 218
    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "storeId"

    .line 219
    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->storeId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "saleType"

    .line 220
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->saleType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "paymentType"

    const-string v3, "0"

    .line 222
    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "saleChannel"

    const-string v3, "A"

    .line 223
    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "trainId"

    .line 224
    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "outDay"

    .line 225
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->getGoDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "fleetId"

    .line 226
    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->fleetId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "teamId"

    .line 227
    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->teamId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "employeeId"

    .line 228
    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->userId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "totalAmount"

    .line 229
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->payMoney:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "receivableAmount"

    .line 230
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->payMoney:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "receiptAmount"

    .line 231
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->payMoney:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "prefrentialAmount"

    const-string v3, "0"

    .line 232
    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "poundage"

    const-string v3, "0"

    .line 233
    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "description"

    const-string v3, ""

    .line 234
    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "orderDetails"

    .line 235
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->payJson:Ljava/lang/String;

    new-instance v5, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$5;

    invoke-direct {v5, p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$5;-><init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)V

    .line 236
    invoke-virtual {v5}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 235
    invoke-virtual {v3, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "authCode"

    .line 237
    invoke-virtual {v0, v2, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p2, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$6;

    invoke-direct {v2, p0, p3, v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$6;-><init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;ZLjava/lang/String;)V

    invoke-virtual {p2, v0, v2}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->pay(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    .line 278
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public queryCashToOnline(Ljava/lang/String;)V
    .locals 3

    .line 487
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 490
    :cond_0
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->isCancelQuery:Z

    if-eqz v0, :cond_1

    .line 491
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->hideLoading()V

    .line 492
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->hidePayLoading()V

    return-void

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7b2c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->queryTimes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u6b21\u67e5\u8be2\u6570\u636e..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cashToOnlineQuery"

    invoke-interface {v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->showPayLoading(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "lineOrderNo"

    .line 497
    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$12;

    invoke-direct {v2, p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$12;-><init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->queryCashToOnline(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public queryCashToOnlineDelayed(Ljava/lang/String;)V
    .locals 4

    .line 468
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->isCancelQuery:Z

    if-eqz v0, :cond_0

    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->handler:Landroid/os/Handler;

    if-nez v0, :cond_1

    return-void

    .line 474
    :cond_1
    new-instance v1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$11;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$11;-><init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;Ljava/lang/String;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public queryOrderDelayed(Ljava/lang/String;Z)V
    .locals 2

    .line 283
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->isCancelQuery:Z

    if-eqz v0, :cond_0

    .line 284
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->hideLoading()V

    .line 285
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->hidePayLoading()V

    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$7;-><init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;Ljava/lang/String;Z)V

    const-wide/16 p1, 0x7d0

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public queryOrderStatue(Ljava/lang/String;Z)V
    .locals 3

    .line 304
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 307
    :cond_0
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->isCancelQuery:Z

    if-eqz v0, :cond_1

    .line 308
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->hideLoading()V

    .line 309
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->hidePayLoading()V

    return-void

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7b2c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->queryTimes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u6b21\u67e5\u8be2\u8ba2\u5355\u6570\u636e...\n\u8bf7\u786e\u8ba4\u65c5\u5ba2\u652f\u4ed8\u6210\u529f\u540e\u518d\u7ed9\u4e88\u5546\u54c1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "payQuery"

    invoke-interface {v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->showPayLoading(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "lineOrderNo"

    .line 314
    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$8;

    invoke-direct {v2, p0, p2, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$8;-><init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;ZLjava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->queryOrder(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public receiveSelectGoodsList(Lcom/ayma/commonerp/eventbus/OnlinePayData;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/eventbus/OnlinePayData;->getList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->saveGoodsList(Ljava/util/List;)V

    return-void
.end method

.method public resetQueryTimes()V
    .locals 1

    const/4 v0, 0x1

    .line 584
    iput v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->queryTimes:I

    return-void
.end method

.method public declared-synchronized toOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 378
    :try_start_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->isViewAttach()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_0

    .line 379
    monitor-exit p0

    return-void

    .line 381
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->object:Ljava/lang/Object;

    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 382
    :try_start_2
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->dealingOption:Z

    if-eqz v0, :cond_1

    .line 383
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 385
    :try_start_3
    iput-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->dealingOption:Z

    const/4 v1, 0x0

    .line 386
    iput-boolean v1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->isCancelQuery:Z

    .line 388
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 389
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p2, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    const-string p3, ""

    const-string v0, "\u652f\u4ed8\u53c2\u6570\u9519\u8bef"

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$9;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$9;-><init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)V

    invoke-interface {p2, p3, v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 396
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    .line 398
    :cond_2
    :try_start_4
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    invoke-interface {v1, v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->updatePayingStatue(Z)V

    .line 399
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    const-string v1, "\u6b63\u5728\u652f\u4ed8..."

    const-string v2, "cashToOnline"

    invoke-interface {v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->showPayLoading(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 408
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->generateOrderNo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lineOrderNo"

    .line 409
    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "company2Id"

    .line 410
    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "storeId"

    .line 411
    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->storeId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "saleType"

    .line 412
    invoke-virtual {v0, v2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "paymentType"

    const-string v2, "0"

    .line 413
    invoke-virtual {v0, p3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "trainId"

    .line 415
    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    invoke-virtual {v0, p3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "outDay"

    .line 416
    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    invoke-virtual {v0, p3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "operId"

    .line 417
    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->userId:Ljava/lang/String;

    invoke-virtual {v0, p3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "amount"

    .line 418
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->payMoney:Ljava/lang/String;

    invoke-virtual {v0, p3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "authCode"

    .line 419
    invoke-virtual {v0, p3, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "poundage"

    const-string p3, "0"

    .line 420
    invoke-virtual {v0, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "description"

    const-string p3, ""

    .line 421
    invoke-virtual {v0, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p2, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    new-instance p3, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10;

    invoke-direct {p3, p0, v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10;-><init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;Ljava/lang/String;)V

    invoke-virtual {p2, v0, p3}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->cashToOnline(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    .line 462
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 464
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p2

    .line 462
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
