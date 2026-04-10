.class Lcom/ayma/commonerp/util/ScanUtil$4;
.super Ljava/lang/Object;
.source "ScanUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/util/ScanUtil;->setScan2Key(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/util/ScanUtil;

.field final synthetic val$mswitch:Z


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/util/ScanUtil;Z)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/ayma/commonerp/util/ScanUtil$4;->this$0:Lcom/ayma/commonerp/util/ScanUtil;

    iput-boolean p2, p0, Lcom/ayma/commonerp/util/ScanUtil$4;->val$mswitch:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 185
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "scan2key"

    .line 186
    iget-boolean v2, p0, Lcom/ayma/commonerp/util/ScanUtil$4;->val$mswitch:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 187
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "unitech.scanservice.scan2key_setting"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/ayma/commonerp/util/ScanUtil$4;->this$0:Lcom/ayma/commonerp/util/ScanUtil;

    invoke-static {v1}, Lcom/ayma/commonerp/util/ScanUtil;->access$000(Lcom/ayma/commonerp/util/ScanUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
