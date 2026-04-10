.class Lcom/unitech/api/safemodelock/SafeModeLockCtrl$1;
.super Ljava/lang/Object;
.source "SafeModeLockCtrl.java"

# interfaces
.implements Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unitech/api/safemodelock/SafeModeLockCtrl;


# direct methods
.method constructor <init>(Lcom/unitech/api/safemodelock/SafeModeLockCtrl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/unitech/api/safemodelock/SafeModeLockCtrl$1;->this$0:Lcom/unitech/api/safemodelock/SafeModeLockCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 74
    iget-object p1, p0, Lcom/unitech/api/safemodelock/SafeModeLockCtrl$1;->this$0:Lcom/unitech/api/safemodelock/SafeModeLockCtrl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->access$002(Lcom/unitech/api/safemodelock/SafeModeLockCtrl;Lcom/unitech/dmservice/ISafeModeLockCtrlAidl;)Lcom/unitech/dmservice/ISafeModeLockCtrlAidl;

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
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

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 64
    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Service %s is connected"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "UnitechSDK.SafeModeLockCtrl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object p1, p0, Lcom/unitech/api/safemodelock/SafeModeLockCtrl$1;->this$0:Lcom/unitech/api/safemodelock/SafeModeLockCtrl;

    invoke-static {p2}, Lcom/unitech/dmservice/ISafeModeLockCtrlAidl$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unitech/dmservice/ISafeModeLockCtrlAidl;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->access$002(Lcom/unitech/api/safemodelock/SafeModeLockCtrl;Lcom/unitech/dmservice/ISafeModeLockCtrlAidl;)Lcom/unitech/dmservice/ISafeModeLockCtrlAidl;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 69
    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Service %s is disconnected"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "UnitechSDK.SafeModeLockCtrl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object p1, p0, Lcom/unitech/api/safemodelock/SafeModeLockCtrl$1;->this$0:Lcom/unitech/api/safemodelock/SafeModeLockCtrl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/unitech/api/safemodelock/SafeModeLockCtrl;->access$002(Lcom/unitech/api/safemodelock/SafeModeLockCtrl;Lcom/unitech/dmservice/ISafeModeLockCtrlAidl;)Lcom/unitech/dmservice/ISafeModeLockCtrlAidl;

    return-void
.end method
