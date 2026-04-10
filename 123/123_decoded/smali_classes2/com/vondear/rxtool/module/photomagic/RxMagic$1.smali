.class Lcom/vondear/rxtool/module/photomagic/RxMagic$1;
.super Ljava/lang/Object;
.source "RxMagic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vondear/rxtool/module/photomagic/RxMagic;->launch(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vondear/rxtool/module/photomagic/RxMagic;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vondear/rxtool/module/photomagic/RxMagic;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic$1;->this$0:Lcom/vondear/rxtool/module/photomagic/RxMagic;

    iput-object p2, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic$1;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic$1;->this$0:Lcom/vondear/rxtool/module/photomagic/RxMagic;

    invoke-static {v0}, Lcom/vondear/rxtool/module/photomagic/RxMagic;->access$400(Lcom/vondear/rxtool/module/photomagic/RxMagic;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic$1;->this$0:Lcom/vondear/rxtool/module/photomagic/RxMagic;

    invoke-static {v1}, Lcom/vondear/rxtool/module/photomagic/RxMagic;->access$400(Lcom/vondear/rxtool/module/photomagic/RxMagic;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 121
    iget-object v0, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic$1;->this$0:Lcom/vondear/rxtool/module/photomagic/RxMagic;

    invoke-static {v0}, Lcom/vondear/rxtool/module/photomagic/RxMagic;->access$500(Lcom/vondear/rxtool/module/photomagic/RxMagic;)I

    move-result v0

    iget-object v1, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic$1;->val$path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vondear/rxtool/module/photomagic/Checker;->isNeedCompress(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/vondear/rxtool/module/photomagic/Engine;

    iget-object v1, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic$1;->val$path:Ljava/lang/String;

    iget-object v2, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic$1;->this$0:Lcom/vondear/rxtool/module/photomagic/RxMagic;

    iget-object v3, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic$1;->val$path:Ljava/lang/String;

    .line 122
    invoke-static {v4}, Lcom/vondear/rxtool/module/photomagic/Checker;->checkSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/vondear/rxtool/module/photomagic/RxMagic;->access$600(Lcom/vondear/rxtool/module/photomagic/RxMagic;Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vondear/rxtool/module/photomagic/Engine;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v0}, Lcom/vondear/rxtool/module/photomagic/Engine;->compress()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic$1;->val$path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    :goto_0
    iget-object v1, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic$1;->this$0:Lcom/vondear/rxtool/module/photomagic/RxMagic;

    invoke-static {v1}, Lcom/vondear/rxtool/module/photomagic/RxMagic;->access$400(Lcom/vondear/rxtool/module/photomagic/RxMagic;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic$1;->this$0:Lcom/vondear/rxtool/module/photomagic/RxMagic;

    invoke-static {v2}, Lcom/vondear/rxtool/module/photomagic/RxMagic;->access$400(Lcom/vondear/rxtool/module/photomagic/RxMagic;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 127
    iget-object v1, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic$1;->this$0:Lcom/vondear/rxtool/module/photomagic/RxMagic;

    invoke-static {v1}, Lcom/vondear/rxtool/module/photomagic/RxMagic;->access$400(Lcom/vondear/rxtool/module/photomagic/RxMagic;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic$1;->this$0:Lcom/vondear/rxtool/module/photomagic/RxMagic;

    invoke-static {v2}, Lcom/vondear/rxtool/module/photomagic/RxMagic;->access$400(Lcom/vondear/rxtool/module/photomagic/RxMagic;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void
.end method
