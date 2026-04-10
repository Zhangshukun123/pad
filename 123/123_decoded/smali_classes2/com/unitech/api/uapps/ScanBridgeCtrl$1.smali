.class Lcom/unitech/api/uapps/ScanBridgeCtrl$1;
.super Landroid/content/BroadcastReceiver;
.source "ScanBridgeCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unitech/api/uapps/ScanBridgeCtrl;->resetSettings()Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unitech/api/uapps/ScanBridgeCtrl;

.field final synthetic val$lock:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/unitech/api/uapps/ScanBridgeCtrl;Landroid/os/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$lock"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/unitech/api/uapps/ScanBridgeCtrl$1;->this$0:Lcom/unitech/api/uapps/ScanBridgeCtrl;

    iput-object p2, p0, Lcom/unitech/api/uapps/ScanBridgeCtrl$1;->val$lock:Landroid/os/Message;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "rintent"
        }
    .end annotation

    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "result"

    const-string v1, "result"

    const/4 v2, -0x1

    .line 97
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    iget-object p2, p0, Lcom/unitech/api/uapps/ScanBridgeCtrl$1;->val$lock:Landroid/os/Message;

    monitor-enter p2

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/uapps/ScanBridgeCtrl$1;->val$lock:Landroid/os/Message;

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 100
    iget-object p1, p0, Lcom/unitech/api/uapps/ScanBridgeCtrl$1;->val$lock:Landroid/os/Message;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 101
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
