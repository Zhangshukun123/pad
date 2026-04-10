.class public final Lcom/yzq/zxinglibrary/decode/DecodeHandler;
.super Landroid/os/Handler;
.source "DecodeHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lcom/yzq/zxinglibrary/android/CaptureActivity;

.field private final multiFormatReader:Lcom/google/zxing/MultiFormatReader;

.field private running:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/yzq/zxinglibrary/decode/DecodeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yzq/zxinglibrary/decode/DecodeHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/yzq/zxinglibrary/android/CaptureActivity;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yzq/zxinglibrary/android/CaptureActivity;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/yzq/zxinglibrary/decode/DecodeHandler;->running:Z

    .line 44
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/yzq/zxinglibrary/decode/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 45
    invoke-virtual {v0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 46
    iput-object p1, p0, Lcom/yzq/zxinglibrary/decode/DecodeHandler;->activity:Lcom/yzq/zxinglibrary/android/CaptureActivity;

    return-void
.end method

.method private decode([BII)V
    .locals 6

    .line 74
    array-length v0, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p2, :cond_0

    mul-int v4, v3, p3

    add-int/2addr v4, p3

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    mul-int v5, v2, p2

    add-int/2addr v5, v3

    .line 77
    aget-byte v5, p1, v5

    aput-byte v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_1
    iget-object p1, p0, Lcom/yzq/zxinglibrary/decode/DecodeHandler;->activity:Lcom/yzq/zxinglibrary/android/CaptureActivity;

    invoke-virtual {p1}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->getCameraManager()Lcom/yzq/zxinglibrary/camera/CameraManager;

    move-result-object p1

    .line 86
    invoke-virtual {p1, v0, p3, p2}, Lcom/yzq/zxinglibrary/camera/CameraManager;->buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 90
    new-instance p2, Lcom/google/zxing/BinaryBitmap;

    new-instance p3, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {p3, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {p2, p3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 93
    :try_start_0
    iget-object p1, p0, Lcom/yzq/zxinglibrary/decode/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p1, p2}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    iget-object p2, p0, Lcom/yzq/zxinglibrary/decode/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_2

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/yzq/zxinglibrary/decode/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 99
    throw p1

    .line 98
    :catch_0
    iget-object p1, p0, Lcom/yzq/zxinglibrary/decode/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p1}, Lcom/google/zxing/MultiFormatReader;->reset()V

    :cond_2
    const/4 p1, 0x0

    .line 104
    :goto_2
    iget-object p2, p0, Lcom/yzq/zxinglibrary/decode/DecodeHandler;->activity:Lcom/yzq/zxinglibrary/android/CaptureActivity;

    invoke-virtual {p2}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->getHandler()Landroid/os/Handler;

    move-result-object p2

    if-eqz p1, :cond_3

    if-eqz p2, :cond_4

    const/4 p3, 0x3

    .line 108
    invoke-static {p2, p3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    const/4 p1, 0x2

    .line 114
    invoke-static {p2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 51
    iget-boolean v0, p0, Lcom/yzq/zxinglibrary/decode/DecodeHandler;->running:Z

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x5

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Lcom/yzq/zxinglibrary/decode/DecodeHandler;->running:Z

    .line 61
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 57
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, p1}, Lcom/yzq/zxinglibrary/decode/DecodeHandler;->decode([BII)V

    :goto_0
    return-void
.end method
