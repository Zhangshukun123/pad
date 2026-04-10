.class public Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "OnlineRefundSimplePresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimplePresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;",
        "Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;",
        ">;",
        "Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimplePresenter;"
    }
.end annotation


# static fields
.field private static final QUERY_ORDER_DELAY:J = 0xbb8L


# instance fields
.field private handler:Landroid/os/Handler;

.field private transNo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Z
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->transNo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Z
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Z
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Z
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Z
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Z
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Z
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->initModel()Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;
    .locals 2

    .line 27
    new-instance v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 209
    invoke-super {p0}, Lcom/ayma/commonerp/base/BasePresenter;->onDestroy()V

    .line 210
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 211
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 212
    iput-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->handler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public queryOrder(Ljava/lang/String;)V
    .locals 3

    .line 38
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;->hideSoftKeyboard()V

    .line 42
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ayma/commonerp/util/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;

    const-string v0, "\u7f51\u7edc\u65e0\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5"

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;->showToast(Ljava/lang/String;)V

    return-void

    .line 46
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;

    const-string v0, "\u8bf7\u5148\u8f93\u5165\u652f\u4ed8\u6d41\u6c34\u53f7"

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;->showToast(Ljava/lang/String;)V

    return-void

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;

    const-string v1, "\u6b63\u5728\u67e5\u8be2\u8ba2\u5355...."

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;->showLoading(Ljava/lang/String;)V

    .line 51
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "transactionNo"

    .line 52
    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;

    new-instance v2, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$1;

    invoke-direct {v2, p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$1;-><init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;->queryOrderByTransactionNo(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public queryRefundOrder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 166
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 169
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;

    const-string p2, "\u4ea4\u6613\u6d41\u6c34\u53f7\u4e0d\u80fd\u4e3a\u7a7a\uff0c\u8bf7\u68c0\u67e5"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;->showToast(Ljava/lang/String;)V

    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;

    const-string v1, "\u6b63\u5728\u67e5\u8be2\u9000\u6b3e\u8ba2\u5355\u4fe1\u606f"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;->showLoading(Ljava/lang/String;)V

    .line 174
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "transactionNo"

    .line 175
    invoke-virtual {v0, v1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object p2, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p2, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;

    new-instance v1, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$4;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$4;-><init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;->queryRefundOrder(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public queryRefundOrderDelay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$3;-><init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0xbb8

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public refundOrder()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->transNo:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->refundOrder(Ljava/lang/String;)V

    return-void
.end method

.method public refundOrder(Ljava/lang/String;)V
    .locals 3

    .line 96
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;

    const-string v0, "\u652f\u4ed8\u6d41\u6c34\u53f7\u6709\u8bef\uff0c\u8bf7\u68c0\u67e5"

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;->showToast(Ljava/lang/String;)V

    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;

    const-string v1, "\u6b63\u5728\u9000\u6b3e..."

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;->showLoading(Ljava/lang/String;)V

    .line 104
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "transactionNo"

    .line 105
    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;

    new-instance v2, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$2;

    invoke-direct {v2, p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$2;-><init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;->refundOrder(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method
