.class Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel$1;
.super Ljava/lang/Object;
.source "QueryTeamPickupModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->queryWarehouseGoods(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

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

    .line 162
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->access$600(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

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

    .line 134
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    .line 135
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->notOk(I)Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 139
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 140
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->access$100(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 143
    :cond_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 145
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

    const-string v0, "\u6570\u636e\u4e3a\u7a7a"

    invoke-static {p2, v0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->access$200(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 148
    :cond_2
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->access$300(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;)Lcom/google/gson/Gson;

    move-result-object p2

    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel$1$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel$1$1;-><init>(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel$1;)V

    .line 149
    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 148
    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_3

    .line 151
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6570\u636e\u8f6c\u6362\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->access$400(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 154
    :cond_3
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->access$500(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 155
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->access$500(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->calculateTotalCountAndPrice()V

    .line 157
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    const-string p2, ""

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void

    .line 136
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->access$000(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
