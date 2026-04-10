.class Lcom/ayma/appupdater/net/OkHttpNetManager$3$4;
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


# direct methods
.method constructor <init>(Lcom/ayma/appupdater/net/OkHttpNetManager$3;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$3$4;->this$1:Lcom/ayma/appupdater/net/OkHttpNetManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$3$4;->this$1:Lcom/ayma/appupdater/net/OkHttpNetManager$3;

    iget-object v0, v0, Lcom/ayma/appupdater/net/OkHttpNetManager$3;->val$callBck:Lcom/ayma/appupdater/net/INetDownloadCallBack;

    iget-object v1, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$3$4;->this$1:Lcom/ayma/appupdater/net/OkHttpNetManager$3;

    iget-object v1, v1, Lcom/ayma/appupdater/net/OkHttpNetManager$3;->val$targetFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/ayma/appupdater/net/INetDownloadCallBack;->success(Ljava/io/File;)V

    return-void
.end method
