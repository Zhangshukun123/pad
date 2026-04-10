.class Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$3;
.super Ljava/lang/Object;
.source "TeamHandoverModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->commitTeamHandoverData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

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

    .line 243
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->access$1500(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

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

    .line 228
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    .line 229
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->notOk(I)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 233
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 234
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->access$1400(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 237
    :cond_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "\u4ea4\u63a5\u8d44\u6599\u63d0\u4ea4\u6210\u529f"

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void

    .line 230
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->access$1300(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
