.class Lcom/unitech/api/usu/USUCtrl$28;
.super Ljava/lang/Object;
.source "USUCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unitech/api/usu/USUCtrl;->ExportSettings(Ljava/lang/String;)V
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

    .line 1367
    iput-object p1, p0, Lcom/unitech/api/usu/USUCtrl$28;->this$0:Lcom/unitech/api/usu/USUCtrl;

    iput-object p2, p0, Lcom/unitech/api/usu/USUCtrl$28;->val$filepath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1370
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl$28;->this$0:Lcom/unitech/api/usu/USUCtrl;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unitech/api/usu/USUCtrl;->access$000(Lcom/unitech/api/usu/USUCtrl;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1371
    iget-object v1, p0, Lcom/unitech/api/usu/USUCtrl$28;->this$0:Lcom/unitech/api/usu/USUCtrl;

    iget-object v1, v1, Lcom/unitech/api/usu/USUCtrl;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v1

    .line 1372
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/unitech/api/usu/USUCtrl$28;->val$filepath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1373
    new-instance v3, Ljava/io/File;

    const-string v4, "/sdcard/Unitech/USU/USU.conf"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1374
    new-instance v5, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    const-string v7, "previousUSU.conf"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    iget-object v6, p0, Lcom/unitech/api/usu/USUCtrl$28;->val$filepath:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1379
    iget-object v7, p0, Lcom/unitech/api/usu/USUCtrl$28;->val$filepath:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {v1, v7, v8}, Lcom/unitech/api/file/helper/FileHelper;->isValidFilepath(Lcom/unitech/api/file/FileCtrl;Ljava/lang/String;Z)Z

    move-result v7

    const/4 v8, -0x1

    if-nez v7, :cond_0

    .line 1382
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl$28;->this$0:Lcom/unitech/api/usu/USUCtrl;

    invoke-static {v0, v8}, Lcom/unitech/api/usu/USUCtrl;->access$102(Lcom/unitech/api/usu/USUCtrl;I)I

    .line 1383
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl$28;->this$0:Lcom/unitech/api/usu/USUCtrl;

    const-string v1, "Invalid parameter"

    invoke-static {v0, v1}, Lcom/unitech/api/usu/USUCtrl;->access$202(Lcom/unitech/api/usu/USUCtrl;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_0
    const-string v7, "filepath"

    const-string v9, "errorCode"

    if-eqz v6, :cond_1

    .line 1386
    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1389
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/unitech/api/file/FileCtrl;->exists(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 1390
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v4, v10}, Lcom/unitech/api/file/FileCtrl;->renameTo(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 1391
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    .line 1392
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl$28;->this$0:Lcom/unitech/api/usu/USUCtrl;

    invoke-static {v0, v8}, Lcom/unitech/api/usu/USUCtrl;->access$102(Lcom/unitech/api/usu/USUCtrl;I)I

    .line 1393
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl$28;->this$0:Lcom/unitech/api/usu/USUCtrl;

    const-string v1, "Cannot move file to target path."

    invoke-static {v0, v1}, Lcom/unitech/api/usu/USUCtrl;->access$202(Lcom/unitech/api/usu/USUCtrl;Ljava/lang/String;)Ljava/lang/String;

    return-void

    .line 1397
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/unitech/api/file/FileCtrl;->createFile(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1398
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    :goto_0
    iget-object v4, p0, Lcom/unitech/api/usu/USUCtrl$28;->this$0:Lcom/unitech/api/usu/USUCtrl;

    iget-object v4, v4, Lcom/unitech/api/usu/USUCtrl;->context:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v10, "unitech.scanservice.bluetooth.export_settings"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1402
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl$28;->this$0:Lcom/unitech/api/usu/USUCtrl;

    invoke-virtual {v0}, Lcom/unitech/api/usu/USUCtrl;->IsReponseTimeOut()Z

    if-nez v6, :cond_5

    .line 1405
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/unitech/api/file/FileCtrl;->copyFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1407
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 1408
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl$28;->this$0:Lcom/unitech/api/usu/USUCtrl;

    invoke-static {v0, v8}, Lcom/unitech/api/usu/USUCtrl;->access$102(Lcom/unitech/api/usu/USUCtrl;I)I

    .line 1409
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl$28;->this$0:Lcom/unitech/api/usu/USUCtrl;

    const-string v1, "Cannot copy file to target path."

    invoke-static {v0, v1}, Lcom/unitech/api/usu/USUCtrl;->access$202(Lcom/unitech/api/usu/USUCtrl;Ljava/lang/String;)Ljava/lang/String;

    return-void

    .line 1413
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/unitech/api/file/FileCtrl;->deleteFile(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1414
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 1415
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl$28;->this$0:Lcom/unitech/api/usu/USUCtrl;

    invoke-static {v0, v8}, Lcom/unitech/api/usu/USUCtrl;->access$102(Lcom/unitech/api/usu/USUCtrl;I)I

    .line 1416
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl$28;->this$0:Lcom/unitech/api/usu/USUCtrl;

    const-string v2, "Cannot delete the template file."

    invoke-static {v0, v2}, Lcom/unitech/api/usu/USUCtrl;->access$202(Lcom/unitech/api/usu/USUCtrl;Ljava/lang/String;)Ljava/lang/String;

    .line 1419
    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/unitech/api/file/FileCtrl;->exists(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 1420
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/unitech/api/file/FileCtrl;->renameTo(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1421
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 1422
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl$28;->this$0:Lcom/unitech/api/usu/USUCtrl;

    invoke-static {v0, v8}, Lcom/unitech/api/usu/USUCtrl;->access$102(Lcom/unitech/api/usu/USUCtrl;I)I

    .line 1423
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl$28;->this$0:Lcom/unitech/api/usu/USUCtrl;

    const-string v1, "Cannot rename the previous file."

    invoke-static {v0, v1}, Lcom/unitech/api/usu/USUCtrl;->access$202(Lcom/unitech/api/usu/USUCtrl;Ljava/lang/String;)Ljava/lang/String;

    :cond_5
    return-void
.end method
