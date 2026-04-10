.class Lcom/unitech/api/uapps/EnterpriseBrowserCtrl$2;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseBrowserCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->licenseActivate(Ljava/lang/String;Z)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;

.field final synthetic val$lock:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;Landroid/os/Message;)V
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

    .line 272
    iput-object p1, p0, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl$2;->this$0:Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;

    iput-object p2, p0, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl$2;->val$lock:Landroid/os/Message;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
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

    .line 275
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 276
    iget-object p2, p0, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl$2;->val$lock:Landroid/os/Message;

    monitor-enter p2

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl$2;->val$lock:Landroid/os/Message;

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 278
    iget-object p1, p0, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl$2;->val$lock:Landroid/os/Message;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 279
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
