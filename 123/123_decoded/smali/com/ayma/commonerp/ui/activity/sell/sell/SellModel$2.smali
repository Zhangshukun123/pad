.class Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel$2;
.super Ljava/lang/Object;
.source "SellModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->pay(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

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

    .line 439
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->access$200(Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestFailure(Ljava/lang/Throwable;)V

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

    .line 429
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    .line 430
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->notOk(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 434
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void

    .line 431
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->access$100(Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
