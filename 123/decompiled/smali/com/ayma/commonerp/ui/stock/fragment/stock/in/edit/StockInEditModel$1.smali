.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;
.super Ljava/lang/Object;
.source "StockInEditModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->fetchStoreData(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

.field final synthetic val$storeId:Ljava/lang/String;

.field final synthetic val$storeTypeCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Lcom/ayma/base/mvp/ModelCallBack;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;->val$storeId:Ljava/lang/String;

    iput-object p4, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;->val$storeTypeCode:Ljava/lang/String;

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

    .line 139
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$1000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 6
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
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->notOk(I)Z

    move-result v0

    if-nez v0, :cond_d

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 81
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 82
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "-"

    if-eqz v0, :cond_1

    .line 83
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

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

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)V

    .line 88
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1$1;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;)V

    .line 89
    invoke-virtual {v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 88
    invoke-virtual {v0, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_c

    .line 90
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    .line 95
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string p2, ""

    move-object v0, p2

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/StoreListBean;

    .line 96
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/StoreListBean;->getStoreId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;->val$storeId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 98
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/StoreListBean;->getStoreName()Ljava/lang/String;

    move-result-object v0

    .line 100
    :cond_4
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/StoreListBean;->getStoreTypeList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 101
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    .line 104
    :cond_5
    iget-object v3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/StoreListBean;->getStoreName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/StoreListBean;->getStoreName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/StoreListBean;->getStoreId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/StoreListBean;->getStoreId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 109
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_7

    .line 110
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 111
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 114
    :cond_7
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;->val$storeId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 115
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_1

    .line 117
    :cond_8
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;->val$storeId:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    :goto_1
    if-eqz p1, :cond_b

    .line 122
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/StoreTypeListBean;

    .line 123
    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/StoreTypeListBean;->getStoreTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$900(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/StoreTypeListBean;->getStoreTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/StoreTypeListBean;->getStoreType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/StoreTypeListBean;->getStoreType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;->val$storeTypeCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 126
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/StoreTypeListBean;->getStoreTypeName()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 129
    :cond_a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 130
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 131
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 134
    :cond_b
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void

    .line 91
    :cond_c
    :goto_3
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

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

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 78
    :cond_d
    :goto_4
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
