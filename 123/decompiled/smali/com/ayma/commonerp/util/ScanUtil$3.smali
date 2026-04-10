.class Lcom/ayma/commonerp/util/ScanUtil$3;
.super Ljava/lang/Object;
.source "ScanUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/util/ScanUtil;->closeScanService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/util/ScanUtil;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/util/ScanUtil;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/ayma/commonerp/util/ScanUtil$3;->this$0:Lcom/ayma/commonerp/util/ScanUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 159
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "close"

    const/4 v2, 0x1

    .line 160
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 161
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "unitech.scanservice.close"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/ayma/commonerp/util/ScanUtil$3;->this$0:Lcom/ayma/commonerp/util/ScanUtil;

    invoke-static {v1}, Lcom/ayma/commonerp/util/ScanUtil;->access$000(Lcom/ayma/commonerp/util/ScanUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
