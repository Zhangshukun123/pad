.class Lcom/ayma/commonerp/ui/activity/menu/MenuModel$14;
.super Ljava/lang/Object;
.source "MenuModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->fetchTrainAddReceipt(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
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

    .line 601
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$14;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$14;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

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

    .line 631
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$14;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$14;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->access$5800(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
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

    .line 605
    :try_start_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    .line 606
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$14;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->notOk(I)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 610
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$14;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 611
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$14;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$14;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->access$5300(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 614
    :cond_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$14;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 615
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$14;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->access$5400(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;)V

    .line 616
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$14;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->access$5500(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;)Lcom/google/gson/Gson;

    move-result-object p2

    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$14$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$14$1;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuModel$14;)V

    .line 617
    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$14$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 616
    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_2

    .line 619
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$14;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$14;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6570\u636e\u8f6c\u6362\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->access$5600(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 622
    :cond_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$14;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 607
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$14;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$14;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->access$5200(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 624
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 625
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$14;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$14;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->access$5700(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
