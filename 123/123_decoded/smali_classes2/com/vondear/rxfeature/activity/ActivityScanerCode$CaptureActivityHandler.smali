.class final Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;
.super Landroid/os/Handler;
.source "ActivityScanerCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vondear/rxfeature/activity/ActivityScanerCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CaptureActivityHandler"
.end annotation


# instance fields
.field decodeThread:Lcom/vondear/rxfeature/activity/ActivityScanerCode$DecodeThread;

.field private state:Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;

.field final synthetic this$0:Lcom/vondear/rxfeature/activity/ActivityScanerCode;


# direct methods
.method public constructor <init>(Lcom/vondear/rxfeature/activity/ActivityScanerCode;)V
    .locals 1

    .line 422
    iput-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;->this$0:Lcom/vondear/rxfeature/activity/ActivityScanerCode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 419
    iput-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;->decodeThread:Lcom/vondear/rxfeature/activity/ActivityScanerCode$DecodeThread;

    .line 423
    new-instance v0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$DecodeThread;

    invoke-direct {v0, p1}, Lcom/vondear/rxfeature/activity/ActivityScanerCode$DecodeThread;-><init>(Lcom/vondear/rxfeature/activity/ActivityScanerCode;)V

    iput-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;->decodeThread:Lcom/vondear/rxfeature/activity/ActivityScanerCode$DecodeThread;

    .line 424
    invoke-virtual {v0}, Lcom/vondear/rxfeature/activity/ActivityScanerCode$DecodeThread;->start()V

    .line 425
    sget-object p1, Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;->SUCCESS:Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;

    iput-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;->state:Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;

    .line 426
    invoke-static {}, Lcom/vondear/rxfeature/module/scaner/CameraManager;->get()Lcom/vondear/rxfeature/module/scaner/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vondear/rxfeature/module/scaner/CameraManager;->startPreview()V

    .line 427
    invoke-direct {p0}, Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;->restartPreviewAndDecode()V

    return-void
.end method

.method private restartPreviewAndDecode()V
    .locals 3

    .line 458
    iget-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;->state:Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;

    sget-object v1, Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;->SUCCESS:Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;

    if-ne v0, v1, :cond_0

    .line 459
    sget-object v0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;->PREVIEW:Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;

    iput-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;->state:Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;

    .line 460
    invoke-static {}, Lcom/vondear/rxfeature/module/scaner/CameraManager;->get()Lcom/vondear/rxfeature/module/scaner/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;->decodeThread:Lcom/vondear/rxfeature/activity/ActivityScanerCode$DecodeThread;

    invoke-virtual {v1}, Lcom/vondear/rxfeature/activity/ActivityScanerCode$DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/vondear/rxfeature/R$id;->decode:I

    invoke-virtual {v0, v1, v2}, Lcom/vondear/rxfeature/module/scaner/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 461
    invoke-static {}, Lcom/vondear/rxfeature/module/scaner/CameraManager;->get()Lcom/vondear/rxfeature/module/scaner/CameraManager;

    move-result-object v0

    sget v1, Lcom/vondear/rxfeature/R$id;->auto_focus:I

    invoke-virtual {v0, p0, v1}, Lcom/vondear/rxfeature/module/scaner/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 432
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/vondear/rxfeature/R$id;->auto_focus:I

    if-ne v0, v1, :cond_0

    .line 433
    iget-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;->state:Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;

    sget-object v0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;->PREVIEW:Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;

    if-ne p1, v0, :cond_3

    .line 434
    invoke-static {}, Lcom/vondear/rxfeature/module/scaner/CameraManager;->get()Lcom/vondear/rxfeature/module/scaner/CameraManager;

    move-result-object p1

    sget v0, Lcom/vondear/rxfeature/R$id;->auto_focus:I

    invoke-virtual {p1, p0, v0}, Lcom/vondear/rxfeature/module/scaner/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    goto :goto_0

    .line 436
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/vondear/rxfeature/R$id;->restart_preview:I

    if-ne v0, v1, :cond_1

    .line 437
    invoke-direct {p0}, Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;->restartPreviewAndDecode()V

    goto :goto_0

    .line 438
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/vondear/rxfeature/R$id;->decode_succeeded:I

    if-ne v0, v1, :cond_2

    .line 439
    sget-object v0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;->SUCCESS:Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;

    iput-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;->state:Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;

    .line 440
    iget-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;->this$0:Lcom/vondear/rxfeature/activity/ActivityScanerCode;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/zxing/Result;

    invoke-virtual {v0, p1}, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->handleDecode(Lcom/google/zxing/Result;)V

    goto :goto_0

    .line 441
    :cond_2
    iget p1, p1, Landroid/os/Message;->what:I

    sget v0, Lcom/vondear/rxfeature/R$id;->decode_failed:I

    if-ne p1, v0, :cond_3

    .line 442
    sget-object p1, Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;->PREVIEW:Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;

    iput-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;->state:Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;

    .line 443
    invoke-static {}, Lcom/vondear/rxfeature/module/scaner/CameraManager;->get()Lcom/vondear/rxfeature/module/scaner/CameraManager;

    move-result-object p1

    iget-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;->decodeThread:Lcom/vondear/rxfeature/activity/ActivityScanerCode$DecodeThread;

    invoke-virtual {v0}, Lcom/vondear/rxfeature/activity/ActivityScanerCode$DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/vondear/rxfeature/R$id;->decode:I

    invoke-virtual {p1, v0, v1}, Lcom/vondear/rxfeature/module/scaner/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public quitSynchronously()V
    .locals 1

    .line 448
    sget-object v0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;->DONE:Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;

    iput-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;->state:Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;

    .line 449
    iget-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;->decodeThread:Lcom/vondear/rxfeature/activity/ActivityScanerCode$DecodeThread;

    invoke-virtual {v0}, Lcom/vondear/rxfeature/activity/ActivityScanerCode$DecodeThread;->interrupt()V

    .line 450
    invoke-static {}, Lcom/vondear/rxfeature/module/scaner/CameraManager;->get()Lcom/vondear/rxfeature/module/scaner/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vondear/rxfeature/module/scaner/CameraManager;->stopPreview()V

    .line 451
    sget v0, Lcom/vondear/rxfeature/R$id;->decode_succeeded:I

    invoke-virtual {p0, v0}, Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;->removeMessages(I)V

    .line 452
    sget v0, Lcom/vondear/rxfeature/R$id;->decode_failed:I

    invoke-virtual {p0, v0}, Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;->removeMessages(I)V

    .line 453
    sget v0, Lcom/vondear/rxfeature/R$id;->decode:I

    invoke-virtual {p0, v0}, Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;->removeMessages(I)V

    .line 454
    sget v0, Lcom/vondear/rxfeature/R$id;->auto_focus:I

    invoke-virtual {p0, v0}, Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;->removeMessages(I)V

    return-void
.end method
