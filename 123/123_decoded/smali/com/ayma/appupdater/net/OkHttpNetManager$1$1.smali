.class Lcom/ayma/appupdater/net/OkHttpNetManager$1$1;
.super Ljava/lang/Object;
.source "OkHttpNetManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/appupdater/net/OkHttpNetManager$1;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/appupdater/net/OkHttpNetManager$1;

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/ayma/appupdater/net/OkHttpNetManager$1;Ljava/io/IOException;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$1$1;->this$1:Lcom/ayma/appupdater/net/OkHttpNetManager$1;

    iput-object p2, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$1$1;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$1$1;->this$1:Lcom/ayma/appupdater/net/OkHttpNetManager$1;

    iget-object v0, v0, Lcom/ayma/appupdater/net/OkHttpNetManager$1;->val$callBack:Lcom/ayma/appupdater/net/INetCallBack;

    iget-object v1, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$1$1;->val$e:Ljava/io/IOException;

    invoke-interface {v0, v1}, Lcom/ayma/appupdater/net/INetCallBack;->failed(Ljava/lang/Throwable;)V

    return-void
.end method
