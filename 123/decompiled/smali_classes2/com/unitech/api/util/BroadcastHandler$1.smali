.class Lcom/unitech/api/util/BroadcastHandler$1;
.super Ljava/lang/Object;
.source "BroadcastHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unitech/api/util/BroadcastHandler;->getTicket()J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unitech/api/util/BroadcastHandler;

.field final synthetic val$ticket:J


# direct methods
.method constructor <init>(Lcom/unitech/api/util/BroadcastHandler;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$ticket"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/unitech/api/util/BroadcastHandler$1;->this$0:Lcom/unitech/api/util/BroadcastHandler;

    iput-wide p2, p0, Lcom/unitech/api/util/BroadcastHandler$1;->val$ticket:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/unitech/api/util/BroadcastHandler$1;->this$0:Lcom/unitech/api/util/BroadcastHandler;

    invoke-static {v0}, Lcom/unitech/api/util/BroadcastHandler;->access$000(Lcom/unitech/api/util/BroadcastHandler;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 71
    iget-object v0, p0, Lcom/unitech/api/util/BroadcastHandler$1;->this$0:Lcom/unitech/api/util/BroadcastHandler;

    invoke-static {v0}, Lcom/unitech/api/util/BroadcastHandler;->access$100(Lcom/unitech/api/util/BroadcastHandler;)Ljava/util/Set;

    move-result-object v0

    iget-wide v1, p0, Lcom/unitech/api/util/BroadcastHandler$1;->val$ticket:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/unitech/api/util/BroadcastHandler$1;->this$0:Lcom/unitech/api/util/BroadcastHandler;

    invoke-static {v0}, Lcom/unitech/api/util/BroadcastHandler;->access$000(Lcom/unitech/api/util/BroadcastHandler;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 73
    iget-wide v2, p0, Lcom/unitech/api/util/BroadcastHandler$1;->val$ticket:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Auto release ticket %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USDK.BrocastHdlr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/unitech/api/util/BroadcastHandler$1;->this$0:Lcom/unitech/api/util/BroadcastHandler;

    iget-wide v1, p0, Lcom/unitech/api/util/BroadcastHandler$1;->val$ticket:J

    invoke-virtual {v0, v1, v2}, Lcom/unitech/api/util/BroadcastHandler;->releaseTicket(J)Z

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/unitech/api/util/BroadcastHandler$1;->this$0:Lcom/unitech/api/util/BroadcastHandler;

    invoke-static {v0}, Lcom/unitech/api/util/BroadcastHandler;->access$000(Lcom/unitech/api/util/BroadcastHandler;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-void
.end method
