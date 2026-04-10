.class Lcom/vondear/rxfeature/activity/ActivityScanerCode$3;
.super Ljava/lang/Object;
.source "ActivityScanerCode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vondear/rxfeature/activity/ActivityScanerCode;->initDialogResult(Lcom/google/zxing/Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vondear/rxfeature/activity/ActivityScanerCode;


# direct methods
.method constructor <init>(Lcom/vondear/rxfeature/activity/ActivityScanerCode;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$3;->this$0:Lcom/vondear/rxfeature/activity/ActivityScanerCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 387
    iget-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$3;->this$0:Lcom/vondear/rxfeature/activity/ActivityScanerCode;

    invoke-static {p1}, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->access$300(Lcom/vondear/rxfeature/activity/ActivityScanerCode;)Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 389
    iget-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$3;->this$0:Lcom/vondear/rxfeature/activity/ActivityScanerCode;

    invoke-static {p1}, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->access$300(Lcom/vondear/rxfeature/activity/ActivityScanerCode;)Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;

    move-result-object p1

    sget v0, Lcom/vondear/rxfeature/R$id;->restart_preview:I

    invoke-virtual {p1, v0}, Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
