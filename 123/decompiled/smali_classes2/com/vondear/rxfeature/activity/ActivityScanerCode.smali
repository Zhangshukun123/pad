.class public Lcom/vondear/rxfeature/activity/ActivityScanerCode;
.super Lcom/vondear/rxui/activity/ActivityBase;
.source "ActivityScanerCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;,
        Lcom/vondear/rxfeature/activity/ActivityScanerCode$DecodeHandler;,
        Lcom/vondear/rxfeature/activity/ActivityScanerCode$DecodeThread;,
        Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;
    }
.end annotation


# static fields
.field private static mScanerListener:Lcom/vondear/rxfeature/module/scaner/OnRxScanerListener;


# instance fields
.field private handler:Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;

.field private hasSurface:Z

.field private inactivityTimer:Lcom/vondear/rxfeature/module/scaner/decoding/InactivityTimer;

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mCropHeight:I

.field private mCropLayout:Landroid/widget/RelativeLayout;

.field private mCropWidth:I

.field private mFlashing:Z

.field private mIvLight:Landroid/widget/ImageView;

.field private mLlScanHelp:Landroid/widget/LinearLayout;

.field private multiFormatReader:Lcom/google/zxing/MultiFormatReader;

.field private rxDialogSure:Lcom/vondear/rxui/view/dialog/RxDialogSure;

.field private vibrate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/vondear/rxui/activity/ActivityBase;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mContainer:Landroid/widget/RelativeLayout;

    .line 84
    iput-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mCropLayout:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mCropWidth:I

    .line 94
    iput v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mCropHeight:I

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->vibrate:Z

    .line 109
    iput-boolean v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mFlashing:Z

    return-void
.end method

