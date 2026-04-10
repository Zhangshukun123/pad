.class Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel$1;
.super Ljava/lang/Object;
.source "MultiplexDownloadGoodsModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;->downloadGoodsData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;

    iput-object p2, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

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

    .line 91
    iget-object p1, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;->access$400(Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
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

    const-string p1, "-"

    .line 67
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;->notOk(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 71
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    .line 72
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;->requestResult(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    iget-object p1, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;->access$100(Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 77
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v1, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6570\u636e\u6709\u8bef\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;->access$200(Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 82
    :cond_2
    iget-object p1, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;

    iget-object p2, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-virtual {p1, v0, p2}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;->saveGoodsData(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 84
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    iget-object p2, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;->access$300(Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 68
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;->access$000(Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
