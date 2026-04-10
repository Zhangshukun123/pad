.class public Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "MenuPresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;",
        "Lcom/ayma/commonerp/ui/activity/menu/MenuModel;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuPresenter;"
    }
.end annotation


# static fields
.field private static final CHECK_SELL_COUNTER_INTERVAL:I = 0x493e0

.field public static final CHECK_TOKEN_INTERVAL:I = 0x36ee80

.field private static final CHECK_UPLOAD_INTERVAL:I = 0x1388

.field private static final KEY_UPDATE_SIGN_IN_TIME_MILLIONS:Ljava/lang/String; = "updateSignInTimeMillions"

.field public static final RETRY_GET_TOKEN_INTERVAL:I = 0x2710

.field private static final RETRY_UPDATE_SELL_DATA_STATUE_TIMES_MAX:I = 0x5

.field private static final UPDATE_TOKEN_RETRY_TIMES:I = 0x7


# instance fields
.field private checkSignInStatuePresenter:Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter<",
            "Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private isUploadingSellData:Z

.field private orderPosition:Lcom/ayma/commonerp/bean/OrderPositionBean;

.field private retryUpdateSellDataStatueTimes:I

.field private updatePresenter:Lcom/ayma/commonerp/multiplex/update/MultiplexUpdatePresenter;

.field private updateTokenTryTimes:I

