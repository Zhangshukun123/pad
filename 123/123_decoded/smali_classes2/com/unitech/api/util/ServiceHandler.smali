.class public Lcom/unitech/api/util/ServiceHandler;
.super Ljava/lang/Object;
.source "ServiceHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;,
        Lcom/unitech/api/util/ServiceHandler$ServiceConnection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "USDK.SrvHdlr"


# instance fields
.field private isServiceConnected:Z

.field private mAction:Ljava/lang/String;

.field private mBindIntent:Landroid/content/Intent;

.field private mCondition:Ljava/util/concurrent/locks/Condition;

.field private mConnectionCallback:Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLocker:Ljava/util/concurrent/locks/ReentrantLock;

.field private mPackage:Ljava/lang/String;

.field private mServiceCmp:Landroid/content/ComponentName;

.field private mServiceConnection:Lcom/unitech/api/util/ServiceHandler$ServiceConnection;

.field private mTicketLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private runnableUnbindService:Ljava/lang/Runnable;

.field private ticketSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "componentName",
            "serviceConnectionCallback"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    new-instance v0, Lcom/unitech/api/util/ServiceHandler$2;

    invoke-direct {v0, p0}, Lcom/unitech/api/util/ServiceHandler$2;-><init>(Lcom/unitech/api/util/ServiceHandler;)V

    iput-object v0, p0, Lcom/unitech/api/util/ServiceHandler;->runnableUnbindService:Ljava/lang/Runnable;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/unitech/api/util/ServiceHandler;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/unitech/api/util/ServiceHandler;->mServiceCmp:Landroid/content/ComponentName;

    .line 66
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unitech/api/util/ServiceHandler;->mPackage:Ljava/lang/String;

    .line 67
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iput-object p1, p0, Lcom/unitech/api/util/ServiceHandler;->mBindIntent:Landroid/content/Intent;

    .line 68
    iget-object p2, p0, Lcom/unitech/api/util/ServiceHandler;->mServiceCmp:Landroid/content/ComponentName;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 69
    iput-object p3, p0, Lcom/unitech/api/util/ServiceHandler;->mConnectionCallback:Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    .line 72
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/unitech/api/util/ServiceHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/unitech/api/util/ServiceHandler;->mHandler:Landroid/os/Handler;

    .line 73
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/unitech/api/util/ServiceHandler;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    .line 74
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/unitech/api/util/ServiceHandler;->mCondition:Ljava/util/concurrent/locks/Condition;

    .line 75
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/unitech/api/util/ServiceHandler;->mTicketLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 76
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/unitech/api/util/ServiceHandler;->ticketSet:Ljava/util/Set;

    const/4 p1, 0x0

    .line 77
    iput-boolean p1, p0, Lcom/unitech/api/util/ServiceHandler;->isServiceConnected:Z

    .line 78
    new-instance p1, Lcom/unitech/api/util/ServiceHandler$ServiceConnection;

    invoke-direct {p1, p0}, Lcom/unitech/api/util/ServiceHandler$ServiceConnection;-><init>(Lcom/unitech/api/util/ServiceHandler;)V

    iput-object p1, p0, Lcom/unitech/api/util/ServiceHandler;->mServiceConnection:Lcom/unitech/api/util/ServiceHandler$ServiceConnection;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "componentName",
            "action",
            "serviceConnectionCallback"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    new-instance v0, Lcom/unitech/api/util/ServiceHandler$2;

    invoke-direct {v0, p0}, Lcom/unitech/api/util/ServiceHandler$2;-><init>(Lcom/unitech/api/util/ServiceHandler;)V

    iput-object v0, p0, Lcom/unitech/api/util/ServiceHandler;->runnableUnbindService:Ljava/lang/Runnable;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/unitech/api/util/ServiceHandler;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/unitech/api/util/ServiceHandler;->mServiceCmp:Landroid/content/ComponentName;

    .line 87
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unitech/api/util/ServiceHandler;->mPackage:Ljava/lang/String;

    .line 88
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iput-object p1, p0, Lcom/unitech/api/util/ServiceHandler;->mBindIntent:Landroid/content/Intent;

    .line 89
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    iget-object p1, p0, Lcom/unitech/api/util/ServiceHandler;->mBindIntent:Landroid/content/Intent;

    iget-object p2, p0, Lcom/unitech/api/util/ServiceHandler;->mServiceCmp:Landroid/content/ComponentName;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 91
    iput-object p4, p0, Lcom/unitech/api/util/ServiceHandler;->mConnectionCallback:Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    .line 94
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/unitech/api/util/ServiceHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/unitech/api/util/ServiceHandler;->mHandler:Landroid/os/Handler;

    .line 95
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/unitech/api/util/ServiceHandler;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    .line 96
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/unitech/api/util/ServiceHandler;->mCondition:Ljava/util/concurrent/locks/Condition;

    .line 97
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/unitech/api/util/ServiceHandler;->mTicketLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 98
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/unitech/api/util/ServiceHandler;->ticketSet:Ljava/util/Set;

    const/4 p1, 0x0

    .line 99
    iput-boolean p1, p0, Lcom/unitech/api/util/ServiceHandler;->isServiceConnected:Z

    .line 100
    new-instance p1, Lcom/unitech/api/util/ServiceHandler$ServiceConnection;

    invoke-direct {p1, p0}, Lcom/unitech/api/util/ServiceHandler$ServiceConnection;-><init>(Lcom/unitech/api/util/ServiceHandler;)V

    iput-object p1, p0, Lcom/unitech/api/util/ServiceHandler;->mServiceConnection:Lcom/unitech/api/util/ServiceHandler$ServiceConnection;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "packageName",
            "action",
            "serviceConnectionCallback"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    new-instance v0, Lcom/unitech/api/util/ServiceHandler$2;

    invoke-direct {v0, p0}, Lcom/unitech/api/util/ServiceHandler$2;-><init>(Lcom/unitech/api/util/ServiceHandler;)V

    iput-object v0, p0, Lcom/unitech/api/util/ServiceHandler;->runnableUnbindService:Ljava/lang/Runnable;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/unitech/api/util/ServiceHandler;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/unitech/api/util/ServiceHandler;->mPackage:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/unitech/api/util/ServiceHandler;->mAction:Ljava/lang/String;

    .line 44
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iput-object p1, p0, Lcom/unitech/api/util/ServiceHandler;->mBindIntent:Landroid/content/Intent;

    .line 45
    iget-object p2, p0, Lcom/unitech/api/util/ServiceHandler;->mAction:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    iget-object p1, p0, Lcom/unitech/api/util/ServiceHandler;->mBindIntent:Landroid/content/Intent;

    iget-object p2, p0, Lcom/unitech/api/util/ServiceHandler;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    iput-object p4, p0, Lcom/unitech/api/util/ServiceHandler;->mConnectionCallback:Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    .line 50
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/unitech/api/util/ServiceHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/unitech/api/util/ServiceHandler;->mHandler:Landroid/os/Handler;

    .line 51
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/unitech/api/util/ServiceHandler;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    .line 52
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/unitech/api/util/ServiceHandler;->mCondition:Ljava/util/concurrent/locks/Condition;

    .line 53
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/unitech/api/util/ServiceHandler;->mTicketLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 54
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/unitech/api/util/ServiceHandler;->ticketSet:Ljava/util/Set;

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/unitech/api/util/ServiceHandler;->isServiceConnected:Z

    .line 56
    new-instance p1, Lcom/unitech/api/util/ServiceHandler$ServiceConnection;

    invoke-direct {p1, p0}, Lcom/unitech/api/util/ServiceHandler$ServiceConnection;-><init>(Lcom/unitech/api/util/ServiceHandler;)V

    iput-object p1, p0, Lcom/unitech/api/util/ServiceHandler;->mServiceConnection:Lcom/unitech/api/util/ServiceHandler$ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/unitech/api/util/ServiceHandler;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/unitech/api/util/ServiceHandler;->mTicketLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$100(Lcom/unitech/api/util/ServiceHandler;)Ljava/util/Set;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/unitech/api/util/ServiceHandler;->ticketSet:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$200(Lcom/unitech/api/util/ServiceHandler;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/unitech/api/util/ServiceHandler;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$300(Lcom/unitech/api/util/ServiceHandler;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/unitech/api/util/ServiceHandler;->isServiceConnected:Z

    return p0
.end method

.method static synthetic access$302(Lcom/unitech/api/util/ServiceHandler;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/unitech/api/util/ServiceHandler;->isServiceConnected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/unitech/api/util/ServiceHandler;)Lcom/unitech/api/util/ServiceHandler$ServiceConnection;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/unitech/api/util/ServiceHandler;->mServiceConnection:Lcom/unitech/api/util/ServiceHandler$ServiceConnection;

    return-object p0
.end method

.method static synthetic access$500(Lcom/unitech/api/util/ServiceHandler;)Landroid/content/Context;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/unitech/api/util/ServiceHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/unitech/api/util/ServiceHandler;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/unitech/api/util/ServiceHandler;->mPackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/unitech/api/util/ServiceHandler;)Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/unitech/api/util/ServiceHandler;->mConnectionCallback:Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/unitech/api/util/ServiceHandler;)Ljava/util/concurrent/locks/Condition;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/unitech/api/util/ServiceHandler;->mCondition:Ljava/util/concurrent/locks/Condition;

    return-object p0
