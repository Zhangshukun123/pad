.class Lcom/unitech/api/usu/USUCtrl$27;
.super Ljava/lang/Object;
.source "USUCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unitech/api/usu/USUCtrl;->SendACKIndicator(ZIZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unitech/api/usu/USUCtrl;

.field final synthetic val$beepTime:I

.field final synthetic val$ledColor:Ljava/lang/String;

.field final synthetic val$vibrate:Z

.field final synthetic val$withACK:Z


# direct methods
.method constructor <init>(Lcom/unitech/api/usu/USUCtrl;ZIZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$withACK",
            "val$beepTime",
            "val$vibrate",
            "val$ledColor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1319
    iput-object p1, p0, Lcom/unitech/api/usu/USUCtrl$27;->this$0:Lcom/unitech/api/usu/USUCtrl;

    iput-boolean p2, p0, Lcom/unitech/api/usu/USUCtrl$27;->val$withACK:Z

    iput p3, p0, Lcom/unitech/api/usu/USUCtrl$27;->val$beepTime:I

    iput-boolean p4, p0, Lcom/unitech/api/usu/USUCtrl$27;->val$vibrate:Z

    iput-object p5, p0, Lcom/unitech/api/usu/USUCtrl$27;->val$ledColor:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1322
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl$27;->this$0:Lcom/unitech/api/usu/USUCtrl;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unitech/api/usu/USUCtrl;->access$000(Lcom/unitech/api/usu/USUCtrl;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1323
    iget-boolean v1, p0, Lcom/unitech/api/usu/USUCtrl$27;->val$withACK:Z

    const-string v2, "withACK"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1324
    iget v1, p0, Lcom/unitech/api/usu/USUCtrl$27;->val$beepTime:I

    const-string v2, "beepTime"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1325
    iget-boolean v1, p0, Lcom/unitech/api/usu/USUCtrl$27;->val$vibrate:Z

    const-string v2, "vibrate"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1326
    iget-object v1, p0, Lcom/unitech/api/usu/USUCtrl$27;->val$ledColor:Ljava/lang/String;

    const-string v2, "ledColor"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    iget-object v1, p0, Lcom/unitech/api/usu/USUCtrl$27;->this$0:Lcom/unitech/api/usu/USUCtrl;

    iget-object v1, v1, Lcom/unitech/api/usu/USUCtrl;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "unitech.scanservice.bluetooth.set_indicator"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1328
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl$27;->this$0:Lcom/unitech/api/usu/USUCtrl;

    invoke-virtual {v0}, Lcom/unitech/api/usu/USUCtrl;->IsReponseTimeOut()Z

    return-void
.end method
