.class Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$4;
.super Ljava/lang/Object;
.source "ApkInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->updateAppCtrlService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;

.field final synthetic val$finalPrevUpdateTime:J

.field final synthetic val$lastUpdateTime:[J


# direct methods
.method constructor <init>(Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;[JJ)V
    .locals 0

    .line 721
    iput-object p1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$4;->this$0:Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;

    iput-object p2, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$4;->val$lastUpdateTime:[J

    iput-wide p3, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$4;->val$finalPrevUpdateTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 725
    :cond_0
    iget-object v2, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$4;->val$lastUpdateTime:[J

    aget-wide v3, v2, v0

    iget-wide v5, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$4;->val$finalPrevUpdateTime:J

    const/4 v2, 0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    const-wide/16 v3, 0x1f4

    .line 727
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 729
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 733
    :goto_0
    iget-object v3, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$4;->val$lastUpdateTime:[J

    aget-wide v4, v3, v0

    iget-object v6, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$4;->this$0:Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;

    invoke-static {v6}, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->access$900(Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->access$1000(Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    aput-wide v4, v3, v0

    add-int/2addr v1, v2

    const/16 v3, 0xa

    if-le v1, v3, :cond_0

    .line 741
    :cond_1
    iget-object v1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$4;->val$lastUpdateTime:[J

    aget-wide v3, v1, v0

    iget-wide v5, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$4;->val$finalPrevUpdateTime:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    .line 742
    iget-object v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$4;->this$0:Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;

    invoke-virtual {v0, v2}, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->setResult(Z)V

    goto :goto_1

    .line 743
    :cond_2
    iget-object v3, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$4;->this$0:Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;

    aget-wide v7, v1, v0

    cmp-long v4, v7, v5

    if-nez v4, :cond_3

    aget-wide v4, v1, v0

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {v3, v0}, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->setResult(Z)V

    .line 745
    :goto_1
    iget-object v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$4;->this$0:Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;

    monitor-enter v0

    .line 746
    :try_start_1
    iget-object v1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$4;->this$0:Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 747
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
