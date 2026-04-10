.class Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$2;
.super Ljava/lang/Object;
.source "OnlinePayModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->cashToOnline(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

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

    .line 140
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->access$1000(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

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

    .line 115
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    .line 116
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->notOk(I)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 121
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 122
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 123
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->access$600(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;)Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/ayma/commonerp/bean/PayResult;

    invoke-virtual {v1, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ayma/commonerp/bean/PayResult;

    if-nez p2, :cond_1

    .line 125
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6570\u636e\u8f6c\u6362\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->access$700(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 128
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void

    .line 131
    :cond_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    invoke-static {p2, v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->access$800(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 133
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->access$900(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestFailure(Ljava/lang/Throwable;)V

    .line 134
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 117
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->access$500(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
