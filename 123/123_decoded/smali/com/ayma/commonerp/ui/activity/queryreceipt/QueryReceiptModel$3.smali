.class Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel$3;
.super Ljava/lang/Object;
.source "QueryReceiptModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->deleteReceipt(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
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

    .line 260
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
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

    .line 242
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->notOk(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 243
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->access$1300(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 246
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    if-nez p1, :cond_1

    .line 248
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;

    const-string v0, "\u8fd4\u56de\u7a7a\u6570\u636e"

    invoke-static {p2, v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->access$1400(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 251
    :cond_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 252
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void

    .line 255
    :cond_2
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->access$1500(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
