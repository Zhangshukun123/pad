.class public Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "SelectGoodsPresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;",
        "Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsPresenter;"
    }
.end annotation


# static fields
.field public static final RESULT_SELECT_GOODS:I = 0x3d4


# instance fields
.field private priceType:Ljava/lang/String;

.field private saleChannel:Ljava/lang/String;

.field private sellType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    const-string p1, "00"

    .line 44
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->saleChannel:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->sellType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->priceType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public clearAllSelectedGoods()V
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->clearAllSelectedGoods()V

    .line 226
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2, v1, v2}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;->showSelectedGoodsCountAndTotalPrice(DD)V

    return-void
.end method

.method public fetchStock(Z)V
    .locals 3

    .line 282
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;

    if-eqz p1, :cond_1

    const-string v1, "\u52a0\u8f7d\u4e2d"

    goto :goto_0

    :cond_1
    const-string v1, "\u66f4\u65b0\u4e2d"

    :goto_0
    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;->showLoading(Ljava/lang/String;)V

    .line 286
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 287
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    const-string v2, "trainsId"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    const-string v2, "company2Id"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->getGoDate()Ljava/lang/String;

    move-result-object v1

    const-string v2, "outDate"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "classMax"

    const-string v2, ""

    .line 290
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "classMin"

    .line 291
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "goodsName"

    .line 292
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;

    invoke-direct {v2, p0, p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;-><init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;Z)V

    invoke-virtual {v1, v0, v2}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->downloadTeamSaleOutList(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->initModel()Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;
    .locals 2

    .line 52
    new-instance v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreate(Landroid/content/Intent;)V
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;->init()V

    const-string v0, "pageType"

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->sellType:Ljava/lang/String;

    const-string v0, "priceType"

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->priceType:Ljava/lang/String;

    .line 62
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->sellType:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->priceType:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_3

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->sellType:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x14bfd

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    const v2, 0xd5f35

    if-eq v1, v2, :cond_2

    const v2, 0x2c9ffb8

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "12306"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v1, "\u6b63\u5e38"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string v1, "VIP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    :goto_0
    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_5

    .line 76
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$1;-><init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)V

    const-string v1, ""

    const-string v2, "\u53c2\u6570\u5f02\u5e38\uff0c\u8bf7\u9000\u51fa\u91cd\u8bd5"

    const-string v3, "\u786e\u5b9a"

    invoke-interface {p1, v1, v2, v3, v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    :cond_5
    const-string p1, "02"

    .line 72
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->saleChannel:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string p1, "00"

    .line 69
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->saleChannel:Ljava/lang/String;

    .line 84
    :goto_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 85
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ayma/commonerp/util/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 86
    invoke-virtual {p0, v3}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->fetchStock(Z)V

    goto :goto_2

    .line 88
    :cond_7
    sget-object p1, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->sellType:Ljava/lang/String;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->priceType:Ljava/lang/String;

    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->queryGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    .line 63
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;

    const-string v0, "\u64cd\u4f5c\u9519\u8bef"

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;->showToast(Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;->finishActivity()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 365
    invoke-super {p0}, Lcom/ayma/commonerp/base/BasePresenter;->onDestroy()V

    .line 366
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onSelectGoods(Lcom/ayma/commonerp/bean/SellDetailBean;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->getSelectedGoods()Ljava/util/List;

    move-result-object v0

    .line 344
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SellDetailBean;->getQty()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_0

    .line 345
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->removeSelectedGoods(Lcom/ayma/commonerp/bean/SellDetailBean;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 348
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/SellDetailBean;

    .line 349
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/SellDetailBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SellDetailBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 350
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SellDetailBean;->getQty()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/ayma/commonerp/bean/SellDetailBean;->setQty(D)V

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_3

    .line 356
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->addSelectedGoods(Lcom/ayma/commonerp/bean/SellDetailBean;)V

    .line 359
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;->notifyGoodsListChange()V

    .line 360
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->getSelectTotalCount()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v2, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;

    invoke-virtual {v2}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->getSelectedGoodsTotalPrice()D

    move-result-wide v2

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;->showSelectedGoodsCountAndTotalPrice(DD)V

    return-void
.end method

.method public queryGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 102
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;

    const-string v1, "\u52a0\u8f7d\u4e2d..."

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;->showLoading(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    move-object v1, v0

    check-cast v1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;

    iget-object v6, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->saleChannel:Ljava/lang/String;

    new-instance v7, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$2;

    invoke-direct {v7, p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$2;-><init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->queryGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public removeSelected(ILcom/ayma/commonerp/bean/SellDetailBean;)V
    .locals 4

    .line 197
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->removeSelectedGoods(Lcom/ayma/commonerp/bean/SellDetailBean;)V

    .line 198
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->getGoodsList()Ljava/util/List;

    move-result-object p1

    .line 199
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/SellDetailBean;

    .line 200
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SellDetailBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SellDetailBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 p1, 0x0

    .line 201
    invoke-virtual {v0, p1, p2}, Lcom/ayma/commonerp/bean/SellDetailBean;->setQty(D)V

    .line 205
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;->notifyGoodsListChange()V

    .line 206
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p2, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;

    invoke-virtual {p2}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->getSelectTotalCount()D

    move-result-wide v0

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p2, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;

    invoke-virtual {p2}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->getSelectedGoodsTotalPrice()D

    move-result-wide v2

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;->showSelectedGoodsCountAndTotalPrice(DD)V

    return-void
.end method

.method public searchGoods(Ljava/lang/String;)V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$3;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$3;-><init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->searchGoods(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public selectTypeChange(Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;)V
    .locals 0

    return-void
.end method

.method public showSelectedGoods()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->getSelectedGoods()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;

    invoke-interface {v1, v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;->showSelectedGoodsPopup(Ljava/util/List;)V

    return-void

    .line 154
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;

    const-string v1, "\u6ca1\u6709\u5df2\u9009\u62e9\u7684\u5546\u54c1"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public submitSelected()V
    .locals 3

    .line 234
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;

    const-string v1, "\u6b63\u5728\u63d0\u4ea4"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;->showLoading(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->sellType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->completeSelectGoods(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 239
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 240
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;

    const-string v1, "\u672a\u9009\u62e9\u4efb\u4f55\u5546\u54c1"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;->showToast(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;->hideLoading()V

    return-void

    .line 244
    :cond_1
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;

    const/16 v2, 0x3d4

    invoke-interface {v1, v2}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;->setResultCode(I)V

    .line 245
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 246
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;->finishActivity()V

    return-void
.end method
