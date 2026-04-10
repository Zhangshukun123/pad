.class public Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "MultiplexDownloadOtherDataPresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/multiplex/downloadotherdata/IMultiplexDownloadOtherDataPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/ayma/commonerp/base/IBaseView;",
        ">",
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "TT;",
        "Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;",
        ">;",
        "Lcom/ayma/commonerp/multiplex/downloadotherdata/IMultiplexDownloadOtherDataPresenter;"
    }
.end annotation


# static fields
.field protected static final DOWNLOAD_BASIC:I = 0x4

.field protected static final DOWNLOAD_CROSS_ROAD:I = 0x3

.field protected static final DOWNLOAD_PDA_PERMISSION:I = 0x7

.field protected static final DOWNLOAD_PERMISSION:I = 0x5

.field protected static final DOWNLOAD_TEAM:I = 0x6

.field protected static final DOWNLOAD_TRAIN:I = 0x2

.field protected static final DOWNLOAD_USER_INFO:I = 0x0

.field protected static final WHAT_DOWNLOAD_BASE_ERROR:I = 0x30a

.field protected static final WHAT_DOWNLOAD_BASE_FAIL:I = 0x309

.field protected static final WHAT_DOWNLOAD_BASE_SUCCESS:I = 0x30b

.field protected static final WHAT_DOWNLOAD_CROSS_ROAD_ERROR:I = 0x30d

.field protected static final WHAT_DOWNLOAD_CROSS_ROAD_FAIL:I = 0x30c

.field protected static final WHAT_DOWNLOAD_CROSS_ROAD_SUCCESS:I = 0x30e

.field protected static final WHAT_DOWNLOAD_PDA_PERMISSION_ERROR:I = 0x301

.field protected static final WHAT_DOWNLOAD_PDA_PERMISSION_FAIL:I = 0x300

.field protected static final WHAT_DOWNLOAD_PDA_PERMISSION_SUCCESS:I = 0x302

.field protected static final WHAT_DOWNLOAD_PERMISSION_ERROR:I = 0x307

.field protected static final WHAT_DOWNLOAD_PERMISSION_FAIL:I = 0x306

.field protected static final WHAT_DOWNLOAD_PERMISSION_SUCCESS:I = 0x308

.field protected static final WHAT_DOWNLOAD_TEAM_ERROR:I = 0x304

.field protected static final WHAT_DOWNLOAD_TEAM_FAIL:I = 0x303

.field protected static final WHAT_DOWNLOAD_TEAM_SUCCESS:I = 0x305

.field protected static final WHAT_DOWNLOAD_TRAIN_ERROR:I = 0x310

.field protected static final WHAT_DOWNLOAD_TRAIN_FAIL:I = 0x30f

.field protected static final WHAT_DOWNLOAD_TRAIN_SUCCESS:I = 0x311

.field protected static final WHAT_DOWNLOAD_USER_ERROR:I = 0x313

.field protected static final WHAT_DOWNLOAD_USER_FAIL:I = 0x312

.field protected static final WHAT_DOWNLOAD_USER_SUCCESS:I = 0x315


# instance fields
.field private baseCallBack:Lcom/ayma/base/mvp/ModelCallBack;

.field private crossRoadCallBack:Lcom/ayma/base/mvp/ModelCallBack;

.field private handler:Landroid/os/Handler;

.field private pdaPermissionCallBack:Lcom/ayma/base/mvp/ModelCallBack;

.field private permissionCallBack:Lcom/ayma/base/mvp/ModelCallBack;

.field private teamCallBack:Lcom/ayma/base/mvp/ModelCallBack;

.field private trainCallBack:Lcom/ayma/base/mvp/ModelCallBack;

