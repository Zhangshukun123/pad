.class public Lcom/unitech/api/safemodelock/SafeModeLockCtrl;
.super Ljava/lang/Object;
.source "SafeModeLockCtrl.java"


# static fields
.field private static final ACTION_BIND_SERVICE:Ljava/lang/String; = "com.unitech.dmservice.action.safemoelock"

.field private static final ACTIVITY_NAME:Ljava/lang/String; = "com.unitech.dmservice.safemodelock.SafeModeLock"

.field public static final BUNDLE_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final BUNDLE_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field private static final PKG_API:Ljava/lang/String; = "com.unitech.dmservice"

.field public static final RESULT_CODE_ERROR:I = 0x1

.field public static final RESULT_CODE_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UnitechSDK.SafeModeLockCtrl"

.field private static mInstance:Lcom/unitech/api/safemodelock/SafeModeLockCtrl;

.field private static mServiceHandler:Lcom/unitech/api/util/ServiceHandler;


# instance fields
.field private mAidl:Lcom/unitech/dmservice/ISafeModeLockCtrlAidl;

.field private mContext:Landroid/content/Context;

.field private mServiceChecked:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->mServiceChecked:I

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->mContext:Landroid/content/Context;

    .line 45
    sget-object v1, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/unitech/api/util/ServiceHandler;

    .line 47
    invoke-direct {p0}, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v2

    const-string v3, "com.unitech.dmservice"

    const-string v4, "com.unitech.dmservice.action.safemoelock"

    invoke-direct {v1, p1, v3, v4, v2}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    sput-object v1, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    .line 49
    :cond_0
    iget p1, p0, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->mServiceChecked:I

    if-ne p1, v0, :cond_1

    .line 50
    invoke-direct {p0}, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->checkServiceIsInstalled()V

    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/unitech/api/safemodelock/SafeModeLockCtrl;Lcom/unitech/dmservice/ISafeModeLockCtrlAidl;)Lcom/unitech/dmservice/ISafeModeLockCtrlAidl;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->mAidl:Lcom/unitech/dmservice/ISafeModeLockCtrlAidl;

    return-object p1
.end method

.method private checkServiceIsInstalled()V
    .locals 5

    .line 81
    iget v0, p0, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->mServiceChecked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 89
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

    .line 90
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
    const-string v2, "UnitechSDK.SafeModeLockCtrl"

    if-eqz v0, :cond_3

    const-string v0, "package com.unitech.dmservice is found."

    .line 96
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iput v3, p0, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->mServiceChecked:I

    goto :goto_1

    :cond_3
    const-string v0, "package com.unitech.dmservice is not found"

    .line 99
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iput v1, p0, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->mServiceChecked:I

    :goto_1
    return-void
.end method

.method private createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
    .locals 1

    .line 61
    new-instance v0, Lcom/unitech/api/safemodelock/SafeModeLockCtrl$1;

    invoke-direct {v0, p0}, Lcom/unitech/api/safemodelock/SafeModeLockCtrl$1;-><init>(Lcom/unitech/api/safemodelock/SafeModeLockCtrl;)V

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

    .line 111
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "calling this from your main thread can lead to deadlock"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/unitech/api/safemodelock/SafeModeLockCtrl;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 55
    sget-object v0, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->mInstance:Lcom/unitech/api/safemodelock/SafeModeLockCtrl;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;

    invoke-direct {v0, p0}, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->mInstance:Lcom/unitech/api/safemodelock/SafeModeLockCtrl;

    .line 58
    :cond_0
    sget-object p0, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->mInstance:Lcom/unitech/api/safemodelock/SafeModeLockCtrl;

    return-object p0
.end method

