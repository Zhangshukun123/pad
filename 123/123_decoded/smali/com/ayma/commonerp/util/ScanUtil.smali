.class public Lcom/ayma/commonerp/util/ScanUtil;
.super Ljava/lang/Object;
.source "ScanUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;,
        Lcom/ayma/commonerp/util/ScanUtil$ScanReceiver;
    }
.end annotation


# static fields
.field private static final ALPS_BARCODE_TYPE:Ljava/lang/String; = "SCAN_BARCODE_TYPE"

.field private static final ALPS_BARCODE_TYPE_NAME:Ljava/lang/String; = "SCAN_BARCODE_TYPE_NAME"

.field private static final ALPS_RECEIVE_ACTION:Ljava/lang/String; = "scan.rcv.message"

.field private static final ALPS_RECEIVE_BARCODE:Ljava/lang/String; = "barocode"

.field private static final ALPS_RECEIVE_LENGTH:Ljava/lang/String; = "length"

.field private static final IDATA_RECEIVE_ACTION:Ljava/lang/String; = "android.intent.action.SCANRESULT"

.field private static final IDATA_RECEIVE_DATA:Ljava/lang/String; = "value"

.field private static final NEWLAND_RECEIVE_ACTION:Ljava/lang/String; = "nlscan.action.SCANNER_RESULT"

.field private static final NEWLAND_RECEIVE_DATA_1:Ljava/lang/String; = "SCAN_BARCODE1"

.field private static final NEWLAND_RECEIVE_DATA_2:Ljava/lang/String; = "SCAN_BARCODE2"

.field private static final PDA_ALPS_PDA:Ljava/lang/String; = "pda"

.field private static final PDA_EA560:Ljava/lang/String; = "ea560"

.field private static final PDA_EA602:Ljava/lang/String; = "ea602"

.field private static final PDA_EA630:Ljava/lang/String; = "ea630"

.field private static final PDA_IDATA_T1:Ljava/lang/String; = "t1"

.field private static final PDA_IDATA_T3:Ljava/lang/String; = "t3"

.field private static final PDA_IDATA_TAM:Ljava/lang/String; = "idata tam"

.field private static final PDA_IDATA_TAM3:Ljava/lang/String; = "tam3"

.field private static final PDA_IDATA_TAM_2:Ljava/lang/String; = "tam"

.field private static final PDA_NEWLAND_NLS_MT_69:Ljava/lang/String; = "nls-mt69"

.field private static final PDA_PA720:Ljava/lang/String; = "pa720"

.field private static final RECEIVE_ACTION_EA560_602_1:Ljava/lang/String; = "android.intent.ACTION_DECODE_DATA"

.field private static final RECEIVE_ACTION_EA560_602_2:Ljava/lang/String; = "barcode_string"

.field private static final RECEIVE_ACTION_EA630:Ljava/lang/String; = "unitech.scanservice.data"

.field private static final RECEIVE_ACTION_PA720:Ljava/lang/String; = "unitech.scanservice.data"

.field private static final RECEIVE_DATA_EA560_602_CODE:Ljava/lang/String; = "barcode"

.field private static final RECEIVE_DATA_EA560_602_LENGTH:Ljava/lang/String; = "length"

.field private static final RECEIVE_DATA_EA630:Ljava/lang/String; = "text"

.field private static final RECEIVE_DATA_PA720:Ljava/lang/String; = "text"

.field private static final SCAN2KEY_SETTING:Ljava/lang/String; = "unitech.scanservice.scan2key_setting"

.field private static final SCAN_SETTING:Ljava/lang/String; = "unitech.scanservice.setting"

.field private static final TAG:Ljava/lang/String; = "ScanUtil"


# instance fields
.field private alpsScanDevice:Landroid/device/ScanDevice;

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private intentFilter:Landroid/content/IntentFilter;

.field private isRegister:Z

.field private pdaType:Ljava/lang/String;

