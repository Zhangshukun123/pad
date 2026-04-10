.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$3;
.super Ljava/lang/Object;
.source "StockInEditModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->fetchGoodsData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
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

.field final synthetic val$modelParamCallBack:Lcom/ayma/base/mvp/ModelParamCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$3;->val$modelParamCallBack:Lcom/ayma/base/mvp/ModelParamCallBack;

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

    .line 277
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$3;->val$modelParamCallBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$2400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

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

    .line 251
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->notOk(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 252
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$3;->val$modelParamCallBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$1800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 255
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    if-nez p1, :cond_1

    .line 257
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$3;->val$modelParamCallBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    const-string v0, "\u8fd4\u56de\u7a7a\u6570\u636e"

    invoke-static {p2, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$1900(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 260
    :cond_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 261
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$2000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 262
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 263
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$2100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Lcom/google/gson/Gson;

    move-result-object p2

    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$3$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$3$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$3;)V

    .line 264
    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$3$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 263
    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 265
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$2000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 266
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$2200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 267
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$2200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getBillNo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->setBillNo(Ljava/lang/String;)V

    .line 269
    :cond_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$3;->val$modelParamCallBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$2000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void

    .line 272
    :cond_3
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$3;->val$modelParamCallBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$2300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
