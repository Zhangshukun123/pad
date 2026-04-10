.class Lcom/ayma/appupdater/net/OkHttpNetManager$3$5;
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

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/ayma/appupdater/net/OkHttpNetManager$3;Ljava/lang/Exception;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$3$5;->this$1:Lcom/ayma/appupdater/net/OkHttpNetManager$3;

    iput-object p2, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$3$5;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$3$5;->this$1:Lcom/ayma/appupdater/net/OkHttpNetManager$3;

    iget-object v0, v0, Lcom/ayma/appupdater/net/OkHttpNetManager$3;->val$callBck:Lcom/ayma/appupdater/net/INetDownloadCallBack;

    iget-object v1, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$3$5;->val$e:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/ayma/appupdater/net/INetDownloadCallBack;->failed(Ljava/lang/Throwable;)V

    return-void
.end method
