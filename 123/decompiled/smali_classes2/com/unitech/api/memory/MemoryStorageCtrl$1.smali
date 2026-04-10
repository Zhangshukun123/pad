.class Lcom/unitech/api/memory/MemoryStorageCtrl$1;
.super Ljava/lang/Object;
.source "MemoryStorageCtrl.java"

# interfaces
.implements Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unitech/api/memory/MemoryStorageCtrl;->createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unitech/api/memory/MemoryStorageCtrl;


# direct methods
.method constructor <init>(Lcom/unitech/api/memory/MemoryStorageCtrl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/unitech/api/memory/MemoryStorageCtrl$1;->this$0:Lcom/unitech/api/memory/MemoryStorageCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const/4 p1, 0x0

    .line 91
    invoke-static {p1}, Lcom/unitech/api/memory/MemoryStorageCtrl;->access$002(Lcom/unitech/dmservice/IMemoryStorageCtrlAidl;)Lcom/unitech/dmservice/IMemoryStorageCtrlAidl;

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

    .line 79
    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "MemoryStorageCtrl, Service %s is connected"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MemoryStorageCtrl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {p2}, Lcom/unitech/dmservice/IMemoryStorageCtrlAidl$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unitech/dmservice/IMemoryStorageCtrlAidl;

    move-result-object p1

    invoke-static {p1}, Lcom/unitech/api/memory/MemoryStorageCtrl;->access$002(Lcom/unitech/dmservice/IMemoryStorageCtrlAidl;)Lcom/unitech/dmservice/IMemoryStorageCtrlAidl;

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

    .line 85
    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "MemoryStorageCtrl, Service %s is disconnected"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MemoryStorageCtrl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 86
    invoke-static {p1}, Lcom/unitech/api/memory/MemoryStorageCtrl;->access$002(Lcom/unitech/dmservice/IMemoryStorageCtrlAidl;)Lcom/unitech/dmservice/IMemoryStorageCtrlAidl;

    return-void
.end method
