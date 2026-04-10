.class public Lcom/ayma/base/util/AntiShakeUtil;
.super Ljava/lang/Object;
.source "AntiShakeUtil.java"


# static fields
.field private static handler:Landroid/os/Handler;

.field private static instance:Lcom/ayma/base/util/AntiShakeUtil;


# instance fields
.field private final antiShakeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final object:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ayma/base/util/AntiShakeUtil;->antiShakeSet:Ljava/util/Set;

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ayma/base/util/AntiShakeUtil;->object:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/base/util/AntiShakeUtil;)Ljava/util/Set;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/ayma/base/util/AntiShakeUtil;->antiShakeSet:Ljava/util/Set;

    return-object p0
.end method

.method public static getInstance()Lcom/ayma/base/util/AntiShakeUtil;
    .locals 3

    .line 20
    sget-object v0, Lcom/ayma/base/util/AntiShakeUtil;->instance:Lcom/ayma/base/util/AntiShakeUtil;

    if-nez v0, :cond_1

    .line 21
    const-class v0, Lcom/ayma/base/util/AntiShakeUtil;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/ayma/base/util/AntiShakeUtil;->instance:Lcom/ayma/base/util/AntiShakeUtil;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/ayma/base/util/AntiShakeUtil;

    invoke-direct {v1}, Lcom/ayma/base/util/AntiShakeUtil;-><init>()V

    sput-object v1, Lcom/ayma/base/util/AntiShakeUtil;->instance:Lcom/ayma/base/util/AntiShakeUtil;

    .line 24
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/ayma/base/util/AntiShakeUtil;->handler:Landroid/os/Handler;

    .line 26
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 28
    :cond_1
    :goto_0
    sget-object v0, Lcom/ayma/base/util/AntiShakeUtil;->instance:Lcom/ayma/base/util/AntiShakeUtil;

    return-object v0
.end method


# virtual methods
.method public antiShake(Ljava/lang/Object;)Z
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/ayma/base/util/AntiShakeUtil;->object:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/ayma/base/util/AntiShakeUtil;->antiShakeSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    .line 39
    monitor-exit v0

    return p1

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/ayma/base/util/AntiShakeUtil;->antiShakeSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 42
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 43
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public antiShakeAutoRemove(Ljava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x5dc

    .line 71
    invoke-virtual {p0, p1, v0}, Lcom/ayma/base/util/AntiShakeUtil;->antiShakeAutoRemove(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public antiShakeAutoRemove(Ljava/lang/Object;I)Z
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/ayma/base/util/AntiShakeUtil;->object:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/ayma/base/util/AntiShakeUtil;->antiShakeSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    .line 54
    monitor-exit v0

    return p1

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/ayma/base/util/AntiShakeUtil;->antiShakeSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v1, Lcom/ayma/base/util/AntiShakeUtil;->handler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 58
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/ayma/base/util/AntiShakeUtil;->handler:Landroid/os/Handler;

    .line 60
    :cond_1
    sget-object v1, Lcom/ayma/base/util/AntiShakeUtil;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/ayma/base/util/AntiShakeUtil$1;

    invoke-direct {v2, p0, p1}, Lcom/ayma/base/util/AntiShakeUtil$1;-><init>(Lcom/ayma/base/util/AntiShakeUtil;Ljava/lang/Object;)V

    int-to-long p1, p2

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x0

    .line 66
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 67
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clear()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/ayma/base/util/AntiShakeUtil;->antiShakeSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public removeAntiShake(Ljava/lang/Object;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/ayma/base/util/AntiShakeUtil;->antiShakeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
