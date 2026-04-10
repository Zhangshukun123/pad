.class Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel$1;
.super Ljava/lang/Object;
.source "QueryBillModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->querySaleBill(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
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

    .line 217
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
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

    .line 177
    :try_start_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->notOk(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 178
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->access$000(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 181
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    if-nez p1, :cond_1

    .line 183
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;

    const-string v0, "\u8fd4\u56de\u4f53\u4e3a\u7a7a"

    invoke-static {p2, v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->access$100(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 186
    :cond_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 187
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->access$200(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 190
    :cond_2
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 192
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;

    const-string v0, "\u8fd4\u56de\u7ed3\u679c\u4e3a\u7a7a"

    invoke-static {p2, v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->access$300(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 195
    :cond_3
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 197
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;

    const-string v0, "\u89e3\u6790\u7ed3\u679c\u5f02\u5e38"

    invoke-static {p2, v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->access$400(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 200
    :cond_4
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ayma/commonerp/net/RetrofitFactory;->getGson()Lcom/google/gson/Gson;

    move-result-object p2

    new-instance v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel$1$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel$1$1;-><init>(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel$1;)V

    .line 201
    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 200
    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_5

    .line 203
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;

    const-string v0, "\u6570\u636e\u89e3\u6790\u5f02\u5e38"

    invoke-static {p2, v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->access$500(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 206
    :cond_5
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->access$600(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->calculateCountAndAmount()V

    .line 208
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 210
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;->access$700(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    .line 211
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
