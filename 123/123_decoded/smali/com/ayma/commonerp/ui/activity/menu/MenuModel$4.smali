.class Lcom/ayma/commonerp/ui/activity/menu/MenuModel$4;
.super Ljava/lang/Object;
.source "MenuModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->updateOrderPayStatue(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$4;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$4;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

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

    .line 229
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$4;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$4;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->access$1600(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestFailure(Ljava/lang/Throwable;)V

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

    .line 211
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$4;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->notOk(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 212
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$4;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$4;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->access$1300(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 215
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    if-nez p1, :cond_1

    .line 217
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$4;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$4;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    const-string v0, "\u672a\u77e5\u5f02\u5e38"

    invoke-static {p2, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->access$1400(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 220
    :cond_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$4;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 221
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$4;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void

    .line 224
    :cond_2
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$4;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$4;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->access$1500(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
