.class final Lcom/vondear/rxfeature/module/alipay/AliPayTool$1;
.super Landroid/os/Handler;
.source "AliPayTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vondear/rxfeature/module/alipay/AliPayTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 27
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Lcom/vondear/rxfeature/module/alipay/PayResult;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    invoke-direct {v0, p1}, Lcom/vondear/rxfeature/module/alipay/PayResult;-><init>(Ljava/util/Map;)V

    .line 34
    invoke-virtual {v0}, Lcom/vondear/rxfeature/module/alipay/PayResult;->getResult()Ljava/lang/String;

    .line 35
    invoke-virtual {v0}, Lcom/vondear/rxfeature/module/alipay/PayResult;->getResultStatus()Ljava/lang/String;

    move-result-object p1

    const-string v0, "9000"

    .line 37
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-static {}, Lcom/vondear/rxfeature/module/alipay/AliPayTool;->access$000()Lcom/vondear/rxtool/interfaces/OnSuccessAndErrorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/vondear/rxtool/interfaces/OnSuccessAndErrorListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_1
    invoke-static {}, Lcom/vondear/rxfeature/module/alipay/AliPayTool;->access$000()Lcom/vondear/rxtool/interfaces/OnSuccessAndErrorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/vondear/rxtool/interfaces/OnSuccessAndErrorListener;->onError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
