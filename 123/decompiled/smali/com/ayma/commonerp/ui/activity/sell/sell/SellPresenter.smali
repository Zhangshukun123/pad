.class public Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "SellPresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;",
        "Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellPresenter;"
    }
.end annotation


# static fields
.field public static final PAY_RESULT_SUCCESS:I = 0x3e7

.field public static final QUERY_ORDER_DELAYED:I = 0x7d0

.field public static final QUERY_ORDER_RETRY_TIMES:I = 0x3


# instance fields
.field private handler:Landroid/os/Handler;

.field private isCancelQuery:Z

.field private isCommittingGoods:Z

.field private isSearchingGoods:Z

.field private orderNo:Ljava/lang/String;

.field private pageType:Ljava/lang/String;

.field private queryTimes:I

.field private saleChannel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 62
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 50
    iput v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->queryTimes:I

    const-string v0, "00"

    .line 53
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->saleChannel:Ljava/lang/String;

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isSearchingGoods:Z

    .line 56
    iput-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isCommittingGoods:Z

    .line 57
    iput-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isCancelQuery:Z

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->handler:Landroid/os/Handler;

    .line 64
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$10000(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$10100(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$10200(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$10300(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$10400(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$10500(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$10600(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$10700(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$10800(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$10900(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$11000(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$11100(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$11200(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$11300(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$11400(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$11500(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$11600(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$11700(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$11800(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$11900(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$12000(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$12100(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$12200(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$12300(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$12400(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$12500(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$12600(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$12700(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isSearchingGoods:Z

    return p1
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3800(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4000(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4100(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4402(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isCommittingGoods:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5600(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6100(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6600(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6700(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6800(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6900(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7000(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->orderNo:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$7002(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->orderNo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7200(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$7300(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7400(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$7500(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7600(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7700(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7800(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7900(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$8000(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8100(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8200(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8300(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8400(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$8500(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8600(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8700(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8800(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$8900(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$9000(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$9100(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->queryTimes:I

    return p0
.end method

.method static synthetic access$9108(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)I
    .locals 2

    .line 46
    iget v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->queryTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->queryTimes:I

    return v0
.end method

.method static synthetic access$9202(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isCancelQuery:Z

    return p1
.end method

.method static synthetic access$9300(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$9400(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$9500(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$9600(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$9700(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$9800(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$9900(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method


# virtual methods
.method public canOnlinePay()Z
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->canOnlinePay()Z

    move-result v0

    return v0
.end method

.method public cancelPayQueryRequest(Ljava/lang/String;)V
    .locals 2

    .line 740
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$11;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$11;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->cancelPayQueryRequest(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public checkSignInStatue()V
    .locals 5

    .line 112
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    const-string v1, "\u6b63\u5728\u521d\u59cb\u5316..."

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showLoading(Ljava/lang/String;)V

    .line 116
    new-instance v0, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v2, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-direct {v0, v1, v2}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;-><init>(Landroid/content/Context;Lcom/ayma/commonerp/base/IBaseView;)V

    .line 117
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->teamId:Ljava/lang/String;

    new-instance v4, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$1;

    invoke-direct {v4, p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$1;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;->getSignInStatueFromLocal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public commitGoodsChange(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 343
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCompany2Id(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    move-object v1, v0

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    new-instance v7, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$4;

    invoke-direct {v7, p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$4;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)V

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->addGoods(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public commitSellRecord(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 7

    .line 411
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 414
    :cond_0
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isCommittingGoods:Z

    if-eqz v0, :cond_1

    .line 415
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    const-string p2, "\u8bf7\u52ff\u91cd\u590d\u63d0\u4ea4"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showTipsOnTop(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 418
    iput-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isCommittingGoods:Z

    .line 419
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    const-string v1, "\u6b63\u5728\u63d0\u4ea4..."

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showLoading(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    move-object v1, v0

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    new-instance v6, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$6;

    invoke-direct {v6, p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$6;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)V

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->commitGoodsByList(Ljava/lang/String;Ljava/lang/String;DLcom/ayma/base/mvp/ModelCallBack;)V

    return-void
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

    .line 316
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 319
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 320
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    .line 321
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v2, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getCompany2Id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->queryGoodsCompany(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 322
    new-instance v3, Lcom/ayma/commonerp/bean/SellSelectGoodsBean;

    invoke-direct {v3}, Lcom/ayma/commonerp/bean/SellSelectGoodsBean;-><init>()V

    .line 323
    invoke-virtual {v3, v1}, Lcom/ayma/commonerp/bean/SellSelectGoodsBean;->setGoodsBean(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;)V

    .line 324
    invoke-virtual {v3, v2}, Lcom/ayma/commonerp/bean/SellSelectGoodsBean;->setCompanyName(Ljava/lang/String;)V

    .line 325
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->hideLoading()V

    .line 329
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showSelectGoodsPopup(Ljava/util/List;)V

    return-void
.end method

.method public dealPayResult(Lcom/ayma/commonerp/eventbus/SaveSellServiceResult;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 783
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isViewAttach()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 787
    :cond_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->deleteAllGoods()V

    return-void
.end method

.method public dealSelectedGoods(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_2

    .line 797
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showLoading()V

    .line 801
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->getPriceType()Ljava/lang/String;

    move-result-object v0

    .line 802
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->getPayWay()Ljava/lang/String;

    move-result-object v1

    .line 803
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/bean/SellDetailBean;

    .line 804
    invoke-virtual {v3, v0}, Lcom/ayma/commonerp/bean/SellDetailBean;->setSaleType(Ljava/lang/String;)V

    .line 805
    invoke-virtual {v3, v1}, Lcom/ayma/commonerp/bean/SellDetailBean;->setPaymentType(Ljava/lang/String;)V

    .line 806
    sget-object v4, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/ayma/commonerp/bean/SellDetailBean;->setCompany2Id(Ljava/lang/String;)V

    .line 807
    sget-object v4, Lcom/ayma/commonerp/app/AppUserData;->storeId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/ayma/commonerp/bean/SellDetailBean;->setStoreId(Ljava/lang/String;)V

    goto :goto_0

    .line 809
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->getReturnStatue()Z

    move-result v1

    new-instance v2, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$12;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$12;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->addGoods(Ljava/util/List;ZLcom/ayma/base/mvp/ModelCallBack;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public deleteAllGoods()V
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$5;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$5;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->clearAllGoods(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public deleteGoods(Ljava/lang/String;)V
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$7;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$7;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->deleteGoods(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public getPriceTypeCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->getSaleTypeCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public init()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->init()V

    .line 95
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->pageType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->getSellTypeList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {v1, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->initSellTypeSpinner(Ljava/util/List;)V

    .line 102
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->getSellData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->initRlv(Ljava/util/List;)V

    return-void

    .line 97
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    const-string v1, "\u9500\u552e\u7c7b\u578b\u83b7\u53d6\u51fa\u9519\uff0c\u8bf7\u5c1d\u8bd5\u91cd\u65b0\u4e0b\u8f7d\u57fa\u7840\u8d44\u6599"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showToast(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->finishActivity()V

    return-void
.end method

.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->initModel()Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;
    .locals 2

    .line 69
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreate(Landroid/content/Intent;)V
    .locals 6

    const-string v0, "pageType"

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->pageType:Ljava/lang/String;

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "\u6b63\u5e38"

    if-eqz p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->pageType:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->pageType:Ljava/lang/String;

    const/4 v1, -0x1

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x14bfd

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_3

    const v3, 0xd5f35

    if-eq v2, v3, :cond_2

    const v0, 0x2c9ffb8

    if-eq v2, v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "12306"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const-string v0, "VIP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x2

    :cond_4
    :goto_1
    if-eqz v1, :cond_7

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_5

    goto :goto_2

    :cond_5
    const-string p1, "02"

    .line 84
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->saleChannel:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const-string p1, "01"

    .line 81
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->saleChannel:Ljava/lang/String;

    goto :goto_2

    :cond_7
    const-string p1, "00"

    .line 78
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->saleChannel:Ljava/lang/String;

    .line 87
    :goto_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showTitle()V

    .line 88
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->init()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 831
    invoke-super {p0}, Lcom/ayma/commonerp/base/BasePresenter;->onDestroy()V

    .line 832
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 833
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 834
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->handler:Landroid/os/Handler;

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->clearRequest()V

    .line 837
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public openOnlinePay(ZD)V
    .locals 16

    move-object/from16 v0, p0

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isViewAttach()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 511
    :cond_0
    iget-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->getTotalPrice()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_1

    .line 512
    iget-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    const-string v2, "\u4ef7\u683c\u4e3a0\u65f6\u4e0d\u53ef\u4f7f\u7528\u7ebf\u4e0a\u652f\u4ed8"

    invoke-interface {v1, v2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showToast(Ljava/lang/String;)V

    return-void

    .line 515
    :cond_1
    iget-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    const-string v2, "\u6b63\u5728\u5904\u7406..."

    invoke-interface {v1, v2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showLoading(Ljava/lang/String;)V

    .line 516
    iget-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->generateSaleGoodsPayJson()Ljava/lang/String;

    move-result-object v6

    .line 517
    iget-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->getPriceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->getPriceTypeCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 518
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 519
    iget-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->hideLoading()V

    .line 520
    iget-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    const-string v2, "\u9500\u552e\u7c7b\u578b\u83b7\u53d6\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5"

    invoke-interface {v1, v2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showToast(Ljava/lang/String;)V

    return-void

    .line 526
    :cond_2
    iget-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    move-object v2, v1

    check-cast v2, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    const/4 v4, 0x1

    iget-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->getSellData()Ljava/util/List;

    move-result-object v5

    iget-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->getTotalPrice()D

    move-result-wide v7

    iget-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->getTotalCount()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    iget-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->generateOrderNo()Ljava/lang/String;

    move-result-object v11

    const-string v3, ""

    const-string v12, ""

    move/from16 v13, p1

    move-wide/from16 v14, p2

    invoke-interface/range {v2 .. v15}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showInputPayCodeDialog(Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZD)V

    return-void
.end method

.method public pay(Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 3

    .line 555
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 556
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->generateOrderNo()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->orderNo:Ljava/lang/String;

    const-string v2, "lineOrderNo"

    .line 557
    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tradeType"

    const-string v2, "1"

    .line 558
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMdWithNoneSep()Ljava/lang/String;

    move-result-object v1

    const-string v2, "orderDay"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    const-string v2, "companyId"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    const-string v2, "company2Id"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->storeId:Ljava/lang/String;

    const-string v2, "storeId"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "saleType"

    .line 563
    invoke-virtual {v0, v1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "paymentType"

    const-string v1, "0"

    .line 565
    invoke-virtual {v0, p2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "saleChannel"

    const-string v2, "A"

    .line 566
    invoke-virtual {v0, p2, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    sget-object p2, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    const-string v2, "trainId"

    invoke-virtual {v0, v2, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->getGoDate()Ljava/lang/String;

    move-result-object p2

    const-string v2, "outDay"

    invoke-virtual {v0, v2, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    sget-object p2, Lcom/ayma/commonerp/app/AppUserData;->fleetId:Ljava/lang/String;

    const-string v2, "fleetId"

    invoke-virtual {v0, v2, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    sget-object p2, Lcom/ayma/commonerp/app/AppUserData;->teamId:Ljava/lang/String;

    const-string v2, "teamId"

    invoke-virtual {v0, v2, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    sget-object p2, Lcom/ayma/commonerp/app/AppUserData;->userId:Ljava/lang/String;

    const-string v2, "employeeId"

    invoke-virtual {v0, v2, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string v2, "totalAmount"

    invoke-virtual {v0, v2, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string v2, "receivableAmount"

    invoke-virtual {v0, v2, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    invoke-static {p3, p4, p5, p6}, Lcom/ayma/base/util/ArithUtil;->sub(DD)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p3, "receiptAmount"

    invoke-virtual {v0, p3, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p3, "prefrentialAmount"

    invoke-virtual {v0, p3, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "poundage"

    .line 576
    invoke-virtual {v0, p2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "description"

    const-string p3, ""

    .line 577
    invoke-virtual {v0, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p2, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    invoke-virtual {p2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->generateSaleGoods()Ljava/util/List;

    move-result-object p2

    const-string p3, "orderDetails"

    invoke-virtual {v0, p3, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "authCode"

    .line 579
    invoke-virtual {v0, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$8;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$8;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)V

    invoke-virtual {p1, v0, p2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->pay(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public queryOrderDelayed(Ljava/lang/String;)V
    .locals 3

    .line 632
    iget-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isCancelQuery:Z

    if-eqz p1, :cond_0

    .line 633
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->hideLoading()V

    .line 634
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->hidePayLoading()V

    .line 635
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->setPayDialogBtnEnable(Z)V

    .line 636
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->setPayQueryEnable(Z)V

    return-void

    .line 639
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$9;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$9;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public queryOrderStatue()V
    .locals 3

    .line 653
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 656
    :cond_0
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isCancelQuery:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 657
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    const-string v2, "\u67e5\u8be2\u5df2\u53d6\u6d88"

    invoke-interface {v0, v2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showToast(Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->hideLoading()V

    .line 659
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->hidePayLoading()V

    .line 660
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->setPayDialogBtnEnable(Z)V

    .line 661
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->setPayQueryEnable(Z)V

    return-void

    .line 664
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->orderNo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 665
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    const-string v2, "\u8ba2\u5355\u53f7\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u67e5\u8be2\u72b6\u6001"

    invoke-interface {v0, v2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showToast(Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->setPayDialogBtnEnable(Z)V

    .line 667
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->setPayQueryEnable(Z)V

    .line 668
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->hideLoading()V

    .line 669
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->hidePayLoading()V

    return-void

    .line 672
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7b2c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->queryTimes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u6b21\u67e5\u8be2\u8ba2\u5355\u652f\u4ed8\u7ed3\u679c...\n\u8bf7\u786e\u8ba4\u65c5\u5ba2\u652f\u4ed8\u6210\u529f\u540e\u518d\u7ed9\u4e88\u5546\u54c1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "payQuery"

    invoke-interface {v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showPayLoading(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 674
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->orderNo:Ljava/lang/String;

    const-string v2, "lineOrderNo"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$10;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)V

    invoke-virtual {v1, v0, v2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->queryOrder(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public resetQueryTimes()V
    .locals 1

    const/4 v0, 0x1

    .line 735
    iput v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->queryTimes:I

    return-void
.end method

.method public searchGoods(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 17

    move-object/from16 v8, p0

    .line 216
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    const-string v1, "\u5546\u54c1\u6761\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showTipsOnTop(Ljava/lang/String;)V

    return-void

    .line 220
    :cond_0
    iget-boolean v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isSearchingGoods:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 223
    iput-boolean v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isSearchingGoods:Z

    .line 224
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    move-object v9, v0

    check-cast v9, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    sget-object v10, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    sget-object v14, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    iget-object v15, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->saleChannel:Ljava/lang/String;

    new-instance v16, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move/from16 v3, p7

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$3;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v11, p1

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    invoke-virtual/range {v9 .. v16}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->searchGoods(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public setCancelQuery(Z)V
    .locals 0

    .line 880
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isCancelQuery:Z

    return-void
.end method

.method public sortList(IZLandroid/view/View;)V
    .locals 7

    .line 842
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->getSellData()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 846
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 850
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    const-string v1, "\u6b63\u5728\u6392\u5e8f"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showLoading(Ljava/lang/String;)V

    .line 851
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    move-object v1, v0

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    new-instance v6, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$13;

    invoke-direct {v6, p0, p3}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$13;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;Landroid/view/View;)V

    const-string v4, ""

    move v3, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->sortList(Ljava/util/List;ILjava/lang/String;ZLcom/ayma/base/mvp/ModelCallBack;)V

    return-void

    .line 847
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    const-string p2, "\u5f53\u524d\u6ca1\u6709\u6570\u636e\u53ef\u6392\u5e8f"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public updateGoodsCount(I)V
    .locals 4

    .line 534
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->isViewAttach()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 537
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->calculateTotalCountAndPrice()V

    .line 538
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->getTotalCount()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v2, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    invoke-virtual {v2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->getTotalPrice()D

    move-result-wide v2

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showTotalCountAndTotalPrice(DD)V

    return-void
.end method

.method public verifyGoods()V
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->trainName:Ljava/lang/String;

    new-instance v3, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$2;

    invoke-direct {v3, p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$2;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->verifyPickUpData(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method
