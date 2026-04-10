.class Lcom/ayma/commonerp/base/BaseModel$1;
.super Ljava/lang/Object;
.source "BaseModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/base/BaseModel;->fetchToken(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/ayma/commonerp/bean/LoginBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/base/BaseModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/base/BaseModel;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/ayma/commonerp/base/BaseModel$1;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    iput-object p2, p0, Lcom/ayma/commonerp/base/BaseModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

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
            "Lcom/ayma/commonerp/bean/LoginBean;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 132
    iget-object p1, p0, Lcom/ayma/commonerp/base/BaseModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel$1;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    invoke-virtual {v0, p2}, Lcom/ayma/commonerp/base/BaseModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/ayma/commonerp/bean/LoginBean;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/ayma/commonerp/bean/LoginBean;",
            ">;)V"
        }
    .end annotation

    .line 114
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/LoginBean;

    .line 115
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel$1;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/base/BaseModel;->notOk(I)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/base/BaseModel$1;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/LoginBean;->getCode()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/base/BaseModel;->notOk(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 120
    iget-object p2, p0, Lcom/ayma/commonerp/base/BaseModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel$1;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/LoginBean;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/LoginBean;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/base/BaseModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 123
    :cond_1
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/LoginBean;->getResult()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/ayma/commonerp/app/AppUserData;->TOKEN:Ljava/lang/String;

    .line 124
    iget-object p2, p0, Lcom/ayma/commonerp/base/BaseModel$1;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    iget-object p2, p2, Lcom/ayma/commonerp/base/BaseModel;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/LoginBean;->getResult()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accessToken"

    invoke-static {p2, v1, v0}, Lcom/ayma/base/util/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 125
    iget-object p2, p0, Lcom/ayma/commonerp/base/BaseModel$1;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    iget-object p2, p2, Lcom/ayma/commonerp/base/BaseModel;->context:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "hadUpdatedToken"

    invoke-static {p2, v1, v0}, Lcom/ayma/base/util/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 126
    iget-object p2, p0, Lcom/ayma/commonerp/base/BaseModel$1;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    iget-object p2, p2, Lcom/ayma/commonerp/base/BaseModel;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/LoginBean;->getTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "timestamp"

    invoke-static {p2, v0, p1}, Lcom/ayma/base/util/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 127
    iget-object p1, p0, Lcom/ayma/commonerp/base/BaseModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void

    .line 116
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/base/BaseModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel$1;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    invoke-virtual {v0, p2}, Lcom/ayma/commonerp/base/BaseModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
