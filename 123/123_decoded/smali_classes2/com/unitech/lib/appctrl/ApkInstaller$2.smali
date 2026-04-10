.class final Lcom/unitech/lib/appctrl/ApkInstaller$2;
.super Ljava/lang/Object;
.source "ApkInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unitech/lib/appctrl/ApkInstaller;->unbindAppCtrlService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 201
    :goto_0
    invoke-static {}, Lcom/unitech/lib/appctrl/ApkInstaller;->getInstallTaskListSize()I

    move-result v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x64

    .line 203
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 209
    :cond_0
    invoke-static {}, Lcom/unitech/lib/appctrl/ApkInstaller;->access$300()Landroid/content/ServiceConnection;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 210
    invoke-static {}, Lcom/unitech/lib/appctrl/ApkInstaller;->access$300()Landroid/content/ServiceConnection;

    move-result-object v0

    monitor-enter v0

    .line 211
    :try_start_1
    sget-object v2, Lcom/unitech/lib/appctrl/ApkInstaller;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 212
    sget-object v2, Lcom/unitech/lib/appctrl/ApkInstaller;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Start unbindService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    :try_start_2
    sget-object v2, Lcom/unitech/lib/appctrl/ApkInstaller;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/unitech/lib/appctrl/ApkInstaller;->access$300()Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v2

    .line 216
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const/4 v2, 0x0

    .line 218
    invoke-static {v2}, Lcom/unitech/lib/appctrl/ApkInstaller;->access$102(Z)Z

    .line 219
    invoke-static {v1}, Lcom/unitech/lib/appctrl/ApkInstaller;->access$002(Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;)Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    .line 220
    invoke-static {v1}, Lcom/unitech/lib/appctrl/ApkInstaller;->access$302(Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 222
    :cond_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 224
    :cond_2
    sget-object v0, Lcom/unitech/lib/appctrl/ApkInstaller;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Service has disconnected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_2
    invoke-static {v1}, Lcom/unitech/lib/appctrl/ApkInstaller;->access$402(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
