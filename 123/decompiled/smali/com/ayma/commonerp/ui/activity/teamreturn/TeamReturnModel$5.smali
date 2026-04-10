.class Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$5;
.super Ljava/lang/Object;
.source "TeamReturnModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->getTeamTrainSellData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
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


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$5;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$5;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

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

    .line 538
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$5;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$5;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->access$3200(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
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

    .line 508
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    .line 509
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$5;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->notOk(I)Z

    move-result v0

    if-nez v0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 513
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$5;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 514
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$5;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$5;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->access$2800(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 517
    :cond_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$5;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 518
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$5;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->access$2900(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;)V

    .line 519
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$5;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->access$3000(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;)Lcom/google/gson/Gson;

    move-result-object p2

    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$5$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$5$1;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$5;)V

    .line 520
    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$5$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 519
    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_2

    .line 522
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$5;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$5;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6570\u636e\u8f6c\u6362\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->access$3100(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 525
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/WearhouseDataBean;

    .line 526
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$5;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getGoodsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->getGoodsPrice(Ljava/lang/String;)Lcom/ayma/commonerp/bean/GoodsPriceBean;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 530
    :cond_3
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSalesPrice()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->setSalesPrice(D)V

    goto :goto_0

    .line 533
    :cond_4
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$5;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$5;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    const-string v1, ""

    invoke-virtual {p1, p2, v1, v0, v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->addTrainStock(Ljava/util/List;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/lang/String;)V

    return-void

    .line 510
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$5;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$5;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->access$2700(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
