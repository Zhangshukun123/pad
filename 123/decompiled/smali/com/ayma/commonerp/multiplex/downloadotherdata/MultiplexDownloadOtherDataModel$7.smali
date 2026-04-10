.class Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$7;
.super Ljava/lang/Object;
.source "MultiplexDownloadOtherDataModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;->downloadBasic(Lcom/ayma/base/mvp/ModelParamCallBack;)V
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

    .line 251
    iput-object p1, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$7;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;

    iput-object p2, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$7;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

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

    .line 273
    iget-object p1, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$7;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$7;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;->access$1500(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

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

    .line 254
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    .line 255
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$7;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;->notOk(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object p1, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$7;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$7;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;->access$1200(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 260
    iget-object p1, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$7;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object p2, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$7;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;

    const-string v0, "\u8fd4\u56de\u6570\u636e\u4e3a\u7a7a"

    invoke-static {p2, v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;->access$1300(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 263
    :cond_1
    iget-object p2, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$7;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 264
    iget-object p2, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$7;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$7;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;->access$1400(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 267
    :cond_2
    iget-object p2, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$7;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 268
    iget-object p2, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$7;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;

    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel$7;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-virtual {p2, p1, v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataModel;->saveBasic(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method
