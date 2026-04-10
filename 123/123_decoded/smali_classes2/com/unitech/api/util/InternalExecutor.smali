.class public Lcom/unitech/api/util/InternalExecutor;
.super Ljava/lang/Object;
.source "InternalExecutor.java"


# static fields
.field private static final locker:Ljava/lang/Object;

.field private static mInstance:Lcom/unitech/api/util/InternalExecutor;


# instance fields
.field private mCachedThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/unitech/api/util/InternalExecutor;->locker:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/unitech/api/util/InternalExecutor;->mCachedThreadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 40
    invoke-static {}, Lcom/unitech/api/util/InternalExecutor;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getCachedThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/unitech/api/util/InternalExecutor;->mCachedThreadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private static getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .line 33
    sget-object v0, Lcom/unitech/api/util/InternalExecutor;->locker:Ljava/lang/Object;

    monitor-enter v0

    .line 34
    :try_start_0
    invoke-static {}, Lcom/unitech/api/util/InternalExecutor;->getInstance()Lcom/unitech/api/util/InternalExecutor;

    move-result-object v1

    .line 35
    invoke-direct {v1}, Lcom/unitech/api/util/InternalExecutor;->getCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getInstance()Lcom/unitech/api/util/InternalExecutor;
    .locals 2

    .line 24
    sget-object v0, Lcom/unitech/api/util/InternalExecutor;->locker:Ljava/lang/Object;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/unitech/api/util/InternalExecutor;->mInstance:Lcom/unitech/api/util/InternalExecutor;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/unitech/api/util/InternalExecutor;

    invoke-direct {v1}, Lcom/unitech/api/util/InternalExecutor;-><init>()V

    sput-object v1, Lcom/unitech/api/util/InternalExecutor;->mInstance:Lcom/unitech/api/util/InternalExecutor;

    .line 28
    :cond_0
    sget-object v1, Lcom/unitech/api/util/InternalExecutor;->mInstance:Lcom/unitech/api/util/InternalExecutor;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
