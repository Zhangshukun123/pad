.class public Lcom/unitech/api/util/ServiceHandler$ServiceConnection;
.super Ljava/lang/Object;
.source "ServiceHandler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unitech/api/util/ServiceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unitech/api/util/ServiceHandler;


# direct methods
.method public constructor <init>(Lcom/unitech/api/util/ServiceHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 302
    iput-object p1, p0, Lcom/unitech/api/util/ServiceHandler$ServiceConnection;->this$0:Lcom/unitech/api/util/ServiceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 3
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

    .line 329
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Service binder %s is died"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USDK.SrvHdlr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/unitech/api/util/ServiceHandler$ServiceConnection;->this$0:Lcom/unitech/api/util/ServiceHandler;

    invoke-static {v0}, Lcom/unitech/api/util/ServiceHandler;->access$700(Lcom/unitech/api/util/ServiceHandler;)Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/unitech/api/util/ServiceHandler$ServiceConnection;->this$0:Lcom/unitech/api/util/ServiceHandler;

    invoke-static {v0}, Lcom/unitech/api/util/ServiceHandler;->access$700(Lcom/unitech/api/util/ServiceHandler;)Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;->onBindingDied(Landroid/content/ComponentName;)V

    .line 333
    :cond_0
    iget-object p1, p0, Lcom/unitech/api/util/ServiceHandler$ServiceConnection;->this$0:Lcom/unitech/api/util/ServiceHandler;

    invoke-static {p1, v2}, Lcom/unitech/api/util/ServiceHandler;->access$302(Lcom/unitech/api/util/ServiceHandler;Z)Z

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
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

    .line 338
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Service %s is bound to null"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "USDK.SrvHdlr"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object p1, p0, Lcom/unitech/api/util/ServiceHandler$ServiceConnection;->this$0:Lcom/unitech/api/util/ServiceHandler;

    invoke-static {p1, v1}, Lcom/unitech/api/util/ServiceHandler;->access$302(Lcom/unitech/api/util/ServiceHandler;Z)Z

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
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

    new-array v1, v0, [Ljava/lang/Object;

    .line 306
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Service %s is connected"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "USDK.SrvHdlr"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v1, p0, Lcom/unitech/api/util/ServiceHandler$ServiceConnection;->this$0:Lcom/unitech/api/util/ServiceHandler;

    invoke-static {v1}, Lcom/unitech/api/util/ServiceHandler;->access$700(Lcom/unitech/api/util/ServiceHandler;)Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/unitech/api/util/ServiceHandler$ServiceConnection;->this$0:Lcom/unitech/api/util/ServiceHandler;

    invoke-static {v1}, Lcom/unitech/api/util/ServiceHandler;->access$700(Lcom/unitech/api/util/ServiceHandler;)Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 311
    :cond_0
    iget-object p1, p0, Lcom/unitech/api/util/ServiceHandler$ServiceConnection;->this$0:Lcom/unitech/api/util/ServiceHandler;

    invoke-static {p1}, Lcom/unitech/api/util/ServiceHandler;->access$200(Lcom/unitech/api/util/ServiceHandler;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 312
    iget-object p1, p0, Lcom/unitech/api/util/ServiceHandler$ServiceConnection;->this$0:Lcom/unitech/api/util/ServiceHandler;

    invoke-static {p1, v0}, Lcom/unitech/api/util/ServiceHandler;->access$302(Lcom/unitech/api/util/ServiceHandler;Z)Z

    const-string p1, "Locker notify at connected"

    .line 313
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object p1, p0, Lcom/unitech/api/util/ServiceHandler$ServiceConnection;->this$0:Lcom/unitech/api/util/ServiceHandler;

    invoke-static {p1}, Lcom/unitech/api/util/ServiceHandler;->access$800(Lcom/unitech/api/util/ServiceHandler;)Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 315
    iget-object p1, p0, Lcom/unitech/api/util/ServiceHandler$ServiceConnection;->this$0:Lcom/unitech/api/util/ServiceHandler;

    invoke-static {p1}, Lcom/unitech/api/util/ServiceHandler;->access$200(Lcom/unitech/api/util/ServiceHandler;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
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

    .line 320
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Service %s is disconnected"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USDK.SrvHdlr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/unitech/api/util/ServiceHandler$ServiceConnection;->this$0:Lcom/unitech/api/util/ServiceHandler;

    invoke-static {v0}, Lcom/unitech/api/util/ServiceHandler;->access$700(Lcom/unitech/api/util/ServiceHandler;)Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/unitech/api/util/ServiceHandler$ServiceConnection;->this$0:Lcom/unitech/api/util/ServiceHandler;

    invoke-static {v0}, Lcom/unitech/api/util/ServiceHandler;->access$700(Lcom/unitech/api/util/ServiceHandler;)Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 324
    :cond_0
    iget-object p1, p0, Lcom/unitech/api/util/ServiceHandler$ServiceConnection;->this$0:Lcom/unitech/api/util/ServiceHandler;

    invoke-static {p1, v2}, Lcom/unitech/api/util/ServiceHandler;->access$302(Lcom/unitech/api/util/ServiceHandler;Z)Z

    return-void
.end method
