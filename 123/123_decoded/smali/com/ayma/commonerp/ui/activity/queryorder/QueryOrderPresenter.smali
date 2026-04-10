.class public Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "QueryOrderPresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;",
        "Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderModel;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderPresenter;"
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

    .line 34
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Z
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Z
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Z
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Z
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Z
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Z
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Z
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4000(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Z
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method


# virtual methods
.method public filterList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 250
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;

    const-string v1, "\u6b63\u5728\u7b5b\u9009\u6570\u636e..."

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;->showLoading(Ljava/lang/String;)V

    .line 254
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$5;-><init>(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getBaseData()V
    .locals 2

    .line 101
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;->showLoading()V

    .line 105
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderModel;->getShowList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;->initRlv(Ljava/util/List;)V

    .line 106
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$2;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$2;-><init>(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderModel;->initBaseData(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public initHandler()V
    .locals 2

    .line 52
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$1;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$1;-><init>(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->handler:Landroid/os/Handler;

    return-void
.end method

.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->initModel()Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderModel;
    .locals 2

    .line 39
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .line 44
    invoke-super {p0}, Lcom/ayma/commonerp/base/BasePresenter;->onCreate()V

    .line 45
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;->init()V

    .line 46
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->initHandler()V

    .line 47
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->getBaseData()V

    return-void
.end method

.method public queryAllOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderModel;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderModel;->getPayTypeCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 149
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderModel;

    invoke-virtual {v0, p2}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderModel;->getOrderTypeCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 150
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 155
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    const-string v2, "trainId"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    const-string v2, "outDay"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "payChannel"

    .line 157
    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-interface {p2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "saleType"

    invoke-virtual {v0, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "trainCode"

    .line 160
    invoke-virtual {v0, p1, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;

    const-string p2, "\u6b63\u5728\u67e5\u8be2\u8ba2\u5355\u6570\u636e"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;->showLoading(Ljava/lang/String;)V

    .line 162
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderModel;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$3;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$3;-><init>(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)V

    invoke-virtual {p1, v0, p2}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderModel;->queryOrder(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void

    .line 151
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;

    const-string p2, "\u9500\u552e\u7c7b\u578b\u5f02\u5e38"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public sendMsg(ILjava/lang/Object;)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 237
    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 238
    iput p1, v0, Landroid/os/Message;->what:I

    .line 239
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 240
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sortList(Z)V
    .locals 2

    .line 200
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderModel;->getShowList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 204
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;

    const-string v1, "\u6b63\u5728\u6392\u5e8f"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;->showLoading(Ljava/lang/String;)V

    .line 209
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$4;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$4;-><init>(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;Z)V

    invoke-static {v0}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 205
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;

    const-string v0, "\u5f53\u524d\u6ca1\u6709\u6570\u636e\u53ef\u6392\u5e8f"

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;->showToast(Ljava/lang/String;)V

    return-void
.end method
