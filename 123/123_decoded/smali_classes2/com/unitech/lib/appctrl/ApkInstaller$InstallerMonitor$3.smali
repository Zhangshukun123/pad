.class Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$3;
.super Ljava/lang/Object;
.source "ApkInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->installAppByService(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$readSide:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>(Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 0

    .line 670
    iput-object p1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$3;->this$0:Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;

    iput-object p2, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$3;->val$readSide:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$3;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 678
    :try_start_0
    invoke-static {}, Lcom/unitech/lib/appctrl/ApkInstaller;->access$000()Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    move-result-object v0

    iget-object v1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$3;->val$readSide:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$3;->val$pkgName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;->streamApk(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 679
    sget-object v1, Lcom/unitech/lib/appctrl/ApkInstaller;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Streamed apk to %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-static {}, Lcom/unitech/lib/appctrl/ApkInstaller;->access$000()Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    move-result-object v1

    iget-object v2, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$3;->val$pkgName:Ljava/lang/String;

    new-instance v3, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$3$1;

    invoke-direct {v3, p0}, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$3$1;-><init>(Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$3;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;->installApp(Ljava/lang/String;Ljava/lang/String;Lcom/unitech/appctrlapi/aidl/IAppCtrlAidlCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 699
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
