.class Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$1;
.super Ljava/lang/Object;
.source "TeamReturnModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->postGetStoreList(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

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

    .line 125
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->access$1100(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestFailure(Ljava/lang/Throwable;)V

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

    .line 89
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    .line 90
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->notOk(I)Z

    move-result v0

    if-nez v0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 94
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 95
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "-"

    if-eqz v0, :cond_1

    .line 96
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6570\u636e\u6709\u8bef\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->access$100(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->access$200(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;)V

    .line 100
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->access$300(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;)Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v2, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$1$1;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$1$1;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$1;)V

    .line 101
    invoke-virtual {v2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 100
    invoke-virtual {v0, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_6

    .line 102
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 106
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ayma/commonerp/bean/StoreListBean;

    .line 107
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/StoreListBean;->getStoreTypeList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 108
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 111
    :cond_4
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->access$500(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/StoreListBean;->getStoreName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/StoreListBean;->getStoreId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->access$600(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/StoreListBean;->getStoreName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->access$700(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/StoreListBean;->getStoreId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/StoreTypeListBean;

    .line 115
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->access$800(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/StoreTypeListBean;->getStoreTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->access$900(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/StoreTypeListBean;->getStoreTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/StoreTypeListBean;->getStoreType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->access$1000(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/StoreTypeListBean;->getStoreTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 120
    :cond_5
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void

    .line 103
    :cond_6
    :goto_2
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6570\u636e\u8f6c\u6362\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->access$400(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 91
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->access$000(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
