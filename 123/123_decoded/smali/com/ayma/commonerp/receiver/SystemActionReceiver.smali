.class public Lcom/ayma/commonerp/receiver/SystemActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemActionReceiver.java"


# static fields
.field private static mReceiver:Lcom/ayma/commonerp/receiver/SystemActionReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static getInstance(Landroid/content/Context;)Lcom/ayma/commonerp/receiver/SystemActionReceiver;
    .locals 1

    .line 30
    sget-object p0, Lcom/ayma/commonerp/receiver/SystemActionReceiver;->mReceiver:Lcom/ayma/commonerp/receiver/SystemActionReceiver;

    if-nez p0, :cond_1

    .line 31
    const-class p0, Lcom/ayma/commonerp/receiver/SystemActionReceiver;

    monitor-enter p0

    .line 32
    :try_start_0
    sget-object v0, Lcom/ayma/commonerp/receiver/SystemActionReceiver;->mReceiver:Lcom/ayma/commonerp/receiver/SystemActionReceiver;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/ayma/commonerp/receiver/SystemActionReceiver;

    invoke-direct {v0}, Lcom/ayma/commonerp/receiver/SystemActionReceiver;-><init>()V

    sput-object v0, Lcom/ayma/commonerp/receiver/SystemActionReceiver;->mReceiver:Lcom/ayma/commonerp/receiver/SystemActionReceiver;

    monitor-exit p0

    return-object v0

    .line 35
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 37
    :cond_1
    :goto_0
    sget-object p0, Lcom/ayma/commonerp/receiver/SystemActionReceiver;->mReceiver:Lcom/ayma/commonerp/receiver/SystemActionReceiver;

    return-object p0
.end method

.method public static varargs register(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 4

    .line 41
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 42
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 43
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {p0}, Lcom/ayma/commonerp/receiver/SystemActionReceiver;->getInstance(Landroid/content/Context;)Lcom/ayma/commonerp/receiver/SystemActionReceiver;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    const/4 v0, -0x1

    .line 52
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x56ac2893

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    const v2, -0x45e5283a

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eq v0, v4, :cond_3

    goto :goto_1

    :cond_3
    const-string p2, "network"

    const-string v0, "CONNECTIVITY_ACTION"

    .line 58
    invoke-static {p2, v0}, Lcom/ayma/commonerp/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "connectivity"

    .line 60
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    if-nez p2, :cond_4

    return-void

    .line 64
    :cond_4
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 65
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_1

    .line 68
    :cond_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "hadUpdatedToken"

    invoke-static {p1, v0, p2}, Lcom/ayma/base/util/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 73
    :cond_6
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/ayma/commonerp/eventbus/UpdateTokenEvent;

    invoke-direct {p2}, Lcom/ayma/commonerp/eventbus/UpdateTokenEvent;-><init>()V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    nop

    :cond_7
    :goto_1
    return-void
.end method
