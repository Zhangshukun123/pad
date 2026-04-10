.class Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$3;
.super Ljava/lang/Object;
.source "InvoicingModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->refundOrder(Ljava/util/TreeMap;Lcom/ayma/commonerp/bean/OrderBean;Lcom/ayma/base/mvp/ModelParamCallBack;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

.field final synthetic val$bean:Lcom/ayma/commonerp/bean/OrderBean;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;Lcom/ayma/base/mvp/ModelParamCallBack;Lcom/ayma/commonerp/bean/OrderBean;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$3;->val$bean:Lcom/ayma/commonerp/bean/OrderBean;

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

    .line 272
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->access$1400(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestFailure(Ljava/lang/Throwable;)V

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

    .line 231
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    .line 232
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->notOk(I)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 237
    new-instance p2, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$3$1;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$3$1;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$3;)V

    invoke-static {p2}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    .line 264
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void

    .line 267
    :cond_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->access$1300(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 233
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->access$1000(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
