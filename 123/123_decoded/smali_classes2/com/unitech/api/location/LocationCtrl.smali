.class public Lcom/unitech/api/location/LocationCtrl;
.super Ljava/lang/Object;
.source "LocationCtrl.java"


# static fields
.field private static final ACTION_BIND_SERVICE:Ljava/lang/String; = "com.unitech.dmservice.action.location"

.field public static final BUNDLE_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final BUNDLE_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field private static LocationCtrlAidl:Lcom/unitech/dmservice/ILocationCtrlAidl; = null

.field private static final PKG_API_SERVICE:Ljava/lang/String; = "com.unitech.dmservice"

.field public static final RESULT_CODE_ERROR:I = 0x1

.field public static final RESULT_CODE_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UnitechSDK"

.field private static mContext:Landroid/content/Context; = null

.field private static mServiceChecked:I = -0x1

.field private static mServiceHandler:Lcom/unitech/api/util/ServiceHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/unitech/api/location/LocationCtrl;->mContext:Landroid/content/Context;

    .line 36
    sget-object v0, Lcom/unitech/api/location/LocationCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/unitech/api/util/ServiceHandler;

    .line 38
    invoke-direct {p0}, Lcom/unitech/api/location/LocationCtrl;->createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v1

    const-string v2, "com.unitech.dmservice"

    const-string v3, "com.unitech.dmservice.action.location"

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    sput-object v0, Lcom/unitech/api/location/LocationCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    .line 40
    :cond_0
    sget p1, Lcom/unitech/api/location/LocationCtrl;->mServiceChecked:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 41
    invoke-direct {p0}, Lcom/unitech/api/location/LocationCtrl;->checkLocationCtrlService()V

    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/unitech/dmservice/ILocationCtrlAidl;)Lcom/unitech/dmservice/ILocationCtrlAidl;
    .locals 0

    .line 18
    sput-object p0, Lcom/unitech/api/location/LocationCtrl;->LocationCtrlAidl:Lcom/unitech/dmservice/ILocationCtrlAidl;

    return-object p0
.end method

.method private checkLocationCtrlService()V
    .locals 5

    .line 46
    sget v0, Lcom/unitech/api/location/LocationCtrl;->mServiceChecked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 53
    :cond_0
    sget-object v0, Lcom/unitech/api/location/LocationCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 56
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

    .line 57
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
    const-string v2, "UnitechSDK"

    if-eqz v0, :cond_3

    const-string v0, "LocationCtrl, package com.unitech.dmservice is found."

    .line 64
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sput v3, Lcom/unitech/api/location/LocationCtrl;->mServiceChecked:I

    goto :goto_1

    :cond_3
    const-string v0, "LocationCtrl, package com.unitech.dmservice is not found"

    .line 67
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    sput v1, Lcom/unitech/api/location/LocationCtrl;->mServiceChecked:I

    :goto_1
    return-void
.end method

