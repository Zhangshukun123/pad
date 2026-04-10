.class Lcom/ayma/commonerp/util/ScanUtil$2;
.super Ljava/lang/Object;
.source "ScanUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/util/ScanUtil;->startScanService()V
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

    .line 137
    iput-object p1, p0, Lcom/ayma/commonerp/util/ScanUtil$2;->this$0:Lcom/ayma/commonerp/util/ScanUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "unitech.scanservice.start"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/ayma/commonerp/util/ScanUtil$2;->this$0:Lcom/ayma/commonerp/util/ScanUtil;

    invoke-static {v1}, Lcom/ayma/commonerp/util/ScanUtil;->access$000(Lcom/ayma/commonerp/util/ScanUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
