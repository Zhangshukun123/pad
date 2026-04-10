.class public Lcom/ayma/commonerp/util/DownloadUtil;
.super Ljava/lang/Object;
.source "DownloadUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/util/DownloadUtil$DownloadListener;
    }
.end annotation


# static fields
.field private static sBufferSize:I = 0x2000


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Lretrofit2/Response;Lcom/ayma/commonerp/util/DownloadUtil$DownloadListener;)V
    .locals 0

    .line 25
    invoke-static {p0, p1, p2}, Lcom/ayma/commonerp/util/DownloadUtil;->writeResponseToDisk(Ljava/lang/String;Lretrofit2/Response;Lcom/ayma/commonerp/util/DownloadUtil$DownloadListener;)V

    return-void
.end method

.method public static download(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/commonerp/util/DownloadUtil$DownloadListener;)V
    .locals 2

    .line 27
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    sget-object v1, Lcom/ayma/commonerp/net/NetConfig;->BASE_ADDRESS_INTERFACE:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 30
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->callbackExecutor(Ljava/util/concurrent/Executor;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    .line 32
    const-class v1, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/net/Api;

    invoke-interface {v0, p0}, Lcom/ayma/commonerp/net/Api;->download(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    .line 33
    new-instance v0, Lcom/ayma/commonerp/util/DownloadUtil$1;

    invoke-direct {v0, p1, p2}, Lcom/ayma/commonerp/util/DownloadUtil$1;-><init>(Ljava/lang/String;Lcom/ayma/commonerp/util/DownloadUtil$DownloadListener;)V

    invoke-interface {p0, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private static writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;JLcom/ayma/commonerp/util/DownloadUtil$DownloadListener;)V
    .locals 7

    .line 58
    invoke-interface {p4}, Lcom/ayma/commonerp/util/DownloadUtil$DownloadListener;->onStart()V

    .line 59
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 63
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 66
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "createNewFile IOException"

    .line 69
    invoke-interface {p4, v0}, Lcom/ayma/commonerp/util/DownloadUtil$DownloadListener;->onFail(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 75
    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    :try_start_2
    sget v0, Lcom/ayma/commonerp/util/DownloadUtil;->sBufferSize:I

    new-array v0, v0, [B

    .line 78
    :goto_1
    sget v4, Lcom/ayma/commonerp/util/DownloadUtil;->sBufferSize:I

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_2

    .line 79
    invoke-virtual {v3, v0, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v4, v4

    add-long/2addr v1, v4

    const-wide/16 v4, 0x64

    mul-long v4, v4, v1

    .line 82
    div-long/2addr v4, p2

    long-to-int v5, v4

    invoke-interface {p4, v5}, Lcom/ayma/commonerp/util/DownloadUtil$DownloadListener;->onProgress(I)V

    goto :goto_1

    .line 85
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p0}, Lcom/ayma/commonerp/util/DownloadUtil$DownloadListener;->onFinish(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 93
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 97
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_5

    :catchall_0
    move-exception p0

    move-object v0, v3

    goto :goto_6

    :catch_2
    move-exception p0

    move-object v0, v3

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_3
    move-exception p0

    .line 87
    :goto_3
    :try_start_5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const-string p0, "IOException"

    .line 88
    invoke-interface {p4, p0}, Lcom/ayma/commonerp/util/DownloadUtil$DownloadListener;->onFail(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 91
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    .line 93
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    if-eqz v0, :cond_3

    .line 97
    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_5

    :catch_5
    move-exception p0

    .line 100
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_5
    return-void

    .line 91
    :goto_6
    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_7

    :catch_6
    move-exception p1

    .line 93
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_7
    if-eqz v0, :cond_4

    .line 97
    :try_start_9
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_8

    :catch_7
    move-exception p1

    .line 100
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 102
    :cond_4
    :goto_8
    throw p0
.end method

.method private static writeResponseToDisk(Ljava/lang/String;Lretrofit2/Response;Lcom/ayma/commonerp/util/DownloadUtil$DownloadListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit2/Response<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Lcom/ayma/commonerp/util/DownloadUtil$DownloadListener;",
            ")V"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/ResponseBody;

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v1

    invoke-static {v0, p0, v1, v2, p2}, Lcom/ayma/commonerp/util/DownloadUtil;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;JLcom/ayma/commonerp/util/DownloadUtil$DownloadListener;)V

    return-void
.end method
