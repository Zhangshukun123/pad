.class public Lcom/unitech/api/app/AppManagementCtrl;
.super Ljava/lang/Object;
.source "AppManagementCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unitech/api/app/AppManagementCtrl$BindServiceMonitor;
    }
.end annotation


# static fields
.field private static final ACTION_BIND_DMSERVICE:Ljava/lang/String; = "com.unitech.dmservice.action.general"

.field private static final ACTION_BIND_SERVICE:Ljava/lang/String; = "com.unitech.appctrlapi.aidl"

.field public static final BUNDLE_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final BUNDLE_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field public static final BUNDLE_RESULT_APP_INFO:Ljava/lang/String; = "AppInfo"

.field public static final BUNDLE_RESULT_APP_NAME_LIST:Ljava/lang/String; = "AppNameList"

.field public static final BUNDLE_RESULT_CMD:Ljava/lang/String; = "SysCmdResult"

.field public static final BUNDLE_RESULT_PKG_NAME_LIST:Ljava/lang/String; = "PkgNameList"

.field public static final BUNDLE_RESULT_SERVICEINFO_NAME_LIST:Ljava/lang/String; = "ServiceInfoNameList"

.field private static GeneralCtrlAidl:Lcom/unitech/dmservice/IGeneralCtrlAidl; = null

.field private static final PKG_API_DMSERVICE:Ljava/lang/String; = "com.unitech.dmservice"

.field private static final PKG_API_SERVICE:Ljava/lang/String; = "com.unitech.appctrlservice"

.field public static final RESULT_CODE_ERROR:I = 0x1

.field public static final RESULT_CODE_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UnitechSDK"

.field private static isServiceConnected:Z = false

.field private static mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl; = null

.field private static mContext:Landroid/content/Context; = null

.field private static mDMServiceChecked:I = 0x0

.field private static mDMServiceHandler:Lcom/unitech/api/util/ServiceHandler; = null

.field private static mHandler:Landroid/os/Handler; = null

.field private static final mLocker:Ljava/lang/Object;

.field private static mServiceChecked:I = -0x1

.field private static runnableUnbindService:Ljava/lang/Runnable;

.field private static serviceConnection:Landroid/content/ServiceConnection;

.field private static serviceHandler:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/unitech/api/app/AppManagementCtrl;->mLocker:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 74
    sput-object v0, Lcom/unitech/api/app/AppManagementCtrl;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    .line 75
    sput-boolean v0, Lcom/unitech/api/app/AppManagementCtrl;->isServiceConnected:Z

    .line 76
    sput-boolean v0, Lcom/unitech/api/app/AppManagementCtrl;->serviceHandler:Z

    const/4 v0, -0x1

    .line 81
    sput v0, Lcom/unitech/api/app/AppManagementCtrl;->mDMServiceChecked:I

    .line 333
    new-instance v0, Lcom/unitech/api/app/AppManagementCtrl$3;

    invoke-direct {v0}, Lcom/unitech/api/app/AppManagementCtrl$3;-><init>()V

    sput-object v0, Lcom/unitech/api/app/AppManagementCtrl;->runnableUnbindService:Ljava/lang/Runnable;

    return-void
.end method

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

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/unitech/api/app/AppManagementCtrl;->mContext:Landroid/content/Context;

    .line 90
    new-instance p1, Landroid/os/Handler;

    sget-object v0, Lcom/unitech/api/app/AppManagementCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p1, Lcom/unitech/api/app/AppManagementCtrl;->mHandler:Landroid/os/Handler;

    .line 92
    sget p1, Lcom/unitech/api/app/AppManagementCtrl;->mServiceChecked:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->checkServiceIsInstalled()V

    .line 95
    :cond_0
    sget-boolean p1, Lcom/unitech/api/machine/Machine;->TB85:Z

    if-eqz p1, :cond_2

    .line 96
    sget-object p1, Lcom/unitech/api/app/AppManagementCtrl;->mDMServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    if-nez p1, :cond_1

    .line 97
    new-instance p1, Lcom/unitech/api/util/ServiceHandler;

    sget-object v1, Lcom/unitech/api/app/AppManagementCtrl;->mContext:Landroid/content/Context;

    .line 98
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->createDMServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v2

    const-string v3, "com.unitech.dmservice"

    const-string v4, "com.unitech.dmservice.action.general"

    invoke-direct {p1, v1, v3, v4, v2}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    sput-object p1, Lcom/unitech/api/app/AppManagementCtrl;->mDMServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    .line 100
    :cond_1
    sget p1, Lcom/unitech/api/app/AppManagementCtrl;->mDMServiceChecked:I

    if-ne p1, v0, :cond_2

    .line 101
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->checkDMGeneralService()V

    :cond_2
    return-void
.end method

.method static synthetic access$002(Lcom/unitech/dmservice/IGeneralCtrlAidl;)Lcom/unitech/dmservice/IGeneralCtrlAidl;
    .locals 0

    .line 49
    sput-object p0, Lcom/unitech/api/app/AppManagementCtrl;->GeneralCtrlAidl:Lcom/unitech/dmservice/IGeneralCtrlAidl;

    return-object p0
.end method

