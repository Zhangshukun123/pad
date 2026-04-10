.class Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$1;
.super Ljava/lang/Object;
.source "SCOrderModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->fetchOrder(Ljava/util/TreeMap;ILcom/ayma/base/mvp/ModelCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/ayma/commonerp/bean/RequestHeaderBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

.field final synthetic val$orderType:I


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;Lcom/ayma/base/mvp/ModelCallBack;I)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iput p3, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$1;->val$orderType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/ayma/commonerp/bean/RequestHeaderBean;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 73
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->access$600(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/ayma/commonerp/bean/RequestHeaderBean;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/ayma/commonerp/bean/RequestHeaderBean;",
            ">;)V"
        }
    .end annotation

    .line 43
    :try_start_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->notOk(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->access$000(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 47
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    if-nez p1, :cond_1

    .line 49
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;

    const-string v0, "\u8fd4\u56de\u7a7a\u6570\u636e"

    invoke-static {p2, v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->access$100(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 52
    :cond_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 53
    iget-object p2, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->access$200(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 56
    :cond_2
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object p1

    .line 57
    iget-object p2, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 58
    iget-object p2, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->access$400(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->access$300(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;)Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$1$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$1$1;-><init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$1;)V

    .line 59
    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 58
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->access$400(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ayma/commonerp/bean/SCOrderBean;

    .line 61
    iget v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$1;->val$orderType:I

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/bean/SCOrderBean;->setType(I)V

    goto :goto_0

    .line 63
    :cond_3
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 65
    iget-object p2, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->access$500(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    .line 66
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
