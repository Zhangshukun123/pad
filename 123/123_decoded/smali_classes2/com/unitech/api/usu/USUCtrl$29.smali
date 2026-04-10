.class Lcom/unitech/api/usu/USUCtrl$29;
.super Ljava/lang/Object;
.source "USUCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unitech/api/usu/USUCtrl;->ImportSettings(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unitech/api/usu/USUCtrl;

.field final synthetic val$filepath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/unitech/api/usu/USUCtrl;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$filepath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1465
    iput-object p1, p0, Lcom/unitech/api/usu/USUCtrl$29;->this$0:Lcom/unitech/api/usu/USUCtrl;

    iput-object p2, p0, Lcom/unitech/api/usu/USUCtrl$29;->val$filepath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1468
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl$29;->this$0:Lcom/unitech/api/usu/USUCtrl;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unitech/api/usu/USUCtrl;->access$000(Lcom/unitech/api/usu/USUCtrl;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1469
    iget-object v1, p0, Lcom/unitech/api/usu/USUCtrl$29;->this$0:Lcom/unitech/api/usu/USUCtrl;

    iget-object v1, v1, Lcom/unitech/api/usu/USUCtrl;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v1

    .line 1470
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/unitech/api/usu/USUCtrl$29;->val$filepath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1471
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/sdcard/Unitech/USU/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1472
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    const-string v6, "previousUSU.conf"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    iget-object v5, p0, Lcom/unitech/api/usu/USUCtrl$29;->val$filepath:Ljava/lang/String;

    const-string v6, "/sdcard/Unitech/USU/USU.conf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1476
    iget-object v7, p0, Lcom/unitech/api/usu/USUCtrl$29;->val$filepath:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, -0x1

    if-eqz v7, :cond_0

    .line 1477
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl$29;->this$0:Lcom/unitech/api/usu/USUCtrl;

    invoke-static {v0, v8}, Lcom/unitech/api/usu/USUCtrl;->access$102(Lcom/unitech/api/usu/USUCtrl;I)I

    .line 1478
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl$29;->this$0:Lcom/unitech/api/usu/USUCtrl;

    const-string v1, "Invalid parameter"

    invoke-static {v0, v1}, Lcom/unitech/api/usu/USUCtrl;->access$202(Lcom/unitech/api/usu/USUCtrl;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_0
    const-string v7, "filepath"

    const-string v9, "errorCode"

    if-eqz v5, :cond_1

    .line 1481
    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1483
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/unitech/api/file/FileCtrl;->exists(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 1484
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v6, v10}, Lcom/unitech/api/file/FileCtrl;->renameTo(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 1485
    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_2

    .line 1486
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl$29;->this$0:Lcom/unitech/api/usu/USUCtrl;

    invoke-static {v0, v8}, Lcom/unitech/api/usu/USUCtrl;->access$102(Lcom/unitech/api/usu/USUCtrl;I)I

    .line 1487
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl$29;->this$0:Lcom/unitech/api/usu/USUCtrl;

    const-string v1, "Cannot rename the existed file."

    invoke-static {v0, v1}, Lcom/unitech/api/usu/USUCtrl;->access$202(Lcom/unitech/api/usu/USUCtrl;Ljava/lang/String;)Ljava/lang/String;

    return-void

    .line 1492
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lcom/unitech/api/file/FileCtrl;->copyFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1494
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 1495
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl$29;->this$0:Lcom/unitech/api/usu/USUCtrl;

    invoke-static {v0, v8}, Lcom/unitech/api/usu/USUCtrl;->access$102(Lcom/unitech/api/usu/USUCtrl;I)I

    .line 1496
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl$29;->this$0:Lcom/unitech/api/usu/USUCtrl;

    const-string v1, "Cannot copy file to target path."

    invoke-static {v0, v1}, Lcom/unitech/api/usu/USUCtrl;->access$202(Lcom/unitech/api/usu/USUCtrl;Ljava/lang/String;)Ljava/lang/String;

    return-void

    .line 1500
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    :goto_0
    iget-object v2, p0, Lcom/unitech/api/usu/USUCtrl$29;->this$0:Lcom/unitech/api/usu/USUCtrl;

    iget-object v2, v2, Lcom/unitech/api/usu/USUCtrl;->context:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "unitech.scanservice.bluetooth.import_settings"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1504
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl$29;->this$0:Lcom/unitech/api/usu/USUCtrl;

    invoke-virtual {v0}, Lcom/unitech/api/usu/USUCtrl;->IsReponseTimeOut()Z

    if-nez v5, :cond_5

    .line 1507
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/unitech/api/file/FileCtrl;->deleteFile(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1508
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 1509
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl$29;->this$0:Lcom/unitech/api/usu/USUCtrl;

    invoke-static {v0, v8}, Lcom/unitech/api/usu/USUCtrl;->access$102(Lcom/unitech/api/usu/USUCtrl;I)I

    .line 1510
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl$29;->this$0:Lcom/unitech/api/usu/USUCtrl;

    const-string v1, "Cannot delete the template file."

    invoke-static {v0, v1}, Lcom/unitech/api/usu/USUCtrl;->access$202(Lcom/unitech/api/usu/USUCtrl;Ljava/lang/String;)Ljava/lang/String;

    return-void

    .line 1514
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/unitech/api/file/FileCtrl;->exists(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 1515
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/unitech/api/file/FileCtrl;->renameTo(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1516
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 1517
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl$29;->this$0:Lcom/unitech/api/usu/USUCtrl;

    invoke-static {v0, v8}, Lcom/unitech/api/usu/USUCtrl;->access$102(Lcom/unitech/api/usu/USUCtrl;I)I

    .line 1518
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl$29;->this$0:Lcom/unitech/api/usu/USUCtrl;

    const-string v1, "Cannot rename the previous file."

    invoke-static {v0, v1}, Lcom/unitech/api/usu/USUCtrl;->access$202(Lcom/unitech/api/usu/USUCtrl;Ljava/lang/String;)Ljava/lang/String;

    :cond_5
    return-void
.end method
