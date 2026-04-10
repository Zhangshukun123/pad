.class Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "ApkInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;


# direct methods
.method constructor <init>(Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$1;->this$0:Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 481
    sget-object p1, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->ACTION_INSTALL_COMPLETE:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 484
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "android.content.pm.extra.STATUS"

    .line 485
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, "android.content.pm.extra.STATUS_MESSAGE"

    .line 486
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x0

    packed-switch p2, :pswitch_data_0

    .line 510
    iget-object p2, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$1;->this$0:Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;

    invoke-virtual {p2, p1}, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->setResult(Z)V

    goto :goto_0

    .line 506
    :pswitch_0
    iget-object p2, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$1;->this$0:Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;

    invoke-virtual {p2, p1}, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->setResult(Z)V

    goto :goto_0

    .line 496
    :pswitch_1
    iget-object p1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$1;->this$0:Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->setResult(Z)V

    goto :goto_0

    .line 492
    :pswitch_2
    iget-object p2, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$1;->this$0:Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;

    invoke-virtual {p2, p1}, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;->setResult(Z)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
