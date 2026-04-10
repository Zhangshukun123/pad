.class Lcom/ayma/appupdater/net/OkHttpNetManager$2;
.super Ljava/lang/Object;
.source "OkHttpNetManager.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/appupdater/net/OkHttpNetManager;->getUpdateInfoFromFile(Ljava/lang/String;Lcom/ayma/appupdater/net/INetCallBack;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/appupdater/net/OkHttpNetManager;

.field final synthetic val$callBack:Lcom/ayma/appupdater/net/INetCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/appupdater/net/OkHttpNetManager;Lcom/ayma/appupdater/net/INetCallBack;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$2;->this$0:Lcom/ayma/appupdater/net/OkHttpNetManager;

    iput-object p2, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$2;->val$callBack:Lcom/ayma/appupdater/net/INetCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 88
    invoke-static {}, Lcom/ayma/appupdater/net/OkHttpNetManager;->access$000()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/ayma/appupdater/net/OkHttpNetManager$2$1;

    invoke-direct {v0, p0, p2}, Lcom/ayma/appupdater/net/OkHttpNetManager$2$1;-><init>(Lcom/ayma/appupdater/net/OkHttpNetManager$2;Ljava/io/IOException;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-static {}, Lcom/ayma/appupdater/net/OkHttpNetManager;->access$000()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/ayma/appupdater/net/OkHttpNetManager$2$2;

    invoke-direct {v0, p0, p2}, Lcom/ayma/appupdater/net/OkHttpNetManager$2$2;-><init>(Lcom/ayma/appupdater/net/OkHttpNetManager$2;Lokhttp3/Response;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
