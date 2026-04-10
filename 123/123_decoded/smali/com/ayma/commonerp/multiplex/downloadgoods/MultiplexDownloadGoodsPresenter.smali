.class public Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "MultiplexDownloadGoodsPresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/multiplex/downloadgoods/IMultiplexDownloadGoodsPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/ayma/commonerp/base/IBaseView;",
        ">",
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "TT;",
        "Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;",
        ">;",
        "Lcom/ayma/commonerp/multiplex/downloadgoods/IMultiplexDownloadGoodsPresenter;"
    }
.end annotation


# static fields
.field protected static final DOWNLOAD_GOODS:I = 0x1

.field public static final KEY_LAST_UPDATE_GOODS_DATA_TIME:Ljava/lang/String; = "lastUpdateGoodsDataTime"

.field public static final UPDATE_GOODS_DATA_INTERVAL:J = 0x1d4c0L

.field protected static final WHAT_DOWNLOAD_GOODS_FAIL:I = 0x385

.field protected static final WHAT_DOWNLOAD_GOODS_SUCCESS:I = 0x384


# instance fields
.field private callBack:Lcom/ayma/base/mvp/ModelCallBack;

.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ayma/commonerp/base/IBaseView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p2, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    .line 35
    invoke-virtual {p0}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;->initHandler()V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;)Lcom/ayma/base/mvp/ModelCallBack;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;->callBack:Lcom/ayma/base/mvp/ModelCallBack;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;)Landroid/content/Context;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public downloadGoodsData(Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 2

    .line 92
    iput-object p1, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;->callBack:Lcom/ayma/base/mvp/ModelCallBack;

    .line 93
    iget-object p1, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;

    new-instance v0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter$2;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter$2;-><init>(Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;->downloadGoodsData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public initHandler()V
    .locals 2

    .line 45
    new-instance v0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter$1;

    iget-object v1, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter$1;-><init>(Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;->handler:Landroid/os/Handler;

    return-void
.end method

.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;->initModel()Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;
    .locals 2

    .line 40
    new-instance v0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;

    iget-object v1, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .line 114
    invoke-super {p0}, Lcom/ayma/commonerp/base/BasePresenter;->onDestroy()V

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;->callBack:Lcom/ayma/base/mvp/ModelCallBack;

    .line 116
    iget-object v1, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const-string v2, ""

    .line 117
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 118
    iput-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;->handler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public sendMessageToHandler(IILjava/lang/Object;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;->initHandler()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 84
    iput p1, v0, Landroid/os/Message;->what:I

    .line 85
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 86
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 87
    iget-object p1, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessageToHandler(ILjava/lang/Object;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;->initHandler()V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 73
    iput p1, v0, Landroid/os/Message;->what:I

    .line 74
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    iget-object p1, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsPresenter;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
