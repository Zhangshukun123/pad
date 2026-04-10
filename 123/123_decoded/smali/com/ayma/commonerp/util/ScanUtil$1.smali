.class Lcom/ayma/commonerp/util/ScanUtil$1;
.super Ljava/lang/Object;
.source "ScanUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/util/ScanUtil;->setNewLandOutputMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/util/ScanUtil;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/util/ScanUtil;I)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/ayma/commonerp/util/ScanUtil$1;->this$0:Lcom/ayma/commonerp/util/ScanUtil;

    iput p2, p0, Lcom/ayma/commonerp/util/ScanUtil$1;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ACTION_BAR_SCANCFG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    iget v1, p0, Lcom/ayma/commonerp/util/ScanUtil$1;->val$mode:I

    const-string v2, "EXTRA_SCAN_MODE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    iget-object v1, p0, Lcom/ayma/commonerp/util/ScanUtil$1;->this$0:Lcom/ayma/commonerp/util/ScanUtil;

    invoke-static {v1}, Lcom/ayma/commonerp/util/ScanUtil;->access$000(Lcom/ayma/commonerp/util/ScanUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
