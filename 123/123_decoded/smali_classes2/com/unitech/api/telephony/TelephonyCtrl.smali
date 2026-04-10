.class public Lcom/unitech/api/telephony/TelephonyCtrl;
.super Ljava/lang/Object;
.source "TelephonyCtrl.java"


# static fields
.field private static final ACTION_BIND_SERVICE:Ljava/lang/String; = "com.unitech.dmservice.action.telephony"

.field public static final BUNDLE_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final BUNDLE_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field private static final PKG_API_SERVICE:Ljava/lang/String; = "com.unitech.dmservice"

.field public static final RESULT_CODE_ERROR:I = 0x1

.field public static final RESULT_CODE_SUCCESS:I

.field private static iTelephonyAidl:Lcom/unitech/dmservice/ITelephonyAidl;

.field private static mServiceHandler:Lcom/unitech/api/util/ServiceHandler;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mServiceChecked:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DMS_TS"

    .line 20
    iput-object v0, p0, Lcom/unitech/api/telephony/TelephonyCtrl;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/unitech/api/telephony/TelephonyCtrl;->mServiceChecked:I

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/unitech/api/telephony/TelephonyCtrl;->mContext:Landroid/content/Context;

    .line 34
    sget-object v1, Lcom/unitech/api/telephony/TelephonyCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/unitech/api/util/ServiceHandler;

    .line 36
    invoke-direct {p0}, Lcom/unitech/api/telephony/TelephonyCtrl;->createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v2

    const-string v3, "com.unitech.dmservice"

    const-string v4, "com.unitech.dmservice.action.telephony"

    invoke-direct {v1, p1, v3, v4, v2}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    sput-object v1, Lcom/unitech/api/telephony/TelephonyCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    .line 38
    :cond_0
    iget p1, p0, Lcom/unitech/api/telephony/TelephonyCtrl;->mServiceChecked:I

    if-ne p1, v0, :cond_1

    .line 39
    invoke-direct {p0}, Lcom/unitech/api/telephony/TelephonyCtrl;->checkLocationCtrlService()V

    :cond_1
    return-void
.end method

.method static synthetic access$000()Lcom/unitech/dmservice/ITelephonyAidl;
    .locals 1

    .line 19
    sget-object v0, Lcom/unitech/api/telephony/TelephonyCtrl;->iTelephonyAidl:Lcom/unitech/dmservice/ITelephonyAidl;

    return-object v0
.end method

.method static synthetic access$002(Lcom/unitech/dmservice/ITelephonyAidl;)Lcom/unitech/dmservice/ITelephonyAidl;
    .locals 0

    .line 19
    sput-object p0, Lcom/unitech/api/telephony/TelephonyCtrl;->iTelephonyAidl:Lcom/unitech/dmservice/ITelephonyAidl;

    return-object p0
.end method

.method private checkLocationCtrlService()V
    .locals 5

    .line 43
    iget v0, p0, Lcom/unitech/api/telephony/TelephonyCtrl;->mServiceChecked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/unitech/api/telephony/TelephonyCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 54
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.unitech.dmservice"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-string v2, "DMS_TS"

    if-eqz v0, :cond_3

    const-string v0, "TelephonyCtrl, package com.unitech.dmservice is found."

    .line 61
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iput v3, p0, Lcom/unitech/api/telephony/TelephonyCtrl;->mServiceChecked:I

    goto :goto_1

    :cond_3
    const-string v0, "TelephonyCtrl, package com.unitech.dmservice is not found"

    .line 64
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iput v1, p0, Lcom/unitech/api/telephony/TelephonyCtrl;->mServiceChecked:I

    :goto_1
    return-void
.end method

.method private createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
    .locals 1

    .line 77
    new-instance v0, Lcom/unitech/api/telephony/TelephonyCtrl$1;

    invoke-direct {v0, p0}, Lcom/unitech/api/telephony/TelephonyCtrl$1;-><init>(Lcom/unitech/api/telephony/TelephonyCtrl;)V

    return-object v0
.end method

