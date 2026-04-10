.class Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel$1;
.super Ljava/lang/Object;
.source "QuerySellGetMoneyModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;->querySellGetMoneyData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

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

    .line 70
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;->access$500(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

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

    .line 45
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    .line 46
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;->notOk(I)Z

    move-result p2

    if-nez p2, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    .line 50
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 51
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;->access$100(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 54
    :cond_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 55
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;->access$200(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;)Lcom/google/gson/Gson;

    move-result-object p2

    new-instance v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel$1$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel$1$1;-><init>(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel$1;)V

    .line 56
    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 55
    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    .line 58
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;

    const-string v0, "\u6570\u636e\u8f6c\u6362\u5931\u8d25"

    invoke-static {p2, v0}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;->access$300(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 61
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_0

    .line 65
    :cond_3
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void

    .line 62
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;

    const-string v0, "\u6ca1\u6709\u6570\u636e"

    invoke-static {p2, v0}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;->access$400(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 47
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;

    const-string v0, "\u7f51\u7edc\u9519\u8bef"

    invoke-static {p2, v0}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;->access$000(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
