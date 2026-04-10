.class public Lcom/yzq/zxinglibrary/decode/DecodeImgThread;
.super Ljava/lang/Thread;
.source "DecodeImgThread.java"


# instance fields
.field private callback:Lcom/yzq/zxinglibrary/decode/DecodeImgCallback;

.field private imgPath:Ljava/lang/String;

.field private scanBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yzq/zxinglibrary/decode/DecodeImgCallback;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/yzq/zxinglibrary/decode/DecodeImgThread;->imgPath:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/yzq/zxinglibrary/decode/DecodeImgThread;->callback:Lcom/yzq/zxinglibrary/decode/DecodeImgCallback;

    return-void
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3

    .line 113
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 114
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    shr-int/2addr p0, v1

    if-lt p0, p1, :cond_0

    shr-int/2addr v0, v1

    if-lt v0, p2, :cond_0

    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private static getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2

    .line 93
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 94
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 95
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 96
    invoke-static {v0, p1, p2}, Lcom/yzq/zxinglibrary/decode/DecodeImgThread;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    .line 97
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 98
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 36
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 38
    iget-object v0, p0, Lcom/yzq/zxinglibrary/decode/DecodeImgThread;->imgPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yzq/zxinglibrary/decode/DecodeImgThread;->callback:Lcom/yzq/zxinglibrary/decode/DecodeImgCallback;

    if-nez v0, :cond_0

    goto :goto_1

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/yzq/zxinglibrary/decode/DecodeImgThread;->imgPath:Ljava/lang/String;

    const/16 v1, 0x190

    invoke-static {v0, v1, v1}, Lcom/yzq/zxinglibrary/decode/DecodeImgThread;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44
    new-instance v1, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v1}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    .line 46
    new-instance v2, Ljava/util/Hashtable;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/Hashtable;-><init>(I)V

    .line 48
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 52
    sget-object v4, Lcom/yzq/zxinglibrary/decode/DecodeFormatManager;->ONE_D_FORMATS:Ljava/util/Set;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 53
    sget-object v4, Lcom/yzq/zxinglibrary/decode/DecodeFormatManager;->QR_CODE_FORMATS:Ljava/util/Set;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 54
    sget-object v4, Lcom/yzq/zxinglibrary/decode/DecodeFormatManager;->DATA_MATRIX_FORMATS:Ljava/util/Set;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 56
    sget-object v4, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v2, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-virtual {v1, v2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    const/4 v2, 0x0

    .line 64
    :try_start_0
    new-instance v3, Lcom/google/zxing/BinaryBitmap;

    new-instance v4, Lcom/google/zxing/common/HybridBinarizer;

    new-instance v5, Lcom/yzq/zxinglibrary/decode/BitmapLuminanceSource;

    invoke-direct {v5, v0}, Lcom/yzq/zxinglibrary/decode/BitmapLuminanceSource;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v4, v5}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    invoke-virtual {v1, v3}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v2

    const-string v0, "\u89e3\u6790\u7ed3\u679c"

    .line 66
    invoke-virtual {v2}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz v2, :cond_1

    .line 74
    iget-object v0, p0, Lcom/yzq/zxinglibrary/decode/DecodeImgThread;->callback:Lcom/yzq/zxinglibrary/decode/DecodeImgCallback;

    invoke-interface {v0, v2}, Lcom/yzq/zxinglibrary/decode/DecodeImgCallback;->onImageDecodeSuccess(Lcom/google/zxing/Result;)V

    goto :goto_1

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/yzq/zxinglibrary/decode/DecodeImgThread;->callback:Lcom/yzq/zxinglibrary/decode/DecodeImgCallback;

    invoke-interface {v0}, Lcom/yzq/zxinglibrary/decode/DecodeImgCallback;->onImageDecodeFailed()V

    :cond_2
    :goto_1
    return-void
.end method
