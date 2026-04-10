.class public Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "ReceiptSelectGoodsPresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsView;",
        "Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsPresenter;"
    }
.end annotation


# static fields
.field private static final WHAT_DATE_ERROR:I = 0x159

.field private static final WHAT_DATE_FAIL:I = 0x15a

.field private static final WHAT_DATE_SUCCESS:I = 0x158


# instance fields
.field private dataType:Ljava/lang/String;

.field private downloadGoodsPresenter:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter<",
            "Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsView;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private isCanEditScrappedPrice:Z

.field private priceType:Ljava/lang/String;

.field private storeId:Ljava/lang/String;

.field private storeType:Ljava/lang/String;

.field private supplierId:Ljava/lang/String;

.field private transportToTrainDate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 62
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->isCanEditScrappedPrice:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Z
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Z
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1302(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->isCanEditScrappedPrice:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Z
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Z
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Z
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Z
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3300(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Z
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3900(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Z
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4100(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Z
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4300(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Z
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5000(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Z
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5100(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Z
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5500(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Z
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5900(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Z
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6200(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Z
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6400(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Z
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6600(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6700(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$6800(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Z
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6900(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7000(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->priceType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$7100(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->supplierId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$7200(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7300(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7400(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->storeId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$7500(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->storeType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$7600(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->transportToTrainDate:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$7700(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Z
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$7800(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$7900(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method


# virtual methods
.method public addGoods(Lcom/ayma/commonerp/bean/ReceiptSelectBean;)V
    .locals 2

    .line 482
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$10;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$10;-><init>(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;->updateListBean(Lcom/ayma/commonerp/bean/ReceiptSelectBean;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public filterGoods(Ljava/lang/String;)V
    .locals 2

    .line 616
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$13;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$13;-><init>(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;->filterGoods(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public getAddGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 329
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;

    new-instance v8, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$7;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$7;-><init>(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v8}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;->queryPermission(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public getGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    move-object v9, p0

    move-object v0, p1

    .line 173
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->isViewAttach()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 176
    :cond_0
    iget-object v1, v9, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsView;

    const-string v2, "\u6b63\u5728\u52a0\u8f7d\u5546\u54c1\u6570\u636e..."

    invoke-interface {v1, v2}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsView;->showLoading(Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 177
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "require"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "lost"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "add"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_3
    const-string v2, "scrapped"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v2, "return"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    :cond_1
    :goto_0
    if-eqz v1, :cond_8

    if-eq v1, v6, :cond_7

    if-eq v1, v5, :cond_7

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    .line 220
    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->getGoDate()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const-string v1, "\u6b63\u5e38\u9500\u552e"

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->queryGoodsDataFromTrainStock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 216
    :cond_2
    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->getGoDate()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    const-string v1, "\u6b63\u5e38\u9500\u552e"

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->queryGoodsDataFromTrainStock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 190
    :cond_3
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "\u786e\u5b9a"

    const-string v2, ""

    if-eqz v0, :cond_4

    .line 191
    iget-object v0, v9, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsView;

    new-instance v3, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$3;

    invoke-direct {v3, p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$3;-><init>(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)V

    const-string v4, "\u4e0a\u8d27\u65e5\u671f\u4e0d\u80fd\u4e3a\u7a7a\uff0c\u8bf7\u68c0\u67e5"

    invoke-interface {v0, v2, v4, v1, v3}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsView;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 201
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    move-object v0, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    .line 212
    invoke-virtual {p0, p2, p3, p4, v5}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->getRequireGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 202
    :cond_6
    :goto_1
    iget-object v0, v9, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsView;

    new-instance v3, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$4;

    invoke-direct {v3, p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$4;-><init>(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)V

    const-string v4, "\u4ed3\u5e93\u6570\u636e\u4e3a\u7a7a\uff0c\u8bf7\u68c0\u67e5"

    invoke-interface {v0, v2, v4, v1, v3}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsView;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    :cond_7
    move-object v4, p4

    .line 186
    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->getGoDate()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/ayma/commonerp/app/AppUserData;->storeId:Ljava/lang/String;

    const-string v6, ""

    const-string v7, ""

    const-string v10, ""

    move-object v0, p0

    move-object v1, p4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v10

    invoke-virtual/range {v0 .. v8}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->getScrappedData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move-object v4, p4

    .line 180
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMdWithNoneSep()Ljava/lang/String;

    move-result-object v5

    .line 181
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->storeId:Ljava/lang/String;

    iget-object v6, v9, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->supplierId:Ljava/lang/String;

    move-object v0, p0

    move-object v3, p4

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->getAddGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x37b1c2d0 -> :sswitch_4
        -0x18bbf462 -> :sswitch_3
        0x178a1 -> :sswitch_2
        0x32c724 -> :sswitch_1
        0x414f0165 -> :sswitch_0
    .end sparse-switch
.end method

.method public getRequireGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 251
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsView;->hideSupplier()V

    .line 252
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    move-object v1, v0

    check-cast v1, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;

    new-instance v6, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$5;

    invoke-direct {v6, p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$5;-><init>(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;->queryGoodsDataByStore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public getScrappedData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    move-object v9, p0

    .line 283
    iget-object v0, v9, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    move-object v10, v0

    check-cast v10, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;

    new-instance v11, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$6;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$6;-><init>(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "editScrappedPrice"

    move-object/from16 v1, p8

    invoke-virtual {v10, v1, v0, v11}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;->queryPermission(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public getSupplierName(Ljava/lang/String;)V
    .locals 1

    .line 467
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 470
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 471
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsView;

    const-string v0, "\u5168\u90e8"

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsView;->showSupplierName(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public initGoodsPresenter()V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->downloadGoodsPresenter:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v2, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsView;

    invoke-direct {v0, v1, v2}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;-><init>(Landroid/content/Context;Lcom/ayma/commonerp/base/IBaseView;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->downloadGoodsPresenter:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;

    :cond_0
    return-void
.end method

.method public initHandler()V
    .locals 2

    .line 108
    new-instance v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$2;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$2;-><init>(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->handler:Landroid/os/Handler;

    return-void
.end method

.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->initModel()Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;
    .locals 2

    .line 75
    new-instance v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public isScrapped()Z
    .locals 1

    .line 575
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->isCanEditScrappedPrice:Z

    return v0
.end method

.method public onCreate(Landroid/content/Intent;)V
    .locals 7

    .line 80
    invoke-super {p0}, Lcom/ayma/commonerp/base/BasePresenter;->onCreate()V

    .line 81
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "priceType"

    .line 84
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->priceType:Ljava/lang/String;

    const-string v0, "supplierId"

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->supplierId:Ljava/lang/String;

    const-string v0, "receiptDataType"

    .line 86
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->dataType:Ljava/lang/String;

    const-string v0, "storeId"

    .line 87
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->storeId:Ljava/lang/String;

    const-string v0, "storeType"

    .line 88
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->storeType:Ljava/lang/String;

    const-string v0, "transportToTrainDate"

    .line 89
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->transportToTrainDate:Ljava/lang/String;

    .line 90
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->priceType:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 91
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsView;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$1;-><init>(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)V

    const-string v1, ""

    const-string v2, "\u6570\u636e\u7c7b\u578b\u51fa\u9519"

    const-string v3, "\u786e\u5b9a"

    invoke-interface {p1, v1, v2, v3, v0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsView;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->initHandler()V

    .line 101
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsView;->init()V

    .line 102
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;->getGoodsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsView;->initRlv(Ljava/util/List;)V

    .line 103
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->dataType:Ljava/lang/String;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->storeId:Ljava/lang/String;

    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->storeType:Ljava/lang/String;

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->priceType:Ljava/lang/String;

    iget-object v6, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->transportToTrainDate:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->getGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 734
    invoke-super {p0}, Lcom/ayma/commonerp/base/BasePresenter;->onDestroy()V

    .line 735
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->downloadGoodsPresenter:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 736
    invoke-virtual {v0}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;->onDestroy()V

    .line 737
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->downloadGoodsPresenter:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const-string v2, ""

    .line 740
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 741
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->handler:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method public queryGoodsDataFromLocal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 404
    invoke-virtual {p0, p4}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->getSupplierName(Ljava/lang/String;)V

    .line 405
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    move-object v0, p2

    check-cast v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;

    new-instance v5, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$8;

    invoke-direct {v5, p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$8;-><init>(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)V

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;->queryGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public queryGoodsDataFromTrainStock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 436
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->isViewAttach()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p2, ""

    .line 439
    invoke-virtual {p0, p2}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->getSupplierName(Ljava/lang/String;)V

    .line 440
    new-instance p3, Ljava/util/TreeMap;

    invoke-direct {p3}, Ljava/util/TreeMap;-><init>()V

    .line 441
    sget-object p4, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    const-string p5, "company2Id"

    invoke-virtual {p3, p5, p4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object p4, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    const-string p5, "trainsId"

    invoke-virtual {p3, p5, p4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->getGoDate()Ljava/lang/String;

    move-result-object p4

    const-string p5, "outDate"

    invoke-virtual {p3, p5, p4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "classMax"

    .line 444
    invoke-virtual {p3, p4, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "classMin"

    .line 445
    invoke-virtual {p3, p4, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "goodsName"

    .line 446
    invoke-virtual {p3, p4, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p2, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;

    new-instance p4, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$9;

    invoke-direct {p4, p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$9;-><init>(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)V

    invoke-virtual {p2, p3, p8, p1, p4}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;->getTrainStock(Ljava/util/TreeMap;ZLjava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public resetData()V
    .locals 2

    .line 516
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsView;

    const-string v1, "\u6b63\u5728\u91cd\u7f6e"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsView;->showLoading(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$11;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$11;-><init>(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;->resetData(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public saveData()V
    .locals 3

    .line 561
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;->getSelectGoods()Ljava/util/List;

    move-result-object v0

    .line 565
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 566
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsView;

    const-string v1, "\u6ca1\u6709\u5df2\u9009\u62e9\u7684\u5546\u54c1"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsView;->showToast(Ljava/lang/String;)V

    return-void

    .line 569
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/eventbus/ReceiptSelectGoodsResult;

    invoke-direct {v2, v0}, Lcom/ayma/commonerp/eventbus/ReceiptSelectGoodsResult;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 570
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsView;->finishActivity()V

    return-void
.end method

.method public searchGoods(Ljava/lang/String;)V
    .locals 0

    .line 611
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->filterGoods(Ljava/lang/String;)V

    return-void
.end method

.method public sendMessage(ILjava/lang/String;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 158
    iput p1, v0, Landroid/os/Message;->what:I

    .line 159
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 160
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateGoodsData(Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 5

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->context:Landroid/content/Context;

    const-string v1, "lastUpdateGoodsDataTime"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ayma/base/util/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x1d4c0

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 231
    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->initGoodsPresenter()V

    .line 235
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->downloadGoodsPresenter:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;->downloadGoodsData(Lcom/ayma/base/mvp/ModelCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 237
    invoke-interface {p1, v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    .line 238
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public updateWarehouse()V
    .locals 9

    .line 645
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsView;

    const-string v1, "\u66f4\u65b0\u5e93\u5b58\u4e2d"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsView;->showLoading(Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->dataType:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "require"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "lost"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "add"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_3
    const-string v2, "scrapped"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v2, "return"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    :cond_1
    :goto_0
    if-eqz v1, :cond_8

    if-eq v1, v6, :cond_7

    if-eq v1, v5, :cond_7

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    .line 727
    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->getGoDate()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const-string v1, "\u6b63\u5e38\u9500\u552e"

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->queryGoodsDataFromTrainStock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 723
    :cond_2
    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->getGoDate()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    const-string v1, "\u6b63\u5e38\u9500\u552e"

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->queryGoodsDataFromTrainStock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 678
    :cond_3
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->transportToTrainDate:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "\u786e\u5b9a"

    const-string v2, ""

    if-eqz v0, :cond_4

    .line 679
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsView;

    new-instance v3, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$15;

    invoke-direct {v3, p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$15;-><init>(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)V

    const-string v4, "\u4e0a\u8d27\u65e5\u671f\u4e0d\u80fd\u4e3a\u7a7a\uff0c\u8bf7\u68c0\u67e5"

    invoke-interface {v0, v2, v4, v1, v3}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsView;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 689
    :cond_4
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->storeId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->storeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 700
    :cond_5
    new-instance v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$17;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$17;-><init>(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)V

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->updateGoodsData(Lcom/ayma/base/mvp/ModelCallBack;)V

    goto :goto_2

    .line 690
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsView;

    new-instance v3, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$16;

    invoke-direct {v3, p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$16;-><init>(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)V

    const-string v4, "\u4ed3\u5e93\u6570\u636e\u4e3a\u7a7a\uff0c\u8bf7\u68c0\u67e5"

    invoke-interface {v0, v2, v4, v1, v3}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsView;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 674
    :cond_7
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->priceType:Ljava/lang/String;

    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->getGoDate()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/ayma/commonerp/app/AppUserData;->storeId:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->getScrappedData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 652
    :cond_8
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMdWithNoneSep()Ljava/lang/String;

    move-result-object v0

    .line 653
    new-instance v1, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$14;

    invoke-direct {v1, p0, v0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$14;-><init>(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->updateGoodsData(Lcom/ayma/base/mvp/ModelCallBack;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x37b1c2d0 -> :sswitch_4
        -0x18bbf462 -> :sswitch_3
        0x178a1 -> :sswitch_2
        0x32c724 -> :sswitch_1
        0x414f0165 -> :sswitch_0
    .end sparse-switch
.end method

.method public verifyReceipt()V
    .locals 2

    .line 580
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$12;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$12;-><init>(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;->verifyReceipt(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method
