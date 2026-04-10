.class Lcom/unitech/api/app/AppManagementCtrl$3;
.super Ljava/lang/Object;
.source "AppManagementCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unitech/api/app/AppManagementCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 336
    invoke-static {}, Lcom/unitech/api/app/AppManagementCtrl;->access$400()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 337
    :try_start_0
    invoke-static {}, Lcom/unitech/api/app/AppManagementCtrl;->access$500()Landroid/content/ServiceConnection;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 339
    :try_start_1
    invoke-static {}, Lcom/unitech/api/app/AppManagementCtrl;->access$700()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/unitech/api/app/AppManagementCtrl;->access$500()Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 341
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v1, "UnitechSDK"

    const-string v2, "AppCtrl, unbind service failed, servConn is null"

    .line 344
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
