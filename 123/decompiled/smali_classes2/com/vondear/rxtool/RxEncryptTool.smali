.class public Lcom/vondear/rxtool/RxEncryptTool;
.super Ljava/lang/Object;
.source "RxEncryptTool.java"


# static fields
.field private static final AES_Algorithm:Ljava/lang/String; = "AES"

.field public static AES_Transformation:Ljava/lang/String; = "AES/ECB/NoPadding"

.field private static final DES_Algorithm:Ljava/lang/String; = "DES"

.field public static DES_Transformation:Ljava/lang/String; = "DES/ECB/NoPadding"

.field private static final TripleDES_Algorithm:Ljava/lang/String; = "DESede"

.field public static TripleDES_Transformation:Ljava/lang/String; = "DESede/ECB/NoPadding"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DESTemplet([B[BLjava/lang/String;Ljava/lang/String;Z)[B
    .locals 1

    .line 370
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 371
    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 372
    new-instance p2, Ljava/security/SecureRandom;

    invoke-direct {p2}, Ljava/security/SecureRandom;-><init>()V

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    .line 373
    :goto_0
    invoke-virtual {p1, p3, v0, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 374
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 376
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static decrypt3DES([B[B)[B
    .locals 3

    .line 514
    sget-object v0, Lcom/vondear/rxtool/RxEncryptTool;->TripleDES_Transformation:Ljava/lang/String;

    const-string v1, "DESede"

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v0, v2}, Lcom/vondear/rxtool/RxEncryptTool;->DESTemplet([B[BLjava/lang/String;Ljava/lang/String;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static decryptAES([B[B)[B
    .locals 3

    .line 580
    sget-object v0, Lcom/vondear/rxtool/RxEncryptTool;->AES_Transformation:Ljava/lang/String;

    const-string v1, "AES"

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v0, v2}, Lcom/vondear/rxtool/RxEncryptTool;->DESTemplet([B[BLjava/lang/String;Ljava/lang/String;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static decryptBase64AES([B[B)[B
    .locals 0

    .line 558
    invoke-static {p0}, Lcom/vondear/rxtool/RxEncodeTool;->base64Decode([B)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/vondear/rxtool/RxEncryptTool;->decryptAES([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decryptBase64DES([B[B)[B
    .locals 0

    .line 424
    invoke-static {p0}, Lcom/vondear/rxtool/RxEncodeTool;->base64Decode([B)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/vondear/rxtool/RxEncryptTool;->decryptDES([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decryptBase64_3DES([B[B)[B
    .locals 0

    .line 490
    invoke-static {p0}, Lcom/vondear/rxtool/RxEncodeTool;->base64Decode([B)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/vondear/rxtool/RxEncryptTool;->decrypt3DES([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decryptDES([B[B)[B
    .locals 3

    .line 446
    sget-object v0, Lcom/vondear/rxtool/RxEncryptTool;->DES_Transformation:Ljava/lang/String;

    const-string v1, "DES"

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v0, v2}, Lcom/vondear/rxtool/RxEncryptTool;->DESTemplet([B[BLjava/lang/String;Ljava/lang/String;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static decryptHexString3DES(Ljava/lang/String;[B)[B
    .locals 0

    .line 503
    invoke-static {p0}, Lcom/vondear/rxtool/RxDataTool;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/vondear/rxtool/RxEncryptTool;->decrypt3DES([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decryptHexStringAES(Ljava/lang/String;[B)[B
    .locals 0

    .line 569
    invoke-static {p0}, Lcom/vondear/rxtool/RxDataTool;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/vondear/rxtool/RxEncryptTool;->decryptAES([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decryptHexStringDES(Ljava/lang/String;[B)[B
    .locals 0

    .line 435
    invoke-static {p0}, Lcom/vondear/rxtool/RxDataTool;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/vondear/rxtool/RxEncryptTool;->decryptDES([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encrypt3DES([B[B)[B
    .locals 3

    .line 479
    sget-object v0, Lcom/vondear/rxtool/RxEncryptTool;->TripleDES_Transformation:Ljava/lang/String;

    const-string v1, "DESede"

    const/4 v2, 0x1

    invoke-static {p0, p1, v1, v0, v2}, Lcom/vondear/rxtool/RxEncryptTool;->DESTemplet([B[BLjava/lang/String;Ljava/lang/String;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static encrypt3DES2Base64([B[B)[B
    .locals 0

    .line 457
    invoke-static {p0, p1}, Lcom/vondear/rxtool/RxEncryptTool;->encrypt3DES([B[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/vondear/rxtool/RxEncodeTool;->base64Encode([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encrypt3DES2HexString([B[B)Ljava/lang/String;
    .locals 0

    .line 468
    invoke-static {p0, p1}, Lcom/vondear/rxtool/RxEncryptTool;->encrypt3DES([B[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/vondear/rxtool/RxDataTool;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptAES([B[B)[B
    .locals 3

    .line 547
    sget-object v0, Lcom/vondear/rxtool/RxEncryptTool;->AES_Transformation:Ljava/lang/String;

    const-string v1, "AES"

    const/4 v2, 0x1

    invoke-static {p0, p1, v1, v0, v2}, Lcom/vondear/rxtool/RxEncryptTool;->DESTemplet([B[BLjava/lang/String;Ljava/lang/String;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptAES2Base64([B[B)[B
    .locals 0

    .line 525
    invoke-static {p0, p1}, Lcom/vondear/rxtool/RxEncryptTool;->encryptAES([B[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/vondear/rxtool/RxEncodeTool;->base64Encode([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptAES2HexString([B[B)Ljava/lang/String;
    .locals 0

    .line 536
    invoke-static {p0, p1}, Lcom/vondear/rxtool/RxEncryptTool;->encryptAES([B[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/vondear/rxtool/RxDataTool;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static encryptAlgorithm([BLjava/lang/String;)[B
    .locals 0

    .line 351
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 352
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 353
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 355
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public static encryptDES([B[B)[B
    .locals 3

    .line 413
    sget-object v0, Lcom/vondear/rxtool/RxEncryptTool;->DES_Transformation:Ljava/lang/String;

    const-string v1, "DES"

    const/4 v2, 0x1

    invoke-static {p0, p1, v1, v0, v2}, Lcom/vondear/rxtool/RxEncryptTool;->DESTemplet([B[BLjava/lang/String;Ljava/lang/String;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptDES2Base64([B[B)[B
    .locals 0

    .line 389
    invoke-static {p0, p1}, Lcom/vondear/rxtool/RxEncryptTool;->encryptDES([B[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/vondear/rxtool/RxEncodeTool;->base64Encode([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptDES2HexString([B[B)Ljava/lang/String;
    .locals 0

    .line 400
    invoke-static {p0, p1}, Lcom/vondear/rxtool/RxEncryptTool;->encryptDES([B[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/vondear/rxtool/RxDataTool;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptMD2([B)[B
    .locals 1

    const-string v0, "MD2"

    .line 79
    invoke-static {p0, v0}, Lcom/vondear/rxtool/RxEncryptTool;->encryptAlgorithm([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptMD2ToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 59
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/vondear/rxtool/RxEncryptTool;->encryptMD2ToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptMD2ToString([B)Ljava/lang/String;
    .locals 0

    .line 69
    invoke-static {p0}, Lcom/vondear/rxtool/RxEncryptTool;->encryptMD2([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/vondear/rxtool/RxDataTool;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptMD5([B)[B
    .locals 1

    const-string v0, "MD5"

    .line 134
    invoke-static {p0, v0}, Lcom/vondear/rxtool/RxEncryptTool;->encryptAlgorithm([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptMD5File(Ljava/io/File;)[B
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 176
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 178
    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v6, 0x0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p0

    const-string v4, "MD5"

    .line 179
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 180
    invoke-virtual {v4, p0}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 181
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-array v0, v2, [Ljava/io/Closeable;

    aput-object v3, v0, v1

    .line 185
    invoke-static {v0}, Lcom/vondear/rxtool/RxFileTool;->closeIO([Ljava/io/Closeable;)V

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    :goto_0
    move-object v3, v0

    .line 183
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v3, p0, v1

    .line 185
    invoke-static {p0}, Lcom/vondear/rxtool/RxFileTool;->closeIO([Ljava/io/Closeable;)V

    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v3

    :goto_2
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/vondear/rxtool/RxFileTool;->closeIO([Ljava/io/Closeable;)V

    .line 186
    throw p0
.end method

.method public static encryptMD5File(Ljava/lang/String;)[B
    .locals 1

    .line 154
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vondear/rxtool/RxEncryptTool;->encryptMD5File(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptMD5File2String(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 164
    invoke-static {p0}, Lcom/vondear/rxtool/RxEncryptTool;->encryptMD5File(Ljava/io/File;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/vondear/rxtool/RxEncryptTool;->encryptMD5File(Ljava/io/File;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/vondear/rxtool/RxDataTool;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static encryptMD5File2String(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 144
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vondear/rxtool/RxEncryptTool;->encryptMD5File2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptMD5ToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/vondear/rxtool/RxEncryptTool;->encryptMD5ToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptMD5ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/vondear/rxtool/RxEncryptTool;->encryptMD5([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/vondear/rxtool/RxDataTool;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptMD5ToString([B)Ljava/lang/String;
    .locals 0

    .line 110
    invoke-static {p0}, Lcom/vondear/rxtool/RxEncryptTool;->encryptMD5([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/vondear/rxtool/RxDataTool;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptMD5ToString([B[B)Ljava/lang/String;
    .locals 3

    .line 121
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 122
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    invoke-static {v0}, Lcom/vondear/rxtool/RxEncryptTool;->encryptMD5([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/vondear/rxtool/RxDataTool;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA1([B)[B
    .locals 1

    const-string v0, "SHA-1"

    .line 217
    invoke-static {p0, v0}, Lcom/vondear/rxtool/RxEncryptTool;->encryptAlgorithm([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA1ToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 197
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/vondear/rxtool/RxEncryptTool;->encryptSHA1ToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA1ToString([B)Ljava/lang/String;
    .locals 0

    .line 207
    invoke-static {p0}, Lcom/vondear/rxtool/RxEncryptTool;->encryptSHA1([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/vondear/rxtool/RxDataTool;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA224([B)[B
    .locals 1

    const-string v0, "SHA-224"

    .line 247
    invoke-static {p0, v0}, Lcom/vondear/rxtool/RxEncryptTool;->encryptAlgorithm([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA224ToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 227
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/vondear/rxtool/RxEncryptTool;->encryptSHA224ToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA224ToString([B)Ljava/lang/String;
    .locals 0

    .line 237
    invoke-static {p0}, Lcom/vondear/rxtool/RxEncryptTool;->encryptSHA224([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/vondear/rxtool/RxDataTool;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA256([B)[B
    .locals 1

    const-string v0, "SHA-256"

    .line 277
    invoke-static {p0, v0}, Lcom/vondear/rxtool/RxEncryptTool;->encryptAlgorithm([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA256ToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 257
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/vondear/rxtool/RxEncryptTool;->encryptSHA256ToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA256ToString([B)Ljava/lang/String;
    .locals 0

    .line 267
    invoke-static {p0}, Lcom/vondear/rxtool/RxEncryptTool;->encryptSHA256([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/vondear/rxtool/RxDataTool;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA384([B)[B
    .locals 1

    const-string v0, "SHA-384"

    .line 309
    invoke-static {p0, v0}, Lcom/vondear/rxtool/RxEncryptTool;->encryptAlgorithm([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA384ToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 287
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/vondear/rxtool/RxEncryptTool;->encryptSHA384ToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA384ToString([B)Ljava/lang/String;
    .locals 0

    .line 299
    invoke-static {p0}, Lcom/vondear/rxtool/RxEncryptTool;->encryptSHA384([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/vondear/rxtool/RxDataTool;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA512([B)[B
    .locals 1

    const-string v0, "SHA-512"

    .line 339
    invoke-static {p0, v0}, Lcom/vondear/rxtool/RxEncryptTool;->encryptAlgorithm([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA512ToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 319
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/vondear/rxtool/RxEncryptTool;->encryptSHA512ToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA512ToString([B)Ljava/lang/String;
    .locals 0

    .line 329
    invoke-static {p0}, Lcom/vondear/rxtool/RxEncryptTool;->encryptSHA512([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/vondear/rxtool/RxDataTool;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
