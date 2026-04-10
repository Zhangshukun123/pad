.class Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$1;
.super Ljava/lang/Object;
.source "InvoicingModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->queryOrder(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

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

    .line 149
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->access$900(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
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

    .line 112
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->notOk(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->access$000(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 116
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    if-nez p1, :cond_1

    .line 118
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    const-string v0, "\u670d\u52a1\u5668\u5f02\u5e38"

    invoke-static {p2, v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->access$100(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 122
    :cond_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 123
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->access$200(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 127
    :cond_2
    :try_start_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "\u6570\u636e\u89e3\u6790\u5f02\u5e38"

    if-eqz p2, :cond_3

    .line 129
    :try_start_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    invoke-static {p2, v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->access$300(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 132
    :cond_3
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->access$400(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;)Lcom/google/gson/Gson;

    move-result-object p2

    new-instance v1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$1$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$1$1;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$1;)V

    .line 133
    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 132
    invoke-virtual {p2, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_4

    .line 135
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    invoke-static {p2, v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->access$500(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 138
    :cond_4
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->access$600(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 139
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->access$700(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 142
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->access$800(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