.field private receiver:Lcom/ayma/commonerp/util/ScanUtil$ScanReceiver;

.field private scanner:Lcom/ayma/commonerp/util/ScannerInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/ayma/commonerp/util/ScanUtil;->isRegister:Z

    .line 123
    iput-object p1, p0, Lcom/ayma/commonerp/util/ScanUtil;->context:Landroid/content/Context;

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ayma/commonerp/util/ScanUtil;->handler:Landroid/os/Handler;

    .line 125
    iput-object p2, p0, Lcom/ayma/commonerp/util/ScanUtil;->pdaType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/util/ScanUtil;)Landroid/content/Context;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/ayma/commonerp/util/ScanUtil;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/util/ScanUtil;)Ljava/lang/String;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/ayma/commonerp/util/ScanUtil;->pdaType:Ljava/lang/String;

    return-object p0
.end method

.method private enableAllSymbology()V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScanUtil;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 353
    :cond_0
    new-instance v1, Lcom/ayma/commonerp/util/ScanUtil$10;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/util/ScanUtil$10;-><init>(Lcom/ayma/commonerp/util/ScanUtil;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initiDataScanner()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScanUtil;->scanner:Lcom/ayma/commonerp/util/ScannerInterface;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/ayma/commonerp/util/ScannerInterface;

    iget-object v1, p0, Lcom/ayma/commonerp/util/ScanUtil;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/util/ScannerInterface;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ayma/commonerp/util/ScanUtil;->scanner:Lcom/ayma/commonerp/util/ScannerInterface;

    :cond_0
    return-void
.end method


# virtual methods
.method public closeScanService()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScanUtil;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 156
    :cond_0
    new-instance v1, Lcom/ayma/commonerp/util/ScanUtil$3;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/util/ScanUtil$3;-><init>(Lcom/ayma/commonerp/util/ScanUtil;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 457
    iput-object v0, p0, Lcom/ayma/commonerp/util/ScanUtil;->receiver:Lcom/ayma/commonerp/util/ScanUtil$ScanReceiver;

    .line 458
    iput-object v0, p0, Lcom/ayma/commonerp/util/ScanUtil;->intentFilter:Landroid/content/IntentFilter;

    .line 459
    iput-object v0, p0, Lcom/ayma/commonerp/util/ScanUtil;->context:Landroid/content/Context;

    return-void
.end method

.method public generateIntentFilter(Ljava/lang/String;Landroid/content/Context;)Landroid/content/IntentFilter;
    .locals 3

    .line 383
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p2, "idata tam"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto/16 :goto_1

    :sswitch_1
    const-string p2, "pa720"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_2
    const-string p2, "ea630"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    goto :goto_1

    :sswitch_3
    const-string p2, "ea602"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_4
    const-string p2, "ea560"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_5
    const-string p2, "tam3"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_6
    const-string p2, "tam"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_7
    const-string p2, "pda"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    goto :goto_1

    :sswitch_8
    const-string p2, "t3"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_9
    const-string p2, "t1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_a
    const-string p2, "nls-mt69"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-string p2, "unitech.scanservice.data"

    packed-switch p1, :pswitch_data_0

    .line 431
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 432
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0, v2}, Lcom/ayma/commonerp/util/ScanUtil;->setScan2Key(Z)V

    .line 435
    invoke-direct {p0}, Lcom/ayma/commonerp/util/ScanUtil;->enableAllSymbology()V

    .line 436
    invoke-virtual {p0, v1}, Lcom/ayma/commonerp/util/ScanUtil;->setEan13CheckDigit(Z)V

    .line 438
    invoke-virtual {p0, v1}, Lcom/ayma/commonerp/util/ScanUtil;->setEa630QrCode(Z)V

    goto :goto_3

    .line 417
    :pswitch_0
    :try_start_0
    iget-object p1, p0, Lcom/ayma/commonerp/util/ScanUtil;->alpsScanDevice:Landroid/device/ScanDevice;

    if-nez p1, :cond_1

    .line 418
    new-instance p1, Landroid/device/ScanDevice;

    invoke-direct {p1}, Landroid/device/ScanDevice;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/util/ScanUtil;->alpsScanDevice:Landroid/device/ScanDevice;

    .line 420
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/util/ScanUtil;->alpsScanDevice:Landroid/device/ScanDevice;

    invoke-virtual {p1}, Landroid/device/ScanDevice;->getOutScanMode()I

    move-result p1

    if-eqz p1, :cond_2

    .line 421
    iget-object p1, p0, Lcom/ayma/commonerp/util/ScanUtil;->alpsScanDevice:Landroid/device/ScanDevice;

    invoke-virtual {p1, v2}, Landroid/device/ScanDevice;->setOutScanMode(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 424
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 426
    :cond_2
    :goto_2
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "scan.rcv.message"

    .line 427
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_3

    .line 411
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/util/ScanUtil;->setNewLandOutputMode(I)V

    .line 412
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "nlscan.action.SCANNER_RESULT"

    .line 413
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_3

    .line 406
    :pswitch_2
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 407
    invoke-virtual {p0}, Lcom/ayma/commonerp/util/ScanUtil;->setiDataBroadcastOutput()V

    const-string p2, "android.intent.action.SCANRESULT"

    .line 408
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_3

    .line 393
    :pswitch_3
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 394
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0, v2}, Lcom/ayma/commonerp/util/ScanUtil;->setScan2Key(Z)V

    .line 397
    invoke-direct {p0}, Lcom/ayma/commonerp/util/ScanUtil;->enableAllSymbology()V

    .line 398
    invoke-virtual {p0, v1}, Lcom/ayma/commonerp/util/ScanUtil;->setEan13CheckDigit(Z)V

    goto :goto_3

    .line 386
    :pswitch_4
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.ACTION_DECODE_DATA"

    .line 387
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "barcode_string"

    .line 388
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0, v2}, Lcom/ayma/commonerp/util/ScanUtil;->setScan2Key(Z)V

    .line 390
    invoke-virtual {p0, v1}, Lcom/ayma/commonerp/util/ScanUtil;->setEan13CheckDigit(Z)V

    :goto_3
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x453300fe -> :sswitch_a
        0xe3d -> :sswitch_9
        0xe3f -> :sswitch_8
        0x1b0ed -> :sswitch_7
        0x1bfa0 -> :sswitch_6
        0x363493 -> :sswitch_5
        0x5bc2b93 -> :sswitch_4
        0x5bc2e9c -> :sswitch_3
        0x5bc2ef7 -> :sswitch_2
        0x6573524 -> :sswitch_1
        0x3a9cdd93 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerScanReceiver(Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;)V
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScanUtil;->receiver:Lcom/ayma/commonerp/util/ScanUtil$ScanReceiver;

    if-nez v0, :cond_0

    .line 368
    new-instance v0, Lcom/ayma/commonerp/util/ScanUtil$ScanReceiver;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/util/ScanUtil$ScanReceiver;-><init>(Lcom/ayma/commonerp/util/ScanUtil;Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;)V

    iput-object v0, p0, Lcom/ayma/commonerp/util/ScanUtil;->receiver:Lcom/ayma/commonerp/util/ScanUtil$ScanReceiver;

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScanUtil;->intentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_2

    .line 371
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScanUtil;->pdaType:Ljava/lang/String;

    iget-object v1, p0, Lcom/ayma/commonerp/util/ScanUtil;->context:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/ayma/commonerp/util/ScanUtil;->generateIntentFilter(Ljava/lang/String;Landroid/content/Context;)Landroid/content/IntentFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/util/ScanUtil;->intentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    const-string v0, "\u6b64\u578b\u53f7\u672a\u9002\u914d"

    .line 373
    invoke-interface {p1, v0}, Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;->fail(Ljava/lang/String;)V

    return-void

    .line 376
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/util/ScanUtil;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/ayma/commonerp/util/ScanUtil;->receiver:Lcom/ayma/commonerp/util/ScanUtil$ScanReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 377
    iput-boolean p1, p0, Lcom/ayma/commonerp/util/ScanUtil;->isRegister:Z

    :cond_2
    return-void
