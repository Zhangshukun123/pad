.class Lcom/unitech/api/usu/USUCtrl$19;
.super Ljava/lang/Object;
.source "USUCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unitech/api/usu/USUCtrl;->SetScannerSymbologyConfiguration(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unitech/api/usu/USUCtrl;

.field final synthetic val$symbologyName:Ljava/lang/String;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/unitech/api/usu/USUCtrl;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$symbologyName",
            "val$value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1018
    iput-object p1, p0, Lcom/unitech/api/usu/USUCtrl$19;->this$0:Lcom/unitech/api/usu/USUCtrl;

    iput-object p2, p0, Lcom/unitech/api/usu/USUCtrl$19;->val$symbologyName:Ljava/lang/String;

    iput p3, p0, Lcom/unitech/api/usu/USUCtrl$19;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1021
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl$19;->this$0:Lcom/unitech/api/usu/USUCtrl;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unitech/api/usu/USUCtrl;->access$000(Lcom/unitech/api/usu/USUCtrl;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1022
    iget-object v1, p0, Lcom/unitech/api/usu/USUCtrl$19;->val$symbologyName:Ljava/lang/String;

    iget v2, p0, Lcom/unitech/api/usu/USUCtrl$19;->val$value:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1023
    iget-object v1, p0, Lcom/unitech/api/usu/USUCtrl$19;->this$0:Lcom/unitech/api/usu/USUCtrl;

    iget-object v1, v1, Lcom/unitech/api/usu/USUCtrl;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "unitech.scanservice.bluetooth.set_config"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1024
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl$19;->this$0:Lcom/unitech/api/usu/USUCtrl;

    invoke-virtual {v0}, Lcom/unitech/api/usu/USUCtrl;->IsReponseTimeOut()Z

    return-void
.end method
