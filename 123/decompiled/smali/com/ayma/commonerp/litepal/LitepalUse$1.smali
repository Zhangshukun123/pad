.class Lcom/ayma/commonerp/litepal/LitepalUse$1;
.super Ljava/lang/Object;
.source "LitepalUse.java"

# interfaces
.implements Lorg/litepal/crud/callback/FindMultiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/litepal/LitepalUse;->queryUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/litepal/crud/callback/FindMultiCallback<",
        "Lcom/ayma/commonerp/bean/UserDataBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/litepal/LitepalUse;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

.field final synthetic val$userName:Ljava/lang/String;

.field final synthetic val$userPassword:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/litepal/LitepalUse;Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/ayma/commonerp/litepal/LitepalUse$1;->this$0:Lcom/ayma/commonerp/litepal/LitepalUse;

    iput-object p2, p0, Lcom/ayma/commonerp/litepal/LitepalUse$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iput-object p3, p0, Lcom/ayma/commonerp/litepal/LitepalUse$1;->val$userName:Ljava/lang/String;

    iput-object p4, p0, Lcom/ayma/commonerp/litepal/LitepalUse$1;->val$userPassword:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/UserDataBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "\u767b\u5f55\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u5de5\u53f7\u6216\u8005\u5bc6\u7801\u662f\u5426\u6b63\u786e"

    if-eqz p1, :cond_3

    .line 81
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 85
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/UserDataBean;

    .line 86
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UserDataBean;->getEmployeeName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ayma/commonerp/litepal/LitepalUse$1;->val$userName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 87
    iget-object p1, p0, Lcom/ayma/commonerp/litepal/LitepalUse$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 90
    :cond_1
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UserDataBean;->getPassword()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ayma/commonerp/litepal/LitepalUse$1;->val$userPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 91
    iget-object p1, p0, Lcom/ayma/commonerp/litepal/LitepalUse$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/litepal/LitepalUse$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-interface {v0, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void

    .line 82
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/litepal/LitepalUse$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
