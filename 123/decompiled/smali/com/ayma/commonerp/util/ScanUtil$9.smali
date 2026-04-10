.class Lcom/ayma/commonerp/util/ScanUtil$9;
.super Ljava/lang/Object;
.source "ScanUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/util/ScanUtil;->setEa630QrCode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/util/ScanUtil;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/util/ScanUtil;Z)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/ayma/commonerp/util/ScanUtil$9;->this$0:Lcom/ayma/commonerp/util/ScanUtil;

    iput-boolean p2, p0, Lcom/ayma/commonerp/util/ScanUtil$9;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 328
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "INDEX"

    const/4 v2, 0x2

    .line 329
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "EXTEND"

    const/4 v2, 0x1

    .line 330
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "EXT"

    .line 331
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string v1, "NUM"

    const/16 v3, 0x25

    .line 332
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string v1, "VALUE"

    .line 333
    iget-boolean v3, p0, Lcom/ayma/commonerp/util/ScanUtil$9;->val$enable:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 334
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "unitech.scanservice.setting"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lcom/ayma/commonerp/util/ScanUtil$9;->this$0:Lcom/ayma/commonerp/util/ScanUtil;

    invoke-static {v1}, Lcom/ayma/commonerp/util/ScanUtil;->access$000(Lcom/ayma/commonerp/util/ScanUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 337
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