.end method

.method private ensureNotOnMainThread(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 169
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "calling this from your main thread can lead to deadlock"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private stopUnbindService()Z
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/unitech/api/util/ServiceHandler;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/unitech/api/util/ServiceHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unitech/api/util/ServiceHandler;->runnableUnbindService:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 194
    iget-object v0, p0, Lcom/unitech/api/util/ServiceHandler;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "USDK.SrvHdlr"

    const-string v1, "stop unbindService failed. locker is locked"

    .line 197
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private unbindService()Z
    .locals 5

    .line 178
    iget-boolean v0, p0, Lcom/unitech/api/util/ServiceHandler;->isServiceConnected:Z

    if-nez v0, :cond_0

    const-string v0, "USDK.SrvHdlr"

    const-string v1, "Service has disconnected"

    .line 179
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 184
    iget-object v1, p0, Lcom/unitech/api/util/ServiceHandler;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/unitech/api/util/ServiceHandler;->runnableUnbindService:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 185
    iget-object v1, p0, Lcom/unitech/api/util/ServiceHandler;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/unitech/api/util/ServiceHandler;->runnableUnbindService:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v0
.end method


# virtual methods
.method public bindService()Z
    .locals 6

    .line 132
    invoke-direct {p0}, Lcom/unitech/api/util/ServiceHandler;->stopUnbindService()Z

    .line 134
    iget-object v0, p0, Lcom/unitech/api/util/ServiceHandler;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 135
    iget-boolean v0, p0, Lcom/unitech/api/util/ServiceHandler;->isServiceConnected:Z

    const/4 v1, 0x1

    const-string v2, "USDK.SrvHdlr"

    if-eqz v0, :cond_0

    const-string v0, "Service has bound and connected"

    .line 136
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/unitech/api/util/ServiceHandler;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 142
    :try_start_0
    iget-object v3, p0, Lcom/unitech/api/util/ServiceHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/unitech/api/util/ServiceHandler;->ensureNotOnMainThread(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, "Binding %s - %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 152
    iget-object v5, p0, Lcom/unitech/api/util/ServiceHandler;->mBindIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 153
    iget-object v0, p0, Lcom/unitech/api/util/ServiceHandler;->mBindIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unitech/api/util/ServiceHandler;->mBindIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unitech/api/util/ServiceHandler;->mBindIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v4, v1

    .line 152
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/unitech/api/util/ServiceHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/unitech/api/util/ServiceHandler;->mBindIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/unitech/api/util/ServiceHandler;->mServiceConnection:Lcom/unitech/api/util/ServiceHandler$ServiceConnection;

    invoke-virtual {v0, v3, v4, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    const-string v1, "Locker wait for 3 sec."

    .line 156
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/unitech/api/util/ServiceHandler;->mCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v1, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 163
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/unitech/api/util/ServiceHandler;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 165
    iget-boolean v0, p0, Lcom/unitech/api/util/ServiceHandler;->isServiceConnected:Z

    return v0

    :catch_1
    move-exception v1

    .line 144
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    iget-object v1, p0, Lcom/unitech/api/util/ServiceHandler;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0
.end method

.method public checkServiceAccessable()Z
    .locals 5

    .line 106
    iget-object v0, p0, Lcom/unitech/api/util/ServiceHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 110
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/unitech/api/util/ServiceHandler;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v2, "GeneralCtrl, package "

    const-string v4, "USDK.SrvHdlr"

    if-eqz v0, :cond_2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unitech/api/util/ServiceHandler;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is found."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 120
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unitech/api/util/ServiceHandler;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not found"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getImmortalTicket()J
    .locals 4

    .line 237
    invoke-direct {p0}, Lcom/unitech/api/util/ServiceHandler;->stopUnbindService()Z

    .line 239
    iget-object v0, p0, Lcom/unitech/api/util/ServiceHandler;->mTicketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 241
    iget-object v2, p0, Lcom/unitech/api/util/ServiceHandler;->ticketSet:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v2, p0, Lcom/unitech/api/util/ServiceHandler;->mTicketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v0
.end method

.method public getTicket()J
    .locals 6

    .line 208
    invoke-direct {p0}, Lcom/unitech/api/util/ServiceHandler;->stopUnbindService()Z

    .line 210
    iget-object v0, p0, Lcom/unitech/api/util/ServiceHandler;->mTicketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 212
    iget-object v2, p0, Lcom/unitech/api/util/ServiceHandler;->ticketSet:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v2, p0, Lcom/unitech/api/util/ServiceHandler;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/unitech/api/util/ServiceHandler$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/unitech/api/util/ServiceHandler$1;-><init>(Lcom/unitech/api/util/ServiceHandler;J)V

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    iget-object v2, p0, Lcom/unitech/api/util/ServiceHandler;->mTicketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v0
.end method

.method public isTicketExist(J)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ticket"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/unitech/api/util/ServiceHandler;->mTicketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 271
    iget-object v0, p0, Lcom/unitech/api/util/ServiceHandler;->ticketSet:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 272
    iget-object p2, p0, Lcom/unitech/api/util/ServiceHandler;->mTicketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1
.end method

.method public releaseTicket(J)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ticket"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/unitech/api/util/ServiceHandler;->mTicketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 254
    iget-object v0, p0, Lcom/unitech/api/util/ServiceHandler;->ticketSet:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 256
    iget-object p2, p0, Lcom/unitech/api/util/ServiceHandler;->ticketSet:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/unitech/api/util/ServiceHandler;->unbindService()Z

    .line 259
    :cond_0
    iget-object p2, p0, Lcom/unitech/api/util/ServiceHandler;->mTicketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1
.end method
