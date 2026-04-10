.class Lcom/unitech/api/app/AppManagementCtrl$2;
.super Ljava/lang/Object;
.source "AppManagementCtrl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unitech/api/app/AppManagementCtrl;->bindService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "service"
        }
    .end annotation

    const-string v0, "UnitechSDK"

    const-string v1, "AppCtrl, Service %s is connected"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 272
    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-static {p2}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    move-result-object p1

    invoke-static {p1}, Lcom/unitech/api/app/AppManagementCtrl;->access$102(Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;)Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    .line 274
    invoke-static {v2}, Lcom/unitech/api/app/AppManagementCtrl;->access$202(Z)Z

    .line 275
    invoke-static {}, Lcom/unitech/api/app/AppManagementCtrl;->access$300()V

    .line 276
    invoke-static {}, Lcom/unitech/api/app/AppManagementCtrl;->access$400()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    const-string p2, "UnitechSDK"

    const-string v0, "AppCtrl, Locker notify at connected"

    .line 277
    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-static {}, Lcom/unitech/api/app/AppManagementCtrl;->access$400()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 279
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const-string v0, "UnitechSDK"

    const-string v1, "AppCtrl, Service %s is disconnected"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 284
    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-static {v3}, Lcom/unitech/api/app/AppManagementCtrl;->access$202(Z)Z

    const/4 p1, 0x0

    .line 286
    invoke-static {p1}, Lcom/unitech/api/app/AppManagementCtrl;->access$102(Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;)Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    .line 287
    invoke-static {p1}, Lcom/unitech/api/app/AppManagementCtrl;->access$502(Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 288
    invoke-static {}, Lcom/unitech/api/app/AppManagementCtrl;->access$600()V

    .line 289
    invoke-static {}, Lcom/unitech/api/app/AppManagementCtrl;->access$400()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    const-string v0, "UnitechSDK"

    const-string v1, "AppCtrl, Locker notify at disconnected"

    .line 290
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-static {}, Lcom/unitech/api/app/AppManagementCtrl;->access$400()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 292
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
