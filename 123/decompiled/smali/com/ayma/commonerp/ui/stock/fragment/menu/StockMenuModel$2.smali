.class Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$2;
.super Ljava/lang/Object;
.source "StockMenuModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;->downLodaStoreData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;

.field final synthetic val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$2;->val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

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

    .line 151
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$2;->val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;->access$1300(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

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

    .line 118
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    .line 119
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;->notOk(I)Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 123
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 124
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "-"

    if-eqz v0, :cond_1

    .line 125
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$2;->val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;

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

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;->access$900(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;->access$1000(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;)V

    .line 130
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;->access$1100(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;)Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$2$1;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$2$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$2;)V

    .line 131
    invoke-virtual {v2}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$2$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 130
    invoke-virtual {v0, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_5

    .line 132
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 136
    :cond_2
    const-class p1, Lcom/ayma/commonerp/bean/StoreListBean;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p1, v1}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 137
    const-class p1, Lcom/ayma/commonerp/bean/StoreTypeListBean;

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 138
    invoke-static {p2}, Lorg/litepal/Operator;->saveAll(Ljava/util/Collection;)Z

    .line 139
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 140
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/StoreListBean;

    .line 141
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/StoreListBean;->getStoreTypeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/StoreTypeListBean;

    .line 142
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/StoreListBean;->getStoreId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ayma/commonerp/bean/StoreTypeListBean;->setStoreId(Ljava/lang/String;)V

    .line 143
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    :cond_4
    invoke-static {p1}, Lorg/litepal/Operator;->saveAll(Ljava/util/Collection;)Z

    return-void

    .line 133
    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$2;->val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;

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

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;->access$1200(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 120
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$2;->val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;->access$800(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
