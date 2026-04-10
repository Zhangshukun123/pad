.class Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$1;
.super Ljava/lang/Object;
.source "SellAnalysisModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->getSaleDataFromServer(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

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

    .line 207
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$600(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

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

    const-string p1, "-"

    .line 180
    :try_start_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    .line 181
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->notOk(I)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 185
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$100(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 186
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 187
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {p2, v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$200(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 190
    :cond_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 191
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$300(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/google/gson/Gson;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$1$1;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$1$1;-><init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$1;)V

    .line 192
    invoke-virtual {v2}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 191
    invoke-virtual {v1, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_2

    .line 194
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6570\u636e\u8f6c\u6362\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$400(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 197
    :cond_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$100(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 198
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->queryGoodsPriceAndCalculateAmount(Lcom/ayma/base/mvp/ModelCallBack;)V

    goto :goto_1

    .line 182
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$000(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 200
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$500(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
