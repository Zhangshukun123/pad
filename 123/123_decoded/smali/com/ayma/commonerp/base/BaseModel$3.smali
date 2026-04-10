.class Lcom/ayma/commonerp/base/BaseModel$3;
.super Ljava/lang/Object;
.source "BaseModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/base/BaseModel;->downloadTeamSaleOutList(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/base/BaseModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

.field final synthetic val$paramMap:Ljava/util/TreeMap;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/base/BaseModel;Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/util/TreeMap;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/ayma/commonerp/base/BaseModel$3;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    iput-object p2, p0, Lcom/ayma/commonerp/base/BaseModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iput-object p3, p0, Lcom/ayma/commonerp/base/BaseModel$3;->val$paramMap:Ljava/util/TreeMap;

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

    .line 245
    iget-object p1, p0, Lcom/ayma/commonerp/base/BaseModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel$3;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    invoke-virtual {v0, p2}, Lcom/ayma/commonerp/base/BaseModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

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

    .line 195
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    .line 196
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel$3;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/base/BaseModel;->notOk(I)Z

    move-result v0

    if-nez v0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 200
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/base/BaseModel$3;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/base/BaseModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 201
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object p2

    const-string v0, "400"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 203
    const-class p2, Lcom/ayma/commonerp/bean/WearhouseDataBean;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p2, v0}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 206
    :cond_1
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object p2

    const-string v0, "401"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 208
    iget-object p1, p0, Lcom/ayma/commonerp/base/BaseModel$3;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    iget-object p1, p1, Lcom/ayma/commonerp/base/BaseModel;->context:Landroid/content/Context;

    const-string p2, "userCode"

    const-string v0, ""

    invoke-static {p1, p2, v0}, Lcom/ayma/base/util/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 209
    iget-object p2, p0, Lcom/ayma/commonerp/base/BaseModel$3;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    iget-object p2, p2, Lcom/ayma/commonerp/base/BaseModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryUserPwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel$3;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    new-instance v1, Lcom/ayma/commonerp/base/BaseModel$3$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/base/BaseModel$3$1;-><init>(Lcom/ayma/commonerp/base/BaseModel$3;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/ayma/commonerp/base/BaseModel;->fetchToken(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void

    .line 211
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/base/BaseModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object p2, p0, Lcom/ayma/commonerp/base/BaseModel$3;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    const-string v0, "\u83b7\u53d6\u767b\u5f55\u4fe1\u606f\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/base/BaseModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 232
    :cond_4
    iget-object p2, p0, Lcom/ayma/commonerp/base/BaseModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel$3;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/base/BaseModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 235
    :cond_5
    iget-object p2, p0, Lcom/ayma/commonerp/base/BaseModel$3;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/base/BaseModel;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 236
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 237
    iget-object p2, p0, Lcom/ayma/commonerp/base/BaseModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel$3;->this$0:Lcom/ayma/commonerp/base/BaseModel;

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

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/base/BaseModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 240
    :cond_6
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel$3;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    iget-object v1, p0, Lcom/ayma/commonerp/base/BaseModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/base/BaseModel;->judgeMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, v1, p1}, Lcom/ayma/commonerp/base/BaseModel;->saveTeamSaleOutListData(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/lang/String;)V

    return-void

    .line 197
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/ayma/commonerp/base/BaseModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel$3;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    invoke-virtual {v0, p2}, Lcom/ayma/commonerp/base/BaseModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
