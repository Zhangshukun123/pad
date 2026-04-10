.class public Lcom/yzq/zxinglibrary/encode/CodeCreator;
.super Ljava/lang/Object;
.source "CodeCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createQRCode(Ljava/lang/String;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 17

    move/from16 v0, p1

    move/from16 v8, p2

    .line 23
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v9, 0x0

    if-eqz v1, :cond_0

    return-object v9

    .line 27
    :cond_0
    div-int/lit8 v1, v0, 0x2

    .line 28
    div-int/lit8 v2, v8, 0x2

    if-eqz p3, :cond_1

    .line 34
    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v3, v3, v4

    const/high16 v5, 0x40a00000    # 5.0f

    div-float/2addr v3, v5

    .line 35
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v3, v6

    int-to-float v6, v8

    mul-float v6, v6, v4

    div-float/2addr v6, v5

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v6, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 36
    invoke-virtual {v15, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 37
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    const/16 v16, 0x1

    move-object/from16 v10, p3

    invoke-static/range {v10 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v7, v3

    goto :goto_0

    :cond_1
    move-object v7, v9

    :goto_0
    const/4 v10, 0x0

    if-eqz v7, :cond_2

    .line 45
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 46
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int v3, v0, v1

    .line 47
    div-int/lit8 v3, v3, 0x2

    sub-int v4, v8, v2

    .line 48
    div-int/lit8 v4, v4, 0x2

    move v12, v1

    move v14, v2

    move v11, v3

    move v13, v4

    goto :goto_1

    :cond_2
    move v11, v1

    move v13, v2

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 52
    :goto_1
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 53
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v2, "utf-8"

    invoke-virtual {v6, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v1, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v2, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v6, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v1, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :try_start_0
    new-instance v1, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v1}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    mul-int v2, v0, v8

    .line 65
    new-array v2, v2, [I

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v8, :cond_8

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v0, :cond_7

    const/high16 v5, -0x1000000

    const/4 v6, -0x1

    if-lt v4, v11, :cond_5

    add-int v15, v11, v12

    if-ge v4, v15, :cond_5

    if-lt v3, v13, :cond_5

    add-int v15, v13, v14

    if-ge v3, v15, :cond_5

    sub-int v15, v4, v11

    sub-int v10, v3, v13

    .line 69
    invoke-virtual {v7, v15, v10}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    if-nez v10, :cond_4

    .line 71
    invoke-virtual {v1, v4, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_4

    :cond_3
    const/4 v5, -0x1

    goto :goto_4

    :cond_4
    move v5, v10

    :goto_4
    mul-int v6, v3, v0

    add-int/2addr v6, v4

    .line 77
    aput v5, v2, v6

    goto :goto_5

    .line 79
    :cond_5
    invoke-virtual {v1, v4, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_6

    mul-int v6, v3, v0

    add-int/2addr v6, v4

    .line 80
    aput v5, v2, v6

    goto :goto_5

    :cond_6
    mul-int v5, v3, v0

    add-int/2addr v5, v4

    .line 82
    aput v6, v2, v5

    :goto_5
    add-int/lit8 v4, v4, 0x1

    const/4 v10, 0x0

    goto :goto_3

    :cond_7
    add-int/lit8 v3, v3, 0x1

    const/4 v10, 0x0

    goto :goto_2

    .line 88
    :cond_8
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v8, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v10

    move/from16 v4, p1

    move/from16 v7, p1

    move/from16 v8, p2

    .line 90
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    :catch_0
    move-exception v0

    .line 96
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    return-object v9
.end method
