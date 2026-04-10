.class Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$1;
.super Ljava/lang/Object;
.source "TeamHandoverModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->queryTeamWarehouseStock(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

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

    .line 119
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->access$600(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 9
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

    .line 76
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    .line 77
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->notOk(I)Z

    move-result v0

    if-nez v0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 81
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 82
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->access$100(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 85
    :cond_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 86
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->access$200(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;)V

    const/4 v0, 0x0

    .line 88
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 90
    :try_start_0
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->access$300(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;)Lcom/google/gson/Gson;

    move-result-object v2

    new-instance v3, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$1$1;

    invoke-direct {v3, p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$1$1;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$1;)V

    .line 91
    invoke-virtual {v3}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 90
    invoke-virtual {v2, p2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/bean/WearhouseDataBean;

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getGoodsId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getStoreType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 95
    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ayma/commonerp/bean/WearhouseDataBean;

    .line 96
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getQty()D

    move-result-wide v5

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getQty()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->setQty(D)V

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {v1, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 101
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 102
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 103
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 106
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    if-nez v2, :cond_4

    .line 109
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6570\u636e\u8f6c\u6362\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->access$400(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 112
    :cond_4
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->access$500(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 113
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->access$500(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->judgeMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, v0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->addTrainStock(Ljava/util/List;Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/lang/String;)V

    return-void

    .line 78
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->access$000(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
