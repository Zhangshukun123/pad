.class public Lcom/ayma/commonerp/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/util/Base64$DecInputStream;,
        Lcom/ayma/commonerp/util/Base64$EncOutputStream;,
        Lcom/ayma/commonerp/util/Base64$Decoder;,
        Lcom/ayma/commonerp/util/Base64$Encoder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDecoder()Lcom/ayma/commonerp/util/Base64$Decoder;
    .locals 1

    .line 86
    sget-object v0, Lcom/ayma/commonerp/util/Base64$Decoder;->RFC4648:Lcom/ayma/commonerp/util/Base64$Decoder;

    return-object v0
.end method

.method public static getEncoder()Lcom/ayma/commonerp/util/Base64$Encoder;
    .locals 1

    .line 23
    sget-object v0, Lcom/ayma/commonerp/util/Base64$Encoder;->RFC4648:Lcom/ayma/commonerp/util/Base64$Encoder;

    return-object v0
.end method

.method public static getMimeDecoder()Lcom/ayma/commonerp/util/Base64$Decoder;
    .locals 1

    .line 107
    sget-object v0, Lcom/ayma/commonerp/util/Base64$Decoder;->RFC2045:Lcom/ayma/commonerp/util/Base64$Decoder;

    return-object v0
.end method

.method public static getMimeEncoder()Lcom/ayma/commonerp/util/Base64$Encoder;
    .locals 1

    .line 44
    sget-object v0, Lcom/ayma/commonerp/util/Base64$Encoder;->RFC2045:Lcom/ayma/commonerp/util/Base64$Encoder;

    return-object v0
.end method

.method public static getMimeEncoder(I[B)Lcom/ayma/commonerp/util/Base64$Encoder;
    .locals 7

    .line 66
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {}, Lcom/ayma/commonerp/util/Base64$Decoder;->access$000()[I

    move-result-object v0

    .line 68
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p1, v2

    and-int/lit16 v4, v3, 0xff

    .line 69
    aget v4, v0, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal base64 line separator character 0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x10

    .line 71
    invoke-static {v3, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-gtz p0, :cond_2

    .line 74
    sget-object p0, Lcom/ayma/commonerp/util/Base64$Encoder;->RFC4648:Lcom/ayma/commonerp/util/Base64$Encoder;

    return-object p0

    .line 76
    :cond_2
    new-instance v6, Lcom/ayma/commonerp/util/Base64$Encoder;

    const/4 v1, 0x0

    shr-int/lit8 p0, p0, 0x2

    shl-int/lit8 v3, p0, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/ayma/commonerp/util/Base64$Encoder;-><init>(Z[BIZLcom/ayma/commonerp/util/Base64$1;)V

    return-object v6
.end method

.method public static getUrlDecoder()Lcom/ayma/commonerp/util/Base64$Decoder;
    .locals 1

    .line 97
    sget-object v0, Lcom/ayma/commonerp/util/Base64$Decoder;->RFC4648_URLSAFE:Lcom/ayma/commonerp/util/Base64$Decoder;

    return-object v0
.end method

.method public static getUrlEncoder()Lcom/ayma/commonerp/util/Base64$Encoder;
    .locals 1

    .line 34
    sget-object v0, Lcom/ayma/commonerp/util/Base64$Encoder;->RFC4648_URLSAFE:Lcom/ayma/commonerp/util/Base64$Encoder;

    return-object v0
.end method
