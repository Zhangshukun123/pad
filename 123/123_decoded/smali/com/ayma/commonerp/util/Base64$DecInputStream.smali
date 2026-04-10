.class Lcom/ayma/commonerp/util/Base64$DecInputStream;
.super Ljava/io/InputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecInputStream"
.end annotation


# instance fields
.field private final base64:[I

.field private bits:I

.field private closed:Z

.field private eof:Z

.field private final is:Ljava/io/InputStream;

.field private final isMIME:Z

.field private nextin:I

.field private nextout:I

.field private sbBuf:[B


# direct methods
.method constructor <init>(Ljava/io/InputStream;[IZ)V
    .locals 2

    .line 812
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 804
    iput v0, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->bits:I

    const/16 v1, 0x12

    .line 805
    iput v1, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->nextin:I

    const/4 v1, -0x8

    .line 807
    iput v1, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->nextout:I

    .line 809
    iput-boolean v0, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->eof:Z

    .line 810
    iput-boolean v0, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->closed:Z

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 818
    iput-object v0, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->sbBuf:[B

    .line 813
    iput-object p1, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    .line 814
    iput-object p2, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->base64:[I

    .line 815
    iput-boolean p3, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->isMIME:Z

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 920
    iget-boolean v0, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->closed:Z

    if-nez v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0

    .line 921
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 927
    iget-boolean v0, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 928
    iput-boolean v0, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->closed:Z

    .line 929
    iget-object v0, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 822
    iget-object v0, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->sbBuf:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ayma/commonerp/util/Base64$DecInputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->sbBuf:[B

    aget-byte v0, v0, v1

    and-int/lit16 v2, v0, 0xff

    :goto_0
    return v2
.end method

.method public read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 827
    iget-boolean v0, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->closed:Z

    if-nez v0, :cond_16

    .line 829
    iget-boolean v0, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->eof:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->nextout:I

    if-gez v0, :cond_0

    return v1

    :cond_0
    if-ltz p2, :cond_15

    if-ltz p3, :cond_15

    .line 831
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_15

    .line 834
    iget v0, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->nextout:I

    const/4 v2, 0x0

    if-ltz v0, :cond_3

    move v0, p2

    :goto_0
    if-nez p3, :cond_1

    sub-int/2addr v0, p2

    return v0

    :cond_1
    add-int/lit8 v3, v0, 0x1

    .line 838
    iget v4, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->bits:I

    iget v5, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->nextout:I

    shr-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v0

    add-int/lit8 p3, p3, -0x1

    add-int/lit8 v5, v5, -0x8

    .line 840
    iput v5, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->nextout:I

    if-gez v5, :cond_2

    .line 842
    iput v2, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->bits:I

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v3, p2

    :goto_1
    if-lez p3, :cond_14

    .line 845
    iget-object v0, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v4, 0xc

    const/16 v5, 0x12

    const/4 v6, 0x1

    if-ne v0, v1, :cond_9

    .line 847
    iput-boolean v6, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->eof:Z

    .line 848
    iget v0, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->nextin:I

    if-eq v0, v5, :cond_7

    if-eq v0, v4, :cond_6

    add-int/lit8 v4, v3, 0x1

    .line 853
    iget v5, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->bits:I

    shr-int/lit8 v6, v5, 0x10

    int-to-byte v6, v6

    aput-byte v6, p1, v3

    add-int/2addr p3, v1

    if-nez v0, :cond_5

    if-nez p3, :cond_4

    shr-int/lit8 p1, v5, 0x8

    .line 857
    iput p1, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->bits:I

    .line 858
    iput v2, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->nextout:I

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v4, 0x1

    shr-int/lit8 p3, v5, 0x8

    int-to-byte p3, p3

    .line 860
    aput-byte p3, p1, v4

    goto :goto_3

    :cond_5
    :goto_2
    move v3, v4

    goto :goto_3

    .line 850
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Base64 stream has one un-decoded dangling byte."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_3
    if-ne v3, p2, :cond_8

    return v1

    :cond_8
    sub-int/2addr v3, p2

    return v3

    :cond_9
    const/16 v7, 0x3d

    if-ne v0, v7, :cond_e

    .line 874
    iget v0, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->nextin:I

    if-eq v0, v5, :cond_d

    if-eq v0, v4, :cond_d

    const/4 v4, 0x6

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    .line 875
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v7, :cond_d

    :cond_a
    add-int/lit8 v0, v3, 0x1

    .line 878
    iget v4, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->bits:I

    shr-int/lit8 v5, v4, 0x10

    int-to-byte v5, v5

    aput-byte v5, p1, v3

    add-int/2addr p3, v1

    .line 880
    iget v1, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->nextin:I

    if-nez v1, :cond_c

    if-nez p3, :cond_b

    shr-int/lit8 p1, v4, 0x8

    .line 882
    iput p1, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->bits:I

    .line 883
    iput v2, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->nextout:I

    goto :goto_4

    :cond_b
    add-int/lit8 p3, v0, 0x1

    shr-int/lit8 v1, v4, 0x8

    int-to-byte v1, v1

    .line 885
    aput-byte v1, p1, v0

    move v3, p3

    goto :goto_5

    :cond_c
    :goto_4
    move v3, v0

    .line 888
    :goto_5
    iput-boolean v6, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->eof:Z

    goto/16 :goto_7

    .line 876
    :cond_d
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal base64 ending sequence:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->nextin:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 891
    :cond_e
    iget-object v4, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->base64:[I

    aget v0, v4, v0

    const/16 v4, 0x10

    if-ne v0, v1, :cond_10

    .line 892
    iget-boolean v5, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->isMIME:Z

    if-eqz v5, :cond_f

    goto/16 :goto_1

    .line 895
    :cond_f
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal base64 character "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    invoke-static {v0, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 898
    :cond_10
    iget v6, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->bits:I

    iget v7, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->nextin:I

    shl-int/2addr v0, v7

    or-int/2addr v0, v6

    iput v0, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->bits:I

    if-nez v7, :cond_13

    .line 900
    iput v5, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->nextin:I

    .line 901
    iput v4, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->nextout:I

    .line 902
    :goto_6
    iget v0, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->nextout:I

    if-ltz v0, :cond_12

    add-int/lit8 v4, v3, 0x1

    .line 903
    iget v5, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->bits:I

    shr-int/2addr v5, v0

    int-to-byte v5, v5

    aput-byte v5, p1, v3

    add-int/lit8 p3, p3, -0x1

    add-int/lit8 v0, v0, -0x8

    .line 905
    iput v0, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->nextout:I

    if-nez p3, :cond_11

    if-ltz v0, :cond_11

    sub-int/2addr v4, p2

    return v4

    :cond_11
    move v3, v4

    goto :goto_6

    .line 910
    :cond_12
    iput v2, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->bits:I

    goto/16 :goto_1

    :cond_13
    add-int/lit8 v7, v7, -0x6

    .line 912
    iput v7, p0, Lcom/ayma/commonerp/util/Base64$DecInputStream;->nextin:I

    goto/16 :goto_1

    :cond_14
    :goto_7
    sub-int/2addr v3, p2

    return v3

    .line 832
    :cond_15
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 828
    :cond_16
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
