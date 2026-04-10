.class Lcom/ayma/appupdater/net/OkHttpNetManager$1$2;
.super Ljava/lang/Object;
.source "OkHttpNetManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/appupdater/net/OkHttpNetManager$1;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/appupdater/net/OkHttpNetManager$1;

.field final synthetic val$response:Lokhttp3/Response;


# direct methods
.method constructor <init>(Lcom/ayma/appupdater/net/OkHttpNetManager$1;Lokhttp3/Response;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$1$2;->this$1:Lcom/ayma/appupdater/net/OkHttpNetManager$1;

    iput-object p2, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$1$2;->val$response:Lokhttp3/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$1$2;->this$1:Lcom/ayma/appupdater/net/OkHttpNetManager$1;

    iget-object v0, v0, Lcom/ayma/appupdater/net/OkHttpNetManager$1;->val$callBack:Lcom/ayma/appupdater/net/INetCallBack;

    iget-object v1, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$1$2;->val$response:Lokhttp3/Response;

    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/appupdater/net/INetCallBack;->success(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    iget-object v1, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$1$2;->this$1:Lcom/ayma/appupdater/net/OkHttpNetManager$1;

    iget-object v1, v1, Lcom/ayma/appupdater/net/OkHttpNetManager$1;->val$callBack:Lcom/ayma/appupdater/net/INetCallBack;

    invoke-interface {v1, v0}, Lcom/ayma/appupdater/net/INetCallBack;->failed(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
