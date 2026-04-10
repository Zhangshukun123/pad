.class Lcom/ayma/commonerp/util/ScanUtil$10;
.super Ljava/lang/Object;
.source "ScanUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/util/ScanUtil;->enableAllSymbology()V
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

    .line 353
    iput-object p1, p0, Lcom/ayma/commonerp/util/ScanUtil$10;->this$0:Lcom/ayma/commonerp/util/ScanUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScanUtil$10;->this$0:Lcom/ayma/commonerp/util/ScanUtil;

    invoke-static {v0}, Lcom/ayma/commonerp/util/ScanUtil;->access$000(Lcom/ayma/commonerp/util/ScanUtil;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "unitech.scanservice.enable_all"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 359
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