.method private ensureNotOnMainThread(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 104
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "calling this from your main thread can lead to deadlock"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "errorCode",
            "errorMsg"
        }
    .end annotation

    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    .line 71
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "errorMsg"

    .line 72
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private tryToBindService()Z
    .locals 1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/telephony/TelephonyCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unitech/api/telephony/TelephonyCtrl;->ensureNotOnMainThread(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    sget-object v0, Lcom/unitech/api/telephony/TelephonyCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public deleteESimSubscriptionByName(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 309
    invoke-direct {p0}, Lcom/unitech/api/telephony/TelephonyCtrl;->tryToBindService()Z

    .line 310
    sget-object v0, Lcom/unitech/api/telephony/TelephonyCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 313
    sget-object v2, Lcom/unitech/api/telephony/TelephonyCtrl;->iTelephonyAidl:Lcom/unitech/dmservice/ITelephonyAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 315
    :try_start_0
    invoke-interface {v2, p1}, Lcom/unitech/dmservice/ITelephonyAidl;->deleteESimSubscriptionByName(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "errorCode"

    .line 316
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v4, "errorMsg"

    .line 317
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 318
    invoke-direct {p0, v2, v4}, Lcom/unitech/api/telephony/TelephonyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 319
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 322
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 323
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "iTelephonyAidl.deleteESimSubscription exception: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/telephony/TelephonyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string p1, "TelephonyCtrl is null."

    .line 326
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/telephony/TelephonyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 329
    :goto_0
    sget-object p1, Lcom/unitech/api/telephony/TelephonyCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p1, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v2
.end method

.method public downloadESimSubscription(Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activateCode",
            "switchAfterDownload"
        }
    .end annotation

    .line 272
    invoke-direct {p0}, Lcom/unitech/api/telephony/TelephonyCtrl;->tryToBindService()Z

    .line 273
    sget-object v0, Lcom/unitech/api/telephony/TelephonyCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 277
    sget-object v2, Lcom/unitech/api/telephony/TelephonyCtrl;->iTelephonyAidl:Lcom/unitech/dmservice/ITelephonyAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 279
    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/unitech/dmservice/ITelephonyAidl;->downloadESimSubscription(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "errorCode"

    .line 280
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string v2, "errorMsg"

    .line 281
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 282
    invoke-direct {p0, p2, v2}, Lcom/unitech/api/telephony/TelephonyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 283
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 286
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array p2, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 287
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    const-string p1, "iTelephonyAidl.downloadESimsubscription exception: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/telephony/TelephonyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p1, "TelephonyCtrl is null."

    .line 290
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/telephony/TelephonyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 293
    :goto_0
    sget-object p1, Lcom/unitech/api/telephony/TelephonyCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p1, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p2
.end method

.method public getEID()Landroid/os/Bundle;
    .locals 6

    .line 381
    invoke-direct {p0}, Lcom/unitech/api/telephony/TelephonyCtrl;->tryToBindService()Z

    .line 382
    sget-object v0, Lcom/unitech/api/telephony/TelephonyCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 384
    sget-object v2, Lcom/unitech/api/telephony/TelephonyCtrl;->iTelephonyAidl:Lcom/unitech/dmservice/ITelephonyAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 386
    :try_start_0
    invoke-interface {v2}, Lcom/unitech/dmservice/ITelephonyAidl;->getEID()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 387
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 388
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 389
    invoke-direct {p0, v4, v5}, Lcom/unitech/api/telephony/TelephonyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 390
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 393
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 394
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "iTelephonyAidl.getEID exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/telephony/TelephonyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v2, "TelephonyCtrl is null."

    .line 397
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/telephony/TelephonyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 400
    :goto_0
    sget-object v2, Lcom/unitech/api/telephony/TelephonyCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4
.end method

.method public getNetworkDataUsage()Landroid/os/Bundle;
    .locals 6

    .line 232
    invoke-direct {p0}, Lcom/unitech/api/telephony/TelephonyCtrl;->tryToBindService()Z

    .line 233
    sget-object v0, Lcom/unitech/api/telephony/TelephonyCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 237
    sget-object v2, Lcom/unitech/api/telephony/TelephonyCtrl;->iTelephonyAidl:Lcom/unitech/dmservice/ITelephonyAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 239
    :try_start_0
    invoke-interface {v2}, Lcom/unitech/dmservice/ITelephonyAidl;->getNetworkDataUsage()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 241
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 242
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 243
    invoke-direct {p0, v4, v5}, Lcom/unitech/api/telephony/TelephonyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 245
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 248
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 249
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "iTelephonyAidl.getNetworkDataUsage exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/telephony/TelephonyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v2, "TelephonyCtrl is null."

    .line 252
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/telephony/TelephonyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 255
    :goto_0
    sget-object v2, Lcom/unitech/api/telephony/TelephonyCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4
.end method

.method public getSubscriptionInfo()Landroid/os/Bundle;
    .locals 6

    .line 415
    invoke-direct {p0}, Lcom/unitech/api/telephony/TelephonyCtrl;->tryToBindService()Z

    .line 416
    sget-object v0, Lcom/unitech/api/telephony/TelephonyCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 418
    sget-object v2, Lcom/unitech/api/telephony/TelephonyCtrl;->iTelephonyAidl:Lcom/unitech/dmservice/ITelephonyAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 420
    :try_start_0
    invoke-interface {v2}, Lcom/unitech/dmservice/ITelephonyAidl;->getSubscriptionInfo()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 421
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 422
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 423
    invoke-direct {p0, v4, v5}, Lcom/unitech/api/telephony/TelephonyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 424
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 427
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 428
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "iTelephonyAidl.getSubscriptionInfo exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/telephony/TelephonyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v2, "TelephonyCtrl is null."

    .line 431
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/telephony/TelephonyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 434
    :goto_0
    sget-object v2, Lcom/unitech/api/telephony/TelephonyCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4
.end method

.method public isSimCardExist()Landroid/os/Bundle;
    .locals 6

    .line 144
    invoke-direct {p0}, Lcom/unitech/api/telephony/TelephonyCtrl;->tryToBindService()Z

    .line 145
    sget-object v0, Lcom/unitech/api/telephony/TelephonyCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iTelephonyAidl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/unitech/api/telephony/TelephonyCtrl;->iTelephonyAidl:Lcom/unitech/dmservice/ITelephonyAidl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DMS_TS"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    sget-object v2, Lcom/unitech/api/telephony/TelephonyCtrl;->iTelephonyAidl:Lcom/unitech/dmservice/ITelephonyAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 151
    :try_start_0
    invoke-interface {v2}, Lcom/unitech/dmservice/ITelephonyAidl;->isSimCardExist()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 153
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 154
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 155
    invoke-direct {p0, v4, v5}, Lcom/unitech/api/telephony/TelephonyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 157
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 160
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 161
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "iTelephonyAidl.isSimCardExist exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/telephony/TelephonyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v2, "TelephonyCtrl is null."

    .line 164
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/telephony/TelephonyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 167
    :goto_0
    sget-object v2, Lcom/unitech/api/telephony/TelephonyCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4
.end method

.method public switchESimByName(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 346
    invoke-direct {p0}, Lcom/unitech/api/telephony/TelephonyCtrl;->tryToBindService()Z

    .line 347
    sget-object v0, Lcom/unitech/api/telephony/TelephonyCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 349
    sget-object v2, Lcom/unitech/api/telephony/TelephonyCtrl;->iTelephonyAidl:Lcom/unitech/dmservice/ITelephonyAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 351
    :try_start_0
    invoke-interface {v2, p1}, Lcom/unitech/dmservice/ITelephonyAidl;->switchESimByName(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "errorCode"

    .line 352
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v4, "errorMsg"

    .line 353
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 354
    invoke-direct {p0, v2, v4}, Lcom/unitech/api/telephony/TelephonyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 355
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 358
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 359
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "iTelephonyAidl.switchESimWithDisplayName exception: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/telephony/TelephonyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string p1, "TelephonyCtrl is null."

    .line 362
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/telephony/TelephonyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 365
    :goto_0
    sget-object p1, Lcom/unitech/api/telephony/TelephonyCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p1, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v2
.end method
