.class public Lcom/ayma/base/util/ThrowHandleUtil;
.super Ljava/lang/Object;
.source "ThrowHandleUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 1

    .line 60
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    const-string v0, "\u672a\u77e5\u5f02\u5e38"

    if-nez p0, :cond_0

    .line 28
    invoke-static {v0}, Lcom/ayma/base/util/ThrowHandleUtil;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0

    .line 30
    :cond_0
    instance-of v1, p0, Ljava/net/SocketException;

    if-eqz v1, :cond_1

    const-string p0, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    .line 31
    invoke-static {p0}, Lcom/ayma/base/util/ThrowHandleUtil;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0

    .line 32
    :cond_1
    instance-of v1, p0, Lcom/google/gson/JsonParseException;

    if-nez v1, :cond_8

    instance-of v1, p0, Lorg/json/JSONException;

    if-nez v1, :cond_8

    instance-of v1, p0, Ljava/text/ParseException;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 34
    :cond_2
    instance-of v1, p0, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_3

    const-string p0, "\u65e0\u6cd5\u89e3\u6790\u8be5\u57df\u540d\u6216\u7f51\u7edc\u672a\u8fde\u63a5/\u5f02\u5e38\uff0c\u8bf7\u91cd\u8bd5"

    .line 35
    invoke-static {p0}, Lcom/ayma/base/util/ThrowHandleUtil;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0

    .line 36
    :cond_3
    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_4

    const-string p0, "\u8bf7\u6c42\u54cd\u5e94\u8d85\u65f6\uff0c\u5982\u5f53\u524d\u7f51\u7edc\u4fe1\u53f7\u4e0d\u597d\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    .line 37
    invoke-static {p0}, Lcom/ayma/base/util/ThrowHandleUtil;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0

    .line 38
    :cond_4
    instance-of v1, p0, Ljava/lang/IllegalArgumentException;

    if-eqz v1, :cond_5

    const-string p0, "\u53c2\u6570\u5f02\u5e38"

    .line 39
    invoke-static {p0}, Lcom/ayma/base/util/ThrowHandleUtil;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0

    .line 40
    :cond_5
    instance-of v1, p0, Ljava/security/cert/CertPathValidatorException;

    if-eqz v1, :cond_6

    const-string p0, "\u8bf7\u6c42\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u6240\u8fde\u63a5\u7f51\u7edc\u662f\u5426\u4e3a\u5408\u89c4\u7f51\u7edc"

    .line 41
    invoke-static {p0}, Lcom/ayma/base/util/ThrowHandleUtil;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0

    .line 43
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 44
    invoke-static {v0}, Lcom/ayma/base/util/ThrowHandleUtil;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    :cond_7
    return-object p0

    :cond_8
    :goto_0
    const-string p0, "\u6570\u636e\u89e3\u6790\u5f02\u5e38"

    .line 33
    invoke-static {p0}, Lcom/ayma/base/util/ThrowHandleUtil;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "\u672a\u77e5\u5f02\u5e38"

    .line 51
    invoke-static {p0}, Lcom/ayma/base/util/ThrowHandleUtil;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lretrofit2/Response;->code()I

    move-result v0

    const/16 v1, 0x193

    const-string v2, ":"

    if-ne v0, v1, :cond_1

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n\u8bf7\u5f00\u542f\u98de\u884c\u6a21\u5f0f\uff0c\u4e00\u5206\u949f\u540e\u5173\u95ed\u518d\u91cd\u8bd5"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ayma/base/util/ThrowHandleUtil;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ayma/base/util/ThrowHandleUtil;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method