.field private userCallBack:Lcom/ayma/base/mvp/ModelCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 74
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

    .line 78
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 79
    iput-object p2, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    .line 80
    invoke-virtual {p0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->initHandler()V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/ModelCallBack;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->userCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/ModelCallBack;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->trainCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/ModelCallBack;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->crossRoadCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/ModelCallBack;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->baseCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/ModelCallBack;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->permissionCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/ModelCallBack;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->teamCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/ModelCallBack;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->pdaPermissionCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Z
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method


# virtual methods
.method public downloadBaseData(Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1

    .line 294
    iput-object p1, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->baseCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    .line 295
    iget-object p1, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;

    new-instance v0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$5;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$5;-><init>(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)V

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;->downloadBasic(Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public downloadCrossRoadData(Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 3

    .line 266
    iput-object p1, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->crossRoadCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    .line 267
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    .line 268
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMdWithNoneSep()Ljava/lang/String;

    move-result-object v0

    .line 269
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    const-string v2, "company2Id"

    invoke-virtual {p1, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-static {}, Lcom/ayma/commonerp/app/AppUserData;->isQC()Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    const-string v2, "userCode"

    invoke-virtual {p1, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "roadDay"

    .line 273
    invoke-virtual {p1, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;

    new-instance v1, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$4;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$4;-><init>(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;->downloadCrossRoadData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public downloadPdaPermissionData(Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 2

    .line 361
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 363
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "\u8bf7\u5148\u767b\u5f55"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    .line 367
    :cond_1
    iput-object p1, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->pdaPermissionCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    .line 368
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    .line 369
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    const-string v1, "companyId"

    invoke-virtual {p1, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    const-string v1, "company2Id"

    invoke-virtual {p1, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    const-string v1, "trainId"

    invoke-virtual {p1, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    const-string v1, "outDay"

    invoke-virtual {p1, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    const-string v1, "userCode"

    invoke-virtual {p1, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;

    new-instance v1, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$8;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$8;-><init>(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;->downloadPdaPermissionData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public downloadPermission(Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 2

    .line 315
    iput-object p1, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->permissionCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    .line 316
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    .line 317
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    const-string v1, "employeeCode"

    invoke-virtual {p1, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;

    new-instance v1, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$6;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$6;-><init>(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;->downloadPermission(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public downloadTeamData(Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 2

    .line 338
    iput-object p1, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->teamCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    .line 339
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    .line 340
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    const-string v1, "employeeCode"

    invoke-virtual {p1, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;

    new-instance v1, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$7;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$7;-><init>(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;->downloadTeamData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public downloadTrainData(Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 2

    .line 245
    iput-object p1, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->trainCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    .line 246
    iget-object p1, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;

    new-instance v0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$3;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$3;-><init>(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;->downloadTrainData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public downloadUserData(Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 2

    .line 222
    iput-object p1, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->userCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    .line 223
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    .line 224
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    const-string v1, "employeeCode"

    invoke-virtual {p1, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;

    new-instance v1, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$2;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$2;-><init>(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;->downloadUserData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public initHandler()V
    .locals 2

    .line 90
    new-instance v0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$1;

    iget-object v1, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$1;-><init>(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->handler:Landroid/os/Handler;

    return-void
.end method

.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->initModel()Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;
    .locals 2

    .line 85
    new-instance v0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;

    iget-object v1, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .line 394
    invoke-super {p0}, Lcom/ayma/commonerp/base/BasePresenter;->onDestroy()V

    const/4 v0, 0x0

    .line 395
    iput-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->userCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    .line 396
    iput-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->trainCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    .line 397
    iput-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->crossRoadCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    .line 398
    iput-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->baseCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    .line 399
    iput-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->permissionCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    .line 400
    iput-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->teamCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    .line 401
    iget-object v1, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const-string v2, ""

    .line 402
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 403
    iput-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->handler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public sendMessageToHandler(IILjava/lang/Object;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->initHandler()V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 214
    iput p1, v0, Landroid/os/Message;->what:I

    .line 215
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 216
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 217
    iget-object p1, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessageToHandler(ILjava/lang/Object;)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->initHandler()V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 203
    iput p1, v0, Landroid/os/Message;->what:I

    .line 204
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 205
    iget-object p1, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
