.class Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$4;
.super Ljava/lang/Object;
.source "TeamReturnModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->getTeamTrainStock(Ljava/util/TreeMap;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

.field final synthetic val$dataStore:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/lang/String;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$4;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$4;->val$dataStore:Ljava/lang/String;

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

    .line 490
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$4;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->access$2600(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

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

    .line 464
    :try_start_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    .line 465
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->notOk(I)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 469
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 470
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$4;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->access$2100(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 473
    :cond_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 474
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->access$2200(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;)V

    .line 475
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->access$2300(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;)Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$4$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$4$1;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$4;)V

    .line 476
    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$4$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 475
    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    .line 478
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$4;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6570\u636e\u8f6c\u6362\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->access$2400(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 481
    :cond_2
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$4;->val$dataStore:Ljava/lang/String;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$4;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->judgeMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, v1, v2, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->addTrainStock(Ljava/util/List;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/lang/String;)V

    goto :goto_1

    .line 466
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$4;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->access$2000(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 483
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$4;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->access$2500(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    .line 484
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