.method private isLauncherApp(Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkgName"
        }
    .end annotation

    .line 248
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "errorCode"

    const/4 v2, 0x1

    const-string v3, "android.intent.category.HOME"

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    const/16 v6, 0x1e

    if-lt v0, v6, :cond_2

    .line 249
    new-instance v0, Lcom/unitech/api/app/AppManagementCtrl;

    iget-object v6, p0, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Lcom/unitech/api/app/AppManagementCtrl;-><init>(Landroid/content/Context;)V

    .line 250
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3, p1}, Lcom/unitech/api/app/AppManagementCtrl;->resolveActivity(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 252
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    return v5

    :cond_0
    return v2

    :cond_1
    return v5

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 260
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v6, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "android.intent.category.DEFAULT"

    .line 262
    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    invoke-virtual {v0, v6, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 265
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 266
    new-instance v0, Lcom/unitech/api/app/AppManagementCtrl;

    iget-object v6, p0, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Lcom/unitech/api/app/AppManagementCtrl;-><init>(Landroid/content/Context;)V

    .line 267
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3, p1}, Lcom/unitech/api/app/AppManagementCtrl;->resolveActivity(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 269
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    return v5

    :cond_3
    return v2

    :cond_4
    return v5

    .line 277
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 278
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v5, 0x1

    goto :goto_0

    :cond_7
    return v5
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

    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    .line 106
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "errorMsg"

    .line 107
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private tryToBindService()Z
    .locals 1

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->ensureNotOnMainThread(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    sget-object v0, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getLauncherPackageName()Landroid/os/Bundle;
    .locals 6

    .line 159
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 160
    invoke-direct {p0}, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->tryToBindService()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "SafeModeLockCtrl, getLauncherPackageName failed: can\'t be in main thread ."

    .line 161
    invoke-direct {p0, v1, v0}, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->mAidl:Lcom/unitech/dmservice/ISafeModeLockCtrlAidl;

    if-nez v0, :cond_1

    const-string v0, "SafeModeLockCtrl, getLauncherPackageName failed: bind service fail."

    .line 164
    invoke-direct {p0, v1, v0}, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 166
    :cond_1
    sget-object v0, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getImmortalTicket()J

    move-result-wide v2

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->mAidl:Lcom/unitech/dmservice/ISafeModeLockCtrlAidl;

    invoke-interface {v0}, Lcom/unitech/dmservice/ISafeModeLockCtrlAidl;->getLauncherPackageName()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SafeModeLockCtrl, getLauncherPackageName failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 172
    :goto_0
    sget-object v1, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v0
.end method

.method public isSafeModeLockEnabled()Landroid/os/Bundle;
    .locals 6

    .line 135
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 136
    invoke-direct {p0}, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->tryToBindService()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "SafeModeLockCtrl, isSafeModeLockEnabled failed: can\'t be in main thread. DMService version must be 1.2.28 or higher."

    .line 137
    invoke-direct {p0, v1, v0}, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->mAidl:Lcom/unitech/dmservice/ISafeModeLockCtrlAidl;

    if-nez v0, :cond_1

    const-string v0, "SafeModeLockCtrl, isSafeModeLockEnabled failed: bind service fail."

    .line 140
    invoke-direct {p0, v1, v0}, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 141
    :cond_1
    sget-object v0, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getImmortalTicket()J

    move-result-wide v2

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->mAidl:Lcom/unitech/dmservice/ISafeModeLockCtrlAidl;

    invoke-interface {v0}, Lcom/unitech/dmservice/ISafeModeLockCtrlAidl;->isSafeModeLockEnabled()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SafeModeLockCtrl, isSafeModeLockEnabled failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 147
    :goto_0
    sget-object v1, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v0
.end method

.method public setSafeModeLock(ZLjava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enabled",
            "launcherPackageName"
        }
    .end annotation

    .line 184
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "SafeModeLockCtrl, setSafeModeLock failed: launcherPackageName cannot be empty."

    .line 185
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 187
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->isLauncherApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "SafeModeLockCtrl, setSafeModeLock failed: launcherPackageName is not a launcher app."

    .line 188
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 191
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    const-string v3, "enable"

    if-eqz p1, :cond_2

    .line 194
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "launcher"

    .line 195
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_2
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 199
    :goto_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.unitech.dmservice"

    const-string v1, "com.unitech.dmservice.safemodelock.SafeModeLock"

    .line 200
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 202
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 203
    iget-object p2, p0, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "Start safe mode lock api successfully"

    .line 205
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public setSafeModeLock(ZLjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "enabled",
            "launcherPackageName",
            "password"
        }
    .end annotation

    .line 218
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "SafeModeLockCtrl, setSafeModeLock failed: launcherPackageName cannot be empty."

    .line 219
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 221
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->isLauncherApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "SafeModeLockCtrl, setSafeModeLock failed: launcherPackageName is not a launcher app."

    .line 222
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 225
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    const-string v3, "enable"

    if-eqz p1, :cond_2

    .line 228
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "launcher"

    .line 229
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "password"

    .line 232
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_2
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 237
    :cond_3
    :goto_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.unitech.dmservice"

    const-string p3, "com.unitech.dmservice.safemodelock.SafeModeLock"

    .line 238
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 240
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 241
    iget-object p2, p0, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "Start safe mode lock api successfully"

    .line 243
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
