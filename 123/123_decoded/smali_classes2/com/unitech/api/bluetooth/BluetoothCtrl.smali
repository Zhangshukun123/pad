.class public Lcom/unitech/api/bluetooth/BluetoothCtrl;
.super Ljava/lang/Object;
.source "BluetoothCtrl.java"


# static fields
.field private static final ACTION_BIND_SERVICE:Ljava/lang/String; = "com.unitech.dmservice.action.bluetooth"

.field public static final BUNDLE_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final BUNDLE_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field private static final PKG_API_SERVICE:Ljava/lang/String; = "com.unitech.dmservice"

.field public static final RESULT_CODE_ERROR:I = 0x1

.field public static final RESULT_CODE_SUCCESS:I = 0x0

.field public static final RESULT_KEY_BT_MAC:Ljava/lang/String; = "getBluetoothMacAddress"

.field private static final TAG:Ljava/lang/String; = "UnitechSDK"

.field private static mBluetoothCtrlAidl:Lcom/unitech/dmservice/IBluetoothCtrlAidl; = null

.field private static mInstance:Lcom/unitech/api/bluetooth/BluetoothCtrl; = null

.field private static mServiceChecked:I = -0x1

.field private static mServiceHandler:Lcom/unitech/api/util/ServiceHandler;


# instance fields
.field private mContext:Landroid/content/Context;


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

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/unitech/api/bluetooth/BluetoothCtrl;->mContext:Landroid/content/Context;

    .line 49
    sget-object v0, Lcom/unitech/api/bluetooth/BluetoothCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/unitech/api/util/ServiceHandler;

    .line 51
    invoke-direct {p0}, Lcom/unitech/api/bluetooth/BluetoothCtrl;->createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v1

    const-string v2, "com.unitech.dmservice"

    const-string v3, "com.unitech.dmservice.action.bluetooth"

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    sput-object v0, Lcom/unitech/api/bluetooth/BluetoothCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    .line 53
    :cond_0
    sget p1, Lcom/unitech/api/bluetooth/BluetoothCtrl;->mServiceChecked:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 54
    invoke-direct {p0}, Lcom/unitech/api/bluetooth/BluetoothCtrl;->checkServiceIsInstalled()V

    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/unitech/dmservice/IBluetoothCtrlAidl;)Lcom/unitech/dmservice/IBluetoothCtrlAidl;
    .locals 0

    .line 22
    sput-object p0, Lcom/unitech/api/bluetooth/BluetoothCtrl;->mBluetoothCtrlAidl:Lcom/unitech/dmservice/IBluetoothCtrlAidl;

    return-object p0
.end method

.method private checkServiceIsInstalled()V
    .locals 5

    .line 72
    sget v0, Lcom/unitech/api/bluetooth/BluetoothCtrl;->mServiceChecked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/unitech/api/bluetooth/BluetoothCtrl;->mContext:Landroid/content/Context;

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

    const-string v0, "BluetoothCtrl, package com.unitech.dmservice is found."

    .line 90
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sput v3, Lcom/unitech/api/bluetooth/BluetoothCtrl;->mServiceChecked:I

    goto :goto_1

    :cond_3
    const-string v0, "BluetoothCtrl, package com.unitech.dmservice is not found"

    .line 93
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sput v1, Lcom/unitech/api/bluetooth/BluetoothCtrl;->mServiceChecked:I

    :goto_1
    return-void
.end method

.method private createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
    .locals 1

    .line 131
    new-instance v0, Lcom/unitech/api/bluetooth/BluetoothCtrl$1;

    invoke-direct {v0, p0}, Lcom/unitech/api/bluetooth/BluetoothCtrl$1;-><init>(Lcom/unitech/api/bluetooth/BluetoothCtrl;)V

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

    .line 112
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "calling this from your main thread can lead to deadlock"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/unitech/api/bluetooth/BluetoothCtrl;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/unitech/api/bluetooth/BluetoothCtrl;->mInstance:Lcom/unitech/api/bluetooth/BluetoothCtrl;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/unitech/api/bluetooth/BluetoothCtrl;

    invoke-direct {v0, p0}, Lcom/unitech/api/bluetooth/BluetoothCtrl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/unitech/api/bluetooth/BluetoothCtrl;->mInstance:Lcom/unitech/api/bluetooth/BluetoothCtrl;

    .line 68
    :cond_0
    sget-object p0, Lcom/unitech/api/bluetooth/BluetoothCtrl;->mInstance:Lcom/unitech/api/bluetooth/BluetoothCtrl;

    return-object p0
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

