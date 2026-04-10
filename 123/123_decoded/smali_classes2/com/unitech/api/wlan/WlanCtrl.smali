.class public Lcom/unitech/api/wlan/WlanCtrl;
.super Ljava/lang/Object;
.source "WlanCtrl.java"


# static fields
.field private static final ACTION_BIND_SERVICE:Ljava/lang/String; = "com.unitech.dmservice.action.wlan"

.field public static final BUNDLE_ENABLED:Ljava/lang/String; = "enabled"

.field public static final BUNDLE_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final BUNDLE_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field private static final PKG_API_SERVICE:Ljava/lang/String; = "com.unitech.dmservice"

.field public static final RESULT_CODE_ERROR:I = 0x1

.field public static final RESULT_CODE_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UnitechSDK"

.field private static WlanCtrlAidl:Lcom/unitech/dmservice/IWlanCtrlAidl; = null

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

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/unitech/api/wlan/WlanCtrl;->mContext:Landroid/content/Context;

    .line 47
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/unitech/api/util/ServiceHandler;

    .line 49
    invoke-direct {p0}, Lcom/unitech/api/wlan/WlanCtrl;->createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v1

    const-string v2, "com.unitech.dmservice"

    const-string v3, "com.unitech.dmservice.action.wlan"

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    sput-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    .line 52
    :cond_0
    sget p1, Lcom/unitech/api/wlan/WlanCtrl;->mServiceChecked:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 53
    invoke-direct {p0}, Lcom/unitech/api/wlan/WlanCtrl;->checkWlanCtrlService()V

    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/unitech/dmservice/IWlanCtrlAidl;)Lcom/unitech/dmservice/IWlanCtrlAidl;
    .locals 0

    .line 21
    sput-object p0, Lcom/unitech/api/wlan/WlanCtrl;->WlanCtrlAidl:Lcom/unitech/dmservice/IWlanCtrlAidl;

    return-object p0
.end method

.method private checkWlanCtrlService()V
    .locals 5

    .line 58
    sget v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceChecked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 65
    :cond_0
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 68
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

    .line 69
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

    const-string v0, "WlanCtrl, package com.unitech.dmservice is found."

    .line 76
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sput v3, Lcom/unitech/api/wlan/WlanCtrl;->mServiceChecked:I

    goto :goto_1

    :cond_3
    const-string v0, "WlanCtrl, package com.unitech.dmservice is not found"

    .line 79
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sput v1, Lcom/unitech/api/wlan/WlanCtrl;->mServiceChecked:I

    :goto_1
    return-void
.end method

