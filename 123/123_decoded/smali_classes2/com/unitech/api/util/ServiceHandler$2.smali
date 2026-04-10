.class Lcom/unitech/api/util/ServiceHandler$2;
.super Ljava/lang/Object;
.source "ServiceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unitech/api/util/ServiceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unitech/api/util/ServiceHandler;


# direct methods
.method constructor <init>(Lcom/unitech/api/util/ServiceHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 276
    iput-object p1, p0, Lcom/unitech/api/util/ServiceHandler$2;->this$0:Lcom/unitech/api/util/ServiceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 279
    iget-object v0, p0, Lcom/unitech/api/util/ServiceHandler$2;->this$0:Lcom/unitech/api/util/ServiceHandler;

    invoke-static {v0}, Lcom/unitech/api/util/ServiceHandler;->access$200(Lcom/unitech/api/util/ServiceHandler;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 280
    iget-object v0, p0, Lcom/unitech/api/util/ServiceHandler$2;->this$0:Lcom/unitech/api/util/ServiceHandler;

    invoke-static {v0}, Lcom/unitech/api/util/ServiceHandler;->access$000(Lcom/unitech/api/util/ServiceHandler;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 282
    iget-object v0, p0, Lcom/unitech/api/util/ServiceHandler$2;->this$0:Lcom/unitech/api/util/ServiceHandler;

    invoke-static {v0}, Lcom/unitech/api/util/ServiceHandler;->access$100(Lcom/unitech/api/util/ServiceHandler;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "USDK.SrvHdlr"

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    .line 283
    iget-object v1, p0, Lcom/unitech/api/util/ServiceHandler$2;->this$0:Lcom/unitech/api/util/ServiceHandler;

    invoke-static {v1}, Lcom/unitech/api/util/ServiceHandler;->access$100(Lcom/unitech/api/util/ServiceHandler;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Still has %d task working"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/unitech/api/util/ServiceHandler$2;->this$0:Lcom/unitech/api/util/ServiceHandler;

    invoke-static {v0}, Lcom/unitech/api/util/ServiceHandler;->access$300(Lcom/unitech/api/util/ServiceHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/util/ServiceHandler$2;->this$0:Lcom/unitech/api/util/ServiceHandler;

    invoke-static {v0}, Lcom/unitech/api/util/ServiceHandler;->access$500(Lcom/unitech/api/util/ServiceHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lcom/unitech/api/util/ServiceHandler$2;->this$0:Lcom/unitech/api/util/ServiceHandler;

    invoke-static {v4}, Lcom/unitech/api/util/ServiceHandler;->access$400(Lcom/unitech/api/util/ServiceHandler;)Lcom/unitech/api/util/ServiceHandler$ServiceConnection;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string v0, "Service %s unbound"

    new-array v1, v1, [Ljava/lang/Object;

    .line 288
    iget-object v4, p0, Lcom/unitech/api/util/ServiceHandler$2;->this$0:Lcom/unitech/api/util/ServiceHandler;

    invoke-static {v4}, Lcom/unitech/api/util/ServiceHandler;->access$600(Lcom/unitech/api/util/ServiceHandler;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/unitech/api/util/ServiceHandler$2;->this$0:Lcom/unitech/api/util/ServiceHandler;

    invoke-static {v0, v2}, Lcom/unitech/api/util/ServiceHandler;->access$302(Lcom/unitech/api/util/ServiceHandler;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 291
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string v0, "unbind service failed, service is disconnected"

    .line 294
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :goto_0
    iget-object v0, p0, Lcom/unitech/api/util/ServiceHandler$2;->this$0:Lcom/unitech/api/util/ServiceHandler;

    invoke-static {v0}, Lcom/unitech/api/util/ServiceHandler;->access$000(Lcom/unitech/api/util/ServiceHandler;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 298
    iget-object v0, p0, Lcom/unitech/api/util/ServiceHandler$2;->this$0:Lcom/unitech/api/util/ServiceHandler;

    invoke-static {v0}, Lcom/unitech/api/util/ServiceHandler;->access$200(Lcom/unitech/api/util/ServiceHandler;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method
