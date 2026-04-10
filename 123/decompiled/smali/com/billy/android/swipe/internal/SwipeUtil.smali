.class public Lcom/billy/android/swipe/internal/SwipeUtil;
.super Ljava/lang/Object;
.source "SwipeUtil.java"


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final KEEP_ALIVE:I = 0xa

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 17
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/billy/android/swipe/internal/SwipeUtil;->CPU_COUNT:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x2

    .line 18
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/billy/android/swipe/internal/SwipeUtil;->CORE_POOL_SIZE:I

    .line 19
    sget v0, Lcom/billy/android/swipe/internal/SwipeUtil;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/billy/android/swipe/internal/SwipeUtil;->MAXIMUM_POOL_SIZE:I

    .line 23
    new-instance v0, Lcom/billy/android/swipe/internal/SwipeUtil$1;

    invoke-direct {v0}, Lcom/billy/android/swipe/internal/SwipeUtil$1;-><init>()V

    sput-object v0, Lcom/billy/android/swipe/internal/SwipeUtil;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 32
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/billy/android/swipe/internal/SwipeUtil;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 34
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v3, Lcom/billy/android/swipe/internal/SwipeUtil;->CORE_POOL_SIZE:I

    sget v4, Lcom/billy/android/swipe/internal/SwipeUtil;->MAXIMUM_POOL_SIZE:I

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Lcom/billy/android/swipe/internal/SwipeUtil;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v9, Lcom/billy/android/swipe/internal/SwipeUtil;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    const-wide/16 v5, 0xa

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/billy/android/swipe/internal/SwipeUtil;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getReverseDirection(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_0

    xor-int/lit8 p0, p0, 0x3

    and-int/lit8 p0, p0, 0x3

    return p0

    :cond_0
    xor-int/lit8 p0, p0, 0xc

    and-int/lit8 p0, p0, 0xc

    return p0
.end method

.method public static runInThreadPool(Ljava/lang/Runnable;)V
    .locals 1

    .line 39
    sget-object v0, Lcom/billy/android/swipe/internal/SwipeUtil;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
