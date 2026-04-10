.class public Landroid/device/IccManager;
.super Ljava/lang/Object;
.source "IccManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IccManager"


# instance fields
.field private fd:I

.field private slot:I

.field private volt:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Landroid/device/IccManager;->slot:I

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Landroid/device/IccManager;->fd:I

    .line 49
    iput v0, p0, Landroid/device/IccManager;->volt:I

    return-void
.end method


# virtual methods
.method public IccAct(C)[B
    .locals 1

    .line 103
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public IccClose()Z
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public IccExapdu([BC)[B
    .locals 0

    .line 112
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public IccFound()[B
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public IccOpen()Z
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public IccSelect(C)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public IccSetBaudrate(II)Z
    .locals 0

    .line 75
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public activate([B)I
    .locals 1

    .line 152
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apduTransmit([BI[B[B)I
    .locals 0

    .line 163
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public at88sc102_VerifyPassword(I[BI)I
    .locals 0

    .line 543
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public at88sc102_read(II)[B
    .locals 0

    .line 521
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public at88sc102_write(I[BI)I
    .locals 0

    .line 532
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()I
    .locals 2

    .line 136
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deactivate()I
    .locals 2

    .line 171
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public detect()I
    .locals 2

    .line 144
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getResponseEnable(B)I
    .locals 1

    .line 195
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public open(BBB)I
    .locals 0

    .line 128
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public request_Type([B)I
    .locals 1

    .line 180
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setETU(I)I
    .locals 1

    .line 203
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sle4428_password(I[B)I
    .locals 0

    .line 507
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sle4428_readMemory(II)[B
    .locals 0

    .line 481
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sle4428_reset([B)I
    .locals 1

    .line 468
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sle4428_writeMemory(I[BI)I
    .locals 0

    .line 492
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sle4436_authenticate(I[B[B)[B
    .locals 0

    .line 417
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sle4436_decValue(I)I
    .locals 1

    .line 460
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sle4436_readBit([B)I
    .locals 1

    .line 435
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sle4436_readMemory(II)[B
    .locals 0

    .line 369
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sle4436_regIncrease(I)I
    .locals 1

    .line 426
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sle4436_reloadByte()I
    .locals 2

    .line 451
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sle4436_reset([B)I
    .locals 1

    .line 344
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sle4436_verifyPassword([B)I
    .locals 1

    .line 406
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sle4436_writeBit()I
    .locals 2

    .line 443
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sle4436_writeCarry(II[BI)I
    .locals 0

    .line 392
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sle4436_writeMemory(I[BI)I
    .locals 0

    .line 380
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sle4442_changePassword([B)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public sle4442_readErrorCounter([B)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public sle4442_readMainMemory(II)[B
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public sle4442_readProtectionMemory(II)[B
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public sle4442_reset([B)I
    .locals 1

    .line 219
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sle4442_verifyPassword([B)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public sle4442_writeMainMemory(I[BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public sle4442_writeProtectionMemory(I[BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
