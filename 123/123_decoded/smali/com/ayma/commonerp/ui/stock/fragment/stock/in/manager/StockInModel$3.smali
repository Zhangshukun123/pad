.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$3;
.super Ljava/lang/Object;
.source "StockInModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->fetchSupplier(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

.field final synthetic val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$3;->val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

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

    .line 195
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$3;->val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->access$2400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

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

    .line 165
    :try_start_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    .line 166
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->notOk(I)Z

    move-result v0

    if-nez v0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 170
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 171
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "-"

    if-eqz v0, :cond_1

    .line 172
    :try_start_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$3;->val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

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

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->access$1700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->access$1800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)V

    .line 176
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->access$1900(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$3$1;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$3$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$3;)V

    .line 177
    invoke-virtual {v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$3$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 176
    invoke-virtual {v0, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_4

    .line 178
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 182
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ayma/commonerp/bean/data/stock/in/SupplierBean;

    .line 183
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->access$2100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/in/SupplierBean;->getSupplierName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->access$2200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/in/SupplierBean;->getSupplierName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/in/SupplierBean;->getSupplierId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 186
    :cond_3
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$3;->val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    goto :goto_3

    .line 179
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$3;->val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

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

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->access$2000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 167
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$3;->val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->access$1600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 188
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$3;->val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->access$2300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    .line 189
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method
