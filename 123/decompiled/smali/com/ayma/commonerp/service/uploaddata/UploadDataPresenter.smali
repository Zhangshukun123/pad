.class public Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "UploadDataPresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/service/uploaddata/UploadDataContact$IUploadDataPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "Lcom/ayma/commonerp/service/uploaddata/UploadDataContact$IUploadDataView;",
        "Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;",
        ">;",
        "Lcom/ayma/commonerp/service/uploaddata/UploadDataContact$IUploadDataPresenter;"
    }
.end annotation


# static fields
.field private static final CHECK_UPLOAD_INTERVAL:I = 0x1388


# instance fields
.field private handler:Landroid/os/Handler;

.field private isUploadingSellData:Z

.field private orderPosition:Lcom/ayma/commonerp/bean/OrderPositionBean;

.field private final uploadRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->isUploadingSellData:Z

    .line 43
    new-instance p1, Lcom/ayma/commonerp/service/uploaddata/-$$Lambda$UploadDataPresenter$4tad7oy6k9BZh-le9W9ayqxlpNY;

    invoke-direct {p1, p0}, Lcom/ayma/commonerp/service/uploaddata/-$$Lambda$UploadDataPresenter$4tad7oy6k9BZh-le9W9ayqxlpNY;-><init>(Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;)V

    iput-object p1, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->uploadRunnable:Ljava/lang/Runnable;

    .line 44
    new-instance p1, Lcom/ayma/commonerp/bean/OrderPositionBean;

    invoke-direct {p1}, Lcom/ayma/commonerp/bean/OrderPositionBean;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->orderPosition:Lcom/ayma/commonerp/bean/OrderPositionBean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ayma/commonerp/service/uploaddata/UploadDataContact$IUploadDataView;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->isUploadingSellData:Z

    .line 43
    new-instance p1, Lcom/ayma/commonerp/service/uploaddata/-$$Lambda$UploadDataPresenter$4tad7oy6k9BZh-le9W9ayqxlpNY;

    invoke-direct {p1, p0}, Lcom/ayma/commonerp/service/uploaddata/-$$Lambda$UploadDataPresenter$4tad7oy6k9BZh-le9W9ayqxlpNY;-><init>(Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;)V

    iput-object p1, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->uploadRunnable:Ljava/lang/Runnable;

    .line 44
    new-instance p1, Lcom/ayma/commonerp/bean/OrderPositionBean;

    invoke-direct {p1}, Lcom/ayma/commonerp/bean/OrderPositionBean;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->orderPosition:Lcom/ayma/commonerp/bean/OrderPositionBean;

    .line 52
    iput-object p2, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    .line 53
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 54
    invoke-virtual {p0}, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->initHandler()V

    .line 55
    invoke-virtual {p0}, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->queryNeedUploadData()V

    return-void
.end method

