.class public Lcom/unitech/api/display/DisplayCtrl;
.super Ljava/lang/Object;
.source "DisplayCtrl.java"


# static fields
.field private static final ACTION_BIND_SERVICE:Ljava/lang/String; = "com.unitech.dmservice.action.display"

.field public static final BUNDLE_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final BUNDLE_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field public static final BUNDLE_GLOVE_MODE:Ljava/lang/String; = "GloveMode"

.field private static DisplayCtrlAidl:Lcom/unitech/dmservice/IDisplayCtrlAidl; = null

.field public static final ERROR_UNSUPPORTED:Ljava/lang/String; = "Unsupported device"

.field private static final PKG_API_SERVICE:Ljava/lang/String; = "com.unitech.dmservice"

.field public static final RESULT_CODE_ERROR:I = 0x1

.field public static final RESULT_CODE_SUCCESS:I = 0x0

.field public static final SCREEN_ROTATION_AUTO:I = 0x5

.field public static final SCREEN_ROTATION_DISABLE:I = 0x0

.field public static final SCREEN_ROTATION_LANDSCAPE:I = 0x2

.field public static final SCREEN_ROTATION_PORTRAIT:I = 0x1

.field public static final SCREEN_ROTATION_REVERSE_LANDSCAPE:I = 0x4

.field public static final SCREEN_ROTATION_REVERSE_PORTRAIT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "UnitechSDK"

.field private static mContext:Landroid/content/Context; = null

.field private static mServiceChecked:I = -0x1

.field private static mServiceHandler:Lcom/unitech/api/util/ServiceHandler;


# instance fields
.field private final DISABLE:Ljava/lang/String;

.field private final ENABLE:Ljava/lang/String;


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

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "enable"

    .line 43
    iput-object v0, p0, Lcom/unitech/api/display/DisplayCtrl;->ENABLE:Ljava/lang/String;

    const-string v0, "disable"

    .line 44
    iput-object v0, p0, Lcom/unitech/api/display/DisplayCtrl;->DISABLE:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/unitech/api/display/DisplayCtrl;->mContext:Landroid/content/Context;

    .line 62
    sget-object v0, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/unitech/api/util/ServiceHandler;

    .line 64
    invoke-direct {p0}, Lcom/unitech/api/display/DisplayCtrl;->createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v1

    const-string v2, "com.unitech.dmservice"

    const-string v3, "com.unitech.dmservice.action.display"

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    sput-object v0, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    .line 66
    :cond_0
    sget p1, Lcom/unitech/api/display/DisplayCtrl;->mServiceChecked:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 67
    invoke-direct {p0}, Lcom/unitech/api/display/DisplayCtrl;->checkDisplayCtrlService()V

    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/unitech/dmservice/IDisplayCtrlAidl;)Lcom/unitech/dmservice/IDisplayCtrlAidl;
    .locals 0

    .line 24
    sput-object p0, Lcom/unitech/api/display/DisplayCtrl;->DisplayCtrlAidl:Lcom/unitech/dmservice/IDisplayCtrlAidl;

    return-object p0
.end method

.method private checkDisplayCtrlService()V
    .locals 5

    .line 72
    sget v0, Lcom/unitech/api/display/DisplayCtrl;->mServiceChecked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 79
    :cond_0
    sget-object v0, Lcom/unitech/api/display/DisplayCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 82
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

    .line 83
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

    const-string v0, "DisplayCtrl, package com.unitech.dmservice is found."

    .line 90
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sput v3, Lcom/unitech/api/display/DisplayCtrl;->mServiceChecked:I

    goto :goto_1

    :cond_3
    const-string v0, "DisplayCtrl, package com.unitech.dmservice is not found"

    .line 93
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sput v1, Lcom/unitech/api/display/DisplayCtrl;->mServiceChecked:I

    :goto_1
    return-void
.end method

