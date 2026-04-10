.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;
.super Ljava/lang/Object;
.source "StockInModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->run()V
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
.field final synthetic this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;

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

    .line 348
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->access$4400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1$8;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1$8;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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

    .line 253
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->notOk(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 254
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->access$3000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1$1;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;Lretrofit2/Response;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 262
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    if-nez p1, :cond_1

    .line 264
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->access$3200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1$2;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1$2;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 272
    :cond_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 273
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->access$3400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1$3;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1$3;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;Lcom/ayma/commonerp/bean/RequestHeaderBean;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 281
    :cond_2
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 282
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 283
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->access$3600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1$4;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1$4;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;Lcom/ayma/commonerp/bean/RequestHeaderBean;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 291
    :cond_3
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->access$3700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)V

    .line 292
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->access$3800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/bean/data/stock/in/StockInQueryBean;

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ayma/commonerp/bean/data/stock/in/StockInQueryBean;

    if-nez p2, :cond_4

    .line 294
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->access$4000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1$5;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1$5;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;Lcom/ayma/commonerp/bean/RequestHeaderBean;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 302
    :cond_4
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/in/StockInQueryBean;->getCurrent()I

    .line 303
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/in/StockInQueryBean;->getRecords()Ljava/util/List;

    move-result-object p1

    .line 331
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->access$4100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 332
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->access$4100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Ljava/util/List;

    move-result-object p1

    new-instance p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1$6;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1$6;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 338
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->access$4200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1$7;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1$7;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
