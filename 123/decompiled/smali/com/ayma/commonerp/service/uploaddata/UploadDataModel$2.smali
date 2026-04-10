.class Lcom/ayma/commonerp/service/uploaddata/UploadDataModel$2;
.super Ljava/lang/Object;
.source "UploadDataModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->uploadCashInfo(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel$2;->this$0:Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;

    iput-object p2, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

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

    .line 194
    iget-object p1, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel$2;->this$0:Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->access$500(Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

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

    .line 174
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    .line 175
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel$2;->this$0:Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->notOk(I)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel$2;->this$0:Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 180
    iget-object p2, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel$2;->this$0:Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->access$400(Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 189
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void

    .line 176
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel$2;->this$0:Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;

    invoke-virtual {p2}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;->access$300(Lcom/ayma/commonerp/service/uploaddata/UploadDataModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