.end method

.method public restartScanService()V
    .locals 0

    .line 173
    invoke-virtual {p0}, Lcom/ayma/commonerp/util/ScanUtil;->closeScanService()V

    .line 174
    invoke-virtual {p0}, Lcom/ayma/commonerp/util/ScanUtil;->startScanService()V

    return-void
.end method

.method public setEa630QrCode(Z)V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScanUtil;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 324
    :cond_0
    new-instance v1, Lcom/ayma/commonerp/util/ScanUtil$9;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/util/ScanUtil$9;-><init>(Lcom/ayma/commonerp/util/ScanUtil;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setEan13(Z)V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScanUtil;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 208
    :cond_0
    new-instance v1, Lcom/ayma/commonerp/util/ScanUtil$5;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/util/ScanUtil$5;-><init>(Lcom/ayma/commonerp/util/ScanUtil;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setEan13CheckDigit(Z)V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScanUtil;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 236
    :cond_0
    new-instance v1, Lcom/ayma/commonerp/util/ScanUtil$6;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/util/ScanUtil$6;-><init>(Lcom/ayma/commonerp/util/ScanUtil;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setInverse1DInverseAutodetect()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScanUtil;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 288
    :cond_0
    new-instance v1, Lcom/ayma/commonerp/util/ScanUtil$8;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/util/ScanUtil$8;-><init>(Lcom/ayma/commonerp/util/ScanUtil;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setNewLandOutputMode(I)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScanUtil;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    new-instance v1, Lcom/ayma/commonerp/util/ScanUtil$1;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/util/ScanUtil$1;-><init>(Lcom/ayma/commonerp/util/ScanUtil;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setPa720PQrCode(Z)V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScanUtil;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 264
    :cond_0
    new-instance v1, Lcom/ayma/commonerp/util/ScanUtil$7;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/util/ScanUtil$7;-><init>(Lcom/ayma/commonerp/util/ScanUtil;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setScan2Key(Z)V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScanUtil;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 181
    :cond_0
    new-instance v1, Lcom/ayma/commonerp/util/ScanUtil$4;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/util/ScanUtil$4;-><init>(Lcom/ayma/commonerp/util/ScanUtil;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setiDataBroadcastOutput()V
    .locals 1

    const/4 v0, 0x1

    .line 105
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/util/ScanUtil;->setiDataOutputMode(I)V

    return-void
.end method

.method public setiDataOutputMode(I)V
    .locals 1

    .line 115
    invoke-direct {p0}, Lcom/ayma/commonerp/util/ScanUtil;->initiDataScanner()V

    .line 116
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScanUtil;->scanner:Lcom/ayma/commonerp/util/ScannerInterface;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/util/ScannerInterface;->setOutputMode(I)V

    return-void
.end method

.method public startScanService()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScanUtil;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    new-instance v1, Lcom/ayma/commonerp/util/ScanUtil$2;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/util/ScanUtil$2;-><init>(Lcom/ayma/commonerp/util/ScanUtil;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterScanReceiver()V
    .locals 3

    .line 445
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScanUtil;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 446
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 447
    iput-object v0, p0, Lcom/ayma/commonerp/util/ScanUtil;->handler:Landroid/os/Handler;

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScanUtil;->context:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/ayma/commonerp/util/ScanUtil;->receiver:Lcom/ayma/commonerp/util/ScanUtil$ScanReceiver;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/ayma/commonerp/util/ScanUtil;->isRegister:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 452
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 453
    iput-boolean v0, p0, Lcom/ayma/commonerp/util/ScanUtil;->isRegister:Z

    :cond_2
    :goto_0
    return-void
.end method
