.class Lcom/unitech/api/usu/USUCtrl$21;
.super Ljava/lang/Object;
.source "USUCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unitech/api/usu/USUCtrl;->SetScannerBtSignalCheckingLevel(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unitech/api/usu/USUCtrl;

.field final synthetic val$level:I


# direct methods
.method constructor <init>(Lcom/unitech/api/usu/USUCtrl;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$level"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1094
    iput-object p1, p0, Lcom/unitech/api/usu/USUCtrl$21;->this$0:Lcom/unitech/api/usu/USUCtrl;

    iput p2, p0, Lcom/unitech/api/usu/USUCtrl$21;->val$level:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1097
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl$21;->this$0:Lcom/unitech/api/usu/USUCtrl;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unitech/api/usu/USUCtrl;->access$000(Lcom/unitech/api/usu/USUCtrl;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1098
    iget v1, p0, Lcom/unitech/api/usu/USUCtrl$21;->val$level:I

    const-string v2, "btSignalCheckingLevel"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1099
    iget-object v1, p0, Lcom/unitech/api/usu/USUCtrl$21;->this$0:Lcom/unitech/api/usu/USUCtrl;

    iget-object v1, v1, Lcom/unitech/api/usu/USUCtrl;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "unitech.scanservice.bluetooth.set_bt_signal_checking_level"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1100
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl$21;->this$0:Lcom/unitech/api/usu/USUCtrl;

    invoke-virtual {v0}, Lcom/unitech/api/usu/USUCtrl;->IsReponseTimeOut()Z

    return-void
.end method