.method private createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
    .locals 1

    .line 92
    new-instance v0, Lcom/unitech/api/wlan/WlanCtrl$1;

    invoke-direct {v0, p0}, Lcom/unitech/api/wlan/WlanCtrl$1;-><init>(Lcom/unitech/api/wlan/WlanCtrl;)V

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

    .line 115
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 117
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

    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    .line 86
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "errorMsg"

    .line 87
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private tryToBindService()Z
    .locals 1

    .line 124
    :try_start_0
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unitech/api/wlan/WlanCtrl;->ensureNotOnMainThread(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public connectProfile(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ssid"
        }
    .end annotation

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WlanCtrl, connectProfile(), ssid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UnitechSDK"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    const-string p1, "WlanCtrl, connectProfile failed: ssid cannot be empty."

    .line 552
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 556
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/wlan/WlanCtrl;->tryToBindService()Z

    .line 557
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v4

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->WlanCtrlAidl:Lcom/unitech/dmservice/IWlanCtrlAidl;

    if-eqz v0, :cond_1

    .line 564
    :try_start_0
    invoke-interface {v0, p1}, Lcom/unitech/dmservice/IWlanCtrlAidl;->connectProfile(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    .line 566
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "errorMsg"

    .line 567
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 568
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 571
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 572
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "WlanCtrlAidl.connectProfile exception: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "WlanCtrlAidl is null."

    .line 575
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 578
    :goto_0
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v4, v5}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public deleteProfile(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ssid"
        }
    .end annotation

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WlanCtrl, deleteProfile(), ssid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "WlanCtrl, deleteProfile failed: ssid cannot be empty."

    .line 472
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 476
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/wlan/WlanCtrl;->tryToBindService()Z

    .line 477
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v2

    .line 479
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->WlanCtrlAidl:Lcom/unitech/dmservice/IWlanCtrlAidl;

    if-eqz v0, :cond_1

    .line 482
    :try_start_0
    invoke-interface {v0, p1}, Lcom/unitech/dmservice/IWlanCtrlAidl;->deleteProfile(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    .line 484
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v4, "errorMsg"

    .line 485
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 486
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 489
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 490
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "WlanCtrlAidl.deleteProfile exception: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "WlanCtrlAidl is null."

    .line 493
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 496
    :goto_0
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public getConnectedProfile()Landroid/os/Bundle;
    .locals 11

    const-string v0, "bssid"

    const-string v1, "ssid"

    .line 595
    invoke-direct {p0}, Lcom/unitech/api/wlan/WlanCtrl;->tryToBindService()Z

    .line 596
    sget-object v2, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v2

    const-string v4, "UnitechSDK"

    const-string v5, "WlanCtrl, getConnectedProfile()"

    .line 598
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    sget-object v5, Lcom/unitech/api/wlan/WlanCtrl;->WlanCtrlAidl:Lcom/unitech/dmservice/IWlanCtrlAidl;

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 603
    :try_start_0
    invoke-interface {v5}, Lcom/unitech/dmservice/IWlanCtrlAidl;->getConnectedProfile()Landroid/os/Bundle;

    move-result-object v5

    const-string v7, "errorCode"

    .line 605
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "errorMsg"

    .line 606
    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 607
    invoke-direct {p0, v7, v8}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 609
    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    .line 610
    invoke-virtual {v5, v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 611
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WlanCtrl, getConnectedProfile(), ssid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-virtual {v7, v1, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-virtual {v7, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 616
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-array v1, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 617
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    const-string v0, "WlanCtrlAidl.getConnectedProfile exception: %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    goto :goto_0

    :cond_0
    const-string v0, "WlanCtrlAidl is null."

    .line 620
    invoke-direct {p0, v6, v0}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 623
    :goto_0
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v7
.end method

.method public getIpAssignmentProfile(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ssid"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "Dns2"

    const-string v3, "Dns1"

    const-string v4, "Gateway"

    const-string v5, "PrefixLength"

    const-string v6, "IpAddress"

    const-string v7, "IpAssignment"

    .line 294
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WlanCtrl, getIpAssignmentProfile(), ssid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "UnitechSDK"

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v11, 0x1

    if-eqz v8, :cond_0

    const-string v0, "WlanCtrl, getIpAssignmentProfile failed: ssid cannot be empty."

    .line 296
    invoke-direct {v1, v11, v0}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 300
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/unitech/api/wlan/WlanCtrl;->tryToBindService()Z

    .line 301
    sget-object v8, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v8}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v12

    .line 303
    sget-object v8, Lcom/unitech/api/wlan/WlanCtrl;->WlanCtrlAidl:Lcom/unitech/dmservice/IWlanCtrlAidl;

    if-eqz v8, :cond_1

    .line 306
    :try_start_0
    invoke-interface {v8, v0}, Lcom/unitech/dmservice/IWlanCtrlAidl;->getIpAssignmentProfile(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    const-string v14, "errorCode"

    .line 308
    invoke-virtual {v8, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string v15, "errorMsg"

    .line 309
    invoke-virtual {v8, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 310
    invoke-direct {v1, v14, v15}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    .line 312
    invoke-virtual {v8, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 313
    invoke-virtual {v8, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-wide/from16 v16, v12

    .line 314
    :try_start_1
    invoke-virtual {v8, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 315
    invoke-virtual {v8, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 316
    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v18, v2

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ipAssignment: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ipAddress:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", prefixLength: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", gateway: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", dns1: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", dns2: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {v14, v7, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 328
    invoke-virtual {v14, v6, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v14, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 330
    invoke-virtual {v14, v4, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {v14, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    .line 332
    invoke-virtual {v14, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v2, p0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-wide/from16 v16, v12

    .line 335
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 336
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "WlanCtrlAidl.getIpAssignmentProfile exception: %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p0

    invoke-direct {v2, v1, v0}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    goto :goto_1

    :cond_1
    move-object v2, v1

    move-wide/from16 v16, v12

    const/4 v1, 0x1

    const-string v0, "WlanCtrlAidl is null."

    .line 339
    invoke-direct {v2, v1, v0}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    .line 342
    :goto_1
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    move-wide/from16 v3, v16

    invoke-virtual {v0, v3, v4}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v14
.end method

.method public getProxyProfile(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ssid"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "ExcList"

    const-string v3, "Port"

    const-string v4, "Host"

    const-string v5, "PacFileUrl"

    const-string v6, "ProxySettings"

    .line 411
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WlanCtrl, getProxyProfile(), ssid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "UnitechSDK"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v10, 0x1

    if-eqz v7, :cond_0

    const-string v0, "WlanCtrl, getProxyProfile failed: ssid cannot be empty."

    .line 413
    invoke-direct {v1, v10, v0}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 417
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/unitech/api/wlan/WlanCtrl;->tryToBindService()Z

    .line 418
    sget-object v7, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v7}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v11

    .line 420
    sget-object v7, Lcom/unitech/api/wlan/WlanCtrl;->WlanCtrlAidl:Lcom/unitech/dmservice/IWlanCtrlAidl;

    if-eqz v7, :cond_1

    .line 423
    :try_start_0
    invoke-interface {v7, v0}, Lcom/unitech/dmservice/IWlanCtrlAidl;->getProxyProfile(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    const-string v13, "errorCode"

    .line 425
    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    const-string v14, "errorMsg"

    .line 426
    invoke-virtual {v7, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 427
    invoke-direct {v1, v13, v14}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    .line 429
    invoke-virtual {v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 430
    invoke-virtual {v7, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 431
    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-wide/from16 v16, v11

    .line 432
    :try_start_1
    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 433
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 435
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ProxySettings: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", PacFileUrl:"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Host: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Port: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ExcList: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-virtual {v13, v6, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 443
    invoke-virtual {v13, v5, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-virtual {v13, v4, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-virtual {v13, v3, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 446
    invoke-virtual {v13, v2, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-wide/from16 v16, v11

    .line 449
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 450
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "WlanCtrlAidl.getProxyProfile exception: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    goto :goto_1

    :cond_1
    move-wide/from16 v16, v11

    const/4 v2, 0x1

    const-string v0, "WlanCtrlAidl is null."

    .line 453
    invoke-direct {v1, v2, v0}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    .line 456
    :goto_1
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    move-wide/from16 v2, v16

    invoke-virtual {v0, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v13
.end method

.method public getWLANConnectState()Landroid/os/Bundle;
    .locals 6

    .line 1140
    invoke-direct {p0}, Lcom/unitech/api/wlan/WlanCtrl;->tryToBindService()Z

    .line 1141
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 1145
    sget-object v2, Lcom/unitech/api/wlan/WlanCtrl;->WlanCtrlAidl:Lcom/unitech/dmservice/IWlanCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1147
    :try_start_0
    invoke-interface {v2}, Lcom/unitech/dmservice/IWlanCtrlAidl;->getWLANConnectState()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 1149
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 1150
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1151
    invoke-direct {p0, v4, v5}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 1152
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1155
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1156
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "WlanCtrlAidl.getWLANConnectState exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v2, "WlanCtrlAidl is null."

    .line 1159
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 1162
    :goto_0
    sget-object v2, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4
.end method

.method public getWLANIpAddress()Landroid/os/Bundle;
    .locals 6

    .line 1072
    invoke-direct {p0}, Lcom/unitech/api/wlan/WlanCtrl;->tryToBindService()Z

    .line 1073
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 1075
    sget-object v2, Lcom/unitech/api/wlan/WlanCtrl;->WlanCtrlAidl:Lcom/unitech/dmservice/IWlanCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1077
    :try_start_0
    invoke-interface {v2}, Lcom/unitech/dmservice/IWlanCtrlAidl;->getWLANIpAddress()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 1079
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 1080
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1081
    invoke-direct {p0, v4, v5}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 1082
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1085
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1086
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "WlanCtrlAidl.getWLANIpAddress exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v2, "WlanCtrlAidl is null."

    .line 1089
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 1092
    :goto_0
    sget-object v2, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4
.end method

.method public getWLANMACAddress()Landroid/os/Bundle;
    .locals 6

    .line 1038
    invoke-direct {p0}, Lcom/unitech/api/wlan/WlanCtrl;->tryToBindService()Z

    .line 1039
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 1041
    sget-object v2, Lcom/unitech/api/wlan/WlanCtrl;->WlanCtrlAidl:Lcom/unitech/dmservice/IWlanCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1043
    :try_start_0
    invoke-interface {v2}, Lcom/unitech/dmservice/IWlanCtrlAidl;->getWLANMACAddress()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 1045
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 1046
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1047
    invoke-direct {p0, v4, v5}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 1048
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1051
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1052
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "WlanCtrlAidl.getWLANMACAddress exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v2, "WlanCtrlAidl is null."

    .line 1055
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 1058
    :goto_0
    sget-object v2, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4
.end method

.method public getWLANSignalStrength()Landroid/os/Bundle;
    .locals 6

    .line 1106
    invoke-direct {p0}, Lcom/unitech/api/wlan/WlanCtrl;->tryToBindService()Z

    .line 1107
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 1109
    sget-object v2, Lcom/unitech/api/wlan/WlanCtrl;->WlanCtrlAidl:Lcom/unitech/dmservice/IWlanCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1111
    :try_start_0
    invoke-interface {v2}, Lcom/unitech/dmservice/IWlanCtrlAidl;->getWLANSignalStrength()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 1113
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 1114
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1115
    invoke-direct {p0, v4, v5}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 1116
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1119
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1120
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "WlanCtrlAidl.getWLANSignalStrength exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v2, "WlanCtrlAidl is null."

    .line 1123
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 1126
    :goto_0
    sget-object v2, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4
.end method

.method public getWifiProfile(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ssid"
        }
    .end annotation

    const-string v0, "SecurityMode"

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WlanCtrl, getWifiProfile(), ssid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnitechSDK"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const-string p1, "WlanCtrl, getWifiProfile failed: ssid cannot be empty."

    .line 190
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 194
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/wlan/WlanCtrl;->tryToBindService()Z

    .line 195
    sget-object v1, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v4

    .line 197
    sget-object v1, Lcom/unitech/api/wlan/WlanCtrl;->WlanCtrlAidl:Lcom/unitech/dmservice/IWlanCtrlAidl;

    if-eqz v1, :cond_1

    .line 200
    :try_start_0
    invoke-interface {v1, p1}, Lcom/unitech/dmservice/IWlanCtrlAidl;->getWifiProfile(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "errorCode"

    .line 202
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v6, "errorMsg"

    .line 203
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 204
    invoke-direct {p0, v1, v6}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 210
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WlanCtrl, getWifiProfile(), SecurityMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 214
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 215
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "WlanCtrlAidl.getWifiProfile exception: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string p1, "WlanCtrlAidl is null."

    .line 218
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 221
    :goto_0
    sget-object p1, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p1, v4, v5}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v1
.end method

.method public getWifiRandomizedMacStatus(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ssid"
        }
    .end annotation

    .line 964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WlanCtrl, getWifiRandomizedMacStatus(), ssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "WlanCtrl, getWifiRandomizedMacStatus failed: ssid cannot be empty."

    .line 966
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 970
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/wlan/WlanCtrl;->tryToBindService()Z

    .line 971
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v2

    .line 973
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->WlanCtrlAidl:Lcom/unitech/dmservice/IWlanCtrlAidl;

    if-eqz v0, :cond_1

    .line 975
    :try_start_0
    invoke-interface {v0, p1}, Lcom/unitech/dmservice/IWlanCtrlAidl;->getWifiRandomizedMac(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 978
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 979
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "WlanCtrlAidl.getWifiRandomizedMacStatus exception: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "WlanCtrlAidl is null."

    .line 982
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 985
    :goto_0
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public isProfileExisted(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ssid"
        }
    .end annotation

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WlanCtrl, isProfileExisted(), ssid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "WlanCtrl, isProfileExisted failed: ssid cannot be empty."

    .line 512
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 516
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/wlan/WlanCtrl;->tryToBindService()Z

    .line 517
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v2

    .line 519
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->WlanCtrlAidl:Lcom/unitech/dmservice/IWlanCtrlAidl;

    if-eqz v0, :cond_1

    .line 522
    :try_start_0
    invoke-interface {v0, p1}, Lcom/unitech/dmservice/IWlanCtrlAidl;->isProfileExisted(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    .line 524
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v4, "errorMsg"

    .line 525
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 526
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 529
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 530
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "WlanCtrlAidl.isProfileExisted exception: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "WlanCtrlAidl is null."

    .line 533
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 536
    :goto_0
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public isProfilesEmpty()Landroid/os/Bundle;
    .locals 6

    .line 675
    invoke-direct {p0}, Lcom/unitech/api/wlan/WlanCtrl;->tryToBindService()Z

    .line 676
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    const-string v2, "UnitechSDK"

    const-string v3, "WlanCtrl, isProfilesEmpty()"

    .line 678
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    sget-object v2, Lcom/unitech/api/wlan/WlanCtrl;->WlanCtrlAidl:Lcom/unitech/dmservice/IWlanCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 683
    :try_start_0
    invoke-interface {v2}, Lcom/unitech/dmservice/IWlanCtrlAidl;->isProfilesEmpty()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 685
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 686
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 687
    invoke-direct {p0, v4, v2}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 690
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 691
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "WlanCtrlAidl.isProfilesEmpty exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "WlanCtrlAidl is null."

    .line 694
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 697
    :goto_0
    sget-object v3, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v3, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v2
.end method

.method public removeAllProfiles()Landroid/os/Bundle;
    .locals 6

    .line 638
    invoke-direct {p0}, Lcom/unitech/api/wlan/WlanCtrl;->tryToBindService()Z

    .line 639
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    const-string v2, "UnitechSDK"

    const-string v3, "WlanCtrl, removeAllProfiles()"

    .line 641
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    sget-object v2, Lcom/unitech/api/wlan/WlanCtrl;->WlanCtrlAidl:Lcom/unitech/dmservice/IWlanCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 646
    :try_start_0
    invoke-interface {v2}, Lcom/unitech/dmservice/IWlanCtrlAidl;->removeAllProfiles()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 648
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 649
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 650
    invoke-direct {p0, v4, v2}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 653
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 654
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "WlanCtrlAidl.removeAllProfiles exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "WlanCtrlAidl is null."

    .line 657
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 660
    :goto_0
    sget-object v3, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v3, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v2
.end method

.method public setCaptivePortalHttpUrl(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WlanCtrl, setCaptivePortalHttpUrl(), url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "WlanCtrl, setCaptivePortalHttpUrl failed: url cannot be empty."

    .line 755
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 759
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/wlan/WlanCtrl;->tryToBindService()Z

    .line 760
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v2

    .line 762
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->WlanCtrlAidl:Lcom/unitech/dmservice/IWlanCtrlAidl;

    if-eqz v0, :cond_1

    .line 765
    :try_start_0
    invoke-interface {v0, p1}, Lcom/unitech/dmservice/IWlanCtrlAidl;->setCaptivePortalHttpUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    .line 767
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v4, "errorMsg"

    .line 768
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 769
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 772
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 773
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "WlanCtrlAidl.setCaptivePortalHttpUrl exception: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "WlanCtrlAidl is null."

    .line 776
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 779
    :goto_0
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public setCaptivePortalHttpsUrl(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WlanCtrl, setCaptivePortalHttpsUrl(), url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "WlanCtrl, setCaptivePortalHttpsUrl failed: url cannot be empty."

    .line 839
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 843
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/wlan/WlanCtrl;->tryToBindService()Z

    .line 844
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v2

    .line 846
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->WlanCtrlAidl:Lcom/unitech/dmservice/IWlanCtrlAidl;

    if-eqz v0, :cond_1

    .line 849
    :try_start_0
    invoke-interface {v0, p1}, Lcom/unitech/dmservice/IWlanCtrlAidl;->setCaptivePortalHttpsUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    .line 851
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v4, "errorMsg"

    .line 852
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 853
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 856
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 857
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "WlanCtrlAidl.setCaptivePortalHttpsUrl exception: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "WlanCtrlAidl is null."

    .line 860
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 863
    :goto_0
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public setCaptivePortalMode(I)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WlanCtrl, setCaptivePortalMode(), mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ltz p1, :cond_2

    const/4 v1, 0x2

    if-le p1, v1, :cond_0

    goto :goto_1

    .line 719
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/wlan/WlanCtrl;->tryToBindService()Z

    .line 720
    sget-object v1, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v1

    .line 722
    sget-object v3, Lcom/unitech/api/wlan/WlanCtrl;->WlanCtrlAidl:Lcom/unitech/dmservice/IWlanCtrlAidl;

    if-eqz v3, :cond_1

    .line 725
    :try_start_0
    invoke-interface {v3, p1}, Lcom/unitech/dmservice/IWlanCtrlAidl;->setCaptivePortalMode(I)Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "errorCode"

    .line 727
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "errorMsg"

    .line 728
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 729
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 732
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 733
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    const-string p1, "WlanCtrlAidl.setCaptivePortalMode exception: %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "WlanCtrlAidl is null."

    .line 736
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 739
    :goto_0
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v1, v2}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1

    :cond_2
    :goto_1
    const-string p1, "WlanCtrl, setCaptivePortalMode failed: mode is out of range (0,1,2)."

    .line 715
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public setCaptivePortalUseHttps(I)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WlanCtrl, setCaptivePortalUseHttps(), mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const-string p1, "WlanCtrl, setCaptivePortalUseHttps failed: mode is out of range (0 or 1)."

    .line 798
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 802
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/wlan/WlanCtrl;->tryToBindService()Z

    .line 803
    sget-object v1, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v1

    .line 805
    sget-object v3, Lcom/unitech/api/wlan/WlanCtrl;->WlanCtrlAidl:Lcom/unitech/dmservice/IWlanCtrlAidl;

    if-eqz v3, :cond_1

    .line 808
    :try_start_0
    invoke-interface {v3, p1}, Lcom/unitech/dmservice/IWlanCtrlAidl;->setCaptivePortalUseHttps(I)Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "errorCode"

    .line 810
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "errorMsg"

    .line 811
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 812
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 815
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 816
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    const-string p1, "WlanCtrlAidl.setCaptivePortalUseHttps exception: %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "WlanCtrlAidl is null."

    .line 819
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 822
    :goto_0
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v1, v2}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public setIpAssignmentProfile(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ssid",
            "ipAssignment",
            "ipAddress",
            "prefixLength",
            "gateway",
            "dns1",
            "dns2"
        }
    .end annotation

    move-object v1, p0

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WlanCtrl, setIpAssignmentProfile(), ssid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ipAssignment: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ipAddress:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", prefixLength: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p4

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", gateway: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p5

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", dns1: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p6

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", dns2: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p7

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UnitechSDK"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_0

    const-string v0, "WlanCtrl, setIpAssignmentProfile failed: ssid cannot be empty."

    .line 250
    invoke-direct {p0, v11, v0}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 254
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/wlan/WlanCtrl;->tryToBindService()Z

    .line 255
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v12

    .line 257
    sget-object v3, Lcom/unitech/api/wlan/WlanCtrl;->WlanCtrlAidl:Lcom/unitech/dmservice/IWlanCtrlAidl;

    if-eqz v3, :cond_1

    move-object v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 260
    :try_start_0
    invoke-interface/range {v3 .. v10}, Lcom/unitech/dmservice/IWlanCtrlAidl;->setIpAssignmentProfile(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "errorCode"

    .line 262
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "errorMsg"

    .line 263
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-direct {p0, v2, v0}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 267
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-array v2, v11, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 268
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "WlanCtrlAidl.setIpAssignmentProfile exception: %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v11, v0}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "WlanCtrlAidl is null."

    .line 271
    invoke-direct {p0, v11, v0}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 274
    :goto_0
    sget-object v2, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v12, v13}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v0
.end method

.method public setProxyProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ssid",
            "proxySetting",
            "pacUrl",
            "host",
            "port",
            "excList"
        }
    .end annotation

    move-object v1, p0

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WlanCtrl, setProxyProfile(), ssid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", proxySetting: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pacUrl:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", host: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p4

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", excList: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p6

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UnitechSDK"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_0

    const-string v0, "WlanCtrl, setProxyProfile failed: ssid cannot be empty."

    .line 368
    invoke-direct {p0, v10, v0}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 372
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/wlan/WlanCtrl;->tryToBindService()Z

    .line 373
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v11

    .line 375
    sget-object v3, Lcom/unitech/api/wlan/WlanCtrl;->WlanCtrlAidl:Lcom/unitech/dmservice/IWlanCtrlAidl;

    if-eqz v3, :cond_1

    move-object v4, p1

    move v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    .line 378
    :try_start_0
    invoke-interface/range {v3 .. v9}, Lcom/unitech/dmservice/IWlanCtrlAidl;->setProxyProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "errorCode"

    .line 380
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "errorMsg"

    .line 381
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-direct {p0, v2, v0}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 385
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-array v2, v10, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 386
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "WlanCtrlAidl.setProxyProfile exception: %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v10, v0}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "WlanCtrlAidl is null."

    .line 389
    invoke-direct {p0, v10, v0}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 392
    :goto_0
    sget-object v2, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v11, v12}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v0
.end method

.method public setWifiAdapter(Z)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 879
    invoke-direct {p0}, Lcom/unitech/api/wlan/WlanCtrl;->tryToBindService()Z

    .line 880
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 882
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WlanCtrl, setWifiAdapter(), enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UnitechSDK"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    sget-object v2, Lcom/unitech/api/wlan/WlanCtrl;->WlanCtrlAidl:Lcom/unitech/dmservice/IWlanCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 887
    :try_start_0
    invoke-interface {v2, p1}, Lcom/unitech/dmservice/IWlanCtrlAidl;->setWifiAdapter(Z)Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "errorCode"

    .line 889
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v4, "errorMsg"

    .line 890
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 891
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 894
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 895
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "WlanCtrlAidl.setWifiAdapter exception: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "WlanCtrlAidl is null."

    .line 898
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 901
    :goto_0
    sget-object v2, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public setWifiEnterpriseProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ssid",
            "certPath",
            "identity",
            "password"
        }
    .end annotation

    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WlanCtrl, setWifiEnterpriseProfile(), ssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", certPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", identity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "WlanCtrl, setWifiEnterpriseProfile failed: ssid cannot be empty."

    .line 923
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 929
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/wlan/WlanCtrl;->tryToBindService()Z

    .line 930
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v2

    .line 932
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->WlanCtrlAidl:Lcom/unitech/dmservice/IWlanCtrlAidl;

    if-eqz v0, :cond_1

    .line 935
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/unitech/dmservice/IWlanCtrlAidl;->setWifiEnterpriseProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "errorCode"

    .line 937
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string p3, "errorMsg"

    .line 938
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 939
    invoke-direct {p0, p2, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 942
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array p2, v1, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 943
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, p3

    const-string p1, "WlanCtrlAidl.setWifiEnterpriseProfile exception: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "WlanCtrlAidl is null."

    .line 946
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 949
    :goto_0
    sget-object p2, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p2, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public setWifiHotSpotConfiguration(Ljava/lang/String;Ljava/lang/String;IIZ)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ssid",
            "password",
            "securityMode",
            "band",
            "autoShutdown"
        }
    .end annotation

    .line 1259
    invoke-direct {p0}, Lcom/unitech/api/wlan/WlanCtrl;->tryToBindService()Z

    .line 1260
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 1261
    sget-object v2, Lcom/unitech/api/wlan/WlanCtrl;->WlanCtrlAidl:Lcom/unitech/dmservice/IWlanCtrlAidl;

    const/4 v8, 0x1

    if-eqz v2, :cond_0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 1263
    :try_start_0
    invoke-interface/range {v2 .. v7}, Lcom/unitech/dmservice/IWlanCtrlAidl;->setWifiHotSpotConfiguration(Ljava/lang/String;Ljava/lang/String;IIZ)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1265
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array p2, v8, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 1266
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, p3

    const-string p1, "WlanCtrlAidl.setWifiHotSpotConfiguration exception: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v8, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "WlanCtrlAidl is null."

    .line 1269
    invoke-direct {p0, v8, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const-string p1, "WlanCtrlAidl.setWifiHotSpotConfiguration failed: result is null or function not defined."

    .line 1272
    invoke-direct {p0, v8, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 1274
    :cond_1
    sget-object p2, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public setWifiHotSpotEnable(Z)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1227
    invoke-direct {p0}, Lcom/unitech/api/wlan/WlanCtrl;->tryToBindService()Z

    .line 1228
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 1229
    sget-object v2, Lcom/unitech/api/wlan/WlanCtrl;->WlanCtrlAidl:Lcom/unitech/dmservice/IWlanCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1231
    :try_start_0
    invoke-interface {v2, p1}, Lcom/unitech/dmservice/IWlanCtrlAidl;->setWifiHotSpotEnable(Z)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1233
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1234
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "WlanCtrlAidl.setWifiHotSpotEnable exception: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "WlanCtrlAidl is null."

    .line 1237
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const-string p1, "WlanCtrlAidl.setWifiHotSpotEnable failed: result is null or function not defined."

    .line 1240
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 1242
    :cond_1
    sget-object v2, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public setWifiNetworkNotification(Z)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1200
    invoke-direct {p0}, Lcom/unitech/api/wlan/WlanCtrl;->tryToBindService()Z

    .line 1201
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 1202
    sget-object v2, Lcom/unitech/api/wlan/WlanCtrl;->WlanCtrlAidl:Lcom/unitech/dmservice/IWlanCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1204
    :try_start_0
    invoke-interface {v2, p1}, Lcom/unitech/dmservice/IWlanCtrlAidl;->setWifiNetworkNotification(Z)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1206
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1207
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "WlanCtrlAidl.setWifiNetworkNotification exception: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "WlanCtrlAidl is null."

    .line 1210
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const-string p1, "WlanCtrlAidl.setWifiNetworkNotification failed: result is null or function not defined."

    .line 1213
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 1215
    :cond_1
    sget-object v2, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public setWifiProfile(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ssid",
            "password",
            "securityMode"
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WlanCtrl, setWifiProfile(), ssid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", password: ******, securityMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "WlanCtrl, setWifiProfile failed: ssid cannot be empty."

    .line 148
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/wlan/WlanCtrl;->tryToBindService()Z

    .line 153
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v2

    .line 155
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->WlanCtrlAidl:Lcom/unitech/dmservice/IWlanCtrlAidl;

    if-eqz v0, :cond_1

    .line 158
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/unitech/dmservice/IWlanCtrlAidl;->setWifiProfile(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "errorCode"

    .line 160
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string p3, "errorMsg"

    .line 161
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-direct {p0, p2, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 165
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array p2, v1, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 166
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, p3

    const-string p1, "WlanCtrlAidl.setWifiProfile exception: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "WlanCtrlAidl is null."

    .line 169
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 172
    :goto_0
    sget-object p2, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p2, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public setWifiRandomizedMac(Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ssid",
            "enabled"
        }
    .end annotation

    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WlanCtrl, setWifiRandomizedMac(), ssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "WlanCtrl, setWifiRandomizedMac failed: ssid cannot be empty."

    .line 1004
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 1008
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/wlan/WlanCtrl;->tryToBindService()Z

    .line 1009
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v2

    .line 1011
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->WlanCtrlAidl:Lcom/unitech/dmservice/IWlanCtrlAidl;

    if-eqz v0, :cond_1

    .line 1013
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/unitech/dmservice/IWlanCtrlAidl;->setWifiRandomizedMac(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1016
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array p2, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1017
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "WlanCtrlAidl.setWifiRandomizedMac exception: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "WlanCtrlAidl is null."

    .line 1020
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 1023
    :goto_0
    sget-object p2, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p2, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public setWifiTurnOnAuto(Z)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1174
    invoke-direct {p0}, Lcom/unitech/api/wlan/WlanCtrl;->tryToBindService()Z

    .line 1175
    sget-object v0, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 1176
    sget-object v2, Lcom/unitech/api/wlan/WlanCtrl;->WlanCtrlAidl:Lcom/unitech/dmservice/IWlanCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1178
    :try_start_0
    invoke-interface {v2, p1}, Lcom/unitech/dmservice/IWlanCtrlAidl;->setWifiTurnOnAuto(Z)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1180
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1181
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "WlanCtrlAidl.setWifiTurnOnAuto exception: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "WlanCtrlAidl is null."

    .line 1184
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const-string p1, "WlanCtrlAidl.setWifiTurnOnAuto failed: result is null or function not defined."

    .line 1187
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/wlan/WlanCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 1189
    :cond_1
    sget-object v2, Lcom/unitech/api/wlan/WlanCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method