.method static synthetic access$100()Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;
    .locals 1

    .line 49
    sget-object v0, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/unitech/api/app/AppManagementCtrl;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/unitech/api/app/AppManagementCtrl;->streamApk(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$102(Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;)Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;
    .locals 0

    .line 49
    sput-object p0, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    return-object p0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .line 49
    sput-boolean p0, Lcom/unitech/api/app/AppManagementCtrl;->isServiceConnected:Z

    return p0
.end method

.method static synthetic access$300()V
    .locals 0

    .line 49
    invoke-static {}, Lcom/unitech/api/app/AppManagementCtrl;->holdServiceHandler()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .locals 1

    .line 49
    sget-object v0, Lcom/unitech/api/app/AppManagementCtrl;->mLocker:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500()Landroid/content/ServiceConnection;
    .locals 1

    .line 49
    sget-object v0, Lcom/unitech/api/app/AppManagementCtrl;->serviceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$502(Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    .line 49
    sput-object p0, Lcom/unitech/api/app/AppManagementCtrl;->serviceConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$600()V
    .locals 0

    .line 49
    invoke-static {}, Lcom/unitech/api/app/AppManagementCtrl;->releaseServiceHandler()V

    return-void
.end method

.method static synthetic access$700()Landroid/content/Context;
    .locals 1

    .line 49
    sget-object v0, Lcom/unitech/api/app/AppManagementCtrl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800()V
    .locals 0

    .line 49
    invoke-static {}, Lcom/unitech/api/app/AppManagementCtrl;->bindService()V

    return-void
.end method

.method static synthetic access$900(Lcom/unitech/api/app/AppManagementCtrl;ILjava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized bindService()V
    .locals 8

    const-class v0, Lcom/unitech/api/app/AppManagementCtrl;

    monitor-enter v0

    .line 266
    :try_start_0
    sget-object v1, Lcom/unitech/api/app/AppManagementCtrl;->mLocker:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 268
    :try_start_1
    sget-object v2, Lcom/unitech/api/app/AppManagementCtrl;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/unitech/api/app/AppManagementCtrl;->isServiceConnected:Z

    if-nez v2, :cond_1

    .line 269
    new-instance v2, Lcom/unitech/api/app/AppManagementCtrl$2;

    invoke-direct {v2}, Lcom/unitech/api/app/AppManagementCtrl$2;-><init>()V

    sput-object v2, Lcom/unitech/api/app/AppManagementCtrl;->serviceConnection:Landroid/content/ServiceConnection;

    .line 296
    sget-object v2, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    if-nez v2, :cond_0

    .line 297
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.unitech.appctrlapi.aidl"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.unitech.appctrlservice"

    .line 298
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "UnitechSDK"

    const-string v5, "AppCtrl, Binding AppCtrlService"

    .line 299
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    sget-object v4, Lcom/unitech/api/app/AppManagementCtrl;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/unitech/api/app/AppManagementCtrl;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v2, v5, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :try_start_2
    const-string v2, "UnitechSDK"

    const-string v3, "AppCtrl, Locker wait for 3 sec."

    .line 304
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_3

    .line 306
    sget-object v2, Lcom/unitech/api/app/AppManagementCtrl;->mLocker:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 307
    :try_start_3
    sget-object v3, Lcom/unitech/api/app/AppManagementCtrl;->mLocker:Ljava/lang/Object;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 308
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v2

    .line 311
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_1
    const-string v2, "UnitechSDK"

    const-string v5, "AppCtrl, Not bind, isSrvConnNull=%b, isSrvConned=%b"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 315
    sget-object v7, Lcom/unitech/api/app/AppManagementCtrl;->serviceConnection:Landroid/content/ServiceConnection;

    if-nez v7, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    .line 316
    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    sget-boolean v4, Lcom/unitech/api/app/AppManagementCtrl;->isServiceConnected:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v6, v3

    .line 315
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    sget-object v2, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    .line 318
    sput-object v2, Lcom/unitech/api/app/AppManagementCtrl;->serviceConnection:Landroid/content/ServiceConnection;

    .line 323
    :cond_3
    :goto_1
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 324
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v2

    .line 323
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private checkDMGeneralService()V
    .locals 5

    .line 106
    sget v0, Lcom/unitech/api/app/AppManagementCtrl;->mDMServiceChecked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 113
    :cond_0
    sget-object v0, Lcom/unitech/api/app/AppManagementCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 116
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

    .line 117
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

    const-string v0, "GeneralCtrl, package com.unitech.dmservice is found."

    .line 124
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    sput v3, Lcom/unitech/api/app/AppManagementCtrl;->mDMServiceChecked:I

    goto :goto_1

    :cond_3
    const-string v0, "GeneralCtrl, package com.unitech.dmservice is not found"

    .line 127
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sput v1, Lcom/unitech/api/app/AppManagementCtrl;->mDMServiceChecked:I

    :goto_1
    return-void
.end method

.method private checkPkgExist(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkgApiServiceProgrammablekey"
        }
    .end annotation

    .line 1698
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->getAllInstalledPkgNameList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1699
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private checkServiceIsInstalled()V
    .locals 5

    .line 164
    sget v0, Lcom/unitech/api/app/AppManagementCtrl;->mServiceChecked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 171
    :cond_0
    sget-object v0, Lcom/unitech/api/app/AppManagementCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 174
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

    .line 175
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.unitech.appctrlservice"

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

    const-string v0, "AppCtrl, package com.unitech.appctrlservice is found."

    .line 182
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sput v3, Lcom/unitech/api/app/AppManagementCtrl;->mServiceChecked:I

    goto :goto_1

    :cond_3
    const-string v0, "AppCtrl, package com.unitech.appctrlservice is not found"

    .line 185
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sput v1, Lcom/unitech/api/app/AppManagementCtrl;->mServiceChecked:I

    :goto_1
    return-void
.end method

.method private createDMServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
    .locals 1

    .line 132
    new-instance v0, Lcom/unitech/api/app/AppManagementCtrl$1;

    invoke-direct {v0, p0}, Lcom/unitech/api/app/AppManagementCtrl$1;-><init>(Lcom/unitech/api/app/AppManagementCtrl;)V

    return-object v0
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
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

    .line 226
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "calling this from your main thread can lead to deadlock"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private getAllInstalledPkgNameList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1612
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->isSystemApp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1614
    :try_start_0
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->tryToBindService()V

    .line 1615
    sget-object v0, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 1616
    :cond_0
    sget-object v0, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    invoke-interface {v0}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;->getAllPkgNameList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1618
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1621
    :cond_1
    sget-object v0, Lcom/unitech/api/app/AppManagementCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 1622
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 1624
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1626
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 1628
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v4, 0x80

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    .line 1630
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1633
    :cond_2
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    .line 1636
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1639
    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1644
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1645
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 1647
    :try_start_1
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1648
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 1652
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    :cond_6
    return-object v0
.end method

.method private getApkVersionInfo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "apkFilePath",
            "pkgName"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x0

    .line 1743
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    goto :goto_0

    :catch_0
    move-exception v4

    .line 1745
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1746
    sget-object v4, Lcom/unitech/api/app/AppManagementCtrl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v4

    :goto_0
    if-nez v3, :cond_0

    .line 1749
    invoke-virtual {v4, p1, v0}, Lcom/unitech/api/file/FileCtrl;->createFileStream(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "ParcelFileDescriptor"

    .line 1750
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 1751
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    const-string v3, "UnitechSDK"

    const-string v5, "AppCtrl, create fileinputstream using dmservice FileCtrl"

    new-array v6, v2, [Ljava/lang/Object;

    .line 1752
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    :cond_0
    new-array v4, v2, [Landroid/os/ParcelFileDescriptor;

    .line 1756
    :try_start_1
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    .line 1758
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 1760
    :goto_1
    aget-object v5, v4, v2

    .line 1761
    aget-object v0, v4, v0

    .line 1765
    new-instance v4, Lcom/unitech/api/app/AppManagementCtrl$7;

    invoke-direct {v4, p0, v0, v3, p1}, Lcom/unitech/api/app/AppManagementCtrl$7;-><init>(Lcom/unitech/api/app/AppManagementCtrl;Landroid/os/ParcelFileDescriptor;Ljava/io/FileInputStream;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/unitech/api/util/InternalExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1821
    new-instance p1, Lcom/unitech/api/app/AppManagementCtrl$8;

    invoke-direct {p1, p0, v5, p2, v1}, Lcom/unitech/api/app/AppManagementCtrl$8;-><init>(Lcom/unitech/api/app/AppManagementCtrl;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;[I)V

    invoke-static {p1}, Lcom/unitech/api/util/InternalExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1838
    monitor-enter p0

    const-wide/16 p1, 0x2710

    .line 1840
    :try_start_2
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 1844
    :catch_2
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1845
    aget p1, v1, v2

    return p1

    .line 1844
    :goto_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method private static holdServiceHandler()V
    .locals 1

    const/4 v0, 0x1

    .line 257
    sput-boolean v0, Lcom/unitech/api/app/AppManagementCtrl;->serviceHandler:Z

    return-void
.end method

.method private installStorageApp(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "apkFilePath",
            "pkgName"
        }
    .end annotation

    const-string v0, "UnitechSDK"

    const-string v1, "AppCtrl, installStorageApp(%s, %s)"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v5, 0x1

    aput-object p2, v3, v5

    .line 636
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "AppCtrl, installStorageApp failed: apkFilePath cannot be empty."

    .line 639
    invoke-direct {p0, v5, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 640
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "AppCtrl, installStorageApp failed: pkgName cannot be empty."

    .line 641
    invoke-direct {p0, v5, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x0

    .line 644
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->tryToBindService()V

    .line 646
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.unitech.appctrlservice"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 647
    invoke-direct {p0, p1, p2}, Lcom/unitech/api/app/AppManagementCtrl;->getApkVersionInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    new-array v3, v5, [Landroid/os/Bundle;

    .line 651
    new-instance v6, Lcom/unitech/api/app/AppManagementCtrl$6;

    invoke-direct {v6, p0, p1, p2, v3}, Lcom/unitech/api/app/AppManagementCtrl$6;-><init>(Lcom/unitech/api/app/AppManagementCtrl;Ljava/lang/String;Ljava/lang/String;[Landroid/os/Bundle;)V

    invoke-static {v6}, Lcom/unitech/api/util/InternalExecutor;->execute(Ljava/lang/Runnable;)V

    .line 681
    monitor-enter p0

    const-wide/32 v6, 0x9c40

    .line 683
    :try_start_0
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 684
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.unitech.appctrlservice"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 685
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->tryToBindService()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/unitech/api/app/AppManagementCtrl;->getAppInfoByPkgName(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "AppInfo"

    .line 688
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "AppVersionCode"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 689
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v1, :cond_3

    if-ne v1, v6, :cond_3

    const-string v1, "install %s successful"

    new-array v6, v5, [Ljava/lang/Object;

    aput-object p2, v6, v4

    .line 691
    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    aput-object v1, v3, v4

    goto :goto_1

    :cond_3
    const-string v1, "install %s failed"

    new-array v6, v5, [Ljava/lang/Object;

    aput-object p2, v6, v4

    .line 693
    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    aput-object v1, v3, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 697
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 701
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    const-string v0, "AppCtrl, Locker wait failed in installApp()"

    .line 702
    invoke-direct {p0, v5, v0}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 704
    :cond_4
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 706
    aget-object v1, v3, v4

    if-eqz v1, :cond_5

    .line 707
    aget-object v0, v3, v4

    goto :goto_2

    :cond_5
    if-nez v0, :cond_6

    const-string v0, "failed to install %s directly from %s"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v4

    aput-object p1, v1, v5

    .line 709
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v5, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :cond_6
    :goto_2
    return-object v0

    .line 704
    :goto_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method private installStreamedApp(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "apkFilePath",
            "pkgName"
        }
    .end annotation

    const-string v0, "UnitechSDK"

    const-string v1, "AppCtrl, installStreamedApp(%s, %s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    .line 462
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "AppCtrl, installStreamedApp failed: apkFilePath cannot be empty."

    .line 465
    invoke-direct {p0, v4, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 466
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "AppCtrl, installStreamedApp failed: pkgName cannot be empty."

    .line 467
    invoke-direct {p0, v4, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 470
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.unitech.appctrlservice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 471
    invoke-direct {p0, p1, p2}, Lcom/unitech/api/app/AppManagementCtrl;->getApkVersionInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    new-array v1, v4, [Landroid/os/Bundle;

    .line 476
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->tryToBindService()V

    const/4 v2, 0x0

    .line 480
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v2

    goto :goto_1

    :catch_0
    move-exception v5

    .line 482
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 483
    sget-object v5, Lcom/unitech/api/app/AppManagementCtrl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v5

    move-object v6, v5

    move-object v5, v2

    :goto_1
    if-nez v5, :cond_3

    .line 486
    invoke-virtual {v6, p1, v4}, Lcom/unitech/api/file/FileCtrl;->createFileStream(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "ParcelFileDescriptor"

    .line 487
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    .line 488
    new-instance v6, Ljava/io/FileInputStream;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    const-string v5, "UnitechSDK"

    const-string v7, "AppCtrl, create fileinputstream using dmservice FileCtrl"

    new-array v8, v3, [Ljava/lang/Object;

    .line 489
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    :cond_3
    new-array v6, v3, [Landroid/os/ParcelFileDescriptor;

    .line 493
    :try_start_1
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v7

    .line 495
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 497
    :goto_2
    aget-object v7, v6, v3

    .line 498
    aget-object v6, v6, v4

    .line 501
    sget-object v8, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    if-eqz v8, :cond_4

    .line 503
    new-instance v8, Lcom/unitech/api/app/AppManagementCtrl$4;

    invoke-direct {v8, p0, v6, v5, p1}, Lcom/unitech/api/app/AppManagementCtrl$4;-><init>(Lcom/unitech/api/app/AppManagementCtrl;Landroid/os/ParcelFileDescriptor;Ljava/io/FileInputStream;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/unitech/api/util/InternalExecutor;->execute(Ljava/lang/Runnable;)V

    .line 561
    new-instance p1, Lcom/unitech/api/app/AppManagementCtrl$5;

    invoke-direct {p1, p0, v7, p2, v1}, Lcom/unitech/api/app/AppManagementCtrl$5;-><init>(Lcom/unitech/api/app/AppManagementCtrl;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;[Landroid/os/Bundle;)V

    invoke-static {p1}, Lcom/unitech/api/util/InternalExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_4
    const-string p1, "AppCtrlAidl is null"

    .line 598
    invoke-direct {p0, v4, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 601
    :goto_3
    monitor-enter p0

    const-wide/32 v5, 0x9c40

    .line 603
    :try_start_2
    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 604
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v5, "com.unitech.appctrlservice"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 605
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->tryToBindService()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 607
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/unitech/api/app/AppManagementCtrl;->getAppInfoByPkgName(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v5, "AppInfo"

    .line 608
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v5, "AppVersionCode"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 609
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz v0, :cond_5

    if-ne v0, p1, :cond_5

    const-string p1, "install %s successful"

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 611
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    aput-object p1, v1, v3

    goto :goto_4

    :cond_5
    const-string p1, "install %s failed"

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 613
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    aput-object p1, v1, v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_2
    move-exception p1

    .line 617
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_3
    move-exception p1

    .line 621
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    const-string p1, "AppCtrl, Locker wait failed in installApp()"

    .line 622
    invoke-direct {p0, v4, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 624
    :cond_6
    :goto_4
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 626
    aget-object p1, v1, v3

    if-eqz p1, :cond_7

    .line 627
    aget-object v2, v1, v3

    goto :goto_5

    :cond_7
    if-nez v2, :cond_8

    const-string p1, "failed to install %s"

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 629
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    :cond_8
    :goto_5
    return-object v2

    .line 624
    :goto_6
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method private static isServiceHandlerHeld()Z
    .locals 1

    .line 253
    sget-boolean v0, Lcom/unitech/api/app/AppManagementCtrl;->serviceHandler:Z

    return v0
.end method

.method private isSystemApp()Z
    .locals 4

    .line 1547
    sget-object v0, Lcom/unitech/api/app/AppManagementCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 1550
    :try_start_0
    sget-object v2, Lcom/unitech/api/app/AppManagementCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1556
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .line 1552
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v1
.end method

.method private static releaseServiceHandler()V
    .locals 1

    const/4 v0, 0x0

    .line 261
    sput-boolean v0, Lcom/unitech/api/app/AppManagementCtrl;->serviceHandler:Z

    .line 262
    invoke-static {}, Lcom/unitech/api/app/AppManagementCtrl;->unbindService()V

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

    .line 219
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    .line 220
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "errorMsg"

    .line 221
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private streamApk(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "apkFilePipe",
            "pkgName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, ".apk"

    .line 1852
    sget-object v2, Lcom/unitech/api/app/AppManagementCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {p2, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v1, "UnitechSDK"

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    :try_start_1
    const-string v3, "streamApk: tempApk = %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 1854
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v3, "streamApk: tempApk = null"

    .line 1856
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    :goto_0
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1860
    :try_start_2
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v3, 0x400

    :try_start_3
    new-array v4, v3, [B

    .line 1863
    :goto_1
    invoke-virtual {v1, v4, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-lez v5, :cond_1

    .line 1864
    invoke-virtual {p1, v4, v2, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 1866
    :cond_1
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1872
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 1874
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1879
    :goto_2
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception p1

    .line 1881
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_0
    move-exception p2

    move-object v0, v1

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    goto :goto_7

    :catch_2
    move-exception v2

    move-object v6, p2

    move-object p2, p1

    move-object p1, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object p2, v0

    move-object v0, v1

    goto :goto_7

    :catch_3
    move-exception p1

    move-object v2, v1

    move-object v1, p2

    move-object p2, v0

    goto :goto_3

    :catch_4
    move-exception p1

    move-object v1, p2

    move-object p2, v0

    move-object v2, p2

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object p2, v0

    goto :goto_7

    :catch_5
    move-exception p1

    move-object p2, v0

    move-object v1, p2

    move-object v2, v1

    .line 1868
    :goto_3
    :try_start_6
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v2, :cond_2

    .line 1872
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_4

    :catch_6
    move-exception p1

    .line 1874
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_4
    if-eqz p2, :cond_3

    .line 1879
    :try_start_8
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_5

    :catch_7
    move-exception p1

    .line 1881
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_5
    move-object p2, v1

    :goto_6
    if-eqz p2, :cond_4

    .line 1885
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v0

    :catchall_3
    move-exception p1

    move-object v0, v2

    :goto_7
    if-eqz v0, :cond_5

    .line 1872
    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    .line 1874
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_8
    if-eqz p2, :cond_6

    .line 1879
    :try_start_a
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_9

    :catch_9
    move-exception p2

    .line 1881
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 1883
    :cond_6
    :goto_9
    throw p1
.end method

.method private tryToBindDMService()Z
    .locals 1

    .line 155
    :try_start_0
    sget-object v0, Lcom/unitech/api/app/AppManagementCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unitech/api/app/AppManagementCtrl;->ensureNotOnMainThread(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    sget-object v0, Lcom/unitech/api/app/AppManagementCtrl;->mDMServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method private tryToBindService()V
    .locals 3

    .line 235
    :try_start_0
    sget-object v0, Lcom/unitech/api/app/AppManagementCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unitech/api/app/AppManagementCtrl;->ensureNotOnMainThread(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 241
    new-instance v0, Lcom/unitech/api/app/AppManagementCtrl$BindServiceMonitor;

    sget-object v1, Lcom/unitech/api/app/AppManagementCtrl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/unitech/api/app/AppManagementCtrl$BindServiceMonitor;-><init>(Lcom/unitech/api/app/AppManagementCtrl;Landroid/content/Context;)V

    .line 242
    invoke-virtual {v0}, Lcom/unitech/api/app/AppManagementCtrl$BindServiceMonitor;->start()V

    .line 245
    :try_start_1
    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v1, 0x1388

    :try_start_2
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    .line 248
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void

    :catch_1
    move-exception v0

    .line 237
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    return-void
.end method

.method private static unbindService()V
    .locals 4

    .line 327
    invoke-static {}, Lcom/unitech/api/app/AppManagementCtrl;->isServiceHandlerHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    sget-object v0, Lcom/unitech/api/app/AppManagementCtrl;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/unitech/api/app/AppManagementCtrl;->runnableUnbindService:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 329
    sget-object v0, Lcom/unitech/api/app/AppManagementCtrl;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/unitech/api/app/AppManagementCtrl;->runnableUnbindService:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public activateApp(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkgName"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "AppCtrl, activateApp(%s)"

    .line 758
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "UnitechSDK"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "AppCtrl, activateApp failed: pkgName cannot be empty."

    .line 760
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 763
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->tryToBindService()V

    .line 765
    sget-object v1, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    if-eqz v1, :cond_2

    .line 767
    :try_start_0
    invoke-interface {v1, p1}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;->activateApp(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "AppCtrl, activateApp success"

    .line 769
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "AppCtrl, activateApp failed"

    .line 771
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 774
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v1, v0, [Ljava/lang/Object;

    .line 775
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "AppCtrl, activateApp failed: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "AppCtrlAidl is null"

    .line 778
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public activateAppWithClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pkgName",
            "className"
        }
    .end annotation

    const-string v0, "."

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "AppCtrl, activateApp(%s)"

    .line 791
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "UnitechSDK"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 796
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->tryToBindService()V

    .line 798
    sget-object v2, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    if-eqz v2, :cond_4

    .line 800
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, p1, v4}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;->activateAppWithClassName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "AppCtrl, activateApp success"

    if-nez v2, :cond_1

    .line 802
    :try_start_1
    invoke-direct {p0, v3, v4}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    .line 804
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 805
    :cond_2
    sget-object v0, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    invoke-interface {v0, p1, p2}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;->activateAppWithClassName(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3

    .line 807
    invoke-direct {p0, v3, v4}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, "AppCtrl, activateApp failed"

    .line 809
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 813
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array p2, v1, [Ljava/lang/Object;

    .line 814
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v3

    const-string p1, "AppCtrl, activateApp failed: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_4
    const-string p1, "AppCtrlAidl is null"

    .line 817
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_5
    :goto_1
    const-string p1, "AppCtrl, activateApp failed: pkgName and className cannot be empty."

    .line 793
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public clearAppData(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkgName"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "AppCtrl, clearAppData(%s)"

    .line 929
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "UnitechSDK"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "AppCtrl, clearAppData failed: pkgName cannot be empty."

    .line 931
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 934
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->tryToBindService()V

    .line 936
    sget-object v1, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    if-eqz v1, :cond_2

    .line 938
    :try_start_0
    invoke-interface {v1, p1}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;->clearAppData(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "AppCtrl, clearAppData success"

    .line 940
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "AppCtrl, clearAppData failed"

    .line 942
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 945
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v1, v0, [Ljava/lang/Object;

    .line 946
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "AppCtrl, clearAppData failed: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "AppCtrlAidl is null"

    .line 949
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public clearDefaultApps(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "action",
            "categories"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1669
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "AppCtrl, clearDefaultApps(%s, %s)"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "UnitechSDK"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "AppCtrl, clearDefaultApps failed: action cannot be empty."

    .line 1671
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 1672
    :cond_0
    array-length v0, p2

    if-ge v0, v3, :cond_1

    const-string p1, "AppCtrl, clearDefaultApps failed: categories is Empty."

    .line 1673
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 1676
    :cond_1
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->tryToBindService()V

    .line 1678
    sget-object v0, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    if-eqz v0, :cond_3

    .line 1680
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;->clearDefaultApps(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "AppCtrl, clearDefaultApps success"

    .line 1682
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "AppCtrl, clearDefaultApps failed"

    .line 1684
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1687
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array p2, v3, [Ljava/lang/Object;

    .line 1688
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "AppCtrl, clearDefaultApps failed: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, "AppCtrlAidl is null"

    .line 1691
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public clearDefaultApps([Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packages"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1566
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "AppCtrl, clearDefaultApps(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnitechSDK"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    array-length v1, p1

    if-ge v1, v0, :cond_0

    const-string p1, "AppCtrl, clearDefaultApps failed: packages is Empty."

    .line 1569
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 1572
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->tryToBindService()V

    .line 1574
    sget-object v1, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    if-eqz v1, :cond_6

    .line 1576
    :try_start_0
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->getAllInstalledPkgNameList()Ljava/util/List;

    move-result-object v1

    const-string v2, ""

    .line 1579
    array-length v4, p1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, p1, v5

    .line 1580
    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 1584
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v2, v6

    goto :goto_1

    .line 1587
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1591
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1592
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppCtrl, clearDefaultApps failed: invalid name: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 1595
    :cond_4
    sget-object v1, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    invoke-interface {v1, p1}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;->clearDefaultAppsByPackages([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "AppCtrl, clearDefaultApps success"

    .line 1597
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_2

    :cond_5
    const-string p1, "AppCtrl, clearDefaultApps failed"

    .line 1599
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1602
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v1, v0, [Ljava/lang/Object;

    .line 1603
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    const-string p1, "AppCtrl, clearDefaultApps failed: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_2

    :cond_6
    const-string p1, "AppCtrlAidl is null"

    .line 1606
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public deactivateApp(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkgName"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "AppCtrl, deactivateApp(%s)"

    .line 829
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "UnitechSDK"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "AppCtrl, deactivateApp failed: pkgName cannot be empty."

    .line 831
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 834
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->tryToBindService()V

    .line 836
    sget-object v1, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    if-eqz v1, :cond_2

    .line 838
    :try_start_0
    invoke-interface {v1, p1}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;->deactivateApp(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "AppCtrl, deactivateApp success"

    .line 840
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "AppCtrl, deactivateApp failed"

    .line 842
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 845
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v1, v0, [Ljava/lang/Object;

    .line 846
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "AppCtrl, deactivateApp failed: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "AppCtrlAidl is null"

    .line 849
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public disableApp(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkgName"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "AppCtrl, disableApp(%s)"

    .line 895
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "UnitechSDK"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "AppCtrl, disableApp failed: pkgName cannot be empty."

    .line 897
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 900
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->tryToBindService()V

    .line 902
    sget-object v1, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    if-eqz v1, :cond_2

    .line 904
    :try_start_0
    invoke-interface {v1, p1}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;->disableApp(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "AppCtrl, disableApp success"

    .line 906
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "AppCtrl, disableApp failed"

    .line 908
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 911
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v1, v0, [Ljava/lang/Object;

    .line 912
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "AppCtrl, disableApp failed: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "AppCtrlAidl is null"

    .line 915
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public enableApp(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkgName"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "AppCtrl, enableApp(%s)"

    .line 862
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "UnitechSDK"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "AppCtrl, enableApp failed: pkgName cannot be empty."

    .line 864
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 867
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->tryToBindService()V

    .line 869
    sget-object v1, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    if-eqz v1, :cond_2

    .line 871
    :try_start_0
    invoke-interface {v1, p1}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;->enableApp(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "AppCtrl, enableApp success"

    .line 873
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "AppCtrl, enableApp failed"

    .line 875
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 878
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v1, v0, [Ljava/lang/Object;

    .line 879
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "AppCtrl, enableApp failed: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "AppCtrlAidl is null"

    .line 882
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getAllAppNameList()Landroid/os/Bundle;
    .locals 5

    .line 1211
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->tryToBindService()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "AppCtrl, getAllAppNameList()"

    .line 1212
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnitechSDK"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    sget-object v1, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1215
    :try_start_0
    invoke-interface {v1}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;->getAllAppNameList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "AppCtrl, getAllAppNameList success"

    .line 1217
    invoke-direct {p0, v0, v3}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "AppNameList"

    .line 1218
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const-string v1, "AppCtrl, getAllAppNameList failed"

    .line 1220
    invoke-direct {p0, v2, v1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1223
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v2, [Ljava/lang/Object;

    .line 1224
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "AppCtrl, getAllAppNameList failed: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v0, "AppCtrlAidl is null"

    .line 1227
    invoke-direct {p0, v2, v0}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    :goto_0
    return-object v3
.end method

.method public getAllPkgNameList()Landroid/os/Bundle;
    .locals 5

    .line 1242
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->tryToBindService()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "AppCtrl, getAllPkgNameList()"

    .line 1243
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnitechSDK"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    sget-object v1, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1246
    :try_start_0
    invoke-interface {v1}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;->getAllPkgNameList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "AppCtrl, getAllPkgNameList success"

    .line 1248
    invoke-direct {p0, v0, v3}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "PkgNameList"

    .line 1249
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const-string v1, "AppCtrl, getAllPkgNameList failed"

    .line 1251
    invoke-direct {p0, v2, v1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1254
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v2, [Ljava/lang/Object;

    .line 1255
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "AppCtrl, getAllPkgNameList failed: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v0, "AppCtrlAidl is null"

    .line 1258
    invoke-direct {p0, v2, v0}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    :goto_0
    return-object v3
.end method

.method public getAppInfoByAppName(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appName"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "AppCtrl, getAppInfoByAppName(%s)"

    .line 1349
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "UnitechSDK"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "AppCtrl, getAppInfoByAppName failed: appName cannot be empty."

    .line 1351
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 1354
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->tryToBindService()V

    .line 1356
    sget-object v1, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    if-eqz v1, :cond_3

    .line 1358
    :try_start_0
    invoke-interface {v1, p1}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;->getAppInfoByAppName(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 1360
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1361
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1362
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1363
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1366
    :cond_1
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "AppCtrl, getAppInfoByAppName failed: App is not installed or cannot be parsed"

    .line 1367
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, "AppCtrl, getAppInfoByAppName success"

    .line 1369
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "AppInfo"

    .line 1370
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1373
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v1, v0, [Ljava/lang/Object;

    .line 1374
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "AppCtrl, getAppInfoByAppName failed: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string p1, "AppCtrlAidl is null"

    .line 1377
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public getAppInfoByPkgName(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkgName"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "AppCtrl, getAppInfoByPkgName(%s)"

    .line 1391
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "UnitechSDK"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "AppCtrl, getAppInfoByPkgName failed: pkgName cannot be empty."

    .line 1393
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 1396
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->tryToBindService()V

    .line 1398
    sget-object v1, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    if-eqz v1, :cond_3

    .line 1400
    :try_start_0
    invoke-interface {v1, p1}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;->getAppInfoByPkgName(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 1402
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1403
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1404
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1405
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1408
    :cond_1
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "AppCtrl, getAppInfoByPkgName failed: App is not installed or cannot be parsed"

    new-array v1, v2, [Ljava/lang/Object;

    .line 1409
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, "AppCtrl, getAppInfoByPkgName success"

    .line 1411
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "AppInfo"

    .line 1412
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1415
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v1, v0, [Ljava/lang/Object;

    .line 1416
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "AppCtrl, getAppInfoByPkgName failed: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string p1, "AppCtrlAidl is null"

    .line 1419
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public getAppPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apkPath"
        }
    .end annotation

    .line 191
    sget-object v0, Lcom/unitech/api/app/AppManagementCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 193
    new-instance v1, Lcom/unitech/api/file/helper/FileCtrlHelper;

    sget-object v2, Lcom/unitech/api/app/AppManagementCtrl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/unitech/api/file/helper/FileCtrlHelper;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 196
    :try_start_0
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/unitech/api/app/AppManagementCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tempApk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v1, p1}, Lcom/unitech/api/file/helper/FileCtrlHelper;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 199
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 202
    :goto_0
    invoke-virtual {p1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, 0x0

    if-lez v6, :cond_0

    .line 203
    invoke-virtual {v4, v5, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 206
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 207
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v7}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 208
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 209
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/unitech/api/file/helper/FileCtrlHelper;->delete(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "UnitechSDK"

    const-string v0, "Executor getPackageName: fail to delete tempApkFile"

    .line 210
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :catch_0
    :cond_1
    invoke-virtual {v1}, Lcom/unitech/api/file/helper/FileCtrlHelper;->closeFileStream()V

    return-object v2
.end method

.method public getBuiltinSystemAppNameList()Landroid/os/Bundle;
    .locals 5

    .line 1088
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->tryToBindService()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "AppCtrl, getBuiltinSystemAppNameList()"

    .line 1089
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnitechSDK"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    sget-object v1, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1092
    :try_start_0
    invoke-interface {v1}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;->getBuiltinSystemAppNameList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "AppCtrl, getBuiltinSystemAppNameList success"

    .line 1094
    invoke-direct {p0, v0, v3}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "AppNameList"

    .line 1095
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const-string v1, "AppCtrl, getBuiltinSystemAppNameList failed"

    .line 1097
    invoke-direct {p0, v2, v1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1100
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v2, [Ljava/lang/Object;

    .line 1101
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "AppCtrl, getBuiltinSystemAppNameList failed: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v0, "AppCtrlAidl is null"

    .line 1104
    invoke-direct {p0, v2, v0}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    :goto_0
    return-object v3
.end method

.method public getBuiltinSystemPkgNameList()Landroid/os/Bundle;
    .locals 5

    .line 1119
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->tryToBindService()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "AppCtrl, getBuiltinSystemPkgNameList()"

    .line 1120
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnitechSDK"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    sget-object v1, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1123
    :try_start_0
    invoke-interface {v1}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;->getBuiltinSystemPkgNameList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "AppCtrl, getBuiltinSystemPkgNameList success"

    .line 1125
    invoke-direct {p0, v0, v3}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "PkgNameList"

    .line 1126
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const-string v1, "AppCtrl, getBuiltinSystemPkgNameList failed"

    .line 1128
    invoke-direct {p0, v2, v1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1131
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v2, [Ljava/lang/Object;

    .line 1132
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "AppCtrl, getBuiltinSystemPkgNameList failed: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v0, "AppCtrlAidl is null"

    .line 1135
    invoke-direct {p0, v2, v0}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    :goto_0
    return-object v3
.end method

.method public getDisabledAppNameList()Landroid/os/Bundle;
    .locals 5

    .line 1150
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->tryToBindService()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "AppCtrl, getDisabledAppNameList()"

    .line 1151
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnitechSDK"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    sget-object v1, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1154
    :try_start_0
    invoke-interface {v1}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;->getDisabledAppNameList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "AppCtrl, getDisabledAppNameList success"

    .line 1156
    invoke-direct {p0, v0, v3}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "AppNameList"

    .line 1157
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const-string v1, "AppCtrl, getDisabledAppNameList failed"

    .line 1159
    invoke-direct {p0, v2, v1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1162
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v2, [Ljava/lang/Object;

    .line 1163
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "AppCtrl, getDisabledAppNameList failed: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v0, "AppCtrlAidl is null"

    .line 1166
    invoke-direct {p0, v2, v0}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    :goto_0
    return-object v3
.end method

.method public getDisabledPkgNameList()Landroid/os/Bundle;
    .locals 5

    .line 1181
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->tryToBindService()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "AppCtrl, getDisabledPkgNameList()"

    .line 1182
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnitechSDK"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    sget-object v1, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1185
    :try_start_0
    invoke-interface {v1}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;->getDisabledPkgNameList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "AppCtrl, getDisabledPkgNameList success"

    .line 1187
    invoke-direct {p0, v0, v3}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "PkgNameList"

    .line 1188
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const-string v1, "AppCtrl, getDisabledPkgNameList failed"

    .line 1190
    invoke-direct {p0, v2, v1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1193
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v2, [Ljava/lang/Object;

    .line 1194
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "AppCtrl, getDisabledPkgNameList failed: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v0, "AppCtrlAidl is null"

    .line 1197
    invoke-direct {p0, v2, v0}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    :goto_0
    return-object v3
.end method

.method public getInstallAppNameList()Landroid/os/Bundle;
    .locals 5

    .line 1026
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->tryToBindService()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "AppCtrl, getInstallAppNameList()"

    .line 1027
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnitechSDK"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    sget-object v1, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1030
    :try_start_0
    invoke-interface {v1}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;->getInstallAppNameList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "AppCtrl, getInstallAppNameList success"

    .line 1032
    invoke-direct {p0, v0, v3}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "AppNameList"

    .line 1033
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const-string v1, "AppCtrl, getInstallAppNameList failed"

    .line 1035
    invoke-direct {p0, v2, v1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1038
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v2, [Ljava/lang/Object;

    .line 1039
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "AppCtrl, getInstallAppNameList failed: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v0, "AppCtrlAidl is null"

    .line 1042
    invoke-direct {p0, v2, v0}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    :goto_0
    return-object v3
.end method

.method public getInstallPkgNameList()Landroid/os/Bundle;
    .locals 5

    .line 1057
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->tryToBindService()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "AppCtrl, getInstallPkgNameList()"

    .line 1058
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnitechSDK"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    sget-object v1, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1061
    :try_start_0
    invoke-interface {v1}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;->getInstallPkgNameList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "AppCtrl, getInstallPkgNameList success"

    .line 1063
    invoke-direct {p0, v0, v3}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "PkgNameList"

    .line 1064
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const-string v1, "AppCtrl, getInstallPkgNameList failed"

    .line 1066
    invoke-direct {p0, v2, v1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1069
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v2, [Ljava/lang/Object;

    .line 1070
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "AppCtrl, getInstallPkgNameList failed: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v0, "AppCtrlAidl is null"

    .line 1073
    invoke-direct {p0, v2, v0}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    :goto_0
    return-object v3
.end method

.method public getRunningAppNameList()Landroid/os/Bundle;
    .locals 5

    .line 964
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->tryToBindService()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "AppCtrl, getRunningAppNameList()"

    .line 965
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnitechSDK"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    sget-object v1, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 968
    :try_start_0
    invoke-interface {v1}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;->getRunningAppNameList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "AppCtrl, getRunningAppNameList success"

    .line 970
    invoke-direct {p0, v0, v3}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "AppNameList"

    .line 971
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const-string v1, "AppCtrl, getRunningAppNameList failed"

    .line 973
    invoke-direct {p0, v2, v1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 976
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v2, [Ljava/lang/Object;

    .line 977
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "AppCtrl, getRunningAppNameList failed: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v0, "AppCtrlAidl is null"

    .line 980
    invoke-direct {p0, v2, v0}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    :goto_0
    return-object v3
.end method

.method public getRunningPkgNameList()Landroid/os/Bundle;
    .locals 5

    .line 995
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->tryToBindService()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "AppCtrl, getRunningPkgNameList()"

    .line 996
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnitechSDK"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    sget-object v1, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 999
    :try_start_0
    invoke-interface {v1}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;->getRunningPkgNameList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "AppCtrl, getRunningPkgNameList success"

    .line 1001
    invoke-direct {p0, v0, v3}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "PkgNameList"

    .line 1002
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const-string v1, "AppCtrl, getRunningPkgNameList failed"

    .line 1004
    invoke-direct {p0, v2, v1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1007
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v2, [Ljava/lang/Object;

    .line 1008
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "AppCtrl, getRunningPkgNameList failed: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v0, "AppCtrlAidl is null"

    .line 1011
    invoke-direct {p0, v2, v0}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    :goto_0
    return-object v3
.end method

.method public grantAppPermission(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "permissions"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "AppCtrl, grantAppPermission(%s)"

    .line 1714
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "UnitechSDK"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "AppCtrl, grantAppPermission failed: packageName cannot be empty."

    .line 1716
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 1719
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->tryToBindService()V

    .line 1721
    sget-object v1, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    if-eqz v1, :cond_2

    .line 1723
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;->grantAppPermission(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "AppCtrl, grantAppPermission executed"

    .line 1725
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "AppCtrl, grantAppPermission failed"

    .line 1727
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1729
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array p2, v0, [Ljava/lang/Object;

    .line 1730
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    const-string p1, "AppCtrl, grantAppPermission failed: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "AppCtrlAidl is null"

    .line 1733
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public installApp(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "apkFilePath",
            "pkgName"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const-string v3, "AppCtrl, installApp(%s, %s)"

    .line 382
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "UnitechSDK"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 388
    :cond_0
    new-instance v0, Lcom/unitech/api/file/helper/FileCtrlHelper;

    sget-object v4, Lcom/unitech/api/app/AppManagementCtrl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/unitech/api/file/helper/FileCtrlHelper;-><init>(Landroid/content/Context;)V

    .line 389
    invoke-virtual {v0, p1}, Lcom/unitech/api/file/helper/FileCtrlHelper;->exists(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string p1, "APK not found"

    .line 390
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 392
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_3

    .line 394
    sget-object v5, Lcom/unitech/api/app/AppManagementCtrl;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "com.unitech.dmservice"

    .line 395
    invoke-direct {p0, v5}, Lcom/unitech/api/app/AppManagementCtrl;->checkPkgExist(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string p1, "file can\'t read and do not have dmservice"

    .line 396
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 400
    :cond_3
    invoke-virtual {p0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->getAppPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 401
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 402
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Inconsistent package name: apk is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 405
    :cond_4
    new-instance v5, Lcom/unitech/lib/appctrl/AppCtrl;

    sget-object v6, Lcom/unitech/api/app/AppManagementCtrl;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/unitech/lib/appctrl/AppCtrl;-><init>(Landroid/content/Context;)V

    const-string v6, "install succeeded"

    const-string v7, "install failed"

    if-eqz v4, :cond_6

    .line 407
    invoke-virtual {v5, p1, p2}, Lcom/unitech/lib/appctrl/AppCtrl;->InstallApp(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_5

    .line 409
    invoke-direct {p0, v1, v6}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto/16 :goto_3

    :cond_5
    new-array p1, v1, [Ljava/lang/Object;

    .line 411
    invoke-static {v7, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto/16 :goto_3

    .line 416
    :cond_6
    :try_start_0
    new-instance v4, Ljava/io/File;

    sget-object v8, Lcom/unitech/api/app/AppManagementCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tempApk"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ".apk"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 417
    invoke-virtual {v0, p1}, Lcom/unitech/api/file/helper/FileCtrlHelper;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 419
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v9, 0x400

    new-array v9, v9, [B

    .line 422
    :goto_1
    invoke-virtual {p1, v9}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_7

    .line 423
    invoke-virtual {v8, v9, v1, v10}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 425
    :cond_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 426
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 427
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1, p2}, Lcom/unitech/lib/appctrl/AppCtrl;->InstallApp(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 428
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/unitech/api/file/helper/FileCtrlHelper;->delete(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "Executor installApp: fail to delete tempApkFile"

    .line 429
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-nez p1, :cond_9

    .line 432
    invoke-direct {p0, v1, v6}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_2

    :cond_9
    new-array p1, v1, [Ljava/lang/Object;

    .line 434
    invoke-static {v7, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-array p1, v1, [Ljava/lang/Object;

    .line 437
    invoke-static {v7, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 439
    :goto_2
    invoke-virtual {v0}, Lcom/unitech/api/file/helper/FileCtrlHelper;->closeFileStream()V

    :goto_3
    return-object p1

    :cond_a
    :goto_4
    const-string p1, "Cannot be empty"

    .line 385
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public installApp(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "apkFilePath",
            "pkgName",
            "permissions"
        }
    .end annotation

    .line 453
    invoke-virtual {p0, p1, p2}, Lcom/unitech/api/app/AppManagementCtrl;->installApp(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    .line 454
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 455
    invoke-virtual {p0, p2, p3}, Lcom/unitech/api/app/AppManagementCtrl;->grantAppPermission(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public osUpdate(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updateZipPath"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "AppCtrl, osUpdate(%s)"

    .line 1270
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "UnitechSDK"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "AppCtrl, osUpdate failed: updateZipPath cannot be empty."

    .line 1272
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 1275
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->tryToBindService()V

    .line 1277
    sget-object v1, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    if-eqz v1, :cond_1

    .line 1279
    :try_start_0
    invoke-interface {v1, p1}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;->osUpdate(Ljava/lang/String;)V

    const-string p1, "AppCtrl, osUpdate success"

    .line 1280
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1282
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v1, v0, [Ljava/lang/Object;

    .line 1283
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "AppCtrl, osUpdate failed: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "AppCtrlAidl is null"

    .line 1286
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public queryIntentService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "action",
            "packageName"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const-string v3, "AppCtrl, queryIntentService(%s, %s)"

    .line 1519
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "UnitechSDK"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "AppCtrl, queryIntentService failed: action cannot be empty."

    .line 1521
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 1522
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "AppCtrl, queryIntentService failed: packageName cannot be empty."

    .line 1523
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 1526
    :cond_1
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->tryToBindService()V

    .line 1528
    sget-object v0, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    if-eqz v0, :cond_3

    .line 1530
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;->queryIntentService(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "AppCtrl, queryIntentService success"

    .line 1532
    invoke-direct {p0, v1, p2}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "ServiceInfoNameList"

    .line 1533
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    const-string p1, "AppCtrl, queryIntentService failed"

    .line 1535
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1538
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array p2, v2, [Ljava/lang/Object;

    .line 1539
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "AppCtrl, queryIntentService failed: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    goto :goto_0

    :cond_3
    const-string p1, "AppCtrlAidl is null"

    .line 1542
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method public removeApp(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkgName"
        }
    .end annotation

    const-string v0, "AppCtrl, removeApp failed"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "AppCtrl, removeApp(%s)"

    .line 723
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "UnitechSDK"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "AppCtrl, removeApp failed: pkgName cannot be empty."

    .line 726
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 729
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->tryToBindService()V

    .line 731
    sget-object v2, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    if-eqz v2, :cond_2

    .line 733
    :try_start_0
    invoke-interface {v2, p1}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;->removeApp(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "AppCtrl, removeApp success"

    .line 735
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    .line 737
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 740
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 741
    invoke-direct {p0, v1, v0}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "AppCtrlAidl is null"

    .line 744
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public resolveActivity(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "action",
            "categories",
            "packageName"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1476
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const-string v3, "AppCtrl, resolveActivityName(%s, %s)"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "UnitechSDK"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "AppCtrl, resolveActivity failed: action cannot be empty."

    .line 1478
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 1480
    :cond_0
    array-length v0, p2

    if-ge v0, v1, :cond_1

    const-string p1, "AppCtrl, resolveActivity failed: categories is Empty."

    .line 1481
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 1482
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "AppCtrl, resolveActivity failed: packageName cannot be empty."

    .line 1483
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 1486
    :cond_2
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->tryToBindService()V

    .line 1488
    sget-object v0, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    if-eqz v0, :cond_4

    .line 1490
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;->resolveActivity(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p2, "AppCtrl, resolveActivity success"

    .line 1492
    invoke-direct {p0, v2, p2}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 1493
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 1494
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "AppCtrl, resolveActivity failed"

    .line 1497
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1500
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array p2, v1, [Ljava/lang/Object;

    .line 1501
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    const-string p1, "AppCtrl, resolveActivity failed: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    goto :goto_1

    :cond_4
    const-string p1, "AppCtrlAidl is null"

    .line 1504
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    :cond_5
    :goto_1
    return-object p2
.end method

.method public runSysCmd(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "command"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "AppCtrl, runSysCmd(%s)"

    .line 1301
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "UnitechSDK"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "AppCtrl, runSysCmd failed: command cannot be empty."

    .line 1303
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 1306
    :cond_0
    sget-boolean v1, Lcom/unitech/api/machine/Machine;->TB85:Z

    const-string v3, "SysCmdResult"

    const-string v4, "AppCtrl, runSysCmd success"

    const-string v5, "AppCtrl, runSysCmd failed: %s"

    if-eqz v1, :cond_2

    .line 1307
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->tryToBindDMService()Z

    .line 1308
    sget-object v1, Lcom/unitech/api/app/AppManagementCtrl;->GeneralCtrlAidl:Lcom/unitech/dmservice/IGeneralCtrlAidl;

    if-eqz v1, :cond_1

    .line 1310
    :try_start_0
    invoke-interface {v1, p1}, Lcom/unitech/dmservice/IGeneralCtrlAidl;->runSysCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1311
    invoke-direct {p0, v2, v4}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1312
    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1314
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v1, v0, [Ljava/lang/Object;

    .line 1315
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "AppCtrl, runSysCmd failed: GeneralCtrlAidl NULL"

    .line 1319
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    :goto_0
    return-object v1

    .line 1322
    :cond_2
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->tryToBindService()V

    .line 1324
    sget-object v1, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    if-eqz v1, :cond_3

    .line 1326
    :try_start_1
    invoke-interface {v1, p1}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;->runSysCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1327
    invoke-direct {p0, v2, v4}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1328
    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1330
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v1, v0, [Ljava/lang/Object;

    .line 1331
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string p1, "AppCtrlAidl is null"

    .line 1334
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public setDefaultApp(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "action",
            "categories",
            "packageName",
            "activityName"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1435
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    aput-object p3, v0, v2

    const/4 v2, 0x3

    aput-object p4, v0, v2

    const-string v2, "AppCtrl, setDefaultApp(%s, %s, %s, %s)"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "UnitechSDK"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "AppCtrl, setDefaultApp failed: action cannot be empty."

    .line 1437
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 1438
    :cond_0
    array-length v0, p2

    if-ge v0, v3, :cond_1

    const-string p1, "AppCtrl, setDefaultApp failed: categories is Empty."

    .line 1439
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 1440
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "AppCtrl, setDefaultApp failed: packageName cannot be empty."

    .line 1441
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 1442
    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "AppCtrl, setDefaultApp failed: activityName cannot be empty."

    .line 1443
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 1446
    :cond_3
    invoke-direct {p0}, Lcom/unitech/api/app/AppManagementCtrl;->tryToBindService()V

    .line 1448
    sget-object v0, Lcom/unitech/api/app/AppManagementCtrl;->mAppCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    if-eqz v0, :cond_5

    .line 1450
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;->setDefaultApp(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "AppCtrl, setDefaultApp success"

    .line 1452
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_4
    const-string p1, "AppCtrl, setDefaultApp failed, for current Default is Launcher3, need to use clearDefaultApp to clear the default first"

    .line 1454
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1457
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array p2, v3, [Ljava/lang/Object;

    .line 1458
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "AppCtrl, setDefaultApp failed: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_5
    const-string p1, "AppCtrlAidl is null"

    .line 1461
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/app/AppManagementCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    return-object p1
.end method
