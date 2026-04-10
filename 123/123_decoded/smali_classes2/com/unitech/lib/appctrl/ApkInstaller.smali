.class public Lcom/unitech/lib/appctrl/ApkInstaller;
.super Ljava/lang/Object;
.source "ApkInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;,
        Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;
    }
.end annotation


# static fields
.field private static final ACTION_BIND_SERVICE:Ljava/lang/String; = "com.unitech.appctrlapi.aidl"

.field static final EXTRA_IM_SESSION_ID:Ljava/lang/String; = "IM_SESSION_ID"

.field static LOG_TAG:Ljava/lang/String; = "ApkInstaller"

.field private static final PKG_API_SERVICE:Ljava/lang/String; = "com.unitech.appctrlservice"

.field private static appCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

.field private static final appCtrlLock:Ljava/lang/Object;

.field private static executor:Ljava/util/concurrent/Executor;

.field private static installTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private static isServiceConnected:Z

.field static mContext:Landroid/content/Context;

.field static mPackageInstaller:Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;

.field private static mServiceChecked:I

.field private static mainHandler:Landroid/os/Handler;

.field private static serviceConnection:Landroid/content/ServiceConnection;

.field private static unbindRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/unitech/lib/appctrl/ApkInstaller;->installTaskList:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 58
    sput v0, Lcom/unitech/lib/appctrl/ApkInstaller;->mServiceChecked:I

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/unitech/lib/appctrl/ApkInstaller;->appCtrlLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 63
    sput-boolean v0, Lcom/unitech/lib/appctrl/ApkInstaller;->isServiceConnected:Z

    const/4 v0, 0x0

    .line 234
    sput-object v0, Lcom/unitech/lib/appctrl/ApkInstaller;->mPackageInstaller:Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Uninstall(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 406
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    const/high16 v2, 0x2000000

    .line 408
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 410
    invoke-static {p0}, Lcom/unitech/lib/appctrl/ApkInstaller;->getPkgInstaller(Landroid/content/Context;)Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;

    move-result-object p0

    .line 411
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->uninstall(Ljava/lang/String;Landroid/content/IntentSender;)V

    return-void
.end method

.method static synthetic access$000()Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;
    .locals 1

    .line 42
    sget-object v0, Lcom/unitech/lib/appctrl/ApkInstaller;->appCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    return-object v0
.end method

.method static synthetic access$002(Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;)Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;
    .locals 0

    .line 42
    sput-object p0, Lcom/unitech/lib/appctrl/ApkInstaller;->appCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    return-object p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 42
    sput-boolean p0, Lcom/unitech/lib/appctrl/ApkInstaller;->isServiceConnected:Z

    return p0
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .line 42
    sget-object v0, Lcom/unitech/lib/appctrl/ApkInstaller;->appCtrlLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300()Landroid/content/ServiceConnection;
    .locals 1

    .line 42
    sget-object v0, Lcom/unitech/lib/appctrl/ApkInstaller;->serviceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$302(Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    .line 42
    sput-object p0, Lcom/unitech/lib/appctrl/ApkInstaller;->serviceConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$402(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 42
    sput-object p0, Lcom/unitech/lib/appctrl/ApkInstaller;->unbindRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500()Ljava/util/ArrayList;
    .locals 1

    .line 42
    sget-object v0, Lcom/unitech/lib/appctrl/ApkInstaller;->installTaskList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .line 42
    sget v0, Lcom/unitech/lib/appctrl/ApkInstaller;->mServiceChecked:I

    return v0
.end method

.method static synthetic access$700()V
    .locals 0

    .line 42
    invoke-static {}, Lcom/unitech/lib/appctrl/ApkInstaller;->bindAppCtrlService()V

    return-void
.end method

.method static synthetic access$800()Ljava/util/concurrent/Executor;
    .locals 1

    .line 42
    sget-object v0, Lcom/unitech/lib/appctrl/ApkInstaller;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$802(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 42
    sput-object p0, Lcom/unitech/lib/appctrl/ApkInstaller;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method private static declared-synchronized bindAppCtrlService()V
    .locals 8

    const-class v0, Lcom/unitech/lib/appctrl/ApkInstaller;

    monitor-enter v0

    .line 148
    :try_start_0
    sget-object v1, Lcom/unitech/lib/appctrl/ApkInstaller;->appCtrlLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 149
    :try_start_1
    sget-object v2, Lcom/unitech/lib/appctrl/ApkInstaller;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Start bindAppCtrlService"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    sget-object v2, Lcom/unitech/lib/appctrl/ApkInstaller;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/unitech/lib/appctrl/ApkInstaller;->isServiceConnected:Z

    if-nez v2, :cond_1

    .line 151
    new-instance v2, Lcom/unitech/lib/appctrl/ApkInstaller$1;

    invoke-direct {v2}, Lcom/unitech/lib/appctrl/ApkInstaller$1;-><init>()V

    sput-object v2, Lcom/unitech/lib/appctrl/ApkInstaller;->serviceConnection:Landroid/content/ServiceConnection;

    .line 175
    sget-object v2, Lcom/unitech/lib/appctrl/ApkInstaller;->appCtrlAidl:Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    if-nez v2, :cond_0

    .line 176
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.unitech.appctrlapi.aidl"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.unitech.appctrlservice"

    .line 177
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    sget-object v4, Lcom/unitech/lib/appctrl/ApkInstaller;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Binding appctrl service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sget-object v4, Lcom/unitech/lib/appctrl/ApkInstaller;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/unitech/lib/appctrl/ApkInstaller;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v2, v5, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    :cond_0
    :try_start_2
    sget-object v2, Lcom/unitech/lib/appctrl/ApkInstaller;->LOG_TAG:Ljava/lang/String;

    const-string v3, "appCtrlLock wait"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sget-object v2, Lcom/unitech/lib/appctrl/ApkInstaller;->appCtrlLock:Ljava/lang/Object;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 185
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 188
    :cond_1
    sget-object v2, Lcom/unitech/lib/appctrl/ApkInstaller;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Not bind, serviceConn=%b, isSrvConned=%b"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v6, Lcom/unitech/lib/appctrl/ApkInstaller;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v7, 0x0

    if-nez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    .line 189
    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    sget-boolean v6, Lcom/unitech/lib/appctrl/ApkInstaller;->isServiceConnected:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v3

    .line 188
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_1
    sget-object v2, Lcom/unitech/lib/appctrl/ApkInstaller;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Completed bindAppCtrlService"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 193
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v2

    .line 192
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static checkAppCtrlService()V
    .locals 6

    .line 68
    sget-object v0, Lcom/unitech/lib/appctrl/ApkInstaller;->appCtrlLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    sget v1, Lcom/unitech/lib/appctrl/ApkInstaller;->mServiceChecked:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 70
    monitor-exit v0

    return-void

    .line 76
    :cond_0
    sget-object v1, Lcom/unitech/lib/appctrl/ApkInstaller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 77
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 79
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 80
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.unitech.appctrlservice"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 87
    sget-object v1, Lcom/unitech/lib/appctrl/ApkInstaller;->LOG_TAG:Ljava/lang/String;

    const-string v2, "appctrlservice is found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sput v4, Lcom/unitech/lib/appctrl/ApkInstaller;->mServiceChecked:I

    goto :goto_1

    .line 90
    :cond_3
    sget-object v1, Lcom/unitech/lib/appctrl/ApkInstaller;->LOG_TAG:Ljava/lang/String;

    const-string v3, "appctrlservice is not found"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sput v2, Lcom/unitech/lib/appctrl/ApkInstaller;->mServiceChecked:I

    .line 93
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstallTaskListSize()I
    .locals 1

    .line 97
    sget-object v0, Lcom/unitech/lib/appctrl/ApkInstaller;->installTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method static getPkgInstaller(Landroid/content/Context;)Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;
    .locals 1

    .line 236
    sget-object v0, Lcom/unitech/lib/appctrl/ApkInstaller;->mPackageInstaller:Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;

    invoke-direct {v0, p0}, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/unitech/lib/appctrl/ApkInstaller;->mPackageInstaller:Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;

    .line 239
    :cond_0
    sget-object p0, Lcom/unitech/lib/appctrl/ApkInstaller;->mPackageInstaller:Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;

    return-object p0
.end method

.method public static installByPackageInstaller(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-static {p0, p1, p2, v0}, Lcom/unitech/lib/appctrl/ApkInstaller;->installByPackageInstaller(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result p0

    return p0
.end method

.method public static installByPackageInstaller(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z
    .locals 2

    .line 105
    sput-object p0, Lcom/unitech/lib/appctrl/ApkInstaller;->mContext:Landroid/content/Context;

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/unitech/lib/appctrl/ApkInstaller;->mainHandler:Landroid/os/Handler;

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.unitech.appctrlservice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 108
    sput v0, Lcom/unitech/lib/appctrl/ApkInstaller;->mServiceChecked:I

    goto :goto_0

    .line 109
    :cond_0
    sget v0, Lcom/unitech/lib/appctrl/ApkInstaller;->mServiceChecked:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 110
    invoke-static {}, Lcom/unitech/lib/appctrl/ApkInstaller;->checkAppCtrlService()V

    .line 113
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return v1

    .line 117
    :cond_2
    new-instance v0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;

    invoke-direct {v0, p0, p1, p2}, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    .line 119
    invoke-virtual {v0, p3}, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->setResultIntent(Landroid/app/PendingIntent;)V

    .line 121
    :cond_3
    invoke-virtual {v0}, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->start()V

    .line 123
    sget-object p0, Lcom/unitech/lib/appctrl/ApkInstaller;->LOG_TAG:Ljava/lang/String;

    const-string p2, "install \'%s\' By PackageInstaller, wait 2 min"

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p1, p3, v1

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 p0, 0x1d4c0

    .line 126
    :try_start_1
    invoke-virtual {v0, p0, p1}, Ljava/lang/Object;->wait(J)V

    .line 127
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    sget-object p0, Lcom/unitech/lib/appctrl/ApkInstaller;->serviceConnection:Landroid/content/ServiceConnection;

    if-eqz p0, :cond_4

    sget-boolean p0, Lcom/unitech/lib/appctrl/ApkInstaller;->isServiceConnected:Z

    if-eqz p0, :cond_4

    .line 134
    invoke-static {}, Lcom/unitech/lib/appctrl/ApkInstaller;->unbindAppCtrlService()V

    .line 137
    :cond_4
    invoke-virtual {v0}, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->getResult()Z

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    .line 127
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p0

    .line 129
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return v1
.end method

.method private static unbindAppCtrlService()V
    .locals 3

    .line 196
    const-class v0, Lcom/unitech/lib/appctrl/AppCtrl;

    monitor-enter v0

    .line 197
    :try_start_0
    sget-object v1, Lcom/unitech/lib/appctrl/ApkInstaller;->unbindRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    .line 198
    new-instance v1, Lcom/unitech/lib/appctrl/ApkInstaller$2;

    invoke-direct {v1}, Lcom/unitech/lib/appctrl/ApkInstaller$2;-><init>()V

    sput-object v1, Lcom/unitech/lib/appctrl/ApkInstaller;->unbindRunnable:Ljava/lang/Runnable;

    .line 229
    sget-object v2, Lcom/unitech/lib/appctrl/ApkInstaller;->executor:Ljava/util/concurrent/Executor;

    if-eqz v2, :cond_0

    .line 230
    sget-object v2, Lcom/unitech/lib/appctrl/ApkInstaller;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 232
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
