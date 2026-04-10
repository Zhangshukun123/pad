.class Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel$1;
.super Ljava/lang/Object;
.source "RevisePwdModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;->changePwd(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/ayma/base/mvp/ModelCallBack;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

.field final synthetic val$type:I

.field final synthetic val$userId:Ljava/lang/String;

.field final synthetic val$userPwd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;Lcom/ayma/base/mvp/ModelCallBack;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iput p3, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel$1;->val$type:I

    iput-object p4, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel$1;->val$userId:Ljava/lang/String;

    iput-object p5, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel$1;->val$userPwd:Ljava/lang/String;

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

    .line 78
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;->access$600(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

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

    .line 52
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    .line 53
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;->notOk(I)Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "Bearer "

    .line 57
    sput-object p2, Lcom/ayma/commonerp/app/AppUserData;->TOKEN:Ljava/lang/String;

    .line 58
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;->access$100(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;)Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "hadUpdatedToken"

    invoke-static {p2, v1, v0}, Lcom/ayma/base/util/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 59
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;->access$200(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/ayma/commonerp/service/uploaddata/UploadDataService;->stop(Landroid/content/Context;)V

    .line 60
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 61
    iget p1, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel$1;->val$type:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 62
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void

    .line 66
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;->access$300(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;)Lcom/ayma/commonerp/litepal/LitepalUse;

    move-result-object p1

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel$1;->val$userId:Ljava/lang/String;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel$1;->val$userPwd:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/ayma/commonerp/litepal/LitepalUse;->updatePwd(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 67
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void

    .line 70
    :cond_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;

    const-string v0, "\u672c\u5730\u4fee\u6539\u5931\u8d25\uff0c\u8bf7\u4f7f\u7528\u65b0\u5bc6\u7801\u91cd\u65b0\u767b\u5f55"

    invoke-static {p2, v0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;->access$400(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 73
    :cond_3
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;->access$500(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 54
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;->access$000(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
