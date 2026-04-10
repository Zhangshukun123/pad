.class Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel$2;
.super Ljava/lang/Object;
.source "GoodsOptionModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->updateOnlineQty(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;

.field final synthetic val$modelCallBack:Lcom/ayma/base/mvp/ModelParamCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel$2;->val$modelCallBack:Lcom/ayma/base/mvp/ModelParamCallBack;

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

    .line 130
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel$2;->val$modelCallBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->access$900(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

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

    .line 118
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel$2;->val$modelCallBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-static {p1, p2, v0}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->access$800(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;Lretrofit2/Response;Lcom/ayma/base/mvp/ModelBaseCallBack;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 121
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 125
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel$2;->val$modelCallBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void

    .line 122
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel$2;->val$modelCallBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    const-string p2, "\u4e0a\u67b6\u6570\u91cf\u4fee\u6539\u6210\u529f"

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void
.end method
