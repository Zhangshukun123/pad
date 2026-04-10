.class public final Lcom/alipay/sdk/net/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "application/octet-stream;binary/octet-stream"


# instance fields
.field public b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/alipay/sdk/net/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/sdk/net/a;->c:Landroid/content/Context;

    goto :goto_0

    .line 46
    :cond_0
    iput-object p1, p0, Lcom/alipay/sdk/net/a;->c:Landroid/content/Context;

    .line 47
    :goto_0
    iput-object p2, p0, Lcom/alipay/sdk/net/a;->b:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/alipay/sdk/net/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/alipay/sdk/net/a;->b:Ljava/lang/String;

    return-void
.end method

.method private b()Ljava/net/URL;
    .locals 2

    .line 62
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/alipay/sdk/net/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private c()Lorg/apache/http/HttpHost;
    .locals 4

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-lt v0, v2, :cond_2

    .line 4181
    invoke-direct {p0}, Lcom/alipay/sdk/net/a;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "wap"

    .line 4182
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    .line 4186
    :cond_0
    invoke-direct {p0}, Lcom/alipay/sdk/net/a;->b()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4188
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https"

    .line 4193
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    const-string v0, "https.proxyHost"

    .line 4197
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "https.proxyPort"

    .line 4198
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4201
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4202
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    :cond_1
    return-object v1

    .line 5161
    :cond_2
    invoke-direct {p0}, Lcom/alipay/sdk/net/a;->f()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5162
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5163
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_3

    .line 5164
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    .line 5165
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    if-eqz v0, :cond_3

    .line 5167
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-direct {v1, v0, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    :cond_3
    return-object v1
.end method

.method private d()Lorg/apache/http/HttpHost;
    .locals 3

    .line 161
    invoke-direct {p0}, Lcom/alipay/sdk/net/a;->f()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 164
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v1

    if-eqz v0, :cond_0

    .line 167
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method private e()Lorg/apache/http/HttpHost;
    .locals 4

    .line 181
    invoke-direct {p0}, Lcom/alipay/sdk/net/a;->g()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "wap"

    .line 182
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/alipay/sdk/net/a;->b()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https"

    .line 193
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    const-string v0, "https.proxyHost"

    .line 197
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "https.proxyPort"

    .line 198
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 202
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    :cond_1
    return-object v1
.end method

.method private f()Landroid/net/NetworkInfo;
    .locals 2

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/net/a;->c:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 218
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 219
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 4

    const-string v0, "none"

    .line 227
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/sdk/net/a;->f()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 229
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v0, "wifi"

    return-object v0

    .line 233
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a([BLjava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "Keep-Alive"

    const-string v1, "X-ExecuteTime"

    const-string v2, "X-Hostname"

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "requestUrl : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/sdk/net/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-static {}, Lcom/alipay/sdk/net/b;->a()Lcom/alipay/sdk/net/b;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    .line 1193
    :cond_0
    :try_start_0
    iget-object v5, v3, Lcom/alipay/sdk/net/b;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    .line 2146
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_3

    .line 2181
    invoke-direct {p0}, Lcom/alipay/sdk/net/a;->g()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v7, "wap"

    .line 2182
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    move-object v8, v4

    goto :goto_0

    .line 2186
    :cond_2
    invoke-direct {p0}, Lcom/alipay/sdk/net/a;->b()Ljava/net/URL;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 2188
    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    const-string v7, "https"

    .line 2193
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    const-string v6, "https.proxyHost"

    .line 2197
    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "https.proxyPort"

    .line 2198
    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2201
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2202
    new-instance v8, Lorg/apache/http/HttpHost;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v8, v6, v7}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 3161
    :cond_3
    invoke-direct {p0}, Lcom/alipay/sdk/net/a;->f()Landroid/net/NetworkInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 3162
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3163
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-nez v6, :cond_1

    .line 3164
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v6

    .line 3165
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v7

    if-eqz v6, :cond_1

    .line 3167
    new-instance v8, Lorg/apache/http/HttpHost;

    invoke-direct {v8, v6, v7}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    :goto_0
    if-eqz v8, :cond_4

    const-string v6, "http.route.default-proxy"

    .line 93
    invoke-interface {v5, v6, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_4
    if-eqz p1, :cond_6

    .line 95
    array-length v5, p1

    if-nez v5, :cond_5

    goto :goto_1

    .line 98
    :cond_5
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    iget-object v6, p0, Lcom/alipay/sdk/net/a;->b:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 99
    new-instance v6, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v6, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const-string p1, "application/octet-stream;binary/octet-stream"

    .line 100
    invoke-virtual {v6, p1}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 102
    move-object p1, v5

    check-cast p1, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p1, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    const-string p1, "Accept-Charset"

    const-string v6, "UTF-8"

    .line 103
    invoke-interface {v5, p1, v6}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Connection"

    .line 104
    invoke-interface {v5, p1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "timeout=180, max=100"

    .line 105
    invoke-interface {v5, v0, p1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 96
    :cond_6
    :goto_1
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    iget-object p1, p0, Lcom/alipay/sdk/net/a;->b:Ljava/lang/String;

    invoke-direct {v5, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :goto_2
    if-eqz p2, :cond_7

    .line 109
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/http/Header;

    .line 110
    invoke-interface {v5, p2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_3

    .line 113
    :cond_7
    invoke-virtual {v3, v5}, Lcom/alipay/sdk/net/b;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 114
    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    .line 115
    array-length v5, p2

    if-lez v5, :cond_8

    aget-object p2, p2, v0

    if-eqz p2, :cond_8

    .line 118
    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object p2

    aget-object p2, p2, v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 122
    :cond_8
    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 123
    array-length v2, p2

    if-lez v2, :cond_9

    aget-object p2, p2, v0

    if-eqz p2, :cond_9

    .line 126
    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object p2

    aget-object p2, p2, v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v3, :cond_a

    .line 3197
    :try_start_1
    iget-object p2, v3, Lcom/alipay/sdk/net/b;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 3187
    invoke-interface {p2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 4084
    sput-object v4, Lcom/alipay/sdk/net/b;->b:Lcom/alipay/sdk/net/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 134
    :catchall_1
    :cond_a
    throw p1
.end method