.method static synthetic access$002(Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->isUploadingSellData:Z

    return p1
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;)Lcom/ayma/commonerp/bean/OrderPositionBean;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->orderPosition:Lcom/ayma/commonerp/bean/OrderPositionBean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->TAG:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public dealUploadSellDataEvent(Lcom/ayma/commonerp/eventbus/UploadSellDataEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    return-void
.end method

.method public initHandler()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    new-instance v0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$1;

    iget-object v1, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$1;-><init>(Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->handler:Landroid/os/Handler;

    return-void
.end method

.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->initModel()Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;
    .locals 2

    .line 60
    new-instance v0, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;

    iget-object v1, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public synthetic lambda$new$0$UploadDataPresenter()V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->queryNeedUploadData()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 65
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, ""

    .line 67
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 68
    iput-object v1, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->handler:Landroid/os/Handler;

    .line 70
    :cond_0
    iput-object v1, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    .line 71
    iput-object v1, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-void
.end method

.method public queryNeedUploadData()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    if-nez v0, :cond_0

    return-void

    .line 117
    :cond_0
    iget-boolean v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->isUploadingSellData:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->isUploadingSellData:Z

    .line 121
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;

    iget-object v1, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->orderPosition:Lcom/ayma/commonerp/bean/OrderPositionBean;

    new-instance v2, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$2;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$2;-><init>(Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;)V

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->queryNeedUploadData(Lcom/ayma/commonerp/bean/OrderPositionBean;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public removeCheckUploadRunnable()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->uploadRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public startCheckUploadRunnable(J)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->uploadRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 92
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->uploadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public updateSellDataStatue(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;)V"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    if-nez v0, :cond_0

    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;

    new-instance v1, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$4;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$4;-><init>(Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->updateSellDataUploadStatue(Ljava/util/List;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public uploadSellDataToServer(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 151
    iget-object v2, v0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->TAG:Ljava/lang/String;

    const-string v3, "\u4e0a\u4f20\u670d\u52a1 uploadSellDataToServer"

    invoke-static {v2, v3}, Lcom/ayma/commonerp/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v2, v0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    if-nez v2, :cond_0

    return-void

    .line 155
    :cond_0
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    const/4 v3, 0x0

    .line 156
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ayma/commonerp/bean/SellDetailBean;

    .line 157
    iget-object v5, v0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v5, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSaleType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->querySaleTypeCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 158
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    return-void

    .line 161
    :cond_1
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/SellDetailBean;->getQty()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-lez v10, :cond_2

    const/4 v3, 0x1

    :cond_2
    const-string v6, "1"

    const-string v7, "2"

    if-eqz v3, :cond_3

    move-object v10, v6

    goto :goto_0

    :cond_3
    move-object v10, v7

    .line 165
    :goto_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 166
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-wide v13, v8

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/ayma/commonerp/bean/SellDetailBean;

    .line 168
    invoke-virtual {v15}, Lcom/ayma/commonerp/bean/SellDetailBean;->getQty()D

    move-result-wide v8

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    invoke-virtual {v15}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSalesPrice()D

    move-result-wide v6

    invoke-static {v8, v9, v6, v7}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v6

    invoke-static {v13, v14, v6, v7}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v13

    .line 169
    new-instance v6, Lcom/ayma/commonerp/bean/OnlinePayJsonBean;

    invoke-direct {v6}, Lcom/ayma/commonerp/bean/OnlinePayJsonBean;-><init>()V

    .line 170
    invoke-virtual {v15}, Lcom/ayma/commonerp/bean/SellDetailBean;->getGoodsId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ayma/commonerp/bean/OnlinePayJsonBean;->setGoodsId(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v15}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSupplierId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ayma/commonerp/bean/OnlinePayJsonBean;->setSupplierId(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v15}, Lcom/ayma/commonerp/bean/SellDetailBean;->getBarcode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ayma/commonerp/bean/OnlinePayJsonBean;->setBarcode(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v15}, Lcom/ayma/commonerp/bean/SellDetailBean;->getQty()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/ayma/commonerp/bean/OnlinePayJsonBean;->setQty(D)V

    .line 174
    invoke-virtual {v15}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSalesPrice()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/ayma/commonerp/bean/OnlinePayJsonBean;->setSalePriceReal(D)V

    .line 175
    invoke-virtual {v15}, Lcom/ayma/commonerp/bean/SellDetailBean;->getScanDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ayma/commonerp/bean/OnlinePayJsonBean;->setScanDate(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v15}, Lcom/ayma/commonerp/bean/SellDetailBean;->getCheckRepeat()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ayma/commonerp/bean/OnlinePayJsonBean;->setCheckRepeat(Ljava/lang/String;)V

    .line 178
    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    const-wide/16 v8, 0x0

    goto :goto_1

    :cond_4
    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-wide v6, v8

    cmpl-double v8, v13, v6

    if-lez v8, :cond_5

    goto :goto_2

    :cond_5
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 180
    invoke-static {v6, v7, v13, v14}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v13

    .line 181
    :goto_2
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/SellDetailBean;->getOrderNo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "lineOrderNo"

    invoke-virtual {v2, v7, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "tradeType"

    .line 182
    invoke-virtual {v2, v6, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/SellDetailBean;->getCompanyId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "companyId"

    invoke-virtual {v2, v7, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/SellDetailBean;->getCompany2Id()Ljava/lang/String;

    move-result-object v6

    const-string v7, "company2Id"

    invoke-virtual {v2, v7, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/SellDetailBean;->getStoreId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "storeId"

    invoke-virtual {v2, v7, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "saleType"

    .line 186
    invoke-virtual {v2, v6, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "saleChannel"

    const-string v6, "A"

    .line 187
    invoke-virtual {v2, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/SellDetailBean;->getFleetId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "fleetId"

    invoke-virtual {v2, v6, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/SellDetailBean;->getTeamId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "teamId"

    invoke-virtual {v2, v6, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/SellDetailBean;->getTrainsId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "trainId"

    invoke-virtual {v2, v6, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/SellDetailBean;->getOutDate()Ljava/lang/String;

    move-result-object v5

    const-string v6, "outDay"

    invoke-virtual {v2, v6, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/SellDetailBean;->getEmployeeId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "employeeId"

    invoke-virtual {v2, v6, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "totalAmount"

    invoke-virtual {v2, v6, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "receivableAmount"

    invoke-virtual {v2, v6, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "receiptAmount"

    invoke-virtual {v2, v6, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "prefrentialAmount"

    const-string v6, "0"

    .line 196
    invoke-virtual {v2, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "poundage"

    .line 197
    invoke-virtual {v2, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_6

    move-object/from16 v5, v16

    goto :goto_3

    :cond_6
    move-object/from16 v5, v17

    :goto_3
    const-string v7, "salePayState"

    .line 198
    invoke-virtual {v2, v7, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_7

    move-object v7, v6

    goto :goto_4

    :cond_7
    move-object/from16 v7, v17

    :goto_4
    const-string v3, "returnRequestState"

    .line 199
    invoke-virtual {v2, v3, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "returnRequestReason"

    const-string v5, ""

    .line 200
    invoke-virtual {v2, v3, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "description"

    .line 201
    invoke-virtual {v2, v3, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSellTime()Ljava/lang/String;

    move-result-object v3

    const-string v4, "createDate"

    invoke-virtual {v2, v4, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v3, v0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v3, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;

    invoke-virtual {v3}, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->getCheckRepeat()Ljava/lang/String;

    move-result-object v3

    const-string v4, "checkRepeat"

    invoke-virtual {v2, v4, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "lineOrderDetailPers"

    .line 206
    invoke-virtual {v2, v3, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v3, v0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v3, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;

    new-instance v4, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$3;

    invoke-direct {v4, v0, v1}, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$3;-><init>(Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;Ljava/util/List;)V

    invoke-virtual {v3, v2, v4}, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->uploadSellDataToServer(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method
