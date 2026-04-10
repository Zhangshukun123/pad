.class Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$1;
.super Ljava/lang/Object;
.source "OnlinePayModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->pay(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
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

    .line 78
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

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

    .line 101
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->access$400(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

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

    .line 81
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    .line 82
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->notOk(I)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 87
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 88
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->access$100(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;)Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/bean/PayResult;

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ayma/commonerp/bean/PayResult;

    if-nez p2, :cond_1

    .line 90
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6570\u636e\u8f6c\u6362\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->access$200(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 93
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void

    .line 96
    :cond_2
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->access$300(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 83
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->access$000(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
