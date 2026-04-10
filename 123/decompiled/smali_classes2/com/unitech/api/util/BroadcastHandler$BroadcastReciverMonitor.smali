.class Lcom/unitech/api/util/BroadcastHandler$BroadcastReciverMonitor;
.super Ljava/lang/Thread;
.source "BroadcastHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unitech/api/util/BroadcastHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BroadcastReciverMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unitech/api/util/BroadcastHandler;


# direct methods
.method constructor <init>(Lcom/unitech/api/util/BroadcastHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/unitech/api/util/BroadcastHandler$BroadcastReciverMonitor;->this$0:Lcom/unitech/api/util/BroadcastHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/unitech/api/util/BroadcastHandler$BroadcastReciverMonitor;->this$0:Lcom/unitech/api/util/BroadcastHandler;

    invoke-static {v0}, Lcom/unitech/api/util/BroadcastHandler;->access$200(Lcom/unitech/api/util/BroadcastHandler;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "USDK.BrocastHdlr"

    const-string v1, "Service Lock is locked"

    .line 114
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/unitech/api/util/BroadcastHandler$BroadcastReciverMonitor;->this$0:Lcom/unitech/api/util/BroadcastHandler;

    invoke-static {v0}, Lcom/unitech/api/util/BroadcastHandler;->access$300(Lcom/unitech/api/util/BroadcastHandler;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ge v0, v1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/unitech/api/util/BroadcastHandler$BroadcastReciverMonitor;->this$0:Lcom/unitech/api/util/BroadcastHandler;

    invoke-static {v0}, Lcom/unitech/api/util/BroadcastHandler;->access$600(Lcom/unitech/api/util/BroadcastHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/unitech/api/util/BroadcastHandler$BroadcastReciverMonitor;->this$0:Lcom/unitech/api/util/BroadcastHandler;

    invoke-static {v1}, Lcom/unitech/api/util/BroadcastHandler;->access$400(Lcom/unitech/api/util/BroadcastHandler;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/unitech/api/util/BroadcastHandler$BroadcastReciverMonitor;->this$0:Lcom/unitech/api/util/BroadcastHandler;

    invoke-static {v2}, Lcom/unitech/api/util/BroadcastHandler;->access$500(Lcom/unitech/api/util/BroadcastHandler;)Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/unitech/api/util/BroadcastHandler$BroadcastReciverMonitor;->this$0:Lcom/unitech/api/util/BroadcastHandler;

    invoke-static {v0}, Lcom/unitech/api/util/BroadcastHandler;->access$600(Lcom/unitech/api/util/BroadcastHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/unitech/api/util/BroadcastHandler$BroadcastReciverMonitor;->this$0:Lcom/unitech/api/util/BroadcastHandler;

    invoke-static {v1}, Lcom/unitech/api/util/BroadcastHandler;->access$400(Lcom/unitech/api/util/BroadcastHandler;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/unitech/api/util/BroadcastHandler$BroadcastReciverMonitor;->this$0:Lcom/unitech/api/util/BroadcastHandler;

    invoke-static {v2}, Lcom/unitech/api/util/BroadcastHandler;->access$500(Lcom/unitech/api/util/BroadcastHandler;)Landroid/content/IntentFilter;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/unitech/api/util/BroadcastHandler$BroadcastReciverMonitor;->this$0:Lcom/unitech/api/util/BroadcastHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/unitech/api/util/BroadcastHandler;->access$302(Lcom/unitech/api/util/BroadcastHandler;Z)Z

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/unitech/api/util/BroadcastHandler$BroadcastReciverMonitor;->this$0:Lcom/unitech/api/util/BroadcastHandler;

    invoke-static {v0}, Lcom/unitech/api/util/BroadcastHandler;->access$700(Lcom/unitech/api/util/BroadcastHandler;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 127
    iget-object v0, p0, Lcom/unitech/api/util/BroadcastHandler$BroadcastReciverMonitor;->this$0:Lcom/unitech/api/util/BroadcastHandler;

    invoke-static {v0}, Lcom/unitech/api/util/BroadcastHandler;->access$200(Lcom/unitech/api/util/BroadcastHandler;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method
