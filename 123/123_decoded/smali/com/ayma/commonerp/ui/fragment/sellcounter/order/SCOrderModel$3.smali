.class Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$3;
.super Ljava/lang/Object;
.source "SCOrderModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->refundOrder(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/ayma/commonerp/bean/ShopResultBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$3;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

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
            "Lcom/ayma/commonerp/bean/ShopResultBean;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 141
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$3;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->access$1400(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/ayma/commonerp/bean/ShopResultBean;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/ayma/commonerp/bean/ShopResultBean;",
            ">;)V"
        }
    .end annotation

    .line 123
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$3;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->notOk(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$3;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->access$1100(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 127
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/ShopResultBean;

    if-nez p1, :cond_1

    .line 129
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$3;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;

    const-string v0, "\u8fd4\u56de\u7a7a\u6570\u636e"

    invoke-static {p2, v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->access$1200(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 132
    :cond_1
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/ShopResultBean;->isSuccess()Z

    move-result p2

    if-nez p2, :cond_2

    .line 133
    iget-object p2, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$3;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/ShopResultBean;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/ShopResultBean;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%s %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->access$1300(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 136
    :cond_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void
.end method
