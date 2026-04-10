.class Lcom/ayma/appupdater/net/OkHttpNetManager$3;
.super Ljava/lang/Object;
.source "OkHttpNetManager.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/appupdater/net/OkHttpNetManager;->download(Ljava/lang/String;Ljava/io/File;Lcom/ayma/appupdater/net/INetDownloadCallBack;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/appupdater/net/OkHttpNetManager;

.field final synthetic val$callBck:Lcom/ayma/appupdater/net/INetDownloadCallBack;

.field final synthetic val$targetFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/ayma/appupdater/net/OkHttpNetManager;Lcom/ayma/appupdater/net/INetDownloadCallBack;Ljava/io/File;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$3;->this$0:Lcom/ayma/appupdater/net/OkHttpNetManager;

    iput-object p2, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$3;->val$callBck:Lcom/ayma/appupdater/net/INetDownloadCallBack;

    iput-object p3, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$3;->val$targetFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 147
    invoke-static {}, Lcom/ayma/appupdater/net/OkHttpNetManager;->access$000()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/ayma/appupdater/net/OkHttpNetManager$3$1;

    invoke-direct {v0, p0, p2}, Lcom/ayma/appupdater/net/OkHttpNetManager$3$1;-><init>(Lcom/ayma/appupdater/net/OkHttpNetManager$3;Ljava/io/IOException;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    .line 157
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 158
    invoke-static {}, Lcom/ayma/appupdater/net/OkHttpNetManager;->access$000()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ayma/appupdater/net/OkHttpNetManager$3$2;

    move-object/from16 v2, p2

    invoke-direct {v1, v7, v2}, Lcom/ayma/appupdater/net/OkHttpNetManager$3$2;-><init>(Lcom/ayma/appupdater/net/OkHttpNetManager$3;Lokhttp3/Response;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    move-object/from16 v2, p2

    const/4 v1, 0x0

    .line 169
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v8

    .line 170
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 171
    :try_start_1
    new-instance v11, Ljava/io/FileOutputStream;

    iget-object v0, v7, Lcom/ayma/appupdater/net/OkHttpNetManager$3;->val$targetFile:Ljava/io/File;

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v0, 0x2000

    :try_start_2
    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    .line 175
    :goto_0
    invoke-interface/range {p1 .. p1}, Lokhttp3/Call;->isCanceled()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    invoke-virtual {v10, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 176
    invoke-virtual {v11, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 177
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    int-to-long v3, v3

    add-long v12, v1, v3

    .line 180
    invoke-static {}, Lcom/ayma/appupdater/net/OkHttpNetManager;->access$000()Landroid/os/Handler;

    move-result-object v14

    new-instance v15, Lcom/ayma/appupdater/net/OkHttpNetManager$3$3;

    move-object v1, v15

    move-object/from16 v2, p0

    move-wide v3, v12

    move-wide v5, v8

    invoke-direct/range {v1 .. v6}, Lcom/ayma/appupdater/net/OkHttpNetManager$3$3;-><init>(Lcom/ayma/appupdater/net/OkHttpNetManager$3;JJ)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide v1, v12

    goto :goto_0

    .line 187
    :cond_1
    invoke-interface/range {p1 .. p1}, Lokhttp3/Call;->isCanceled()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    if-eqz v10, :cond_2

    .line 212
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 215
    :cond_2
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    return-void

    .line 190
    :cond_3
    :try_start_3
    iget-object v0, v7, Lcom/ayma/appupdater/net/OkHttpNetManager$3;->val$targetFile:Ljava/io/File;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 191
    iget-object v0, v7, Lcom/ayma/appupdater/net/OkHttpNetManager$3;->val$targetFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->setReadable(Z)Z

    .line 192
    iget-object v0, v7, Lcom/ayma/appupdater/net/OkHttpNetManager$3;->val$targetFile:Ljava/io/File;

    invoke-virtual {v0, v1, v4}, Ljava/io/File;->setWritable(ZZ)Z

    .line 193
    invoke-static {}, Lcom/ayma/appupdater/net/OkHttpNetManager;->access$000()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ayma/appupdater/net/OkHttpNetManager$3$4;

    invoke-direct {v1, v7}, Lcom/ayma/appupdater/net/OkHttpNetManager$3$4;-><init>(Lcom/ayma/appupdater/net/OkHttpNetManager$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v10, :cond_8

    .line 212
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v11, v1

    :goto_1
    move-object v1, v10

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v11, v1

    :goto_2
    move-object v1, v10

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v11, v1

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v11, v1

    .line 200
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    invoke-interface/range {p1 .. p1}, Lokhttp3/Call;->isCanceled()Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v2, :cond_6

    if-eqz v1, :cond_4

    .line 212
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz v11, :cond_5

    .line 215
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    :cond_5
    return-void

    .line 204
    :cond_6
    :try_start_5
    invoke-static {}, Lcom/ayma/appupdater/net/OkHttpNetManager;->access$000()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/ayma/appupdater/net/OkHttpNetManager$3$5;

    invoke-direct {v3, v7, v0}, Lcom/ayma/appupdater/net/OkHttpNetManager$3$5;-><init>(Lcom/ayma/appupdater/net/OkHttpNetManager$3;Ljava/lang/Exception;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v1, :cond_7

    .line 212
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz v11, :cond_9

    .line 215
    :cond_8
    :goto_4
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    :cond_9
    return-void

    :catchall_3
    move-exception v0

    :goto_5
    if-eqz v1, :cond_a

    .line 212
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_a
    if-eqz v11, :cond_b

    .line 215
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    .line 217
    :cond_b
    throw v0
.end method
