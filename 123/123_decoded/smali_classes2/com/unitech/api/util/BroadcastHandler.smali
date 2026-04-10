.class public Lcom/unitech/api/util/BroadcastHandler;
.super Ljava/lang/Object;
.source "BroadcastHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unitech/api/util/BroadcastHandler$BroadcastReciverMonitor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "USDK.BrocastHdlr"


# instance fields
.field private final MOBOLINK_API_ACTION:Ljava/lang/String;

.field private final STAGEGO_2_PACKAGE_NAME:Ljava/lang/String;

.field private final STAGEGO_API_ACTION:Ljava/lang/String;

.field private final STAGEGO_API_RESULT_ACTION:Ljava/lang/String;

.field private isBroadcastReciverRegistered:Z

.field private mCondition:Ljava/util/concurrent/locks/Condition;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLocker:Ljava/util/concurrent/locks/ReentrantLock;

.field private mResultReceiver:Landroid/content/BroadcastReceiver;

.field private mTicketLock:Ljava/util/concurrent/locks/ReentrantLock;

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
.method public constructor <init>(Landroid/content/Context;Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "intentFilter",
            "resultReceiver"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mobolink.api.action"

    .line 21
    iput-object v0, p0, Lcom/unitech/api/util/BroadcastHandler;->MOBOLINK_API_ACTION:Ljava/lang/String;

    const-string v0, "stagego.api.action"

    .line 22
    iput-object v0, p0, Lcom/unitech/api/util/BroadcastHandler;->STAGEGO_API_ACTION:Ljava/lang/String;

    const-string v0, "ActionStageGoResult"

    .line 23
    iput-object v0, p0, Lcom/unitech/api/util/BroadcastHandler;->STAGEGO_API_RESULT_ACTION:Ljava/lang/String;

    const-string v0, "com.unitech.stagego2"

    .line 24
    iput-object v0, p0, Lcom/unitech/api/util/BroadcastHandler;->STAGEGO_2_PACKAGE_NAME:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/unitech/api/util/BroadcastHandler;->mContext:Landroid/content/Context;

    .line 47
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/unitech/api/util/BroadcastHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/unitech/api/util/BroadcastHandler;->mHandler:Landroid/os/Handler;

    .line 48
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/unitech/api/util/BroadcastHandler;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    .line 49
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/unitech/api/util/BroadcastHandler;->mCondition:Ljava/util/concurrent/locks/Condition;

    .line 50
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/unitech/api/util/BroadcastHandler;->mTicketLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 51
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/unitech/api/util/BroadcastHandler;->ticketSet:Ljava/util/Set;

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/unitech/api/util/BroadcastHandler;->isBroadcastReciverRegistered:Z

    .line 53
    iput-object p2, p0, Lcom/unitech/api/util/BroadcastHandler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 54
    iput-object p3, p0, Lcom/unitech/api/util/BroadcastHandler;->mResultReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/unitech/api/util/BroadcastHandler;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/unitech/api/util/BroadcastHandler;->mTicketLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$100(Lcom/unitech/api/util/BroadcastHandler;)Ljava/util/Set;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/unitech/api/util/BroadcastHandler;->ticketSet:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$200(Lcom/unitech/api/util/BroadcastHandler;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/unitech/api/util/BroadcastHandler;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$300(Lcom/unitech/api/util/BroadcastHandler;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/unitech/api/util/BroadcastHandler;->isBroadcastReciverRegistered:Z

    return p0
.end method

.method static synthetic access$302(Lcom/unitech/api/util/BroadcastHandler;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/unitech/api/util/BroadcastHandler;->isBroadcastReciverRegistered:Z

    return p1
.end method

.method static synthetic access$400(Lcom/unitech/api/util/BroadcastHandler;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/unitech/api/util/BroadcastHandler;->mResultReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$500(Lcom/unitech/api/util/BroadcastHandler;)Landroid/content/IntentFilter;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/unitech/api/util/BroadcastHandler;->mIntentFilter:Landroid/content/IntentFilter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/unitech/api/util/BroadcastHandler;)Landroid/content/Context;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/unitech/api/util/BroadcastHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/unitech/api/util/BroadcastHandler;)Ljava/util/concurrent/locks/Condition;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/unitech/api/util/BroadcastHandler;->mCondition:Ljava/util/concurrent/locks/Condition;

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

    .line 165
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "calling this from your main thread can lead to deadlock"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public RegisterBroadcastReciver()Z
    .locals 4

    .line 138
    iget-boolean v0, p0, Lcom/unitech/api/util/BroadcastHandler;->isBroadcastReciverRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 143
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/util/BroadcastHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unitech/api/util/BroadcastHandler;->ensureNotOnMainThread(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 150
    :try_start_1
    iget-object v0, p0, Lcom/unitech/api/util/BroadcastHandler;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 152
    new-instance v0, Lcom/unitech/api/util/BroadcastHandler$BroadcastReciverMonitor;

    invoke-direct {v0, p0}, Lcom/unitech/api/util/BroadcastHandler$BroadcastReciverMonitor;-><init>(Lcom/unitech/api/util/BroadcastHandler;)V

    .line 153
    invoke-virtual {v0}, Lcom/unitech/api/util/BroadcastHandler$BroadcastReciverMonitor;->start()V

    .line 155
    iget-object v0, p0, Lcom/unitech/api/util/BroadcastHandler;->mCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 156
    iget-object v0, p0, Lcom/unitech/api/util/BroadcastHandler;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 161
    :goto_0
    iget-boolean v0, p0, Lcom/unitech/api/util/BroadcastHandler;->isBroadcastReciverRegistered:Z

    return v0

    :catch_1
    move-exception v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getTicket()J
    .locals 6

    .line 63
    iget-object v0, p0, Lcom/unitech/api/util/BroadcastHandler;->mTicketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 65
    iget-object v2, p0, Lcom/unitech/api/util/BroadcastHandler;->ticketSet:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v2, p0, Lcom/unitech/api/util/BroadcastHandler;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/unitech/api/util/BroadcastHandler$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/unitech/api/util/BroadcastHandler$1;-><init>(Lcom/unitech/api/util/BroadcastHandler;J)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    iget-object v2, p0, Lcom/unitech/api/util/BroadcastHandler;->mTicketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v0
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

    .line 91
    iget-object v0, p0, Lcom/unitech/api/util/BroadcastHandler;->mTicketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 92
    iget-object v0, p0, Lcom/unitech/api/util/BroadcastHandler;->ticketSet:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 95
    :try_start_0
    iget-object p2, p0, Lcom/unitech/api/util/BroadcastHandler;->ticketSet:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/unitech/api/util/BroadcastHandler;->mResultReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p2, :cond_0

    .line 96
    iget-object p2, p0, Lcom/unitech/api/util/BroadcastHandler;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/unitech/api/util/BroadcastHandler;->mResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 99
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/unitech/api/util/BroadcastHandler;->mTicketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1
.end method
