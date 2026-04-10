.class Lcom/ayma/appupdater/net/OkHttpNetManager$2$2;
.super Ljava/lang/Object;
.source "OkHttpNetManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/appupdater/net/OkHttpNetManager$2;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/appupdater/net/OkHttpNetManager$2;

.field final synthetic val$response:Lokhttp3/Response;


# direct methods
.method constructor <init>(Lcom/ayma/appupdater/net/OkHttpNetManager$2;Lokhttp3/Response;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$2$2;->this$1:Lcom/ayma/appupdater/net/OkHttpNetManager$2;

    iput-object p2, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$2$2;->val$response:Lokhttp3/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$2$2;->val$response:Lokhttp3/Response;

    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 107
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 108
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    iget-object v2, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$2$2;->this$1:Lcom/ayma/appupdater/net/OkHttpNetManager$2;

    iget-object v2, v2, Lcom/ayma/appupdater/net/OkHttpNetManager$2;->val$callBack:Lcom/ayma/appupdater/net/INetCallBack;

    invoke-interface {v2, v1}, Lcom/ayma/appupdater/net/INetCallBack;->success(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 118
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 113
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    iget-object v2, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$2$2;->this$1:Lcom/ayma/appupdater/net/OkHttpNetManager$2;

    iget-object v2, v2, Lcom/ayma/appupdater/net/OkHttpNetManager$2;->val$callBack:Lcom/ayma/appupdater/net/INetCallBack;

    invoke-interface {v2, v1}, Lcom/ayma/appupdater/net/INetCallBack;->failed(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 118
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 120
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_2

    .line 118
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 120
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 123
    :cond_2
    :goto_3
    throw v1
.end method