.method private setBundleResult(Landroid/os/Bundle;ILjava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "errorCode",
            "errorMsg"
        }
    .end annotation

    const-string v0, "errorCode"

    .line 106
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "errorMsg"

    .line 107
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private tryToBindService()Z
    .locals 1

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/bluetooth/BluetoothCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unitech/api/bluetooth/BluetoothCtrl;->ensureNotOnMainThread(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    sget-object v0, Lcom/unitech/api/bluetooth/BluetoothCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public enableBluetooth(Z)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 310
    invoke-direct {p0}, Lcom/unitech/api/bluetooth/BluetoothCtrl;->tryToBindService()Z

    .line 311
    sget-object v0, Lcom/unitech/api/bluetooth/BluetoothCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 313
    sget-object v2, Lcom/unitech/api/bluetooth/BluetoothCtrl;->mBluetoothCtrlAidl:Lcom/unitech/dmservice/IBluetoothCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 315
    :try_start_0
    invoke-interface {v2, p1}, Lcom/unitech/dmservice/IBluetoothCtrlAidl;->enableBluetooth(Z)Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "errorCode"

    .line 317
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v4, "errorMsg"

    .line 318
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 319
    invoke-direct {p0, v2, v4}, Lcom/unitech/api/bluetooth/BluetoothCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 320
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 323
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 324
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "BluetoothCtrlAidl.enableBluetooth exception: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/bluetooth/BluetoothCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string p1, "BluetoothCtrlAidl is null."

    .line 327
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/bluetooth/BluetoothCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 330
    :goto_0
    sget-object p1, Lcom/unitech/api/bluetooth/BluetoothCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p1, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v2
.end method

.method public getActiveBluetoothProfile()Landroid/os/Bundle;
    .locals 6

    .line 276
    invoke-direct {p0}, Lcom/unitech/api/bluetooth/BluetoothCtrl;->tryToBindService()Z

    .line 277
    sget-object v0, Lcom/unitech/api/bluetooth/BluetoothCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 279
    sget-object v2, Lcom/unitech/api/bluetooth/BluetoothCtrl;->mBluetoothCtrlAidl:Lcom/unitech/dmservice/IBluetoothCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 281
    :try_start_0
    invoke-interface {v2}, Lcom/unitech/dmservice/IBluetoothCtrlAidl;->getActiveBluetoothProfile()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 283
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 284
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 285
    invoke-direct {p0, v4, v5}, Lcom/unitech/api/bluetooth/BluetoothCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 286
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 289
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 290
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "BluetoothCtrlAidl.getActiveBluetoothProfile exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/bluetooth/BluetoothCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v2, "BluetoothCtrlAidl is null."

    .line 293
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/bluetooth/BluetoothCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 296
    :goto_0
    sget-object v2, Lcom/unitech/api/bluetooth/BluetoothCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4
.end method

.method public getBluetoothConnectStatus()Landroid/os/Bundle;
    .locals 6

    .line 205
    invoke-direct {p0}, Lcom/unitech/api/bluetooth/BluetoothCtrl;->tryToBindService()Z

    .line 206
    sget-object v0, Lcom/unitech/api/bluetooth/BluetoothCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 208
    sget-object v2, Lcom/unitech/api/bluetooth/BluetoothCtrl;->mBluetoothCtrlAidl:Lcom/unitech/dmservice/IBluetoothCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 210
    :try_start_0
    invoke-interface {v2}, Lcom/unitech/dmservice/IBluetoothCtrlAidl;->getBluetoothConnectStatus()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 212
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 213
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 214
    invoke-direct {p0, v4, v5}, Lcom/unitech/api/bluetooth/BluetoothCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 215
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 218
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 219
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "BluetoothCtrlAidl.getBluetoothConnectStatus exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/bluetooth/BluetoothCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v2, "UnitechSDK is null."

    .line 222
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/bluetooth/BluetoothCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 225
    :goto_0
    sget-object v2, Lcom/unitech/api/bluetooth/BluetoothCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4
.end method

.method public getBluetoothVersion()Landroid/os/Bundle;
    .locals 6

    .line 240
    invoke-direct {p0}, Lcom/unitech/api/bluetooth/BluetoothCtrl;->tryToBindService()Z

    .line 241
    sget-object v0, Lcom/unitech/api/bluetooth/BluetoothCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 243
    sget-object v2, Lcom/unitech/api/bluetooth/BluetoothCtrl;->mBluetoothCtrlAidl:Lcom/unitech/dmservice/IBluetoothCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 245
    :try_start_0
    invoke-interface {v2}, Lcom/unitech/dmservice/IBluetoothCtrlAidl;->getBluetoothVersion()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 247
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 248
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 249
    invoke-direct {p0, v4, v5}, Lcom/unitech/api/bluetooth/BluetoothCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 250
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 253
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 254
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "BluetoothCtrlAidl.getBluetoothVersion exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/bluetooth/BluetoothCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v2, "BluetoothCtrlAidl is null."

    .line 257
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/bluetooth/BluetoothCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 260
    :goto_0
    sget-object v2, Lcom/unitech/api/bluetooth/BluetoothCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4
.end method

.method public getMacAddress()Landroid/os/Bundle;
    .locals 9

    .line 173
    invoke-direct {p0}, Lcom/unitech/api/bluetooth/BluetoothCtrl;->tryToBindService()Z

    .line 174
    sget-object v0, Lcom/unitech/api/bluetooth/BluetoothCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "BluetoothCtrl, getMacAddress()"

    .line 176
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UnitechSDK"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    sget-object v3, Lcom/unitech/api/bluetooth/BluetoothCtrl;->mBluetoothCtrlAidl:Lcom/unitech/dmservice/IBluetoothCtrlAidl;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 179
    :try_start_0
    invoke-interface {v3}, Lcom/unitech/dmservice/IBluetoothCtrlAidl;->getBluetoothMacAddress()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "Get MAC success"

    .line 180
    invoke-direct {p0, v2, v5}, Lcom/unitech/api/bluetooth/BluetoothCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 181
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string v6, "BluetoothMacAddress"

    const-string v7, "getBluetoothMacAddress"

    const-string v8, ""

    .line 182
    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 184
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    new-array v5, v4, [Ljava/lang/Object;

    .line 185
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    const-string v2, "BluetoothCtrlAidl.getMacAddress exception: %s"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcom/unitech/api/bluetooth/BluetoothCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    goto :goto_0

    :cond_0
    const-string v2, "BluetoothCtrlAidl is null"

    .line 188
    invoke-direct {p0, v4, v2}, Lcom/unitech/api/bluetooth/BluetoothCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 191
    :goto_0
    sget-object v2, Lcom/unitech/api/bluetooth/BluetoothCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v5
.end method

.method public setBluetoothName(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 387
    invoke-direct {p0}, Lcom/unitech/api/bluetooth/BluetoothCtrl;->tryToBindService()Z

    .line 388
    sget-object v0, Lcom/unitech/api/bluetooth/BluetoothCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 390
    sget-object v2, Lcom/unitech/api/bluetooth/BluetoothCtrl;->mBluetoothCtrlAidl:Lcom/unitech/dmservice/IBluetoothCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 392
    :try_start_0
    invoke-interface {v2, p1}, Lcom/unitech/dmservice/IBluetoothCtrlAidl;->setBluetoothName(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "errorCode"

    .line 394
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v4, "errorMsg"

    .line 395
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 396
    invoke-direct {p0, v2, v4}, Lcom/unitech/api/bluetooth/BluetoothCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 397
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 400
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 401
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "BluetoothCtrlAidl.setBluetoothName exception: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/bluetooth/BluetoothCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string p1, "BluetoothCtrlAidl is null."

    .line 404
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/bluetooth/BluetoothCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 407
    :goto_0
    sget-object p1, Lcom/unitech/api/bluetooth/BluetoothCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p1, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v2
.end method

.method public setScanMode(I)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x14

    if-eq p1, v1, :cond_0

    const/16 v1, 0x15

    if-eq p1, v1, :cond_0

    const/16 v1, 0x17

    if-eq p1, v1, :cond_0

    const-string p1, "Invalid mode"

    .line 351
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/bluetooth/BluetoothCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 354
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/bluetooth/BluetoothCtrl;->tryToBindService()Z

    .line 355
    sget-object v1, Lcom/unitech/api/bluetooth/BluetoothCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v1

    .line 357
    sget-object v3, Lcom/unitech/api/bluetooth/BluetoothCtrl;->mBluetoothCtrlAidl:Lcom/unitech/dmservice/IBluetoothCtrlAidl;

    if-eqz v3, :cond_1

    .line 359
    :try_start_0
    invoke-interface {v3, p1}, Lcom/unitech/dmservice/IBluetoothCtrlAidl;->setScanMode(I)Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "errorCode"

    .line 360
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "errorMsg"

    .line 361
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 362
    invoke-direct {p0, v3, v4}, Lcom/unitech/api/bluetooth/BluetoothCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 363
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 366
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 367
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    const-string p1, "BluetoothCtrlAidl.setScanMode exception: %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unitech/api/bluetooth/BluetoothCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string p1, "BluetoothCtrlAidl is null."

    .line 370
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/bluetooth/BluetoothCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 373
    :goto_0
    sget-object p1, Lcom/unitech/api/bluetooth/BluetoothCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p1, v1, v2}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v3
.end method
