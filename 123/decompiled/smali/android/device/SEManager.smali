.class public Landroid/device/SEManager;
.super Ljava/lang/Object;
.source "SEManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/device/SEManager$OperationPedInputListener;,
        Landroid/device/SEManager$PedInputListener;
    }
.end annotation


# static fields
.field public static final ALGORITHM_CBC:I = 0x2

.field public static final ALGORITHM_ECB:I = 0x1

.field public static final ECRC16_DATA:I = 0x6

.field public static final EENCRYPTKEYS_NOTDOWLOAD:I = 0x1a

.field public static final EHEAD_CMD:I = 0x5

.field public static final EKEYSNO_NOTFOUND:I = 0x14

.field public static final EKEYSNO_OVERRANGE:I = 0x15

.field public static final EKEYS_DOWNLOAD:I = 0x16

.field public static final EKEYS_EXISTS:I = 0x19

.field public static final EKEYS_NOTDOWNLOAD:I = 0x17

.field public static final EKEYS_OUTOFSPACE:I = 0x18

.field public static final EKEYS_RDORINIT:I = 0x12

.field public static final ELENGTH_CMD:I = 0x2

.field public static final EMSG_FORMAT:I = 0x9

.field public static final EMSG_MAC:I = 0x7

.field public static final ENOTSUP_ALGORITHM:I = 0xc

.field public static final ENOTSUP_CMD:I = 0x1

.field public static final ENOTSUP_FORMAT:I = 0xd

.field public static final ENOTSUP_KEYSLENGTH:I = 0x1c

.field public static final ENOTSUP_MODE:I = 0xe

.field public static final ENOTSUP_PINBLOCK_FORMAT:I = 0x28

.field public static final ENOTSUP_SEPUSE:I = 0x1b

.field public static final EPINBLOCK_CHAR:I = 0x2d

.field public static final ERESERVED_0X1D:I = 0x1d

.field public static final ESEPARATORLEN_CMD:I = 0x4

.field public static final ESEPARATOR_CMD:I = 0x3

.field public static final EUSERNAME_LENGTH:I = 0x29

.field public static final EUSERNAME_VALUE:I = 0x2a

.field public static final EUSER_PINBLOCK_LENGTH:I = 0x2b

.field public static final EUSER_PINBLOCK_VALUE:I = 0x2c

.field public static final S_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SEManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DukptEncryptDataIV(III[BI[BI[B[I[B[I)I
    .locals 0

    .line 702
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addPedInputListener(Landroid/device/SEManager$PedInputListener;)V
    .locals 1

    .line 630
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public calculateMAC(IIII[BI[B[B)I
    .locals 0

    .line 457
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public calculateMACOfDUKPT([BI[B[I[B[I)I
    .locals 0

    .line 696
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public calculateMACOfDUKPTWithType(II[BI[B[I[B[I)I
    .locals 0

    .line 705
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clearKey([B[B)I
    .locals 0

    .line 240
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()I
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decryptData(III[BII[BI[B[B)I
    .locals 0

    .line 431
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deleteKey(II[B[B)I
    .locals 0

    .line 355
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public downloadKey(III[BI[B[B)I
    .locals 0

    .line 271
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public downloadKeyDuk([BI[BI)I
    .locals 0

    .line 276
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public downloadKeyDukpt(I[BI[BI[BI)I
    .locals 0

    .line 298
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public downloadKeyEx(IIIII[BII[BI[B[B)I
    .locals 0

    .line 333
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public downloadKeyOfPINBdk([BI[BI[BI)I
    .locals 0

    .line 688
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public downloadKeyOfTDKBdk([BI[BI[BI)I
    .locals 0

    .line 692
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public enableSuspend(I[B[B)I
    .locals 0

    .line 577
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encryptData(III[BII[BI[B[B)I
    .locals 0

    .line 384
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encryptDataDuk(II[BI[B[B[B[B)I
    .locals 0

    .line 402
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encryptDataTDK(II[BII[BI[B[I)I
    .locals 0

    .line 666
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public endPinInputEvent(I)V
    .locals 1

    .line 486
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generateRandomData([B[B)I
    .locals 0

    .line 564
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCAStatus([B[I)I
    .locals 0

    .line 657
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFirmwareVersion([B[B)I
    .locals 0

    .line 209
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPinBlock(II[BILjava/lang/String;JLandroid/device/SEManager$PedInputListener;)I
    .locals 0

    .line 483
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPinBlockEx(II[BILjava/lang/String;JLjava/lang/String;Landroid/device/SEManager$PedInputListener;)I
    .locals 0

    .line 511
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPinBlockEx(Landroid/os/Bundle;Landroid/device/SEManager$PedInputListener;)I
    .locals 0

    .line 551
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPinBlockEx(Landroid/os/Bundle;Landroid/os/IInputActionListener;)I
    .locals 0

    .line 554
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRTC([B[B)I
    .locals 0

    .line 645
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getStatus([B[B)I
    .locals 0

    .line 227
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public open()I
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pciGetMac(BI[B[BB)I
    .locals 0

    .line 661
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pciWriteMKeyse(IBBBB[B[B[B)I
    .locals 0

    .line 710
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pciWriteSKeyse(IBBB[B[BBB)I
    .locals 0

    .line 715
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readCA(III[B[I)I
    .locals 0

    .line 669
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readCert(III[B)I
    .locals 0

    .line 676
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removePedInputListener(Landroid/device/SEManager$PedInputListener;)V
    .locals 1

    .line 634
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIndicatorLED(II)I
    .locals 0

    .line 638
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRTC(II[B[B)I
    .locals 0

    .line 642
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSuspendTimeout(I[B[B)I
    .locals 0

    .line 589
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public verifyCertSign([BI[BI)I
    .locals 0

    .line 684
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeCA(III[BI)I
    .locals 0

    .line 673
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeCert(III[BI)I
    .locals 0

    .line 680
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
