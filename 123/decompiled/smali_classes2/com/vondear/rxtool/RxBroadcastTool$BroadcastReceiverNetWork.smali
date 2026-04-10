.class public Lcom/vondear/rxtool/RxBroadcastTool$BroadcastReceiverNetWork;
.super Landroid/content/BroadcastReceiver;
.source "RxBroadcastTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vondear/rxtool/RxBroadcastTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BroadcastReceiverNetWork"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 38
    invoke-static {p1}, Lcom/vondear/rxtool/RxNetTool;->getNetWorkType(Landroid/content/Context;)I

    return-void
.end method
