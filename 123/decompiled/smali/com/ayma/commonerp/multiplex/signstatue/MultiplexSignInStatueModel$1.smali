.class Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel$1;
.super Ljava/lang/Object;
.source "MultiplexSignInStatueModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;->fetchSignInStatueFromServer(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel$1;->this$0:Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;

    iput-object p2, p0, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

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

    .line 57
    iget-object p1, p0, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel$1;->this$0:Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;->access$300(Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

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

    .line 37
    iget-object p1, p0, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel$1;->this$0:Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;->notOk(I)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 41
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    .line 42
    iget-object p2, p0, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel$1;->this$0:Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 43
    iget-object p2, p0, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel$1;->this$0:Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;->access$100(Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 47
    :cond_1
    :try_start_0
    iget-object p2, p0, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel$1;->this$0:Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 48
    iget-object p2, p0, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 50
    iget-object p2, p0, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel$1;->this$0:Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;->access$200(Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    .line 51
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 38
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel$1;->this$0:Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;->access$000(Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
