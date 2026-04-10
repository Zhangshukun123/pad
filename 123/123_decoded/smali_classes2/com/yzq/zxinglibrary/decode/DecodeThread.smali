.class public final Lcom/yzq/zxinglibrary/decode/DecodeThread;
.super Ljava/lang/Thread;
.source "DecodeThread.java"


# instance fields
.field private final activity:Lcom/yzq/zxinglibrary/android/CaptureActivity;

.field private handler:Landroid/os/Handler;

.field private final handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

.field private final hints:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yzq/zxinglibrary/android/CaptureActivity;Lcom/google/zxing/ResultPointCallback;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/yzq/zxinglibrary/decode/DecodeThread;->activity:Lcom/yzq/zxinglibrary/android/CaptureActivity;

    .line 46
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/yzq/zxinglibrary/decode/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 48
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/yzq/zxinglibrary/decode/DecodeThread;->hints:Ljava/util/Hashtable;

    .line 50
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 53
    iget-object p1, p1, Lcom/yzq/zxinglibrary/android/CaptureActivity;->config:Lcom/yzq/zxinglibrary/bean/ZxingConfig;

    invoke-virtual {p1}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->isDecodeBarCode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 54
    sget-object p1, Lcom/yzq/zxinglibrary/decode/DecodeFormatManager;->ONE_D_FORMATS:Ljava/util/Set;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 56
    :cond_0
    sget-object p1, Lcom/yzq/zxinglibrary/decode/DecodeFormatManager;->DATA_MATRIX_FORMATS:Ljava/util/Set;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 57
    sget-object p1, Lcom/yzq/zxinglibrary/decode/DecodeFormatManager;->QR_CODE_FORMATS:Ljava/util/Set;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 59
    iget-object p1, p0, Lcom/yzq/zxinglibrary/decode/DecodeThread;->hints:Ljava/util/Hashtable;

    sget-object v1, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object p1, p0, Lcom/yzq/zxinglibrary/decode/DecodeThread;->hints:Ljava/util/Hashtable;

    sget-object v0, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    const-string v1, "UTF-8"

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object p1, p0, Lcom/yzq/zxinglibrary/decode/DecodeThread;->hints:Ljava/util/Hashtable;

    sget-object v0, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p1, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/yzq/zxinglibrary/decode/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :catch_0
    iget-object v0, p0, Lcom/yzq/zxinglibrary/decode/DecodeThread;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public run()V
    .locals 3

    .line 77
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 78
    new-instance v0, Lcom/yzq/zxinglibrary/decode/DecodeHandler;

    iget-object v1, p0, Lcom/yzq/zxinglibrary/decode/DecodeThread;->activity:Lcom/yzq/zxinglibrary/android/CaptureActivity;

    iget-object v2, p0, Lcom/yzq/zxinglibrary/decode/DecodeThread;->hints:Ljava/util/Hashtable;

    invoke-direct {v0, v1, v2}, Lcom/yzq/zxinglibrary/decode/DecodeHandler;-><init>(Lcom/yzq/zxinglibrary/android/CaptureActivity;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/yzq/zxinglibrary/decode/DecodeThread;->handler:Landroid/os/Handler;

    .line 79
    iget-object v0, p0, Lcom/yzq/zxinglibrary/decode/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 80
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