.method static synthetic access$000(Lcom/vondear/rxfeature/activity/ActivityScanerCode;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->hasSurface:Z

    return p0
.end method

.method static synthetic access$002(Lcom/vondear/rxfeature/activity/ActivityScanerCode;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->hasSurface:Z

    return p1
.end method

.method static synthetic access$100(Lcom/vondear/rxfeature/activity/ActivityScanerCode;Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->initCamera(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method static synthetic access$200(Lcom/vondear/rxfeature/activity/ActivityScanerCode;)Lcom/vondear/rxui/view/dialog/RxDialogSure;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->rxDialogSure:Lcom/vondear/rxui/view/dialog/RxDialogSure;

    return-object p0
.end method

.method static synthetic access$300(Lcom/vondear/rxfeature/activity/ActivityScanerCode;)Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->handler:Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/vondear/rxfeature/activity/ActivityScanerCode;[BII)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->decode([BII)V

    return-void
.end method

.method private decode([BII)V
    .locals 8

    .line 510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 514
    array-length v2, p1

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p3, :cond_1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p2, :cond_0

    mul-int v6, v5, p3

    add-int/2addr v6, p3

    sub-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x1

    mul-int v7, v4, p2

    add-int/2addr v7, v5

    .line 517
    aget-byte v7, p1, v7

    aput-byte v7, v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 525
    :cond_1
    invoke-static {}, Lcom/vondear/rxfeature/module/scaner/CameraManager;->get()Lcom/vondear/rxfeature/module/scaner/CameraManager;

    move-result-object p1

    invoke-virtual {p1, v2, p3, p2}, Lcom/vondear/rxfeature/module/scaner/CameraManager;->buildLuminanceSource([BII)Lcom/vondear/rxfeature/module/scaner/PlanarYUVLuminanceSource;

    move-result-object p1

    .line 526
    new-instance p2, Lcom/google/zxing/BinaryBitmap;

    new-instance p3, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {p3, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {p2, p3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 528
    :try_start_0
    iget-object p3, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p3, p2}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p2
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    iget-object p3, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p3}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_2

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 533
    throw p1

    .line 532
    :catch_0
    iget-object p2, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    const/4 p2, 0x0

    :goto_2
    if-eqz p2, :cond_2

    .line 536
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 537
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found barcode ("

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms):\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ContentValues"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object p3, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->handler:Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;

    sget v0, Lcom/vondear/rxfeature/R$id;->decode_succeeded:I

    invoke-static {p3, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 539
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 540
    invoke-virtual {p1}, Lcom/vondear/rxfeature/module/scaner/PlanarYUVLuminanceSource;->renderCroppedGreyscaleBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "barcode_bitmap"

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 541
    invoke-virtual {p2, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 543
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 545
    :cond_2
    iget-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->handler:Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;

    sget p2, Lcom/vondear/rxfeature/R$id;->decode_failed:I

    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 546
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_3
    return-void
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 308
    :try_start_0
    invoke-static {}, Lcom/vondear/rxfeature/module/scaner/CameraManager;->get()Lcom/vondear/rxfeature/module/scaner/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vondear/rxfeature/module/scaner/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V

    .line 309
    invoke-static {}, Lcom/vondear/rxfeature/module/scaner/CameraManager;->get()Lcom/vondear/rxfeature/module/scaner/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vondear/rxfeature/module/scaner/CameraManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object p1

    .line 310
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    iget v1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 311
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-direct {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 312
    iget-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mCropLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    mul-int p1, p1, v0

    iget-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    div-int/2addr p1, v0

    .line 313
    iget-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mCropLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    mul-int v0, v0, v1

    iget-object v1, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    div-int/2addr v0, v1

    .line 314
    invoke-virtual {p0, p1}, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->setCropWidth(I)V

    .line 315
    invoke-virtual {p0, v0}, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->setCropHeight(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    iget-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->handler:Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;

    if-nez p1, :cond_0

    .line 320
    new-instance p1, Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;

    invoke-direct {p1, p0}, Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;-><init>(Lcom/vondear/rxfeature/activity/ActivityScanerCode;)V

    iput-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->handler:Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;

    :catch_0
    :cond_0
    return-void
.end method

.method private initDecode()V
    .locals 6

    .line 153
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 156
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .line 158
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 159
    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 162
    new-instance v2, Ljava/util/Vector;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    .line 163
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v3, Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/Vector;-><init>(I)V

    .line 169
    invoke-virtual {v3, v2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 170
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v2, Ljava/util/Vector;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Ljava/util/Vector;-><init>(I)V

    .line 175
    sget-object v5, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5, v4}, Ljava/util/Vector;-><init>(I)V

    .line 177
    sget-object v4, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {v1, v3}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 181
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 182
    invoke-virtual {v1, v5}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 184
    :cond_0
    sget-object v2, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v1, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v1, v0}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    return-void
.end method

.method private initDialogResult(Lcom/google/zxing/Result;)V
    .locals 3

    .line 361
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    .line 362
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p1

    .line 364
    iget-object v1, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->rxDialogSure:Lcom/vondear/rxui/view/dialog/RxDialogSure;

    if-nez v1, :cond_0

    .line 366
    new-instance v1, Lcom/vondear/rxui/view/dialog/RxDialogSure;

    iget-object v2, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mContext:Lcom/vondear/rxui/activity/ActivityBase;

    invoke-direct {v1, v2}, Lcom/vondear/rxui/view/dialog/RxDialogSure;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->rxDialogSure:Lcom/vondear/rxui/view/dialog/RxDialogSure;

    .line 369
    :cond_0
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1, v0}, Lcom/google/zxing/BarcodeFormat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    iget-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->rxDialogSure:Lcom/vondear/rxui/view/dialog/RxDialogSure;

    const-string v1, "\u4e8c\u7ef4\u7801\u626b\u63cf\u7ed3\u679c"

    invoke-virtual {v0, v1}, Lcom/vondear/rxui/view/dialog/RxDialogSure;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 371
    :cond_1
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1, v0}, Lcom/google/zxing/BarcodeFormat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 372
    iget-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->rxDialogSure:Lcom/vondear/rxui/view/dialog/RxDialogSure;

    const-string v1, "\u6761\u5f62\u7801\u626b\u63cf\u7ed3\u679c"

    invoke-virtual {v0, v1}, Lcom/vondear/rxui/view/dialog/RxDialogSure;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :cond_2
    iget-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->rxDialogSure:Lcom/vondear/rxui/view/dialog/RxDialogSure;

    const-string v1, "\u626b\u63cf\u7ed3\u679c"

    invoke-virtual {v0, v1}, Lcom/vondear/rxui/view/dialog/RxDialogSure;->setTitle(Ljava/lang/String;)V

    .line 377
    :goto_0
    iget-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->rxDialogSure:Lcom/vondear/rxui/view/dialog/RxDialogSure;

    invoke-virtual {v0, p1}, Lcom/vondear/rxui/view/dialog/RxDialogSure;->setContent(Ljava/lang/String;)V

    .line 378
    iget-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->rxDialogSure:Lcom/vondear/rxui/view/dialog/RxDialogSure;

    new-instance v0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$2;

    invoke-direct {v0, p0}, Lcom/vondear/rxfeature/activity/ActivityScanerCode$2;-><init>(Lcom/vondear/rxfeature/activity/ActivityScanerCode;)V

    invoke-virtual {p1, v0}, Lcom/vondear/rxui/view/dialog/RxDialogSure;->setSureListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->rxDialogSure:Lcom/vondear/rxui/view/dialog/RxDialogSure;

    new-instance v0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$3;

    invoke-direct {v0, p0}, Lcom/vondear/rxfeature/activity/ActivityScanerCode$3;-><init>(Lcom/vondear/rxfeature/activity/ActivityScanerCode;)V

    invoke-virtual {p1, v0}, Lcom/vondear/rxui/view/dialog/RxDialogSure;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 394
    iget-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->rxDialogSure:Lcom/vondear/rxui/view/dialog/RxDialogSure;

    invoke-virtual {p1}, Lcom/vondear/rxui/view/dialog/RxDialogSure;->isShowing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 395
    iget-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->rxDialogSure:Lcom/vondear/rxui/view/dialog/RxDialogSure;

    invoke-virtual {p1}, Lcom/vondear/rxui/view/dialog/RxDialogSure;->show()V

    .line 398
    :cond_3
    iget-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mContext:Lcom/vondear/rxui/activity/ActivityBase;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mContext:Lcom/vondear/rxui/activity/ActivityBase;

    const-string v2, "SCAN_CODE"

    invoke-static {v1, v2}, Lcom/vondear/rxtool/RxSPTool;->getContent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vondear/rxtool/RxDataTool;->stringToInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/vondear/rxtool/RxSPTool;->putContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initPermission()V
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mContext:Lcom/vondear/rxui/activity/ActivityBase;

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mContext:Lcom/vondear/rxui/activity/ActivityBase;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 253
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mContext:Lcom/vondear/rxui/activity/ActivityBase;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private initScanerAnimation()V
    .locals 1

    .line 259
    sget v0, Lcom/vondear/rxfeature/R$id;->capture_scan_line:I

    invoke-virtual {p0, v0}, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 260
    invoke-static {v0}, Lcom/vondear/rxtool/RxAnimationTool;->ScaleUpDowm(Landroid/view/View;)V

    return-void
.end method

.method private initView()V
    .locals 1

    .line 242
    sget v0, Lcom/vondear/rxfeature/R$id;->top_mask:I

    invoke-virtual {p0, v0}, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mIvLight:Landroid/widget/ImageView;

    .line 243
    sget v0, Lcom/vondear/rxfeature/R$id;->capture_containter:I

    invoke-virtual {p0, v0}, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mContainer:Landroid/widget/RelativeLayout;

    .line 244
    sget v0, Lcom/vondear/rxfeature/R$id;->capture_crop_layout:I

    invoke-virtual {p0, v0}, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mCropLayout:Landroid/widget/RelativeLayout;

    .line 245
    sget v0, Lcom/vondear/rxfeature/R$id;->ll_scan_help:I

    invoke-virtual {p0, v0}, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mLlScanHelp:Landroid/widget/LinearLayout;

    return-void
.end method

.method private light()V
    .locals 1

    .line 294
    iget-boolean v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mFlashing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 295
    iput-boolean v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mFlashing:Z

    .line 297
    invoke-static {}, Lcom/vondear/rxfeature/module/scaner/CameraManager;->get()Lcom/vondear/rxfeature/module/scaner/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vondear/rxfeature/module/scaner/CameraManager;->openLight()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 299
    iput-boolean v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mFlashing:Z

    .line 301
    invoke-static {}, Lcom/vondear/rxfeature/module/scaner/CameraManager;->get()Lcom/vondear/rxfeature/module/scaner/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vondear/rxfeature/module/scaner/CameraManager;->offLight()V

    :goto_0
    return-void
.end method

.method public static setScanerListener(Lcom/vondear/rxfeature/module/scaner/OnRxScanerListener;)V
    .locals 0

    .line 130
    sput-object p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mScanerListener:Lcom/vondear/rxfeature/module/scaner/OnRxScanerListener;

    return-void
.end method


# virtual methods
.method public btn(Landroid/view/View;)V
    .locals 1

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 284
    sget v0, Lcom/vondear/rxfeature/R$id;->top_mask:I

    if-ne p1, v0, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->light()V

    goto :goto_0

    .line 286
    :cond_0
    sget v0, Lcom/vondear/rxfeature/R$id;->top_back:I

    if-ne p1, v0, :cond_1

    .line 287
    invoke-virtual {p0}, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->finish()V

    goto :goto_0

    .line 288
    :cond_1
    sget v0, Lcom/vondear/rxfeature/R$id;->top_openpicture:I

    if-ne p1, v0, :cond_2

    .line 289
    iget-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mContext:Lcom/vondear/rxui/activity/ActivityBase;

    invoke-static {p1}, Lcom/vondear/rxtool/RxPhotoTool;->openLocalImage(Landroid/app/Activity;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getCropHeight()I
    .locals 1

    .line 274
    iget v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mCropHeight:I

    return v0
.end method

.method public getCropWidth()I
    .locals 1

    .line 264
    iget v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mCropWidth:I

    return v0
.end method

.method public handleDecode(Lcom/google/zxing/Result;)V
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->inactivityTimer:Lcom/vondear/rxfeature/module/scaner/decoding/InactivityTimer;

    invoke-virtual {v0}, Lcom/vondear/rxfeature/module/scaner/decoding/InactivityTimer;->onActivity()V

    .line 404
    iget-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mContext:Lcom/vondear/rxui/activity/ActivityBase;

    iget-boolean v1, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->vibrate:Z

    invoke-static {v0, v1}, Lcom/vondear/rxtool/RxBeepTool;->playBeep(Landroid/app/Activity;Z)V

    .line 406
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u4e8c\u7ef4\u7801/\u6761\u5f62\u7801 \u626b\u63cf\u7ed3\u679c"

    .line 407
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    sget-object v1, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mScanerListener:Lcom/vondear/rxfeature/module/scaner/OnRxScanerListener;

    if-nez v1, :cond_0

    .line 409
    invoke-static {v0}, Lcom/vondear/rxtool/view/RxToast;->success(Ljava/lang/String;)V

    .line 410
    invoke-direct {p0, p1}, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->initDialogResult(Lcom/google/zxing/Result;)V

    goto :goto_0

    :cond_0
    const-string v0, "From to Camera"

    .line 412
    invoke-interface {v1, v0, p1}, Lcom/vondear/rxfeature/module/scaner/OnRxScanerListener;->onSuccess(Ljava/lang/String;Lcom/google/zxing/Result;)V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 328
    invoke-super {p0, p1, p2, p3}, Lcom/vondear/rxui/activity/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    .line 330
    invoke-virtual {p0}, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 332
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    .line 335
    :try_start_0
    invoke-static {p1, p2}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 338
    invoke-static {p1}, Lcom/vondear/rxfeature/tool/RxQrBarTool;->decodeFromPhoto(Landroid/graphics/Bitmap;)Lcom/google/zxing/Result;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "From to Picture"

    if-eqz p1, :cond_1

    .line 340
    :try_start_1
    sget-object p3, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mScanerListener:Lcom/vondear/rxfeature/module/scaner/OnRxScanerListener;

    if-nez p3, :cond_0

    .line 341
    invoke-direct {p0, p1}, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->initDialogResult(Lcom/google/zxing/Result;)V

    goto :goto_0

    .line 343
    :cond_0
    sget-object p3, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mScanerListener:Lcom/vondear/rxfeature/module/scaner/OnRxScanerListener;

    invoke-interface {p3, p2, p1}, Lcom/vondear/rxfeature/module/scaner/OnRxScanerListener;->onSuccess(Ljava/lang/String;Lcom/google/zxing/Result;)V

    goto :goto_0

    .line 346
    :cond_1
    sget-object p1, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mScanerListener:Lcom/vondear/rxfeature/module/scaner/OnRxScanerListener;

    if-nez p1, :cond_2

    const-string p1, "\u56fe\u7247\u8bc6\u522b\u5931\u8d25."

    .line 347
    invoke-static {p1}, Lcom/vondear/rxtool/view/RxToast;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :cond_2
    sget-object p1, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mScanerListener:Lcom/vondear/rxfeature/module/scaner/OnRxScanerListener;

    const-string p3, "\u56fe\u7247\u8bc6\u522b\u5931\u8d25"

    invoke-interface {p1, p2, p3}, Lcom/vondear/rxfeature/module/scaner/OnRxScanerListener;->onFail(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 353
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 135
    invoke-super {p0, p1}, Lcom/vondear/rxui/activity/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-static {p0}, Lcom/vondear/rxtool/RxBarTool;->setNoTitle(Landroid/app/Activity;)V

    .line 137
    sget p1, Lcom/vondear/rxfeature/R$layout;->activity_scaner_code:I

    invoke-virtual {p0, p1}, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->setContentView(I)V

    .line 138
    invoke-static {p0}, Lcom/vondear/rxtool/RxBarTool;->setTransparentStatusBar(Landroid/app/Activity;)V

    .line 140
    invoke-direct {p0}, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->initDecode()V

    .line 141
    invoke-direct {p0}, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->initView()V

    .line 143
    invoke-direct {p0}, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->initPermission()V

    .line 145
    invoke-direct {p0}, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->initScanerAnimation()V

    .line 147
    iget-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mContext:Lcom/vondear/rxui/activity/ActivityBase;

    invoke-static {p1}, Lcom/vondear/rxfeature/module/scaner/CameraManager;->init(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 148
    iput-boolean p1, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->hasSurface:Z

    .line 149
    new-instance p1, Lcom/vondear/rxfeature/module/scaner/decoding/InactivityTimer;

    invoke-direct {p1, p0}, Lcom/vondear/rxfeature/module/scaner/decoding/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->inactivityTimer:Lcom/vondear/rxfeature/module/scaner/decoding/InactivityTimer;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->inactivityTimer:Lcom/vondear/rxfeature/module/scaner/decoding/InactivityTimer;

    invoke-virtual {v0}, Lcom/vondear/rxfeature/module/scaner/decoding/InactivityTimer;->shutdown()V

    const/4 v0, 0x0

    .line 237
    sput-object v0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mScanerListener:Lcom/vondear/rxfeature/module/scaner/OnRxScanerListener;

    .line 238
    invoke-super {p0}, Lcom/vondear/rxui/activity/ActivityBase;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 225
    invoke-super {p0}, Lcom/vondear/rxui/activity/ActivityBase;->onPause()V

    .line 226
    iget-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->handler:Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;->quitSynchronously()V

    .line 228
    iget-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->handler:Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 229
    iput-object v1, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->handler:Lcom/vondear/rxfeature/activity/ActivityScanerCode$CaptureActivityHandler;

    .line 231
    :cond_0
    invoke-static {}, Lcom/vondear/rxfeature/module/scaner/CameraManager;->get()Lcom/vondear/rxfeature/module/scaner/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vondear/rxfeature/module/scaner/CameraManager;->closeDriver()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 192
    invoke-super {p0}, Lcom/vondear/rxui/activity/ActivityBase;->onResume()V

    .line 193
    sget v0, Lcom/vondear/rxfeature/R$id;->capture_preview:I

    invoke-virtual {p0, v0}, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 194
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 195
    iget-boolean v1, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->hasSurface:Z

    if-eqz v1, :cond_0

    .line 197
    invoke-direct {p0, v0}, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->initCamera(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 199
    :cond_0
    new-instance v1, Lcom/vondear/rxfeature/activity/ActivityScanerCode$1;

    invoke-direct {v1, p0}, Lcom/vondear/rxfeature/activity/ActivityScanerCode$1;-><init>(Lcom/vondear/rxfeature/activity/ActivityScanerCode;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v1, 0x3

    .line 219
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    :goto_0
    return-void
.end method

.method public setCropHeight(I)V
    .locals 0

    .line 278
    iput p1, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mCropHeight:I

    .line 279
    sput p1, Lcom/vondear/rxfeature/module/scaner/CameraManager;->FRAME_HEIGHT:I

    return-void
.end method

.method public setCropWidth(I)V
    .locals 0

    .line 268
    iput p1, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->mCropWidth:I

    .line 269
    sput p1, Lcom/vondear/rxfeature/module/scaner/CameraManager;->FRAME_WIDTH:I

    return-void
.end method
