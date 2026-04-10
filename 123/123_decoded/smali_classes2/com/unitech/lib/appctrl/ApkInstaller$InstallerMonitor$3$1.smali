.class Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$3$1;
.super Lcom/unitech/appctrlapi/aidl/IAppCtrlAidlCallback$Stub;
.source "ApkInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$3;


# direct methods
.method constructor <init>(Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$3;)V
    .locals 0

    .line 684
    iput-object p1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$3$1;->this$1:Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$3;

    invoke-direct {p0}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidlCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public installAppCallback(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 688
    iget-object p1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$3$1;->this$1:Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$3;

    iget-object p1, p1, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$3;->this$0:Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->setResult(Z)V

    goto :goto_0

    .line 690
    :cond_0
    iget-object p1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$3$1;->this$1:Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$3;

    iget-object p1, p1, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$3;->this$0:Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->setResult(Z)V

    .line 693
    :goto_0
    iget-object p1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$3$1;->this$1:Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$3;

    iget-object p1, p1, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$3;->this$0:Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;

    monitor-enter p1

    .line 694
    :try_start_0
    iget-object p2, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$3$1;->this$1:Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$3;

    iget-object p2, p2, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$3;->this$0:Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 695
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
