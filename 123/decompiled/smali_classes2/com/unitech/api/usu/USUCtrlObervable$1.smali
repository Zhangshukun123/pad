.class Lcom/unitech/api/usu/USUCtrlObervable$1;
.super Landroid/content/BroadcastReceiver;
.source "USUCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unitech/api/usu/USUCtrlObervable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unitech/api/usu/USUCtrlObervable;


# direct methods
.method constructor <init>(Lcom/unitech/api/usu/USUCtrlObervable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/unitech/api/usu/USUCtrlObervable$1;->this$0:Lcom/unitech/api/usu/USUCtrlObervable;

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
            "intent"
        }
    .end annotation

    .line 128
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 129
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "replyType"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object p2, p0, Lcom/unitech/api/usu/USUCtrlObervable$1;->this$0:Lcom/unitech/api/usu/USUCtrlObervable;

    invoke-static {p2, p1}, Lcom/unitech/api/usu/USUCtrlObervable;->access$000(Lcom/unitech/api/usu/USUCtrlObervable;Landroid/os/Bundle;)V

    return-void
.end method
