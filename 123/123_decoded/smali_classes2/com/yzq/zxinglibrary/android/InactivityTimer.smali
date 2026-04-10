.class public final Lcom/yzq/zxinglibrary/android/InactivityTimer;
.super Ljava/lang/Object;
.source "InactivityTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yzq/zxinglibrary/android/InactivityTimer$InactivityAsyncTask;,
        Lcom/yzq/zxinglibrary/android/InactivityTimer$PowerStatusReceiver;
    }
.end annotation


# static fields
.field private static final INACTIVITY_DELAY_MS:J = 0x493e0L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private inactivityTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final powerStatusReceiver:Landroid/content/BroadcastReceiver;

.field private registered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/yzq/zxinglibrary/android/InactivityTimer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yzq/zxinglibrary/android/InactivityTimer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/yzq/zxinglibrary/android/InactivityTimer;->activity:Landroid/app/Activity;

    .line 49
    new-instance p1, Lcom/yzq/zxinglibrary/android/InactivityTimer$PowerStatusReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/yzq/zxinglibrary/android/InactivityTimer$PowerStatusReceiver;-><init>(Lcom/yzq/zxinglibrary/android/InactivityTimer;Lcom/yzq/zxinglibrary/android/InactivityTimer$1;)V

    iput-object p1, p0, Lcom/yzq/zxinglibrary/android/InactivityTimer;->powerStatusReceiver:Landroid/content/BroadcastReceiver;

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/yzq/zxinglibrary/android/InactivityTimer;->registered:Z

    .line 51
    invoke-virtual {p0}, Lcom/yzq/zxinglibrary/android/InactivityTimer;->onActivity()V

    return-void
.end method

.method static synthetic access$200(Lcom/yzq/zxinglibrary/android/InactivityTimer;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/yzq/zxinglibrary/android/InactivityTimer;->cancel()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/yzq/zxinglibrary/android/InactivityTimer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/yzq/zxinglibrary/android/InactivityTimer;)Landroid/app/Activity;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/yzq/zxinglibrary/android/InactivityTimer;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method private declared-synchronized cancel()V
    .locals 2

    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/InactivityTimer;->inactivityTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 86
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/yzq/zxinglibrary/android/InactivityTimer;->inactivityTask:Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized onActivity()V
    .locals 2

    monitor-enter p0

    .line 57
    :try_start_0
    invoke-direct {p0}, Lcom/yzq/zxinglibrary/android/InactivityTimer;->cancel()V

    .line 58
    new-instance v0, Lcom/yzq/zxinglibrary/android/InactivityTimer$InactivityAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yzq/zxinglibrary/android/InactivityTimer$InactivityAsyncTask;-><init>(Lcom/yzq/zxinglibrary/android/InactivityTimer;Lcom/yzq/zxinglibrary/android/InactivityTimer$1;)V

    iput-object v0, p0, Lcom/yzq/zxinglibrary/android/InactivityTimer;->inactivityTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 59
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPause()V
    .locals 2

    monitor-enter p0

    .line 63
    :try_start_0
    invoke-direct {p0}, Lcom/yzq/zxinglibrary/android/InactivityTimer;->cancel()V

    .line 64
    iget-boolean v0, p0, Lcom/yzq/zxinglibrary/android/InactivityTimer;->registered:Z

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/InactivityTimer;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/yzq/zxinglibrary/android/InactivityTimer;->powerStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/yzq/zxinglibrary/android/InactivityTimer;->registered:Z

    goto :goto_0

    .line 68
    :cond_0
    sget-object v0, Lcom/yzq/zxinglibrary/android/InactivityTimer;->TAG:Ljava/lang/String;

    const-string v1, "PowerStatusReceiver was never registered?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onResume()V
    .locals 4

    monitor-enter p0

    .line 73
    :try_start_0
    iget-boolean v0, p0, Lcom/yzq/zxinglibrary/android/InactivityTimer;->registered:Z

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lcom/yzq/zxinglibrary/android/InactivityTimer;->TAG:Ljava/lang/String;

    const-string v1, "PowerStatusReceiver was already registered?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/InactivityTimer;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/yzq/zxinglibrary/android/InactivityTimer;->powerStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/yzq/zxinglibrary/android/InactivityTimer;->registered:Z

    .line 80
    :goto_0
    invoke-virtual {p0}, Lcom/yzq/zxinglibrary/android/InactivityTimer;->onActivity()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public shutdown()V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/yzq/zxinglibrary/android/InactivityTimer;->cancel()V

    return-void
.end method
