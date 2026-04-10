.class public Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "TeamReturnPresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;",
        "Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnPresenter;"
    }
.end annotation


# static fields
.field private static final WHAT_FILTER_GOODS_DATA_FAIL:I = 0x1b1

.field private static final WHAT_FILTER_GOODS_DATA_SUCCESS:I = 0x1b0


# instance fields
.field private handler:Landroid/os/Handler;

.field private isCanAddForOtherTrain:Z

.field private pageType:Ljava/lang/String;

.field private priceType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isCanAddForOtherTrain:Z

    const-string p1, "\u6b63\u5e38\u9500\u552e"

    .line 44
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->priceType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$10000(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$10100(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isCanAddForOtherTrain:Z

    return p1
.end method

.method static synthetic access$10200(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$10300(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$10400(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$10500(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$10600(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$10700(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$10800(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$10900(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$11000(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$11100(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$11200(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$11300(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$11400(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$11500(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$11600(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$11700(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$11800(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$11900(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$12000(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$12100(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$12200(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$12300(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$12400(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$12500(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$12600(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$12700(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$12800(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$12900(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$13000(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$13100(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$13200(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$13300(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$13400(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$13500(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$13600(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$13700(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$13800(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$13900(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$14000(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$14100(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$14200(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$14300(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$14400(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$14500(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$14600(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$14700(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$14800(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$14900(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$15000(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$15100(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$15200(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$15300(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$15400(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$15500(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$15600(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$15700(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$15800(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$15900(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$16000(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$16100(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$16200(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$16300(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$16400(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$16500(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$16600(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$16700(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->pageType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3800(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4200(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5100(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5400(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6000(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6300(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6600(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6700(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6800(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6900(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7000(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7100(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$7200(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$7300(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7400(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$7500(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7600(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7700(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$7800(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7900(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8000(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$8100(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$8200(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8300(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8400(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8500(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$8600(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8700(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$8800(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$8900(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$9000(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$9100(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$9200(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$9300(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$9400(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$9500(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$9600(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$9700(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$9800(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$9900(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

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

    .line 215
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->showLoading()V

    .line 219
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$4;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$4;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->addSelectGoodsToList(Ljava/util/List;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public calculateAmount()V
    .locals 2

    .line 492
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$8;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$8;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->calculateAmount(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public clearAllGoods()V
    .locals 2

    .line 731
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    const-string v1, "\u6b63\u5728\u6e05\u7a7a\u5217\u8868..."

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->showLoading(Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$13;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$13;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->clearAllData(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public dealSelectGoodsResult(Lcom/ayma/commonerp/eventbus/ReceiptSelectGoodsResult;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 263
    :cond_0
    invoke-virtual {p1}, Lcom/ayma/commonerp/eventbus/ReceiptSelectGoodsResult;->getGoodsList()Ljava/util/List;

    move-result-object p1

    .line 264
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->addSelectGoods(Ljava/util/List;)V

    return-void
.end method

.method public deleteAll()V
    .locals 2

    .line 429
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->showLoading()V

    .line 433
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$7;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$7;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->clearAllData(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public filterGoodsByStoreType(Ljava/lang/String;)V
    .locals 2

    .line 797
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    const-string v1, "\u7b5b\u9009\u6570\u636e\u4e2d"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->showLoading(Ljava/lang/String;)V

    .line 801
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$15;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$15;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->filterDataByStoreType(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public filterGoodsDate(Ljava/lang/String;)V
    .locals 2

    .line 773
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    const-string v1, "\u6b63\u5728\u8fc7\u6ee4\u5546\u54c1\u6570\u636e..."

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->showLoading(Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$14;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$14;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->filerGoodsData(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public getStockNameByCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 833
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->getStockNameByCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStoreList(Ljava/lang/String;)V
    .locals 2

    .line 170
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    const-string v1, "\u6b63\u5728\u83b7\u53d6\u4ed3\u5e93\u5217\u8868"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->showLoading(Ljava/lang/String;)V

    .line 174
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "company2Id"

    .line 175
    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$3;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$3;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)V

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->postGetStoreList(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public initBaseData(Ljava/lang/String;)V
    .locals 3

    .line 80
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->showLoading()V

    .line 84
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->storeId:Ljava/lang/String;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$1;

    invoke-direct {v2, p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$1;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;Ljava/lang/String;)V

    const-string p1, "moveRequire"

    invoke-virtual {v0, v1, p1, v2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->queryPermission(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public initHandler()V
    .locals 2

    .line 134
    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$2;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$2;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->handler:Landroid/os/Handler;

    return-void
.end method

.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->initModel()Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;
    .locals 2

    .line 53
    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public isCanAddForOtherTrain()Z
    .locals 1

    .line 726
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isCanAddForOtherTrain:Z

    return v0
.end method

.method public onCreate(Landroid/content/Intent;)V
    .locals 1

    .line 58
    invoke-super {p0}, Lcom/ayma/commonerp/base/BasePresenter;->onCreate()V

    const-string v0, "pageType"

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->pageType:Ljava/lang/String;

    const-string v0, "goodsIn"

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1000b7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->pageType:Ljava/lang/String;

    const-string v0, "returnWarehouse"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 64
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1000b8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 70
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->initBaseData(Ljava/lang/String;)V

    return-void

    .line 66
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    const-string v0, "\u64cd\u4f5c\u9519\u8bef"

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->showToast(Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->finishActivity()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 250
    invoke-super {p0}, Lcom/ayma/commonerp/base/BasePresenter;->onDestroy()V

    .line 251
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public query(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 516
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->hideSoftKeyboard()V

    .line 520
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->pageType:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x2730c8d

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    const v3, 0xc57231b

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "goodsIn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string v2, "returnWarehouse"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, v4, :cond_4

    .line 528
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    const-string p2, ""

    const-string p3, "\u64cd\u4f5c\u9519\u8bef"

    const-string v0, "\u786e\u5b9a"

    invoke-interface {p1, p2, p3, v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->showSingleAlertNoAction(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 525
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->queryTrainStock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 522
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->queryTrainSellData(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public queryGoodsType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->queryGoodsTypeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public querySupplier(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->queryGoodsSupplierName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public queryTrainSellData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 541
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 544
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    const-string v0, "\u6b63\u5728\u83b7\u53d6\u6570\u636e..."

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->showLoading(Ljava/lang/String;)V

    .line 545
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    .line 546
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    .line 547
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    const-string v2, "company2Id"

    invoke-virtual {p1, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "trainId"

    .line 548
    invoke-virtual {p1, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "outDay"

    .line 549
    invoke-virtual {p1, v0, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    sget-object p2, Lcom/ayma/commonerp/app/AppUserData;->teamId:Ljava/lang/String;

    const-string v0, "teamId"

    invoke-virtual {p1, v0, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p2, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$9;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$9;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)V

    invoke-virtual {p2, p1, v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->getTeamTrainSellData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public queryTrainStock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 592
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 595
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    const-string p2, "\u6b63\u5728\u83b7\u53d6\u6570\u636e..."

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->showLoading(Ljava/lang/String;)V

    .line 596
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    .line 597
    sget-object p2, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    const-string v0, "company2Id"

    invoke-virtual {p1, v0, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    sget-object p2, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    const-string v0, "trainsId"

    invoke-virtual {p1, v0, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->getGoDate()Ljava/lang/String;

    move-result-object p2

    const-string v0, "outDate"

    invoke-virtual {p1, v0, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "classMax"

    const-string v0, ""

    .line 600
    invoke-virtual {p1, p2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "classMin"

    .line 601
    invoke-virtual {p1, p2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "goodsName"

    .line 602
    invoke-virtual {p1, p2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p2, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$10;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$10;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)V

    invoke-virtual {p2, p1, p3, v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->getTeamTrainStock(Ljava/util/TreeMap;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public sendMessage(IILjava/lang/Object;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 158
    iput p1, v0, Landroid/os/Message;->what:I

    .line 159
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 160
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 161
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sortList(IZLandroid/view/View;)V
    .locals 7

    .line 838
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 841
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->getDataList()Landroidx/collection/ArrayMap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 842
    invoke-virtual {v2}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 846
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    const-string v1, "\u6b63\u5728\u6392\u5e8f"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->showLoading(Ljava/lang/String;)V

    .line 847
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    move-object v1, v0

    check-cast v1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    new-instance v6, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$16;

    invoke-direct {v6, p0, p3}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$16;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;Landroid/view/View;)V

    const-string v4, ""

    move v3, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->sortListNew(Landroidx/collection/ArrayMap;ILjava/lang/String;ZLcom/ayma/base/mvp/ModelCallBack;)V

    return-void

    .line 843
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    const-string p2, "\u5f53\u524d\u6ca1\u6709\u6570\u636e\u53ef\u6392\u5e8f"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public storeChange(Ljava/lang/String;)V
    .locals 2

    .line 645
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$11;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$11;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->queryTypeFromStore(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public submitData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 274
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->pageType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x2730c8d

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0xc57231b

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "goodsIn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "returnWarehouse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    goto :goto_2

    .line 279
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->submitTeamReturnBill(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 276
    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->submitSaleOutBill(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public submitSaleOutBill(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 289
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 292
    :cond_0
    iget-object p3, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p3, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    const-string p4, "\u6b63\u5728\u63d0\u4ea4..."

    invoke-interface {p3, p4}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->showLoading(Ljava/lang/String;)V

    .line 293
    iget-object p3, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p3, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-virtual {p3, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->getStoreId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 294
    iget-object p3, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p3, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-virtual {p3, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->getTypeCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 295
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto/16 :goto_0

    .line 300
    :cond_1
    iget-object p3, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p3, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    invoke-interface {p3, p4}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->showLoading(Ljava/lang/String;)V

    .line 301
    new-instance p3, Ljava/util/TreeMap;

    invoke-direct {p3}, Ljava/util/TreeMap;-><init>()V

    .line 302
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMdWithNoneSep()Ljava/lang/String;

    move-result-object p4

    const-string v0, "billDay"

    invoke-virtual {p3, v0, p4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object p4, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    const-string v0, "companyId"

    invoke-virtual {p3, v0, p4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object p4, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    const-string v0, "company2Id"

    invoke-virtual {p3, v0, p4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object p4, Lcom/ayma/commonerp/app/AppUserData;->teamId:Ljava/lang/String;

    const-string v0, "teamId"

    invoke-virtual {p3, v0, p4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "storeId"

    .line 307
    invoke-virtual {p3, p4, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "storeType"

    .line 308
    invoke-virtual {p3, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object p1, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    const-string p2, "trainId"

    invoke-virtual {p3, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->getGoDate()Ljava/lang/String;

    move-result-object p1

    const-string p2, "outDay"

    invoke-virtual {p3, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "description"

    const-string p2, ""

    .line 311
    invoke-virtual {p3, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->getBillDetail()Ljava/util/List;

    move-result-object p1

    .line 313
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 314
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    const-string p2, "\u65e0\u53ef\u63d0\u4ea4\u7684\u5546\u54c1\uff0c\u8bf7\u68c0\u67e5"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->showNoticeToastError(Ljava/lang/String;)V

    .line 315
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->hideLoading()V

    return-void

    :cond_2
    const-string p2, "storeOutDetails"

    .line 318
    invoke-virtual {p3, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$5;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$5;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)V

    invoke-virtual {p1, p3, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->postSaleOutBill(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void

    .line 296
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->hideLoading()V

    .line 297
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    const-string p2, "\u51fa\u9519\u4e86"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public submitTeamReturnBill(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 355
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 359
    :cond_0
    iget-object p3, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p3, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-virtual {p3}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->checkCanReturn()Z

    move-result p3

    if-nez p3, :cond_1

    .line 360
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    const-string p2, "\u5f53\u524d\u5b58\u5728\u8d1f\u5e93\u5b58\u6216\u80050\u5e93\u5b58\uff0c\u4e0d\u5141\u8bb8\u9000\u4e58"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void

    .line 363
    :cond_1
    iget-object p3, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p3, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-virtual {p3, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->getStoreId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 364
    iget-object p3, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p3, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-virtual {p3, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->getTypeCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 365
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto/16 :goto_0

    .line 370
    :cond_2
    iget-object p3, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p3, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    const-string p4, "\u6b63\u5728\u63d0\u4ea4..."

    invoke-interface {p3, p4}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->showLoading(Ljava/lang/String;)V

    .line 371
    new-instance p3, Ljava/util/TreeMap;

    invoke-direct {p3}, Ljava/util/TreeMap;-><init>()V

    .line 372
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMdWithNoneSep()Ljava/lang/String;

    move-result-object p4

    const-string v0, "billDay"

    invoke-virtual {p3, v0, p4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object p4, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    const-string v0, "companyId"

    invoke-virtual {p3, v0, p4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object p4, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    const-string v0, "company2Id"

    invoke-virtual {p3, v0, p4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object p4, Lcom/ayma/commonerp/app/AppUserData;->teamId:Ljava/lang/String;

    const-string v0, "teamId"

    invoke-virtual {p3, v0, p4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "storeId"

    .line 377
    invoke-virtual {p3, p4, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "storeType"

    .line 378
    invoke-virtual {p3, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object p1, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    const-string p2, "trainId"

    invoke-virtual {p3, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->getGoDate()Ljava/lang/String;

    move-result-object p1

    const-string p2, "outDay"

    invoke-virtual {p3, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "description"

    const-string p2, ""

    .line 381
    invoke-virtual {p3, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->getBillDetail()Ljava/util/List;

    move-result-object p1

    .line 383
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 384
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    const-string p2, "\u8bf7\u9009\u62e9\u8981\u9000\u5e93\u7684\u5546\u54c1"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->showNoticeToastError(Ljava/lang/String;)V

    .line 385
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->hideLoading()V

    return-void

    :cond_3
    const-string p2, "trainOutDetails"

    .line 388
    invoke-virtual {p3, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$6;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$6;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)V

    invoke-virtual {p1, p3, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->postTeamReturnBill(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void

    .line 366
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->hideLoading()V

    .line 367
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    const-string p2, "\u51fa\u9519\u4e86"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public toSelectGoods(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 471
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->getStoreId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 472
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 473
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    const-string p2, "\u8bf7\u91cd\u65b0\u9009\u62e9\u4ed3\u5e93\u7c7b\u578b"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->showToast(Ljava/lang/String;)V

    return-void

    .line 476
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->getStoreType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 477
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 478
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    const-string p2, "\u8bf7\u91cd\u65b0\u9009\u62e9\u5e93\u522b"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->showToast(Ljava/lang/String;)V

    return-void

    .line 481
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->pageType:Ljava/lang/String;

    const-string v0, "goodsIn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 483
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    move-object v1, p1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->priceType:Ljava/lang/String;

    const-string v3, "require"

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->toSelectGoodsPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 484
    :cond_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->pageType:Ljava/lang/String;

    const-string p2, "returnWarehouse"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 486
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    move-object v1, p1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->priceType:Ljava/lang/String;

    const-string v3, "return"

    const-string v6, ""

    const-string v7, ""

    invoke-interface/range {v1 .. v7}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->toSelectGoodsPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateGoodsCount(Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V
    .locals 2

    .line 679
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    const-string v1, "\u6b63\u5728\u4fee\u6539.."

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->showLoading(Ljava/lang/String;)V

    .line 683
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$12;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$12;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->updateGoodsCount(Lcom/ayma/commonerp/bean/ReceiptSelectBean;ILcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method
