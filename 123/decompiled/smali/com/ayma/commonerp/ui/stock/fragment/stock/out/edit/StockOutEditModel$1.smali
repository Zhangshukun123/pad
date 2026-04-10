.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$1;
.super Ljava/lang/Object;
.source "StockOutEditModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->fetchStoreData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

.field final synthetic val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$1;->val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

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

    .line 136
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$1;->val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$1100(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

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

    .line 95
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 96
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$100(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 97
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$200(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 98
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$300(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 99
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    .line 100
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->notOk(I)Z

    move-result v0

    if-nez v0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 104
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 105
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "-"

    if-eqz v0, :cond_1

    .line 106
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$1;->val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

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

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$600(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)V

    .line 110
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$700(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$1$1;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$1$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$1;)V

    .line 111
    invoke-virtual {v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 110
    invoke-virtual {v0, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_6

    .line 113
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    .line 117
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

    .line 118
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/StoreListBean;->getStoreTypeList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 119
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 122
    :cond_4
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$100(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/StoreListBean;->getStoreName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/StoreListBean;->getStoreId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/StoreListBean;->getStoreName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$900(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/StoreListBean;->getStoreName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$1000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$1000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getStoreName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 126
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$1000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getStoreName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/StoreListBean;->getStoreName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 131
    :cond_5
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$1;->val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void

    .line 114
    :cond_6
    :goto_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$1;->val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

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

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$800(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 101
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$1;->val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$400(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
