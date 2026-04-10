.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5$1;
.super Ljava/lang/Object;
.source "StockOutModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;->run()V
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
.field final synthetic this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;

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

    .line 481
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->access$4200(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5$1$5;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5$1$5;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5$1;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 5
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

    .line 392
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->notOk(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 393
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->access$3000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 396
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    if-nez p1, :cond_1

    .line 398
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    const-string v0, "\u8fd4\u56de\u7a7a\u6570\u636e"

    invoke-static {p2, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->access$3100(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 401
    :cond_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 402
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->access$3200(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 405
    :cond_2
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 406
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 407
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->access$3400(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5$1$1;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5$1$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5$1;Lcom/ayma/commonerp/bean/RequestHeaderBean;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 415
    :cond_3
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->access$3500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)V

    .line 416
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->access$3600(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/bean/data/stock/out/StockOut;

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ayma/commonerp/bean/data/stock/out/StockOut;

    if-nez p2, :cond_4

    .line 418
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->access$3800(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5$1$2;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5$1$2;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5$1;Lcom/ayma/commonerp/bean/RequestHeaderBean;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 427
    :cond_4
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/out/StockOut;->getRecords()Ljava/util/List;

    move-result-object p1

    .line 429
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    const/4 v2, 0x1

    .line 430
    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->setUploadStatue(I)V

    .line 431
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getCreateDate()Ljava/lang/String;

    move-result-object v2

    const-string v3, "yyyyMMdd HH:mm:ss"

    const-string v4, "yyyyMMddHHmmss"

    invoke-static {v2, v3, v4}, Lcom/ayma/base/util/DateTimeUtils;->formatDateStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->setCreateDate(Ljava/lang/String;)V

    goto :goto_0

    .line 433
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 462
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->access$2900(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 463
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->access$2900(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5$1$3;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5$1$3;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5$1;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 470
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/out/StockOut;->getCurrent()I

    move-result p2

    invoke-static {p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->access$3902(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;I)I

    .line 471
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->access$4000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5$1$4;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5$1$4;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
