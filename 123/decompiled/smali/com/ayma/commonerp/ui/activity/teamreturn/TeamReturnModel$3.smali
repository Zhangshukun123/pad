.class Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$3;
.super Ljava/lang/Object;
.source "TeamReturnModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->postTeamReturnBill(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

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

    .line 212
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->access$1900(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

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

    .line 194
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    .line 195
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->notOk(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->access$1600(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 200
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    const-string v0, "\u540e\u53f0\u8fd4\u56de\u6570\u636e\u4e3a\u7a7a"

    invoke-static {p2, v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->access$1700(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 203
    :cond_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 204
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void

    .line 207
    :cond_2
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->access$1800(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
