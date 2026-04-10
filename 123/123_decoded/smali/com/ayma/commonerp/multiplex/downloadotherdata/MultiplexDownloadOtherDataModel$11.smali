.class Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$11;
.super Ljava/lang/Object;
.source "MultiplexDownloadOtherDataModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;->downloadTeamData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$11;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;

    iput-object p2, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$11;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onResponse$0$MultiplexDownloadOtherDataModel$11(Lcom/ayma/commonerp/bean/RequestHeaderBean;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 4

    const-string v0, "-"

    .line 407
    :try_start_0
    iget-object v1, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$11;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 409
    iget-object v1, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$11;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6570\u636e\u6709\u8bef"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;->access$2400(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 412
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$11;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;

    invoke-static {p1}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;->access$2500(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;)V

    .line 413
    iget-object p1, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$11;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;

    invoke-static {p1}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;->access$2600(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;)Lcom/google/gson/Gson;

    move-result-object p1

    new-instance v0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$11$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$11$1;-><init>(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$11;)V

    .line 414
    invoke-virtual {v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$11$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 413
    invoke-virtual {p1, v1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1

    .line 416
    iget-object p1, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$11;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6570\u636e\u8f6c\u6362\u5931\u8d25\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;->access$2700(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 419
    :cond_1
    const-class v0, Lcom/ayma/commonerp/bean/TeamDataBean;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 420
    invoke-static {p1}, Lorg/litepal/Operator;->saveAll(Ljava/util/Collection;)Z

    const/4 p1, 0x6

    .line 421
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 423
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$11;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;->access$2800(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    .line 424
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

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

    .line 432
    iget-object p1, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$11;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$11;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;->access$2300(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

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

    .line 392
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    .line 393
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$11;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;->notOk(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object p1, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$11;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$11;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;->access$2000(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 398
    iget-object p1, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$11;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object p2, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$11;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;

    const-string v0, "\u8fd4\u56de\u6570\u636e\u4e3a\u7a7a"

    invoke-static {p2, v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;->access$2100(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 401
    :cond_1
    iget-object p2, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$11;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 402
    iget-object p2, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$11;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$11;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;->access$2200(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 405
    :cond_2
    iget-object p2, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$11;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    new-instance v0, Lcom/ayma/commonerp/multiplex/downloadotherdata/-$$Lambda$MultiplexDownloadOtherDataModel$11$WRQzunuc_z9t291t2bqMoLychls;

    invoke-direct {v0, p0, p1, p2}, Lcom/ayma/commonerp/multiplex/downloadotherdata/-$$Lambda$MultiplexDownloadOtherDataModel$11$WRQzunuc_z9t291t2bqMoLychls;-><init>(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$11;Lcom/ayma/commonerp/bean/RequestHeaderBean;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    invoke-static {v0}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
