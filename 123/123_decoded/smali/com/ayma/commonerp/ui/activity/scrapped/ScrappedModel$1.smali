.class Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel$1;
.super Ljava/lang/Object;
.source "ScrappedModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->postScrappedData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

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

    .line 227
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->access$200(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

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

    .line 211
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    .line 212
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->notOk(I)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 217
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->clearAllData()V

    .line 218
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->calculateTotalCountAndPrice()V

    .line 219
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void

    .line 222
    :cond_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->access$100(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 213
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->access$000(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
