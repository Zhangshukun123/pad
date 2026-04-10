.class Lcom/ayma/appupdater/net/OkHttpNetManager$3$2;
.super Ljava/lang/Object;
.source "OkHttpNetManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/appupdater/net/OkHttpNetManager$3;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/appupdater/net/OkHttpNetManager$3;

.field final synthetic val$response:Lokhttp3/Response;


# direct methods
.method constructor <init>(Lcom/ayma/appupdater/net/OkHttpNetManager$3;Lokhttp3/Response;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$3$2;->this$1:Lcom/ayma/appupdater/net/OkHttpNetManager$3;

    iput-object p2, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$3$2;->val$response:Lokhttp3/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 161
    iget-object v0, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$3$2;->this$1:Lcom/ayma/appupdater/net/OkHttpNetManager$3;

    iget-object v0, v0, Lcom/ayma/appupdater/net/OkHttpNetManager$3;->val$callBck:Lcom/ayma/appupdater/net/INetDownloadCallBack;

    new-instance v1, Ljava/lang/Throwable;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$3$2;->val$response:Lokhttp3/Response;

    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$3$2;->val$response:Lokhttp3/Response;

    invoke-virtual {v3}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "%s%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/ayma/appupdater/net/INetDownloadCallBack;->failed(Ljava/lang/Throwable;)V

    return-void
.end method
