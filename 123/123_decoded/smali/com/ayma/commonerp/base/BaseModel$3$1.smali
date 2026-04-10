.class Lcom/ayma/commonerp/base/BaseModel$3$1;
.super Ljava/lang/Object;
.source "BaseModel.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/base/BaseModel$3;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/base/BaseModel$3;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/base/BaseModel$3;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/ayma/commonerp/base/BaseModel$3$1;->this$1:Lcom/ayma/commonerp/base/BaseModel$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 2

    .line 222
    iget-object p1, p0, Lcom/ayma/commonerp/base/BaseModel$3$1;->this$1:Lcom/ayma/commonerp/base/BaseModel$3;

    iget-object p1, p1, Lcom/ayma/commonerp/base/BaseModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel$3$1;->this$1:Lcom/ayma/commonerp/base/BaseModel$3;

    iget-object v0, v0, Lcom/ayma/commonerp/base/BaseModel$3;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    const-string v1, "\u83b7\u53d6\u767b\u5f55\u4fe1\u606f\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/base/BaseModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 227
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/base/BaseModel$3$1;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel$3$1;->this$1:Lcom/ayma/commonerp/base/BaseModel$3;

    iget-object v0, v0, Lcom/ayma/commonerp/base/BaseModel$3;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    iget-object v1, p0, Lcom/ayma/commonerp/base/BaseModel$3$1;->this$1:Lcom/ayma/commonerp/base/BaseModel$3;

    iget-object v1, v1, Lcom/ayma/commonerp/base/BaseModel$3;->val$paramMap:Ljava/util/TreeMap;

    iget-object v2, p0, Lcom/ayma/commonerp/base/BaseModel$3$1;->this$1:Lcom/ayma/commonerp/base/BaseModel$3;

    iget-object v2, v2, Lcom/ayma/commonerp/base/BaseModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/base/BaseModel;->downloadTeamSaleOutList(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method
