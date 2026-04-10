.class public Lcom/unitech/lib/appctrl/PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "PackageDeleteObserver.java"


# instance fields
.field private obj:Ljava/lang/Object;

.field private returnCode:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/unitech/lib/appctrl/PackageDeleteObserver;->returnCode:I

    .line 15
    iput-object p1, p0, Lcom/unitech/lib/appctrl/PackageDeleteObserver;->obj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getReturnCode()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/unitech/lib/appctrl/PackageDeleteObserver;->returnCode:I

    return v0
.end method

.method public packageDeleted(Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const-class v0, Lcom/unitech/lib/appctrl/PackageDeleteObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Uninstall %s : %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iput p2, p0, Lcom/unitech/lib/appctrl/PackageDeleteObserver;->returnCode:I

    .line 23
    iget-object p1, p0, Lcom/unitech/lib/appctrl/PackageDeleteObserver;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 24
    monitor-enter p1

    .line 25
    :try_start_0
    iget-object p2, p0, Lcom/unitech/lib/appctrl/PackageDeleteObserver;->obj:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 26
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_0
    :goto_0
    return-void
.end method
