.class Lcom/unitech/api/usu/USUCtrl$7;
.super Ljava/lang/Object;
.source "USUCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unitech/api/usu/USUCtrl;->GetScannerBluetoothMacAddress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unitech/api/usu/USUCtrl;


# direct methods
.method constructor <init>(Lcom/unitech/api/usu/USUCtrl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 559
    iput-object p1, p0, Lcom/unitech/api/usu/USUCtrl$7;->this$0:Lcom/unitech/api/usu/USUCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 562
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl$7;->this$0:Lcom/unitech/api/usu/USUCtrl;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unitech/api/usu/USUCtrl;->access$000(Lcom/unitech/api/usu/USUCtrl;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 563
    iget-object v1, p0, Lcom/unitech/api/usu/USUCtrl$7;->this$0:Lcom/unitech/api/usu/USUCtrl;

    iget-object v1, v1, Lcom/unitech/api/usu/USUCtrl;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "unitech.scanservice.bluetooth.get_address"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 564
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl$7;->this$0:Lcom/unitech/api/usu/USUCtrl;

    invoke-virtual {v0}, Lcom/unitech/api/usu/USUCtrl;->IsReponseTimeOut()Z

    return-void
.end method
