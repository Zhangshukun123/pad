.class public Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "InvoicingPresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;",
        "Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingPresenter;"
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

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Z
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Z
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Z
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Z
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Z
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Z
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Z
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4000(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Z
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4400(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Z
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method


# virtual methods
.method public filterList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 251
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;

    const-string v1, "\u6b63\u5728\u7b5b\u9009\u6570\u636e..."

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;->showLoading(Ljava/lang/String;)V

    .line 255
    new-instance v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$5;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getBaseData()V
    .locals 2

    .line 101
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;->showLoading()V

    .line 105
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->getShowList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;->initRlv(Ljava/util/List;)V

    .line 106
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$2;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$2;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->initBaseData(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public initHandler()V
    .locals 2

    .line 52
    new-instance v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$1;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$1;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->handler:Landroid/os/Handler;

    return-void
.end method

.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->initModel()Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;
    .locals 2

    .line 39
    new-instance v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .line 44
    invoke-super {p0}, Lcom/ayma/commonerp/base/BasePresenter;->onCreate()V

    .line 45
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;->init()V

    .line 46
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->initHandler()V

    .line 47
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->getBaseData()V

    return-void
.end method

.method public queryAllOrder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->clearData()V

    .line 149
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;->notifyListDataChanged()V

    .line 150
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->getPayTypeCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 151
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    invoke-virtual {v0, p2}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->getOrderTypeCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    .line 157
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    const-string v2, "trainId"

    invoke-virtual {p2, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    const-string v2, "outDay"

    invoke-virtual {p2, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "payChannel"

    .line 159
    invoke-virtual {p2, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "saleType"

    invoke-virtual {p2, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;

    const-string v0, "\u6b63\u5728\u67e5\u8be2\u8ba2\u5355\u6570\u636e"

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;->showLoading(Ljava/lang/String;)V

    .line 163
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$3;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$3;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)V

    invoke-virtual {p1, p2, v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->queryOrder(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void

    .line 153
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;

    const-string p2, "\u9500\u552e\u7c7b\u578b\u5f02\u5e38"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public refundOrder(Ljava/lang/String;Lcom/ayma/commonerp/bean/OrderBean;)V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;

    const-string v1, "\u6b63\u5728\u9000\u6b3e..."

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;->showLoading(Ljava/lang/String;)V

    .line 282
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "transactionNo"

    .line 283
    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$6;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$6;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)V

    invoke-virtual {p1, v0, p2, v1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->refundOrder(Ljava/util/TreeMap;Lcom/ayma/commonerp/bean/OrderBean;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public sendMsg(ILjava/lang/Object;)V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 238
    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 239
    iput p1, v0, Landroid/os/Message;->what:I

    .line 240
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 241
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sortList(Z)V
    .locals 2

    .line 201
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->getShowList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 205
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;

    const-string v1, "\u6b63\u5728\u6392\u5e8f"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;->showLoading(Ljava/lang/String;)V

    .line 210
    new-instance v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$4;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$4;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;Z)V

    invoke-static {v0}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 206
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;

    const-string v0, "\u5f53\u524d\u6ca1\u6709\u6570\u636e\u53ef\u6392\u5e8f"

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;->showToast(Ljava/lang/String;)V

    return-void
.end method
