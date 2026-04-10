.class final Lcom/vondear/rxfeature/module/alipay/AliPayTool$2;
.super Ljava/lang/Object;
.source "AliPayTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vondear/rxfeature/module/alipay/AliPayTool;->aliPay(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/String;Lcom/vondear/rxfeature/module/alipay/AliPayModel;Lcom/vondear/rxtool/interfaces/OnSuccessAndErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$orderInfo:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/vondear/rxfeature/module/alipay/AliPayTool$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/vondear/rxfeature/module/alipay/AliPayTool$2;->val$orderInfo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 65
    new-instance v0, Lcom/alipay/sdk/app/PayTask;

    iget-object v1, p0, Lcom/vondear/rxfeature/module/alipay/AliPayTool$2;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    .line 66
    iget-object v1, p0, Lcom/vondear/rxfeature/module/alipay/AliPayTool$2;->val$orderInfo:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/sdk/app/PayTask;->payV2(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "msp"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 70
    iput v2, v1, Landroid/os/Message;->what:I

    .line 71
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 72
    invoke-static {}, Lcom/vondear/rxfeature/module/alipay/AliPayTool;->access$100()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