.method private createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
    .locals 1

    .line 106
    new-instance v0, Lcom/unitech/api/display/DisplayCtrl$1;

    invoke-direct {v0, p0}, Lcom/unitech/api/display/DisplayCtrl$1;-><init>(Lcom/unitech/api/display/DisplayCtrl;)V

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

    .line 129
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "calling this from your main thread can lead to deadlock"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private getBoolean(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 150
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "disable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 152
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 154
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 157
    :cond_3
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 99
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    .line 100
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "errorMsg"

    .line 101
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private tryToBindService()Z
    .locals 1

    .line 138
    :try_start_0
    sget-object v0, Lcom/unitech/api/display/DisplayCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unitech/api/display/DisplayCtrl;->ensureNotOnMainThread(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    sget-object v0, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public DisableScreenLock()Landroid/os/Bundle;
    .locals 6

    .line 640
    invoke-direct {p0}, Lcom/unitech/api/display/DisplayCtrl;->tryToBindService()Z

    .line 641
    sget-object v0, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    const-string v2, "UnitechSDK"

    const-string v3, "DisplayCtrl, DisableScreenLock()"

    .line 643
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    sget-object v2, Lcom/unitech/api/display/DisplayCtrl;->DisplayCtrlAidl:Lcom/unitech/dmservice/IDisplayCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 648
    :try_start_0
    invoke-interface {v2}, Lcom/unitech/dmservice/IDisplayCtrlAidl;->DisableScreenLock()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 650
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 651
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 652
    invoke-direct {p0, v4, v2}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 655
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 656
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "DisplayCtrlAidl.DisableScreenLock exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "DisplayCtrlAidl is null."

    .line 659
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 662
    :goto_0
    sget-object v3, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v3, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v2
.end method

.method public GetDisplayTimeout()Landroid/os/Bundle;
    .locals 9

    const-string v0, "DisplayTimeout"

    .line 218
    invoke-direct {p0}, Lcom/unitech/api/display/DisplayCtrl;->tryToBindService()Z

    .line 219
    sget-object v1, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v1

    const-string v3, "UnitechSDK"

    const-string v4, "DisplayCtrl, GetDisplayTimeout()"

    .line 221
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    sget-object v4, Lcom/unitech/api/display/DisplayCtrl;->DisplayCtrlAidl:Lcom/unitech/dmservice/IDisplayCtrlAidl;

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 226
    :try_start_0
    invoke-interface {v4}, Lcom/unitech/dmservice/IDisplayCtrlAidl;->GetDisplayTimeout()Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "errorCode"

    .line 228
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "errorMsg"

    .line 229
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 230
    invoke-direct {p0, v6, v7}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 232
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DisplayCtrl, GetDisplayTimeout(), DisplayTimeout="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 237
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 238
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "DisplayCtrlAidl.GetDisplayTimeout exception: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    goto :goto_0

    :cond_0
    const-string v0, "DisplayCtrlAidl is null."

    .line 241
    invoke-direct {p0, v5, v0}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 244
    :goto_0
    sget-object v0, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v1, v2}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v6
.end method

.method public GetFontSize()Landroid/os/Bundle;
    .locals 9

    const-string v0, "FontSize"

    .line 478
    invoke-direct {p0}, Lcom/unitech/api/display/DisplayCtrl;->tryToBindService()Z

    .line 479
    sget-object v1, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v1

    const-string v3, "UnitechSDK"

    const-string v4, "DisplayCtrl, GetFontSize()"

    .line 481
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    sget-object v4, Lcom/unitech/api/display/DisplayCtrl;->DisplayCtrlAidl:Lcom/unitech/dmservice/IDisplayCtrlAidl;

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 486
    :try_start_0
    invoke-interface {v4}, Lcom/unitech/dmservice/IDisplayCtrlAidl;->GetFontSize()Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "errorCode"

    .line 488
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "errorMsg"

    .line 489
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 490
    invoke-direct {p0, v6, v7}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 492
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DisplayCtrl, GetFontSize(), FontSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 496
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 497
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "DisplayCtrlAidl.GetFontSize exception: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    goto :goto_0

    :cond_0
    const-string v0, "DisplayCtrlAidl is null."

    .line 500
    invoke-direct {p0, v5, v0}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 503
    :goto_0
    sget-object v0, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v1, v2}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v6
