.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$10;
.super Ljava/lang/Object;
.source "StockInEditModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->checkCommit(Lcom/ayma/base/mvp/ModelParamCallBack;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 0

    .line 902
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$10;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$10;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

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

    .line 923
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$10;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$10;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$6500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestFailure(Ljava/lang/Throwable;)V

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

    .line 905
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$10;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->notOk(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 906
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$10;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$10;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$6200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 909
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    if-nez p1, :cond_1

    .line 911
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$10;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$10;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    const-string v0, "\u8fd4\u56de\u7a7a\u6570\u636e"

    invoke-static {p2, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$6300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 914
    :cond_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$10;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 915
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$10;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$10;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$2200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void

    .line 918
    :cond_2
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$10;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$10;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$6400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
