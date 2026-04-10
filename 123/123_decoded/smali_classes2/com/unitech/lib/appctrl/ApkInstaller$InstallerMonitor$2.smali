.class Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$2;
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

.field final synthetic val$finalFis:Ljava/io/FileInputStream;

.field final synthetic val$writeSide:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>(Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;Landroid/os/ParcelFileDescriptor;Ljava/io/FileInputStream;)V
    .locals 0

    .line 622
    iput-object p1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$2;->this$0:Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor;

    iput-object p2, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$2;->val$writeSide:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$2;->val$finalFis:Ljava/io/FileInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    .line 631
    :try_start_0
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v2, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$2;->val$writeSide:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x1000

    :try_start_1
    new-array v0, v0, [B

    .line 638
    iget-object v2, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$2;->val$finalFis:Ljava/io/FileInputStream;

    if-eqz v2, :cond_0

    .line 639
    :goto_0
    iget-object v2, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$2;->val$finalFis:Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v2

    if-lez v2, :cond_0

    .line 641
    iget-object v2, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$2;->val$finalFis:Ljava/io/FileInputStream;

    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, 0x0

    .line 643
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 647
    :cond_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 655
    :try_start_2
    iget-object v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$2;->val$finalFis:Ljava/io/FileInputStream;

    if-eqz v0, :cond_1

    .line 656
    iget-object v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$2;->val$finalFis:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 658
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 662
    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_5

    :catch_2
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 649
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 655
    :try_start_5
    iget-object v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$2;->val$finalFis:Ljava/io/FileInputStream;

    if-eqz v0, :cond_2

    .line 656
    iget-object v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$2;->val$finalFis:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 658
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 662
    :cond_2
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 664
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    return-void

    :catchall_1
    move-exception v0

    .line 655
    :goto_5
    :try_start_7
    iget-object v2, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$2;->val$finalFis:Ljava/io/FileInputStream;

    if-eqz v2, :cond_3

    .line 656
    iget-object v2, p0, Lcom/unitech/lib/appctrl/ApkInstaller$InstallerMonitor$2;->val$finalFis:Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    :catch_5
    move-exception v2

    .line 658
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 662
    :cond_3
    :goto_6
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_7

    :catch_6
    move-exception v1

    .line 664
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 665
    :goto_7
    throw v0
.end method