.end method

.method public GetScreenBacklightLevel()Landroid/os/Bundle;
    .locals 9

    const-string v0, "ScreenBacklightLevel"

    .line 559
    invoke-direct {p0}, Lcom/unitech/api/display/DisplayCtrl;->tryToBindService()Z

    .line 560
    sget-object v1, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v1

    const-string v3, "UnitechSDK"

    const-string v4, "DisplayCtrl, GetScreenBacklightLevel()"

    .line 562
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    sget-object v4, Lcom/unitech/api/display/DisplayCtrl;->DisplayCtrlAidl:Lcom/unitech/dmservice/IDisplayCtrlAidl;

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 567
    :try_start_0
    invoke-interface {v4}, Lcom/unitech/dmservice/IDisplayCtrlAidl;->GetScreenBacklightLevel()Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "errorCode"

    .line 569
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "errorMsg"

    .line 570
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 571
    invoke-direct {p0, v6, v7}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 573
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 574
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DisplayCtrl, GetScreenBacklightLevel(), ScreenBacklightLevel="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 577
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 578
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "DisplayCtrlAidl.GetScreenBacklightLevel exception: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    goto :goto_0

    :cond_0
    const-string v0, "DisplayCtrlAidl is null."

    .line 581
    invoke-direct {p0, v5, v0}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 584
    :goto_0
    sget-object v0, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v1, v2}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v6
.end method

.method public GetStayAwake()Landroid/os/Bundle;
    .locals 9

    const-string v0, "StayAwake"

    .line 395
    invoke-direct {p0}, Lcom/unitech/api/display/DisplayCtrl;->tryToBindService()Z

    .line 396
    sget-object v1, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v1

    const-string v3, "UnitechSDK"

    const-string v4, "DisplayCtrl, GetStayAwake()"

    .line 398
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    sget-object v4, Lcom/unitech/api/display/DisplayCtrl;->DisplayCtrlAidl:Lcom/unitech/dmservice/IDisplayCtrlAidl;

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 403
    :try_start_0
    invoke-interface {v4}, Lcom/unitech/dmservice/IDisplayCtrlAidl;->GetStayAwake()Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "errorCode"

    .line 405
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "errorMsg"

    .line 406
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 407
    invoke-direct {p0, v6, v7}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 409
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 410
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DisplayCtrl, GetStayAwake(), StayAwake="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 413
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 414
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "DisplayCtrlAidl.GetStayAwake exception: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    goto :goto_0

    :cond_0
    const-string v0, "DisplayCtrlAidl is null."

    .line 417
    invoke-direct {p0, v5, v0}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 420
    :goto_0
    sget-object v0, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v1, v2}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v6
.end method

