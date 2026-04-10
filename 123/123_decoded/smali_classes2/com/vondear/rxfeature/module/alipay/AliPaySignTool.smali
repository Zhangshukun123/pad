.class public Lcom/vondear/rxfeature/module/alipay/AliPaySignTool;
.super Ljava/lang/Object;
.source "AliPaySignTool.java"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final SIGN_ALGORITHMS:Ljava/lang/String; = "SHA1WithRSA"

.field private static final SIGN_SHA256RSA_ALGORITHMS:Ljava/lang/String; = "SHA256WithRSA"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAlgorithms(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "SHA256WithRSA"

    goto :goto_0

    :cond_0
    const-string p0, "SHA1WithRSA"

    :goto_0
    return-object p0
.end method

.method public static sign(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 26
    :try_start_0
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-static {p1}, Lcom/vondear/rxfeature/module/alipay/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string p1, "RSA"

    .line 27
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 28
    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    .line 30
    invoke-static {p2}, Lcom/vondear/rxfeature/module/alipay/AliPaySignTool;->getAlgorithms(Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    .line 32
    invoke-virtual {p2, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    const-string p1, "UTF-8"

    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/security/Signature;->update([B)V

    .line 35
    invoke-virtual {p2}, Ljava/security/Signature;->sign()[B

    move-result-object p0

    .line 37
    invoke-static {p0}, Lcom/vondear/rxfeature/module/alipay/Base64;->encode([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
