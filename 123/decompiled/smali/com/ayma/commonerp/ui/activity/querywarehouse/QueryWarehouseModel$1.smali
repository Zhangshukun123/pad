.class Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;
.super Ljava/lang/Object;
.source "QueryWarehouseModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->queryWarehouseGoods(Ljava/util/TreeMap;ZLcom/ayma/base/mvp/ModelParamCallBack;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

.field final synthetic val$isQueryAllStock:Z


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;Lcom/ayma/base/mvp/ModelParamCallBack;Z)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iput-boolean p3, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;->val$isQueryAllStock:Z

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

    .line 206
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->access$900(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

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

    .line 144
    :try_start_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->access$000(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 145
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->calculateTotalCountAndPrice()V

    .line 146
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    .line 147
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->notOk(I)Z

    move-result v0

    if-nez v0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 151
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 152
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->access$200(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 155
    :cond_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 156
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->access$300(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;)Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1$1;-><init>(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;)V

    .line 157
    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 156
    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    .line 159
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6570\u636e\u8f6c\u6362\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->access$400(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 162
    :cond_2
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->access$000(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 163
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 164
    iget-boolean p2, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;->val$isQueryAllStock:Z

    if-eqz p2, :cond_4

    .line 165
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->access$000(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/WearhouseDataBean;

    .line 166
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->setOutDay(Ljava/lang/String;)V

    .line 167
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->trainName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->setTrainName(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_3
    new-instance p2, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1$2;

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1$2;-><init>(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;Lcom/ayma/commonerp/bean/RequestHeaderBean;)V

    invoke-static {p2}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 196
    :cond_4
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;

    invoke-virtual {p2}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->mergeWarehouse()V

    .line 197
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->judgeMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    goto :goto_2

    .line 148
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->access$100(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 199
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->access$800(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    .line 200
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
