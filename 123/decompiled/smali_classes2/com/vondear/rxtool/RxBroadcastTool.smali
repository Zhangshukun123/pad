.class public Lcom/vondear/rxtool/RxBroadcastTool;
.super Ljava/lang/Object;
.source "RxBroadcastTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vondear/rxtool/RxBroadcastTool$BroadcastReceiverNetWork;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initRegisterReceiverNetWork(Landroid/content/Context;)Lcom/vondear/rxtool/RxBroadcastTool$BroadcastReceiverNetWork;
    .locals 3

    .line 25
    new-instance v0, Lcom/vondear/rxtool/RxBroadcastTool$BroadcastReceiverNetWork;

    invoke-direct {v0}, Lcom/vondear/rxtool/RxBroadcastTool$BroadcastReceiverNetWork;-><init>()V

    .line 26
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 27
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-object v0
.end method