.method public SetAutoBrightness(I)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayCtrl, SetAutoBrightness(), mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const-string p1, "DisplayCtrl, SetAutoBrightness failed: mode is out of range (0 or 1)."

    .line 600
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 604
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/display/DisplayCtrl;->tryToBindService()Z

    .line 605
    sget-object v1, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v1

    .line 607
    sget-object v3, Lcom/unitech/api/display/DisplayCtrl;->DisplayCtrlAidl:Lcom/unitech/dmservice/IDisplayCtrlAidl;

    if-eqz v3, :cond_1

    .line 610
    :try_start_0
    invoke-interface {v3, p1}, Lcom/unitech/dmservice/IDisplayCtrlAidl;->SetAutoBrightness(I)Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "errorCode"

    .line 612
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "errorMsg"

    .line 613
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 614
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 617
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 618
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    const-string p1, "DisplayCtrlAidl.SetAutoBrightness exception: %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "DisplayCtrlAidl is null."

    .line 621
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 624
    :goto_0
    sget-object v0, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v1, v2}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public SetAutoRotation(Z)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 678
    invoke-direct {p0}, Lcom/unitech/api/display/DisplayCtrl;->tryToBindService()Z

    .line 679
    sget-object v0, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 681
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisplayCtrl, SetRotationLock(), enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UnitechSDK"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    sget-object v2, Lcom/unitech/api/display/DisplayCtrl;->DisplayCtrlAidl:Lcom/unitech/dmservice/IDisplayCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 686
    :try_start_0
    invoke-interface {v2, p1}, Lcom/unitech/dmservice/IDisplayCtrlAidl;->SetAutoRotation(Z)Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "errorCode"

    .line 688
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v4, "errorMsg"

    .line 689
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 690
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 693
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 694
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "DisplayCtrlAidl.SetAutoRotation exception: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "DisplayCtrlAidl is null."

    .line 697
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 700
    :goto_0
    sget-object v2, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public SetDisplayTimeout(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeout"
        }
    .end annotation

    .line 178
    invoke-direct {p0}, Lcom/unitech/api/display/DisplayCtrl;->tryToBindService()Z

    .line 179
    sget-object v0, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisplayCtrl, SetDisplayTimeout(), timeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UnitechSDK"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sget-object v2, Lcom/unitech/api/display/DisplayCtrl;->DisplayCtrlAidl:Lcom/unitech/dmservice/IDisplayCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 186
    :try_start_0
    invoke-interface {v2, p1}, Lcom/unitech/dmservice/IDisplayCtrlAidl;->SetDisplayTimeout(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "errorCode"

    .line 188
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v4, "errorMsg"

    .line 189
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 193
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 194
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "DisplayCtrlAidl.SetDisplayTimeout exception: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "DisplayCtrlAidl is null."

    .line 197
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 200
    :goto_0
    sget-object v2, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public SetFontSize(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayCtrl, SetFontSize(), data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "DisplayCtrl, SetFontSize failed: data cannot be empty."

    .line 437
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 441
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/display/DisplayCtrl;->tryToBindService()Z

    .line 442
    sget-object v0, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v2

    .line 444
    sget-object v0, Lcom/unitech/api/display/DisplayCtrl;->DisplayCtrlAidl:Lcom/unitech/dmservice/IDisplayCtrlAidl;

    if-eqz v0, :cond_1

    .line 447
    :try_start_0
    invoke-interface {v0, p1}, Lcom/unitech/dmservice/IDisplayCtrlAidl;->SetFontSize(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    .line 449
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v4, "errorMsg"

    .line 450
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 451
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 454
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 455
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "DisplayCtrlAidl.SetFontSize exception: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "DisplayCtrlAidl is null."

    .line 458
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 461
    :goto_0
    sget-object v0, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public SetScreenBacklightLevel(I)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayCtrl, SetScreenBacklightLevel(), value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pa768"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-lt p1, v0, :cond_2

    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 523
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/display/DisplayCtrl;->tryToBindService()Z

    .line 524
    sget-object v0, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v2

    .line 525
    sget-object v0, Lcom/unitech/api/display/DisplayCtrl;->DisplayCtrlAidl:Lcom/unitech/dmservice/IDisplayCtrlAidl;

    if-eqz v0, :cond_1

    .line 528
    :try_start_0
    invoke-interface {v0, p1}, Lcom/unitech/dmservice/IDisplayCtrlAidl;->SetScreenBacklightLevel(I)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    .line 530
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v4, "errorMsg"

    .line 531
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 532
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 535
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 536
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "DisplayCtrlAidl.SetScreenBacklightLevel exception: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "DisplayCtrlAidl is null."

    .line 539
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 542
    :goto_0
    sget-object v0, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1

    :cond_2
    :goto_1
    const-string p1, "DisplayCtrl, SetScreenBacklightLevel() failed: value is out of range (0-255), PA768 min val is 1."

    .line 519
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public SetScreenOrientation(I)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayCtrl, SetScreenOrientation, orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ltz p1, :cond_2

    const/4 v1, 0x5

    if-le p1, v1, :cond_0

    goto :goto_1

    .line 319
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/display/DisplayCtrl;->tryToBindService()Z

    .line 320
    sget-object v1, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v1

    .line 322
    sget-object v3, Lcom/unitech/api/display/DisplayCtrl;->DisplayCtrlAidl:Lcom/unitech/dmservice/IDisplayCtrlAidl;

    if-eqz v3, :cond_1

    .line 325
    :try_start_0
    invoke-interface {v3, p1}, Lcom/unitech/dmservice/IDisplayCtrlAidl;->SetScreenOrientation(I)Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "errorCode"

    .line 327
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "errorMsg"

    .line 328
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 329
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 332
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 333
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    const-string p1, "DisplayCtrlAidl.SetScreenOrientation exception: %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "DisplayCtrlAidl is null."

    .line 336
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 339
    :goto_0
    sget-object v0, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v1, v2}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1

    :cond_2
    :goto_1
    const-string p1, "DisplayCtrl, SetScreenOrientation failed: orientation is out of range (0-5)."

    .line 315
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public SetStayAwake(I)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayCtrl, SetStayAwake(), input="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const-string p1, "DisplayCtrl, SetStayAwake failed: input is out of range (0 or 1)."

    .line 267
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 271
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/display/DisplayCtrl;->tryToBindService()Z

    .line 272
    sget-object v1, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v1

    .line 274
    sget-object v3, Lcom/unitech/api/display/DisplayCtrl;->DisplayCtrlAidl:Lcom/unitech/dmservice/IDisplayCtrlAidl;

    if-eqz v3, :cond_1

    .line 277
    :try_start_0
    invoke-interface {v3, p1}, Lcom/unitech/dmservice/IDisplayCtrlAidl;->SetStayAwake(I)Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "errorCode"

    .line 279
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "errorMsg"

    .line 280
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 281
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 284
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 285
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    const-string p1, "DisplayCtrlAidl.SetStayAwake exception: %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "DisplayCtrlAidl is null."

    .line 288
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 291
    :goto_0
    sget-object v0, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v1, v2}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public ShowLockScreenNotification(Z)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .line 356
    invoke-direct {p0}, Lcom/unitech/api/display/DisplayCtrl;->tryToBindService()Z

    .line 357
    sget-object v0, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisplayCtrl, ShowLockScreenNotification(), show="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UnitechSDK"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    sget-object v2, Lcom/unitech/api/display/DisplayCtrl;->DisplayCtrlAidl:Lcom/unitech/dmservice/IDisplayCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 364
    :try_start_0
    invoke-interface {v2, p1}, Lcom/unitech/dmservice/IDisplayCtrlAidl;->ShowLockScreenNotification(Z)Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "errorCode"

    .line 366
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v4, "errorMsg"

    .line 367
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 368
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 371
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 372
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "DisplayCtrlAidl.SetLockScreenNotification exception: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "DisplayCtrlAidl is null."

    .line 375
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 378
    :goto_0
    sget-object v2, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public getGloveMode()Landroid/os/Bundle;
    .locals 6

    .line 753
    invoke-direct {p0}, Lcom/unitech/api/display/DisplayCtrl;->tryToBindService()Z

    .line 754
    sget-object v0, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    const-string v2, "UnitechSDK"

    const-string v3, "DisplayCtrl, getGloveMode()"

    .line 756
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    sget-object v2, Lcom/unitech/api/display/DisplayCtrl;->DisplayCtrlAidl:Lcom/unitech/dmservice/IDisplayCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 760
    :try_start_0
    invoke-interface {v2}, Lcom/unitech/dmservice/IDisplayCtrlAidl;->getGloveMode()Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 767
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 768
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "DisplayCtrlAidl.getGloveMode exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "DisplayCtrlAidl is null."

    .line 771
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 774
    :goto_0
    sget-object v3, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v3, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v2
.end method

.method public getScreenOrientation()Landroid/os/Bundle;
    .locals 6

    .line 855
    invoke-direct {p0}, Lcom/unitech/api/display/DisplayCtrl;->tryToBindService()Z

    .line 856
    sget-object v0, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 860
    sget-object v2, Lcom/unitech/api/display/DisplayCtrl;->DisplayCtrlAidl:Lcom/unitech/dmservice/IDisplayCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 862
    :try_start_0
    invoke-interface {v2}, Lcom/unitech/dmservice/IDisplayCtrlAidl;->getScreenOrientation()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 864
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 865
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 866
    invoke-direct {p0, v4, v5}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 867
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 870
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 871
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "DisplayCtrlAidl.getScreenOrientation exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v2, "DisplayCtrlAidl is null."

    .line 874
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 877
    :goto_0
    sget-object v2, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4
.end method

.method public getScreenPixels()Landroid/os/Bundle;
    .locals 6

    .line 820
    invoke-direct {p0}, Lcom/unitech/api/display/DisplayCtrl;->tryToBindService()Z

    .line 821
    sget-object v0, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 825
    sget-object v2, Lcom/unitech/api/display/DisplayCtrl;->DisplayCtrlAidl:Lcom/unitech/dmservice/IDisplayCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 827
    :try_start_0
    invoke-interface {v2}, Lcom/unitech/dmservice/IDisplayCtrlAidl;->getScreenPixels()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 828
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 829
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 830
    invoke-direct {p0, v4, v5}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 831
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 834
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 835
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "DisplayCtrlAidl.getScreenPixels exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v2, "DisplayCtrlAidl is null."

    .line 838
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 841
    :goto_0
    sget-object v2, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4
.end method

.method public setDisplayBatteryPercentage(Z)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 716
    invoke-direct {p0}, Lcom/unitech/api/display/DisplayCtrl;->tryToBindService()Z

    .line 717
    sget-object v0, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 719
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisplayCtrl, setDisplayBatteryPercentage(), enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UnitechSDK"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    sget-object v2, Lcom/unitech/api/display/DisplayCtrl;->DisplayCtrlAidl:Lcom/unitech/dmservice/IDisplayCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 724
    :try_start_0
    invoke-interface {v2, p1}, Lcom/unitech/dmservice/IDisplayCtrlAidl;->setDisplayBatteryPercentage(Z)Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "errorCode"

    .line 726
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v4, "errorMsg"

    .line 727
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 728
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 731
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 732
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "DisplayCtrlAidl.setDisplayBatteryPercentage exception: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "DisplayCtrlAidl is null."

    .line 735
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 738
    :goto_0
    sget-object v2, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public setGloveMode(Z)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 789
    invoke-direct {p0}, Lcom/unitech/api/display/DisplayCtrl;->tryToBindService()Z

    .line 790
    sget-object v0, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 792
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisplayCtrl, setGloveMode(), enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UnitechSDK"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    sget-object v2, Lcom/unitech/api/display/DisplayCtrl;->DisplayCtrlAidl:Lcom/unitech/dmservice/IDisplayCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 796
    :try_start_0
    invoke-interface {v2, p1}, Lcom/unitech/dmservice/IDisplayCtrlAidl;->setGloveMode(Z)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 798
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 799
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "DisplayCtrlAidl.setGloveMode exception: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "DisplayCtrlAidl is null."

    .line 802
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/display/DisplayCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 805
    :goto_0
    sget-object v2, Lcom/unitech/api/display/DisplayCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method
