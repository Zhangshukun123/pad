.class Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;
.super Ljava/lang/Thread;
.source "ApkInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unitech/lib/appctrl/ApkInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InstallerMonitor"
.end annotation


# static fields
.field public static ACTION_INSTALL_COMPLETE:Ljava/lang/String; = ""

.field public static final ACTION_INSTALL_COMPLETE_ORG:Ljava/lang/String; = "com.unitech.appctrl.INSTALL_COMPLETE"


# instance fields
.field private context:Landroid/content/Context;

.field private mInstallReceiver:Landroid/content/BroadcastReceiver;

.field private pkgName:Ljava/lang/String;

.field private result:Z

.field private resultIntent:Landroid/app/PendingIntent;

.field private sessionCallback:Ljava/lang/Object;

.field private sessionId:I

.field private strPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 427
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 419
    iput v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->sessionId:I

    .line 466
    new-instance v1, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$1;

    invoke-direct {v1, p0}, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$1;-><init>(Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;)V

    iput-object v1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->mInstallReceiver:Landroid/content/BroadcastReceiver;

    .line 428
    iput-object p1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->context:Landroid/content/Context;

    .line 429
    iput-object p2, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->strPath:Ljava/lang/String;

    .line 430
    iput-object p3, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->pkgName:Ljava/lang/String;

    .line 431
    iput-boolean v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->result:Z

    .line 432
    invoke-static {}, Lcom/unitech/lib/appctrl/ApkInstaller;->access$500()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$1000(Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;Ljava/lang/String;)J
    .locals 0

    .line 416
    invoke-direct {p0, p1}, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->getLastUpdateTime(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$900(Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;)Ljava/lang/String;
    .locals 0

    .line 416
    iget-object p0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->pkgName:Ljava/lang/String;

    return-object p0
.end method

.method private createIntentSender(Landroid/content/Context;I)Landroid/content/IntentSender;
    .locals 3

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.unitech.appctrl.INSTALL_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->ACTION_INSTALL_COMPLETE:Ljava/lang/String;

    .line 516
    invoke-direct {p0}, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->getReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    sget-object v2, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->ACTION_INSTALL_COMPLETE:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 517
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->ACTION_INSTALL_COMPLETE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "IM_SESSION_ID"

    .line 519
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x2000000

    .line 520
    invoke-static {p1, p2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 525
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    return-object p1
.end method

.method private finishSession()V
    .locals 2

    .line 534
    invoke-static {}, Lcom/unitech/lib/appctrl/ApkInstaller;->access$500()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 536
    :try_start_0
    iget-object v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->mInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private getLastUpdateTime(Ljava/lang/String;)J
    .locals 8

    .line 754
    :try_start_0
    iget-object v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v2, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 755
    iget-object v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 756
    sget-object v0, Lcom/unitech/lib/appctrl/ApkInstaller;->LOG_TAG:Ljava/lang/String;

    const-string v6, "%s firstInstallTime: %d, lastUpdateTime: %d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v1

    const/4 p1, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, p1

    const/4 p1, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, p1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 759
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->mInstallReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private installAppByPackageInstaller()V
    .locals 7

    .line 547
    :try_start_0
    iget-object v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/unitech/lib/appctrl/ApkInstaller;->getPkgInstaller(Landroid/content/Context;)Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;

    sget-object v0, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->consSessionParams:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 548
    iget-object v2, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/unitech/lib/appctrl/ApkInstaller;->getPkgInstaller(Landroid/content/Context;)Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;

    move-result-object v2

    iget-object v3, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->setAppPackageName(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    .line 561
    :try_start_1
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->strPath:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 562
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 565
    iget-object v3, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/unitech/lib/appctrl/ApkInstaller;->getPkgInstaller(Landroid/content/Context;)Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->createSession(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->sessionId:I

    .line 567
    iget-object v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/unitech/lib/appctrl/ApkInstaller;->getPkgInstaller(Landroid/content/Context;)Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;

    move-result-object v0

    iget v3, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->sessionId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->openSession(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v0, "appctrl%d"

    new-array v1, v1, [Ljava/lang/Object;

    .line 568
    iget v3, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->sessionId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 570
    iget-object v1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/unitech/lib/appctrl/ApkInstaller;->getPkgInstaller(Landroid/content/Context;)Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v0, v4, v3}, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->openWrite(Ljava/lang/Object;Ljava/lang/String;II)Ljava/io/OutputStream;

    move-result-object v0

    const/high16 v1, 0x10000

    new-array v1, v1, [B

    .line 573
    :goto_0
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-eq v6, v3, :cond_0

    .line 574
    invoke-virtual {v0, v1, v4, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 577
    :cond_0
    iget-object v1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/unitech/lib/appctrl/ApkInstaller;->getPkgInstaller(Landroid/content/Context;)Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->fsync(Ljava/lang/Object;Ljava/io/OutputStream;)V

    .line 578
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 579
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 581
    iget-object v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->resultIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/unitech/lib/appctrl/ApkInstaller;->getPkgInstaller(Landroid/content/Context;)Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;

    move-result-object v0

    iget-object v1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->resultIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->commit(Ljava/lang/Object;Landroid/content/IntentSender;)V

    goto :goto_1

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/unitech/lib/appctrl/ApkInstaller;->getPkgInstaller(Landroid/content/Context;)Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;

    move-result-object v0

    iget-object v1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->context:Landroid/content/Context;

    iget v3, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->sessionId:I

    invoke-direct {p0, v1, v3}, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->createIntentSender(Landroid/content/Context;I)Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->commit(Ljava/lang/Object;Landroid/content/IntentSender;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 590
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    .line 594
    :goto_2
    iget-object v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/unitech/lib/appctrl/ApkInstaller;->getPkgInstaller(Landroid/content/Context;)Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->close(Ljava/lang/Object;)V

    :cond_2
    return-void

    :goto_3
    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/unitech/lib/appctrl/ApkInstaller;->getPkgInstaller(Landroid/content/Context;)Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->close(Ljava/lang/Object;)V

    :cond_3
    throw v0

    :catch_1
    move-exception v0

    .line 554
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private installAppByService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 601
    invoke-static {}, Lcom/unitech/lib/appctrl/ApkInstaller;->access$700()V

    .line 602
    invoke-static {}, Lcom/unitech/lib/appctrl/ApkInstaller;->access$800()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 603
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/unitech/lib/appctrl/ApkInstaller;->access$802(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    :cond_0
    const/4 v0, 0x0

    .line 608
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 610
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    new-array v1, p1, [Landroid/os/ParcelFileDescriptor;

    .line 614
    :try_start_1
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 616
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 618
    :goto_1
    aget-object p1, v1, p1

    const/4 v2, 0x1

    .line 619
    aget-object v1, v1, v2

    .line 622
    invoke-static {}, Lcom/unitech/lib/appctrl/ApkInstaller;->access$800()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$2;-><init>(Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;Landroid/os/ParcelFileDescriptor;Ljava/io/FileInputStream;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 670
    invoke-static {}, Lcom/unitech/lib/appctrl/ApkInstaller;->access$800()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$3;-><init>(Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateAppCtrlService()V
    .locals 5

    .line 707
    iget-object v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->pkgName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->getLastUpdateTime(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    new-array v3, v2, [J

    const/4 v4, 0x0

    aput-wide v0, v3, v4

    .line 710
    invoke-static {}, Lcom/unitech/lib/appctrl/ApkInstaller;->access$600()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 711
    iget-object v2, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->strPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->pkgName:Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->installAppByService(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 713
    :cond_0
    invoke-direct {p0}, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->installAppByPackageInstaller()V

    .line 718
    :goto_0
    invoke-static {}, Lcom/unitech/lib/appctrl/ApkInstaller;->access$800()Ljava/util/concurrent/Executor;

    move-result-object v2

    if-nez v2, :cond_1

    .line 719
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-static {v2}, Lcom/unitech/lib/appctrl/ApkInstaller;->access$802(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    .line 721
    :cond_1
    invoke-static {}, Lcom/unitech/lib/appctrl/ApkInstaller;->access$800()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v4, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$4;

    invoke-direct {v4, p0, v3, v0, v1}, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$4;-><init>(Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;[JJ)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method execute()V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->pkgName:Ljava/lang/String;

    const-string v1, "com.unitech.appctrlservice"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unitech/lib/appctrl/ApkInstaller;->access$600()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 442
    invoke-direct {p0}, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->updateAppCtrlService()V

    goto :goto_0

    .line 443
    :cond_0
    invoke-static {}, Lcom/unitech/lib/appctrl/ApkInstaller;->access$600()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 444
    iget-object v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->strPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->pkgName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->installAppByService(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 446
    :cond_1
    invoke-direct {p0}, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->installAppByPackageInstaller()V

    :goto_0
    return-void
.end method

.method getResult()Z
    .locals 1

    .line 451
    iget-boolean v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->result:Z

    return v0
.end method

.method public getSessionId()I
    .locals 1

    .line 463
    iget v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->sessionId:I

    return v0
.end method

.method public run()V
    .locals 0

    .line 530
    invoke-virtual {p0}, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->execute()V

    return-void
.end method

.method setResult(Z)V
    .locals 0

    .line 455
    iput-boolean p1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->result:Z

    .line 456
    monitor-enter p0

    .line 457
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 458
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    invoke-direct {p0}, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->finishSession()V

    return-void

    :catchall_0
    move-exception p1

    .line 458
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setResultIntent(Landroid/app/PendingIntent;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->resultIntent:Landroid/app/PendingIntent;

    return-void
.end method
