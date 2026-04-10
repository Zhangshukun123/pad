.class final Lcom/vondear/rxfeature/module/wechat/pay/WechatPayTools$2;
.super Ljava/lang/Object;
.source "WechatPayTools.java"

# interfaces
.implements Lcom/vondear/rxfeature/module/wechat/pay/WechatPay$WXPayResultCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vondear/rxfeature/module/wechat/pay/WechatPayTools;->doWXPay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/vondear/rxtool/interfaces/OnSuccessAndErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$onRxHttpString:Lcom/vondear/rxtool/interfaces/OnSuccessAndErrorListener;


# direct methods
.method constructor <init>(Lcom/vondear/rxtool/interfaces/OnSuccessAndErrorListener;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPayTools$2;->val$onRxHttpString:Lcom/vondear/rxtool/interfaces/OnSuccessAndErrorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    const-string v0, "\u652f\u4ed8\u53d6\u6d88"

    .line 268
    invoke-static {v0}, Lcom/vondear/rxtool/view/RxToast;->error(Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPayTools$2;->val$onRxHttpString:Lcom/vondear/rxtool/interfaces/OnSuccessAndErrorListener;

    invoke-interface {v1, v0}, Lcom/vondear/rxtool/interfaces/OnSuccessAndErrorListener;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onError(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "\u652f\u4ed8\u5931\u8d25"

    .line 260
    invoke-static {p1}, Lcom/vondear/rxtool/view/RxToast;->error(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPayTools$2;->val$onRxHttpString:Lcom/vondear/rxtool/interfaces/OnSuccessAndErrorListener;

    invoke-interface {v0, p1}, Lcom/vondear/rxtool/interfaces/OnSuccessAndErrorListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "\u53c2\u6570\u9519\u8bef"

    .line 255
    invoke-static {p1}, Lcom/vondear/rxtool/view/RxToast;->error(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPayTools$2;->val$onRxHttpString:Lcom/vondear/rxtool/interfaces/OnSuccessAndErrorListener;

    invoke-interface {v0, p1}, Lcom/vondear/rxtool/interfaces/OnSuccessAndErrorListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "\u672a\u5b89\u88c5\u5fae\u4fe1\u6216\u5fae\u4fe1\u7248\u672c\u8fc7\u4f4e"

    .line 250
    invoke-static {p1}, Lcom/vondear/rxtool/view/RxToast;->error(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPayTools$2;->val$onRxHttpString:Lcom/vondear/rxtool/interfaces/OnSuccessAndErrorListener;

    invoke-interface {v0, p1}, Lcom/vondear/rxtool/interfaces/OnSuccessAndErrorListener;->onError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    const-string v0, "\u5fae\u4fe1\u652f\u4ed8\u6210\u529f"

    .line 242
    invoke-static {v0}, Lcom/vondear/rxtool/view/RxToast;->success(Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPayTools$2;->val$onRxHttpString:Lcom/vondear/rxtool/interfaces/OnSuccessAndErrorListener;

    invoke-interface {v1, v0}, Lcom/vondear/rxtool/interfaces/OnSuccessAndErrorListener;->onSuccess(Ljava/lang/String;)V

    return-void
.end method
