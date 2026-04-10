.class public Landroid/device/PrinterManager;
.super Ljava/lang/Object;
.source "PrinterManager.java"


# static fields
.field public static final PRNSTS_BUSY:I = -0x4

.field public static final PRNSTS_ERR:I = -0x100

.field public static final PRNSTS_ERR_DRIVER:I = -0x101

.field public static final PRNSTS_OK:I = 0x0

.field public static final PRNSTS_OUT_OF_PAPER:I = -0x1

.field public static final PRNSTS_OVER_HEAT:I = -0x2

.field public static final PRNSTS_UNDER_VOLTAGE:I = -0x3

.field private static final TAG:Ljava/lang/String; = "PrinterManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPage()I
    .locals 2

    .line 134
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()I
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawBarcode(Ljava/lang/String;IIIIII)I
    .locals 0

    .line 278
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;II)I
    .locals 0

    .line 290
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public drawBitmapEx([BIIII)I
    .locals 0

    .line 293
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public drawLine(IIIII)I
    .locals 0

    .line 169
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public drawText(Ljava/lang/String;IILjava/lang/String;IZZI)I
    .locals 0

    .line 186
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public drawTextEx(Ljava/lang/String;IIIILjava/lang/String;IIII)I
    .locals 0

    .line 204
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getStatus()I
    .locals 2

    .line 308
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTemp()I
    .locals 2

    .line 383
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public open()I
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public paperFeed(I)V
    .locals 1

    .line 104
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public printPage(I)I
    .locals 1

    .line 154
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prn_clearPage()I
    .locals 2

    .line 345
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prn_close()V
    .locals 0

    return-void
.end method

.method public prn_drawBarcode(Ljava/lang/String;IIIIII)I
    .locals 0

    .line 369
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prn_drawBitmap(Landroid/graphics/Bitmap;II)I
    .locals 0

    .line 376
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prn_drawLine(IIIII)I
    .locals 0

    .line 353
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prn_drawText(Ljava/lang/String;IILjava/lang/String;IZZI)I
    .locals 0

    .line 358
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prn_drawTextEx(Ljava/lang/String;IIIILjava/lang/String;IIII)I
    .locals 0

    .line 363
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prn_getStatus()I
    .locals 2

    .line 380
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prn_getTemp()I
    .locals 2

    .line 337
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prn_open()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public prn_paperBack(I)V
    .locals 1

    .line 327
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prn_paperForWard(I)V
    .locals 1

    .line 324
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prn_printPage(I)I
    .locals 1

    .line 349
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prn_setBlack(I)I
    .locals 1

    .line 321
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prn_setSpeed(I)I
    .locals 1

    .line 330
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prn_setupPage(II)I
    .locals 0

    .line 341
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGrayLevel(I)V
    .locals 1

    .line 95
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSpeedLevel(I)V
    .locals 1

    .line 113
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setupPage(II)I
    .locals 0

    .line 125
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