.field private final uploadRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 96
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->updateTokenTryTimes:I

    .line 84
    iput v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->retryUpdateSellDataStatueTimes:I

    .line 86
    iput-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isUploadingSellData:Z

    .line 90
    new-instance v1, Lcom/ayma/commonerp/ui/activity/menu/-$$Lambda$MenuPresenter$saDYY_8ggfDs-fBhpALYEGSXGQk;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/menu/-$$Lambda$MenuPresenter$saDYY_8ggfDs-fBhpALYEGSXGQk;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)V

    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->uploadRunnable:Ljava/lang/Runnable;

    .line 91
    new-instance v1, Lcom/ayma/commonerp/bean/OrderPositionBean;

    invoke-direct {v1}, Lcom/ayma/commonerp/bean/OrderPositionBean;-><init>()V

    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->orderPosition:Lcom/ayma/commonerp/bean/OrderPositionBean;

    .line 97
    new-instance v1, Lcom/ayma/commonerp/multiplex/update/MultiplexUpdatePresenter;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v2, Lcom/ayma/commonerp/base/IBaseView;

    invoke-direct {v1, p1, v2}, Lcom/ayma/commonerp/multiplex/update/MultiplexUpdatePresenter;-><init>(Landroid/content/Context;Lcom/ayma/commonerp/base/IBaseView;)V

    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->updatePresenter:Lcom/ayma/commonerp/multiplex/update/MultiplexUpdatePresenter;

    .line 98
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->initHandler()V

    .line 99
    iput v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->updateTokenTryTimes:I

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$10000(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$10100(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$10200(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$10300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$10400(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$10500(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$10600(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$10700(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$10800(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$10900(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$11000(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$11100(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$11200(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$11300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$11400(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$11500(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$11600(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$11700(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$11800(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$11900(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$12000(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$12100(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$12200(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$12300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$12400(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$12500(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$12600(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$12700(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$12800(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$12900(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$13000(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$13100(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$13200(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$13300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$13400(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$13500(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$13600(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$13700(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$13800(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$13900(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$14000(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$14100(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$14200(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$14300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$14400(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$14500(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$14600(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$14700(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$14800(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$14900(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$15000(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$15100(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$15200(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$15300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$15400(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$15500(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$15600(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$15700(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$15800(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$15900(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$16000(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$16100(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$16200(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$16300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$16400(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$16500(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$16600(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$16700(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$16800(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$16900(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$17000(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$17100(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$17200(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$17300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$17400(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Landroid/content/Context;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->checkSignInStatuePresenter:Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2702(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isUploadingSellData:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/commonerp/bean/OrderPositionBean;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->orderPosition:Lcom/ayma/commonerp/bean/OrderPositionBean;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->retryUpdateSellDataStatueTimes:I

    return p0
.end method

.method static synthetic access$2902(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;I)I
    .locals 0

    .line 75
    iput p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->retryUpdateSellDataStatueTimes:I

    return p1
.end method

.method static synthetic access$2908(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)I
    .locals 2

    .line 75
    iget v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->retryUpdateSellDataStatueTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->retryUpdateSellDataStatueTimes:I

    return v0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Landroid/content/Context;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Landroid/os/Handler;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3500(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3900(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4000(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4200(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4600(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4900(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5600(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5800(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6000(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6100(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6400(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->updateTokenTryTimes:I

    return p0
.end method

.method static synthetic access$6602(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;I)I
    .locals 0

    .line 75
    iput p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->updateTokenTryTimes:I

    return p1
.end method

.method static synthetic access$6700(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6800(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6900(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7000(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7100(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$7200(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7400(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7500(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$7600(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7700(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7800(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$7900(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8000(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8100(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$8200(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$8300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8400(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8500(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$8600(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8700(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8800(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8900(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$9000(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$9100(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$9200(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$9300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$9400(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$9500(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$9600(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Landroid/content/Context;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$9700(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$9800(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$9900(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method


# virtual methods
.method public checkAddGoodsPermission()V
    .locals 3

    .line 664
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showLoading()V

    .line 668
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->storeId:Ljava/lang/String;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$13;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$13;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)V

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->queryPermission(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public checkHandoverPermission()V
    .locals 4

    .line 623
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showLoading()V

    .line 627
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->storeId:Ljava/lang/String;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$12;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$12;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)V

    const-string v3, "handover"

    invoke-virtual {v0, v1, v3, v2}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->queryPermission(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public checkHandoverTrainAddReceipt(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/TrainInfo;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QueryReceiptBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;)V"
        }
    .end annotation

    move-object v10, p0

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 1555
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 1557
    iget-object v0, v10, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/TrainInfo;->getTrainName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object p2, v2, v1

    const-string v1, "\u63a5\u8d27\u4ea4\u8def%s(%s)\u6240\u9700\u8981\u6599\u5355\u5df2\u64cd\u4f5c\u5b8c\u6bd5\uff0c\u8fdb\u884c\u4ea4\u63a5\u64cd\u4f5c"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3, v3}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showQuickHandoverResult(Ljava/lang/String;IZ)V

    .line 1558
    iget-object v0, v10, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->dismissQuickHandoverAdd()V

    .line 1559
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->fetchWarehouseData(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;)V

    return-void

    .line 1562
    :cond_0
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 1563
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 1565
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v8, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ayma/commonerp/bean/QueryReceiptBean;

    .line 1566
    invoke-virtual {v9}, Lcom/ayma/commonerp/bean/QueryReceiptBean;->getStoreTypeCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v9}, Lcom/ayma/commonerp/bean/QueryReceiptBean;->getPostMark()Ljava/lang/String;

    move-result-object v9

    const-string v11, "\u672a\u63d0\u4ea4"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    if-le v8, v2, :cond_3

    .line 1571
    iget-object v0, v10, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-interface {v0, v3}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->setQuickHandoverLoading(Z)V

    .line 1572
    iget-object v0, v10, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->setQuickHandoverOptionEnable(Z)V

    .line 1573
    iget-object v0, v10, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/TrainInfo;->getTrainName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    aput-object p2, v5, v1

    aput-object v4, v5, v2

    const/4 v1, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v1

    const-string v1, "\u63a5\u8d27\u4ea4\u8def%s(%s)%s\u5df2\u6709%s\u5f20\u672a\u63d0\u4ea4\u7684\u8981\u6599\u5355\uff0c\u65e0\u6cd5\u8fdb\u884c\u4e0b\u4e00\u6b65\uff0c\u8bf7\u5148\u5904\u7406"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2, v3}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showQuickHandoverResult(Ljava/lang/String;IZ)V

    return-void

    .line 1576
    :cond_3
    invoke-interface {v7, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1577
    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 1578
    invoke-virtual/range {v0 .. v9}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->generateAddReceipt(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public checkNoUploadSellData()V
    .locals 2

    .line 917
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const-string v1, "\u6b63\u5728\u68c0\u67e5\u662f\u5426\u6709\u672a\u4e0a\u4f20\u7684\u8ba2\u5355\u6570\u636e"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showLoading(Ljava/lang/String;)V

    .line 921
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$18;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$18;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->queryNotUploadDataSize(Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public checkSellCounterOrder()V
    .locals 3

    .line 1236
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1239
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 1240
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    const-string v2, "trainId"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    const-string v2, "outDay"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "orderClass"

    const-string v2, "0"

    .line 1242
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$26;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$26;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)V

    invoke-virtual {v1, v0, v2}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->fetchSellCounterOrder(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public checkSellCounterStatue()V
    .locals 5

    .line 1197
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1200
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->trainName:Ljava/lang/String;

    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    new-instance v4, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$25;

    invoke-direct {v4, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$25;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->checkOpenShop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public checkSignStatue()V
    .locals 5

    .line 263
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->initSignInStatuePresenter()V

    .line 264
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->checkSignInStatuePresenter:Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->teamId:Ljava/lang/String;

    new-instance v4, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$5;

    invoke-direct {v4, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$5;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;->getSignInStatueFromLocal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public checkSimCardInfo()V
    .locals 1

    .line 1099
    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$22;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$22;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)V

    invoke-static {v0}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized checkToken()V
    .locals 4

    monitor-enter p0

    .line 790
    :try_start_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 791
    monitor-exit p0

    return-void

    .line 794
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->getLoginStatue()Z

    move-result v0

    .line 795
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u767b\u5f55\u72b6\u6001\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 797
    monitor-exit p0

    return-void

    .line 799
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    .line 800
    monitor-exit p0

    return-void

    .line 802
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    const-wide/32 v1, 0x36ee80

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->isLoginInvalid(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 803
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->context:Landroid/content/Context;

    const-string v1, "hadUpdatedToken"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ayma/base/util/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 804
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->context:Landroid/content/Context;

    const-string v1, "userCode"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/ayma/base/util/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 805
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-virtual {v1, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->queryPwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 806
    invoke-virtual {p0, v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->updateToken(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 808
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public checkUpdate(Z)V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->updatePresenter:Lcom/ayma/commonerp/multiplex/update/MultiplexUpdatePresenter;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$4;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$4;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;Z)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/multiplex/update/MultiplexUpdatePresenter;->checkUpdate(Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public commitAddReceipt(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/TrainInfo;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QueryReceiptBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptJsonBean;",
            ">;)V"
        }
    .end annotation

    move-object v10, p0

    move-object/from16 v3, p2

    .line 1663
    iget-object v0, v10, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/TrainInfo;->getTrainName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v6, 0x2

    aput-object p4, v2, v6

    const-string v7, "\u4e3a\u63a5\u8d27\u4ea4\u8def%s(%s)%s\u751f\u6210\u8981\u6599\u5355"

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x4

    invoke-interface {v0, v2, v7, v5}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showQuickHandoverResult(Ljava/lang/String;IZ)V

    .line 1664
    invoke-interface/range {p10 .. p10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/ReceiptJsonBean;

    .line 1665
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->getOptionQty()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setQty(Ljava/lang/String;)V

    goto :goto_0

    .line 1667
    :cond_0
    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11}, Ljava/util/TreeMap;-><init>()V

    .line 1668
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMdWithNoneSep()Ljava/lang/String;

    move-result-object v0

    const-string v2, "billDay"

    invoke-virtual {v11, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1670
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/TrainInfo;->getCompanyId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "companyId"

    invoke-virtual {v11, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1671
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/TrainInfo;->getCompany2Id()Ljava/lang/String;

    move-result-object v0

    const-string v2, "company2Id"

    invoke-virtual {v11, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1673
    invoke-interface/range {p3 .. p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "storeId"

    invoke-virtual {v11, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "storeType"

    move-object/from16 v2, p5

    .line 1674
    invoke-virtual {v11, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1675
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/TrainInfo;->getTrainId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "trainId"

    invoke-virtual {v11, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "outDay"

    .line 1676
    invoke-virtual {v11, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v1, [Ljava/lang/Object;

    .line 1677
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->trainName:Ljava/lang/String;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    aput-object v1, v0, v6

    const-string v1, "\u4ea4\u8def%s(%s)%s\u5feb\u901f\u4ea4\u63a5\u751f\u6210"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "description"

    invoke-virtual {v11, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "storeOutDetails"

    move-object/from16 v1, p10

    .line 1678
    invoke-virtual {v11, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1679
    iget-object v0, v10, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    move-object v12, v0

    check-cast v12, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    new-instance v13, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$32;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$32;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v12, v11, v13}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->postAddBill(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public dealCounterOrder(Lcom/ayma/commonerp/eventbus/CounterOrderEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1288
    :cond_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1291
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/eventbus/CounterOrderEvent;->isHaveUnprocessedCounterOrder()Z

    move-result v1

    invoke-virtual {p1}, Lcom/ayma/commonerp/eventbus/CounterOrderEvent;->getOrderCount()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showUnHandleCounterOrder(ZI)V

    return-void
.end method

.method public dealSale12306OrderTip(Lcom/ayma/commonerp/eventbus/Sale12306DotEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1299
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->show12306TipDot(Z)V

    return-void
.end method

.method public deleteOldSellData()V
    .locals 1

    .line 1067
    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$21;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$21;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)V

    invoke-static {v0}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteOldSignInRecord()V
    .locals 1

    .line 319
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->initSignInStatuePresenter()V

    .line 320
    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$6;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$6;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)V

    invoke-static {v0}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteOldSimCardInfo()V
    .locals 3

    .line 1177
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$24;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$24;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)V

    const/16 v2, 0x1e

    invoke-virtual {v0, v2, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->deleteOldSimCardInfo(ILcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public downloadPdaPermission()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ayma/commonerp/util/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    new-instance v0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v2, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-direct {v0, v1, v2}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;-><init>(Landroid/content/Context;Lcom/ayma/commonerp/base/IBaseView;)V

    .line 140
    new-instance v1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$2;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$2;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->downloadPdaPermissionData(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public downloadTeamSaleOutData()V
    .locals 3

    .line 575
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d\u9886\u6599\u5355..."

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showLoading(Ljava/lang/String;)V

    .line 579
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 580
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    const-string v2, "trainsId"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    const-string v2, "company2Id"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->getGoDate()Ljava/lang/String;

    move-result-object v1

    const-string v2, "outDate"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "classMax"

    const-string v2, ""

    .line 583
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "classMin"

    .line 584
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "goodsName"

    .line 585
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$11;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$11;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)V

    invoke-virtual {v1, v0, v2}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->downloadTeamSaleOutList(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public fetchHandoverTrainAddReceipt(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/TrainInfo;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1461
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/TrainInfo;->getTrainName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "\u67e5\u8be2\u63a5\u8d27\u4ea4\u8def%s(%s)\u662f\u5426\u5df2\u6709\u8981\u6599\u5355"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2, v3}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showQuickHandoverResult(Ljava/lang/String;IZ)V

    .line 1462
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 1463
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    const-string v2, "company2Id"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    sget-object v1, Lcom/ayma/commonerp/config/Constants;->RECEIPT_TYPE_MAP:Ljava/util/TreeMap;

    const-string v2, "\u73ed\u7ec4\u8981\u6599"

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "billType"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "teamId"

    const/4 v2, 0x0

    .line 1465
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/TrainInfo;->getTrainCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trainCode"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1467
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/TrainInfo;->getTrainId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trainId"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "outDay"

    .line 1468
    invoke-virtual {v0, v1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "postMark"

    const-string v2, ""

    .line 1469
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    new-instance v9, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V

    invoke-virtual {v1, v0, v9}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->fetchTrainAddReceipt(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public fetchSaleData(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/TrainInfo;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QueryReceiptBean;",
            ">;)V"
        }
    .end annotation

    move-object v8, p0

    .line 1509
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->trainName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->getGoDate()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "\u83b7\u53d6\u5f53\u524d\u4ea4\u8def%s(%s)\u9500\u552e\u6570\u636e"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2, v3}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showQuickHandoverResult(Ljava/lang/String;IZ)V

    .line 1510
    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    .line 1511
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    const-string v1, "company2Id"

    invoke-virtual {v9, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    const-string v1, "trainId"

    invoke-virtual {v9, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    const-string v1, "outDay"

    invoke-virtual {v9, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1514
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->teamId:Ljava/lang/String;

    const-string v1, "teamId"

    invoke-virtual {v9, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1515
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    move-object v10, v0

    check-cast v10, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    new-instance v11, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v10, v9, v11}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->getTeamTrainSellData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public fetchStoreList(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;)V
    .locals 4

    .line 1398
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const-string v1, "\u83b7\u53d6\u4ed3\u5e93\u5e93\u522b\u6570\u636e"

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showQuickHandoverResult(Ljava/lang/String;IZ)V

    .line 1399
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 1400
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    const-string v2, "company2Id"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1401
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$29;

    invoke-direct {v2, p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$29;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->fetchStoreList(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public fetchWarehouseData(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;)V
    .locals 5

    .line 1721
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->trainName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->getGoDate()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "\u83b7\u53d6\u5f53\u524d\u4ea4\u8def%s(%s)\u5e93\u5b58\u6570\u636e"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2, v3}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showQuickHandoverResult(Ljava/lang/String;IZ)V

    .line 1722
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 1723
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    const-string v2, "company2Id"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1724
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    const-string v2, "trainsId"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->getGoDate()Ljava/lang/String;

    move-result-object v1

    const-string v2, "outDate"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "classMax"

    const-string v2, ""

    .line 1726
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "classMin"

    .line 1727
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "goodsName"

    .line 1728
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1729
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;

    invoke-direct {v2, p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->queryTeamWarehouseStock(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public generateAddReceipt(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/TrainInfo;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QueryReceiptBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;)V"
        }
    .end annotation

    .line 1612
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1613
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    .line 1615
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getStoreType()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, p5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1616
    new-instance v3, Lcom/ayma/commonerp/bean/ReceiptJsonBean;

    invoke-direct {v3}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;-><init>()V

    .line 1617
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v4

    .line 1618
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setGoodsId(Ljava/lang/String;)V

    .line 1619
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setGoodsName(Ljava/lang/String;)V

    .line 1620
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setGoodsCode(Ljava/lang/String;)V

    .line 1621
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getShellife()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setShellife(I)V

    .line 1623
    :try_start_0
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getBirthday()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getShellife()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v0, v6}, Lcom/ayma/base/util/DateTimeUtils;->getSpecifiedDayAfterN(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setStopDay(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1625
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1628
    :goto_1
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getCostPrice()D

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setCostPrice(D)V

    .line 1629
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getCostPrice0()D

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setCostPrice0(D)V

    .line 1630
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getCostShuilv()D

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setCostShuilv(D)V

    .line 1632
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsPrice()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1633
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 1634
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    .line 1636
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSaleType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\u6b63\u5e38\u9500\u552e"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1637
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSalesShuilv()D

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setSalesShuilv(D)V

    .line 1638
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSalesPrice()D

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setSalesPrice(D)V

    .line 1639
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSalesPrice0()D

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setSalesPrice0(D)V

    .line 1644
    :cond_2
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getBirthday()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setBirthDay(Ljava/lang/String;)V

    .line 1645
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setQty(Ljava/lang/String;)V

    .line 1646
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setOptionQty(Ljava/lang/String;)V

    .line 1647
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getStock()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setAutualQty(Ljava/lang/String;)V

    const-string v0, ""

    .line 1648
    invoke-virtual {v3, v0}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setDescription(Ljava/lang/String;)V

    .line 1649
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    move-object/from16 v5, p5

    .line 1652
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    .line 1654
    invoke-virtual/range {v0 .. v7}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->checkHandoverTrainAddReceipt(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void

    :cond_4
    move-object v12, p0

    .line 1658
    iget-object v0, v12, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    move-object v1, v0

    check-cast v1, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v11}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->editQuickHandoverAddData(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public generateHandoverReceipt(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/TrainInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptJsonBean;",
            ">;)V"
        }
    .end annotation

    .line 1789
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->trainName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->getGoDate()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/TrainInfo;->getTrainName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const-string v7, "\u51c6\u5907\u5c06\u5f53\u524d\u4ea4\u8def%s(%s)\u5e93\u5b58\u4ea4\u63a5\u81f3%s(%s)"

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1, v4}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showQuickHandoverResult(Ljava/lang/String;IZ)V

    .line 1790
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 1791
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMdWithNoneSep()Ljava/lang/String;

    move-result-object v1

    const-string v2, "billDay"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1792
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    const-string v2, "companyId"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1793
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    const-string v2, "company2Id"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1794
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->teamId:Ljava/lang/String;

    const-string v2, "teamId"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1795
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->storeId:Ljava/lang/String;

    const-string v2, "storeId"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1796
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    const-string v2, "trainId"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1797
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->getGoDate()Ljava/lang/String;

    move-result-object v1

    const-string v2, "outDay"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1798
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/TrainInfo;->getTrainId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "toTrainId"

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "toOutDay"

    .line 1799
    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array p1, v3, [Ljava/lang/Object;

    .line 1800
    sget-object p2, Lcom/ayma/commonerp/app/AppUserData;->trainName:Ljava/lang/String;

    aput-object p2, p1, v4

    sget-object p2, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    aput-object p2, p1, v5

    sget-object p2, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    aput-object p2, p1, v6

    const-string p2, "\u4ea4\u8def%s(%s)%s\u901a\u8fc7\u5feb\u901f\u4ea4\u63a5\u751f\u6210"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "description"

    invoke-virtual {v0, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "trainOutDetails"

    .line 1801
    invoke-virtual {v0, p1, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1802
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$34;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$34;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)V

    invoke-virtual {p1, v0, p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->commitTeamHandoverData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public initHandler()V
    .locals 2

    .line 123
    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$1;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$1;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->handler:Landroid/os/Handler;

    return-void
.end method

.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->initModel()Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/ui/activity/menu/MenuModel;
    .locals 2

    .line 104
    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public initSignInStatuePresenter()V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->checkSignInStatuePresenter:Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v2, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-direct {v0, v1, v2}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;-><init>(Landroid/content/Context;Lcom/ayma/commonerp/base/IBaseView;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->checkSignInStatuePresenter:Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;

    :cond_0
    return-void
.end method

.method public judgeToSell(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->toRefund()V

    goto :goto_0

    .line 302
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->vipLargess()V

    goto :goto_0

    .line 299
    :cond_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->commonSell()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$new$0$MenuPresenter()V
    .locals 0

    .line 90
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->queryNeedUploadData()V

    return-void
.end method

.method public loadMenu()V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$3;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$3;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)V

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->fetchMenuPermission(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 109
    invoke-super {p0}, Lcom/ayma/commonerp/base/BasePresenter;->onCreate()V

    .line 110
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->checkSignStatue()V

    .line 111
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->deleteOldSignInRecord()V

    .line 112
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->deleteOldSellData()V

    .line 113
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->deleteOldSimCardInfo()V

    .line 114
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->checkToken()V

    .line 115
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->checkSellCounterStatue()V

    const/4 v0, 0x1

    .line 116
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->checkUpdate(Z)V

    .line 117
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 118
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->downloadPdaPermission()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1842
    invoke-super {p0}, Lcom/ayma/commonerp/base/BasePresenter;->onDestroy()V

    .line 1843
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 1844
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1846
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->checkSignInStatuePresenter:Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;

    if-eqz v0, :cond_1

    .line 1847
    invoke-virtual {v0}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;->onDestroy()V

    .line 1849
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 252
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->queryNeedUploadData()V

    .line 253
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->queryNotUploadDataSize()V

    return-void
.end method

.method public query12306Order(Z)V
    .locals 3

    .line 1304
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1308
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const-string v1, "\u67e5\u8be212306\u9884\u552e\u8ba2\u5355\u4e2d"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showLoading(Ljava/lang/String;)V

    .line 1310
    :cond_1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 1311
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    const-string v2, "trainId"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    const-string v2, "outDay"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "orderClass"

    const-string v2, "0"

    .line 1313
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1314
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$27;

    invoke-direct {v2, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$27;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;Z)V

    invoke-virtual {v1, v0, v2}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->query12306PreSellData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public declared-synchronized queryNeedUploadData()V
    .locals 3

    monitor-enter p0

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->TAG:Ljava/lang/String;

    const-string v1, "\u9500\u552e\u6570\u636e\u68c0\u67e5"

    invoke-static {v0, v1}, Lcom/ayma/commonerp/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->orderPosition:Lcom/ayma/commonerp/bean/OrderPositionBean;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$8;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$8;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)V

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->queryNeedUploadSellData(Lcom/ayma/commonerp/bean/OrderPositionBean;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public queryNotUploadDataSize()V
    .locals 2

    .line 361
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$7;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$7;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->queryNotUploadDataSize(Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public queryTakeOffPermission(ZLjava/lang/String;)V
    .locals 3

    .line 706
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->storeId:Ljava/lang/String;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$14;

    invoke-direct {v2, p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$14;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;ZLjava/lang/String;)V

    const-string p1, "isOut"

    invoke-virtual {v0, v1, p1, v2}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->queryPermission(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public queryTrainForQuickHandover(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1351
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1354
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->setQuickHandoverLoading(Z)V

    .line 1355
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->setQuickHandoverOptionEnable(Z)V

    .line 1356
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const/4 v2, 0x4

    const-string v3, "\u6821\u9a8c\u63a5\u8d27\u8f66\u6b21\u4e2d"

    invoke-interface {v0, v3, v2, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showQuickHandoverResult(Ljava/lang/String;IZ)V

    .line 1357
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$28;

    invoke-direct {v1, p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$28;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->queryTrain(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public saveSignInStatue(ZZZI)V
    .locals 8

    .line 1009
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1012
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    if-eqz p3, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    const-string v1, "\u6b63\u5728\u4fdd\u5b58\u7b7e\u5230\u8bb0\u5f55"

    :goto_0
    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showLoading(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->initSignInStatuePresenter()V

    .line 1014
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->checkSignInStatuePresenter:Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;

    new-instance v7, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$20;

    move-object v1, v7

    move-object v2, p0

    move v3, p3

    move v4, p1

    move v5, p4

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$20;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;ZZIZ)V

    invoke-virtual {v0, p1, v7}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;->saveSignInStatue(ZLcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public saveSimCardInfo(Ljava/lang/String;)V
    .locals 3

    .line 1136
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 1137
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    const-string v2, "company2Id"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    const-string v2, "trainId"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    const-string v2, "outDay"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    sget-object v1, Lcom/ayma/commonerp/config/Constants;->DEVICE_SN:Ljava/lang/String;

    const-string v2, "merchantCode"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cardCode"

    .line 1141
    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    const-string v2, "employeeCode"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$23;

    invoke-direct {v2, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$23;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->uploadSimCardInfo(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public saveUpdateSignInTime()V
    .locals 3

    .line 1094
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "updateSignInTimeMillions"

    invoke-static {v0, v2, v1}, Lcom/ayma/base/util/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public skipAddReceipt(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/TrainInfo;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QueryReceiptBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;)V"
        }
    .end annotation

    move-object v8, p0

    .line 1710
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/TrainInfo;->getTrainName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v4, 0x2

    aput-object p4, v1, v4

    const-string v4, "\u8df3\u8fc7%s(%s)%s\u751f\u6210\u8981\u6599\u5355"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2, v3}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showQuickHandoverResult(Ljava/lang/String;IZ)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    .line 1711
    invoke-virtual/range {v0 .. v7}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->checkHandoverTrainAddReceipt(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public skipHandover()V
    .locals 4

    .line 1835
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->setQuickHandoverLoading(Z)V

    .line 1836
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->setQuickHandoverOptionEnable(Z)V

    .line 1837
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const-string v3, "\u4e0d\u8fdb\u884c\u4ea4\u63a5\u64cd\u4f5c\uff0c\u7ed3\u675f"

    invoke-interface {v0, v3, v2, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showQuickHandoverResult(Ljava/lang/String;IZ)V

    return-void
.end method

.method public startCheckUploadRunnable(J)V
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 349
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->uploadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 350
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->uploadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public takeOff(Ljava/lang/String;)V
    .locals 3

    .line 744
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const-string v1, "\u6b63\u5728\u9000\u4e58"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showLoading(Ljava/lang/String;)V

    .line 748
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 749
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    const-string v2, "company2Id"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->fleetId:Ljava/lang/String;

    const-string v2, "fleetId"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->teamId:Ljava/lang/String;

    const-string v2, "teamId"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    const-string v2, "trainId"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    const-string v2, "outDay"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "endDay"

    .line 754
    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    sget-object p1, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    const-string v1, "employeeCode"

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$15;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$15;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)V

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->takeOff(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public updateOrderPayStatue(Z)V
    .locals 3

    .line 866
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 870
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const-string v1, "\u6b63\u5728\u66f4\u65b0\u8ba2\u5355\u72b6\u6001"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showLoading(Ljava/lang/String;)V

    .line 872
    :cond_1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 873
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->userId:Ljava/lang/String;

    const-string v2, "employeeId"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    const-string v2, "outDay"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    const-string v2, "trainId"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$17;

    invoke-direct {v2, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$17;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;Z)V

    invoke-virtual {v1, v0, v2}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->updateOrderPayStatue(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public declared-synchronized updateSellDataStatue(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 526
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;Ljava/util/List;)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->updateSellDataUploadStatue(Ljava/util/List;Lcom/ayma/base/mvp/ModelCallBack;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateSignInStatue(ZI)V
    .locals 5

    .line 959
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 964
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->context:Landroid/content/Context;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "updateSignInTimeMillions"

    invoke-static {v0, v2, v1}, Lcom/ayma/base/util/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 965
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x1b7740

    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    .line 966
    invoke-virtual {p0, p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->judgeToSell(I)V

    return-void

    .line 970
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    if-eqz p1, :cond_2

    const-string v1, "\u6b63\u5728\u52a0\u8f7d..."

    goto :goto_0

    :cond_2
    const-string v1, "\u6b63\u5728\u66f4\u65b0\u7b7e\u5230\u72b6\u6001"

    :goto_0
    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showLoading(Ljava/lang/String;)V

    .line 971
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->initSignInStatuePresenter()V

    .line 972
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->checkSignInStatuePresenter:Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$19;

    invoke-direct {v1, p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$19;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;ZI)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;->getSignInStatueFromServer(Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public updateToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 815
    iget v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->updateTokenTryTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->updateTokenTryTimes:I

    .line 816
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5c1d\u8bd5\u66f4\u65b0token\u6b21\u6570\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->updateTokenTryTimes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ayma/commonerp/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    if-nez v0, :cond_0

    goto :goto_0

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$16;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->updateToken(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized uploadSellDataToServer(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->TAG:Ljava/lang/String;

    const-string v1, "\u4e0a\u4f20\u6570\u636e"

    invoke-static {v0, v1}, Lcom/ayma/commonerp/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isUploadingSellData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 433
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 435
    :try_start_1
    iput-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->isUploadingSellData:Z

    .line 441
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    const/4 v2, 0x0

    .line 442
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/bean/SellDetailBean;

    .line 443
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v4, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSaleType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->querySaleTypeCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 444
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_1

    .line 445
    monitor-exit p0

    return-void

    .line 447
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SellDetailBean;->getQty()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v9, v5, v7

    if-lez v9, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const-string v2, "1"

    goto :goto_1

    :cond_3
    const-string v2, "2"

    .line 451
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 452
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ayma/commonerp/bean/SellDetailBean;

    .line 453
    invoke-virtual {v9}, Lcom/ayma/commonerp/bean/SellDetailBean;->getQty()D

    move-result-wide v10

    invoke-virtual {v9}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSalesPrice()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v10

    invoke-static {v7, v8, v10, v11}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v7

    .line 454
    new-instance v10, Lcom/ayma/commonerp/bean/OnlinePayJsonBean;

    invoke-direct {v10}, Lcom/ayma/commonerp/bean/OnlinePayJsonBean;-><init>()V

    .line 455
    invoke-virtual {v9}, Lcom/ayma/commonerp/bean/SellDetailBean;->getGoodsId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/ayma/commonerp/bean/OnlinePayJsonBean;->setGoodsId(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v9}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSupplierId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/ayma/commonerp/bean/OnlinePayJsonBean;->setSupplierId(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v9}, Lcom/ayma/commonerp/bean/SellDetailBean;->getBarcode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/ayma/commonerp/bean/OnlinePayJsonBean;->setBarcode(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v9}, Lcom/ayma/commonerp/bean/SellDetailBean;->getQty()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/ayma/commonerp/bean/OnlinePayJsonBean;->setQty(D)V

    .line 459
    invoke-virtual {v9}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSalesPrice()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/ayma/commonerp/bean/OnlinePayJsonBean;->setSalePriceReal(D)V

    .line 460
    invoke-virtual {v9}, Lcom/ayma/commonerp/bean/SellDetailBean;->getScanDate()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/ayma/commonerp/bean/OnlinePayJsonBean;->setScanDate(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v9}, Lcom/ayma/commonerp/bean/SellDetailBean;->getCheckRepeat()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/ayma/commonerp/bean/OnlinePayJsonBean;->setCheckRepeat(Ljava/lang/String;)V

    .line 463
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 465
    :cond_4
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-string v8, "lineOrderNo"

    .line 466
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SellDetailBean;->getOrderNo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "paymentType"

    .line 467
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SellDetailBean;->getPaymentTypeValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "tradeType"

    .line 468
    invoke-virtual {v1, v8, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "companyId"

    .line 469
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SellDetailBean;->getCompanyId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v2, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "company2Id"

    .line 470
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SellDetailBean;->getCompany2Id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v2, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "storeId"

    .line 471
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SellDetailBean;->getStoreId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v2, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "saleType"

    .line 472
    invoke-virtual {v1, v2, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "saleChannel"

    const-string v4, "A"

    .line 473
    invoke-virtual {v1, v2, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "fleetId"

    .line 474
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SellDetailBean;->getFleetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "teamId"

    .line 475
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SellDetailBean;->getTeamId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "trainId"

    .line 476
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SellDetailBean;->getTrainsId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "outDay"

    .line 477
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SellDetailBean;->getOutDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "employeeId"

    .line 478
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SellDetailBean;->getEmployeeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "totalAmount"

    .line 479
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "receivableAmount"

    .line 480
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SellDetailBean;->getPrefrentialAmount()D

    move-result-wide v8

    const-string v2, "receiptAmount"

    .line 482
    invoke-static {v6, v7, v8, v9}, Lcom/ayma/base/util/ArithUtil;->sub(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "prefrentialAmount"

    .line 483
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "poundage"

    const-string v4, "0"

    .line 484
    invoke-virtual {v1, v2, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "salePayState"

    if-eqz v0, :cond_5

    const-string v4, "1"

    goto :goto_3

    :cond_5
    const-string v4, "2"

    .line 485
    :goto_3
    invoke-virtual {v1, v2, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "returnRequestState"

    if-eqz v0, :cond_6

    const-string v0, "0"

    goto :goto_4

    :cond_6
    const-string v0, "2"

    .line 486
    :goto_4
    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "returnRequestReason"

    const-string v2, ""

    .line 487
    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "description"

    const-string v2, ""

    .line 488
    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "createDate"

    .line 490
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSellTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "checkRepeat"

    .line 491
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SellDetailBean;->getOrderCheckRepeat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "lineOrderDetailPers"

    .line 493
    invoke-virtual {v1, v0, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$9;

    invoke-direct {v2, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$9;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->uploadSellDataToServer(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 515
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
