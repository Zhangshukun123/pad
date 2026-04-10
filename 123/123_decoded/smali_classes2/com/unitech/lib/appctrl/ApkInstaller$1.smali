.class final Lcom/unitech/lib/appctrl/ApkInstaller$1;
.super Ljava/lang/Object;
.source "ApkInstaller.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unitech/lib/appctrl/ApkInstaller;->bindAppCtrlService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .line 154
    sget-object v0, Lcom/unitech/lib/appctrl/ApkInstaller;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Service %s is connected"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {p2}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    move-result-object p1

    invoke-static {p1}, Lcom/unitech/lib/appctrl/ApkInstaller;->access$002(Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;)Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    .line 156
    invoke-static {v2}, Lcom/unitech/lib/appctrl/ApkInstaller;->access$102(Z)Z

    .line 157
    invoke-static {}, Lcom/unitech/lib/appctrl/ApkInstaller;->access$200()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 158
    :try_start_0
    sget-object p2, Lcom/unitech/lib/appctrl/ApkInstaller;->LOG_TAG:Ljava/lang/String;

    const-string v0, "appCtrlLock notify at connected"

    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {}, Lcom/unitech/lib/appctrl/ApkInstaller;->access$200()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 160
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

    .line 164
    sget-object v0, Lcom/unitech/lib/appctrl/ApkInstaller;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Service %s is disconnected"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {v3}, Lcom/unitech/lib/appctrl/ApkInstaller;->access$102(Z)Z

    const/4 p1, 0x0

    .line 166
    invoke-static {p1}, Lcom/unitech/lib/appctrl/ApkInstaller;->access$002(Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;)Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    .line 167
    invoke-static {p1}, Lcom/unitech/lib/appctrl/ApkInstaller;->access$302(Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 168
    invoke-static {}, Lcom/unitech/lib/appctrl/ApkInstaller;->access$200()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 169
    :try_start_0
    sget-object v0, Lcom/unitech/lib/appctrl/ApkInstaller;->LOG_TAG:Ljava/lang/String;

    const-string v1, "appCtrlLock notify at disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {}, Lcom/unitech/lib/appctrl/ApkInstaller;->access$200()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 171
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
