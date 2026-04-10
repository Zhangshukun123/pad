.class public final Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;
.super Landroid/os/Handler;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lcom/yzq/zxinglibrary/android/CaptureActivity;

.field private final cameraManager:Lcom/yzq/zxinglibrary/camera/CameraManager;

.field private final decodeThread:Lcom/yzq/zxinglibrary/decode/DecodeThread;

.field private state:Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;

    .line 39
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/yzq/zxinglibrary/android/CaptureActivity;Lcom/yzq/zxinglibrary/camera/CameraManager;)V
    .locals 3

    .line 50
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;->activity:Lcom/yzq/zxinglibrary/android/CaptureActivity;

    .line 52
    new-instance v0, Lcom/yzq/zxinglibrary/decode/DecodeThread;

    new-instance v1, Lcom/yzq/zxinglibrary/view/ViewfinderResultPointCallback;

    .line 53
    invoke-virtual {p1}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->getViewfinderView()Lcom/yzq/zxinglibrary/view/ViewfinderView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yzq/zxinglibrary/view/ViewfinderResultPointCallback;-><init>(Lcom/yzq/zxinglibrary/view/ViewfinderView;)V

    invoke-direct {v0, p1, v1}, Lcom/yzq/zxinglibrary/decode/DecodeThread;-><init>(Lcom/yzq/zxinglibrary/android/CaptureActivity;Lcom/google/zxing/ResultPointCallback;)V

    iput-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;->decodeThread:Lcom/yzq/zxinglibrary/decode/DecodeThread;

    .line 54
    invoke-virtual {v0}, Lcom/yzq/zxinglibrary/decode/DecodeThread;->start()V

    .line 55
    sget-object p1, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;->SUCCESS:Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;

    iput-object p1, p0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;->state:Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;

    .line 59
    iput-object p2, p0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;->cameraManager:Lcom/yzq/zxinglibrary/camera/CameraManager;

    .line 60
    invoke-virtual {p2}, Lcom/yzq/zxinglibrary/camera/CameraManager;->startPreview()V

    .line 61
    invoke-virtual {p0}, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;->restartPreviewAndDecode()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 66
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 96
    :pswitch_0
    iget-object p1, p0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;->activity:Lcom/yzq/zxinglibrary/android/CaptureActivity;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->switchFlashImg(I)V

    goto :goto_0

    .line 93
    :pswitch_1
    iget-object p1, p0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;->activity:Lcom/yzq/zxinglibrary/android/CaptureActivity;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->switchFlashImg(I)V

    goto :goto_0

    .line 89
    :pswitch_2
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;->activity:Lcom/yzq/zxinglibrary/android/CaptureActivity;

    const/4 v1, -0x1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 90
    iget-object p1, p0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;->activity:Lcom/yzq/zxinglibrary/android/CaptureActivity;

    invoke-virtual {p1}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->finish()V

    goto :goto_0

    .line 70
    :pswitch_3
    invoke-virtual {p0}, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;->restartPreviewAndDecode()V

    goto :goto_0

    .line 75
    :cond_0
    sget-object v0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;->SUCCESS:Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;->state:Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;

    .line 76
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;->activity:Lcom/yzq/zxinglibrary/android/CaptureActivity;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/zxing/Result;

    invoke-virtual {v0, p1}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->handleDecode(Lcom/google/zxing/Result;)V

    goto :goto_0

    .line 83
    :cond_1
    sget-object p1, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;->PREVIEW:Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;

    iput-object p1, p0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;->state:Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;

    .line 84
    iget-object p1, p0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;->cameraManager:Lcom/yzq/zxinglibrary/camera/CameraManager;

    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;->decodeThread:Lcom/yzq/zxinglibrary/decode/DecodeThread;

    invoke-virtual {v0}, Lcom/yzq/zxinglibrary/decode/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/yzq/zxinglibrary/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public quitSynchronously()V
    .locals 3

    .line 105
    sget-object v0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;->DONE:Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;->state:Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;

    .line 106
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;->cameraManager:Lcom/yzq/zxinglibrary/camera/CameraManager;

    invoke-virtual {v0}, Lcom/yzq/zxinglibrary/camera/CameraManager;->stopPreview()V

    .line 107
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;->decodeThread:Lcom/yzq/zxinglibrary/decode/DecodeThread;

    invoke-virtual {v0}, Lcom/yzq/zxinglibrary/decode/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;->decodeThread:Lcom/yzq/zxinglibrary/decode/DecodeThread;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/yzq/zxinglibrary/decode/DecodeThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x3

    .line 119
    invoke-virtual {p0, v0}, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;->removeMessages(I)V

    const/4 v0, 0x2

    .line 120
    invoke-virtual {p0, v0}, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;->removeMessages(I)V

    return-void
.end method

.method public restartPreviewAndDecode()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;->state:Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;

    sget-object v1, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;->SUCCESS:Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;

    if-ne v0, v1, :cond_0

    .line 125
    sget-object v0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;->PREVIEW:Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;->state:Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;

    .line 126
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;->cameraManager:Lcom/yzq/zxinglibrary/camera/CameraManager;

    iget-object v1, p0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;->decodeThread:Lcom/yzq/zxinglibrary/decode/DecodeThread;

    invoke-virtual {v1}, Lcom/yzq/zxinglibrary/decode/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/yzq/zxinglibrary/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 128
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;->activity:Lcom/yzq/zxinglibrary/android/CaptureActivity;

    invoke-virtual {v0}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->drawViewfinder()V

    :cond_0
    return-void
.end method