.method private createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
    .locals 1

    .line 80
    new-instance v0, Lcom/unitech/api/location/LocationCtrl$1;

    invoke-direct {v0, p0}, Lcom/unitech/api/location/LocationCtrl$1;-><init>(Lcom/unitech/api/location/LocationCtrl;)V

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

    .line 103
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 105
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

    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    .line 74
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "errorMsg"

    .line 75
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private tryToBindService()Z
    .locals 1

    .line 112
    :try_start_0
    sget-object v0, Lcom/unitech/api/location/LocationCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unitech/api/location/LocationCtrl;->ensureNotOnMainThread(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    sget-object v0, Lcom/unitech/api/location/LocationCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addGpsStatusListener()Landroid/os/Bundle;
    .locals 6

    .line 479
    invoke-direct {p0}, Lcom/unitech/api/location/LocationCtrl;->tryToBindService()Z

    .line 480
    sget-object v0, Lcom/unitech/api/location/LocationCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 484
    sget-object v2, Lcom/unitech/api/location/LocationCtrl;->LocationCtrlAidl:Lcom/unitech/dmservice/ILocationCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 486
    :try_start_0
    invoke-interface {v2}, Lcom/unitech/dmservice/ILocationCtrlAidl;->addGpsStatusListener()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 488
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 489
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 490
    invoke-direct {p0, v4, v5}, Lcom/unitech/api/location/LocationCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 492
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 495
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 496
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "LocationCtrlAidl.addGpsStatusListener exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/location/LocationCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v2, "LocationCtrlAidl is null."

    .line 499
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/location/LocationCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 502
    :goto_0
    sget-object v2, Lcom/unitech/api/location/LocationCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4
.end method

.method public getAccuracy()Landroid/os/Bundle;
    .locals 6

    .line 256
    invoke-direct {p0}, Lcom/unitech/api/location/LocationCtrl;->tryToBindService()Z

    .line 257
    sget-object v0, Lcom/unitech/api/location/LocationCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 261
    sget-object v2, Lcom/unitech/api/location/LocationCtrl;->LocationCtrlAidl:Lcom/unitech/dmservice/ILocationCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 263
    :try_start_0
    invoke-interface {v2}, Lcom/unitech/dmservice/ILocationCtrlAidl;->getAccuracy()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 265
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 266
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 267
    invoke-direct {p0, v4, v5}, Lcom/unitech/api/location/LocationCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 269
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 272
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 273
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "LocationCtrlAidl.getAccuracy exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/location/LocationCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v2, "LocationCtrlAidl is null."

    .line 276
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/location/LocationCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 279
    :goto_0
    sget-object v2, Lcom/unitech/api/location/LocationCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4
.end method

.method public getAllData()Landroid/os/Bundle;
    .locals 6

    .line 522
    invoke-direct {p0}, Lcom/unitech/api/location/LocationCtrl;->tryToBindService()Z

    .line 523
    sget-object v0, Lcom/unitech/api/location/LocationCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 527
    sget-object v2, Lcom/unitech/api/location/LocationCtrl;->LocationCtrlAidl:Lcom/unitech/dmservice/ILocationCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 529
    :try_start_0
    invoke-interface {v2}, Lcom/unitech/dmservice/ILocationCtrlAidl;->getAllData()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 531
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 532
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 533
    invoke-direct {p0, v4, v5}, Lcom/unitech/api/location/LocationCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 535
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 538
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 539
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "LocationCtrlAidl.getAllData exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/location/LocationCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v2, "LocationCtrlAidl is null."

    .line 542
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/location/LocationCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 545
    :goto_0
    sget-object v2, Lcom/unitech/api/location/LocationCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4
.end method

.method public getAltitude()Landroid/os/Bundle;
    .locals 6

    .line 218
    invoke-direct {p0}, Lcom/unitech/api/location/LocationCtrl;->tryToBindService()Z

    .line 219
    sget-object v0, Lcom/unitech/api/location/LocationCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 223
    sget-object v2, Lcom/unitech/api/location/LocationCtrl;->LocationCtrlAidl:Lcom/unitech/dmservice/ILocationCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 225
    :try_start_0
    invoke-interface {v2}, Lcom/unitech/dmservice/ILocationCtrlAidl;->getAltitude()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 227
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 228
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 229
    invoke-direct {p0, v4, v5}, Lcom/unitech/api/location/LocationCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 231
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 234
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 235
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "LocationCtrlAidl.getAltitude exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/location/LocationCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v2, "LocationCtrlAidl is null."

    .line 238
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/location/LocationCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 241
    :goto_0
    sget-object v2, Lcom/unitech/api/location/LocationCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4
.end method

.method public getGpsOpenStatus()Landroid/os/Bundle;
    .locals 6

    .line 180
    invoke-direct {p0}, Lcom/unitech/api/location/LocationCtrl;->tryToBindService()Z

    .line 181
    sget-object v0, Lcom/unitech/api/location/LocationCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 185
    sget-object v2, Lcom/unitech/api/location/LocationCtrl;->LocationCtrlAidl:Lcom/unitech/dmservice/ILocationCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 187
    :try_start_0
    invoke-interface {v2}, Lcom/unitech/dmservice/ILocationCtrlAidl;->getGpsOpenStatus()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 189
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 190
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 191
    invoke-direct {p0, v4, v5}, Lcom/unitech/api/location/LocationCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 193
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 196
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 197
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "LocationCtrlAidl.getGpsOpenStatus exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/location/LocationCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v2, "LocationCtrlAidl is null."

    .line 200
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/location/LocationCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 203
    :goto_0
    sget-object v2, Lcom/unitech/api/location/LocationCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4
.end method

.method public getLatitude()Landroid/os/Bundle;
    .locals 6

    .line 294
    invoke-direct {p0}, Lcom/unitech/api/location/LocationCtrl;->tryToBindService()Z

    .line 295
    sget-object v0, Lcom/unitech/api/location/LocationCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 299
    sget-object v2, Lcom/unitech/api/location/LocationCtrl;->LocationCtrlAidl:Lcom/unitech/dmservice/ILocationCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 301
    :try_start_0
    invoke-interface {v2}, Lcom/unitech/dmservice/ILocationCtrlAidl;->getLatitude()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 303
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 304
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 305
    invoke-direct {p0, v4, v5}, Lcom/unitech/api/location/LocationCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 307
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 310
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 311
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "LocationCtrlAidl.getLatitude exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/location/LocationCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v2, "LocationCtrlAidl is null."

    .line 314
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/location/LocationCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 317
    :goto_0
    sget-object v2, Lcom/unitech/api/location/LocationCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4
.end method

.method public getLongitude()Landroid/os/Bundle;
    .locals 6

    .line 331
    invoke-direct {p0}, Lcom/unitech/api/location/LocationCtrl;->tryToBindService()Z

    .line 332
    sget-object v0, Lcom/unitech/api/location/LocationCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 336
    sget-object v2, Lcom/unitech/api/location/LocationCtrl;->LocationCtrlAidl:Lcom/unitech/dmservice/ILocationCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 338
    :try_start_0
    invoke-interface {v2}, Lcom/unitech/dmservice/ILocationCtrlAidl;->getLongitude()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 340
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 341
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 342
    invoke-direct {p0, v4, v5}, Lcom/unitech/api/location/LocationCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 344
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 347
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 348
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "LocationCtrlAidl.getLongitude exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/location/LocationCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v2, "LocationCtrlAidl is null."

    .line 351
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/location/LocationCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 354
    :goto_0
    sget-object v2, Lcom/unitech/api/location/LocationCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4
.end method

.method public getProvider()Landroid/os/Bundle;
    .locals 6

    .line 368
    invoke-direct {p0}, Lcom/unitech/api/location/LocationCtrl;->tryToBindService()Z

    .line 369
    sget-object v0, Lcom/unitech/api/location/LocationCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 373
    sget-object v2, Lcom/unitech/api/location/LocationCtrl;->LocationCtrlAidl:Lcom/unitech/dmservice/ILocationCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 375
    :try_start_0
    invoke-interface {v2}, Lcom/unitech/dmservice/ILocationCtrlAidl;->getProvider()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 377
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 378
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 379
    invoke-direct {p0, v4, v5}, Lcom/unitech/api/location/LocationCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 381
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 384
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 385
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "LocationCtrlAidl.getProvider exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/location/LocationCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v2, "LocationCtrlAidl is null."

    .line 388
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/location/LocationCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 391
    :goto_0
    sget-object v2, Lcom/unitech/api/location/LocationCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4
.end method

.method public getSpeed()Landroid/os/Bundle;
    .locals 6

    .line 405
    invoke-direct {p0}, Lcom/unitech/api/location/LocationCtrl;->tryToBindService()Z

    .line 406
    sget-object v0, Lcom/unitech/api/location/LocationCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 410
    sget-object v2, Lcom/unitech/api/location/LocationCtrl;->LocationCtrlAidl:Lcom/unitech/dmservice/ILocationCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 412
    :try_start_0
    invoke-interface {v2}, Lcom/unitech/dmservice/ILocationCtrlAidl;->getSpeed()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 414
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 415
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 416
    invoke-direct {p0, v4, v5}, Lcom/unitech/api/location/LocationCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 418
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 421
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 422
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "LocationCtrlAidl.getSpeed exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/location/LocationCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v2, "LocationCtrlAidl is null."

    .line 425
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/location/LocationCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 428
    :goto_0
    sget-object v2, Lcom/unitech/api/location/LocationCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4
.end method

.method public getUTCTime()Landroid/os/Bundle;
    .locals 6

    .line 442
    invoke-direct {p0}, Lcom/unitech/api/location/LocationCtrl;->tryToBindService()Z

    .line 443
    sget-object v0, Lcom/unitech/api/location/LocationCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 447
    sget-object v2, Lcom/unitech/api/location/LocationCtrl;->LocationCtrlAidl:Lcom/unitech/dmservice/ILocationCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 449
    :try_start_0
    invoke-interface {v2}, Lcom/unitech/dmservice/ILocationCtrlAidl;->getUTCTime()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 451
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 452
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 453
    invoke-direct {p0, v4, v5}, Lcom/unitech/api/location/LocationCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 455
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 458
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 459
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "LocationCtrlAidl.getUTCTime exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/location/LocationCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v2, "LocationCtrlAidl is null."

    .line 462
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/location/LocationCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 465
    :goto_0
    sget-object v2, Lcom/unitech/api/location/LocationCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4
.end method

.method public setLocationMode(I)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    const/4 v0, 0x1

    if-ltz p1, :cond_3

    const/4 v1, 0x3

    if-le p1, v1, :cond_0

    goto :goto_1

    .line 138
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/location/LocationCtrl;->tryToBindService()Z

    .line 139
    sget-object v2, Lcom/unitech/api/location/LocationCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v2

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LocationCtrl, setLocationMode(), mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UnitechSDK"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v4, v6, :cond_1

    if-eqz p1, :cond_1

    const-string p1, "LocationCtrl, setLocationMode(), Android >= v9.0 , mode !=0, mode set 3 (high accuracy)"

    .line 144
    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    .line 148
    :cond_1
    sget-object v1, Lcom/unitech/api/location/LocationCtrl;->LocationCtrlAidl:Lcom/unitech/dmservice/ILocationCtrlAidl;

    if-eqz v1, :cond_2

    .line 151
    :try_start_0
    invoke-interface {v1, p1}, Lcom/unitech/dmservice/ILocationCtrlAidl;->setLocationMode(I)Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "errorCode"

    .line 153
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v4, "errorMsg"

    .line 154
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/location/LocationCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 158
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 159
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "LocationCtrlAidl.setLocationMode exception: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unitech/api/location/LocationCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "LocationCtrlAidl is null."

    .line 162
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/location/LocationCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 165
    :goto_0
    sget-object v0, Lcom/unitech/api/location/LocationCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1

    :cond_3
    :goto_1
    const-string p1, "LocationCtrl, setLocationMode failed: mode is out of range (0-3)."

    .line 136
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/location/LocationCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
