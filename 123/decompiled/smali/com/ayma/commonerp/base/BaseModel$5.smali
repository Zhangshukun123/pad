.class Lcom/ayma/commonerp/base/BaseModel$5;
.super Ljava/lang/Object;
.source "BaseModel.java"

# interfaces
.implements Lorg/litepal/crud/callback/SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/base/BaseModel;->saveTeamSaleOutListData(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/base/BaseModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/base/BaseModel;Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/lang/String;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/ayma/commonerp/base/BaseModel$5;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    iput-object p2, p0, Lcom/ayma/commonerp/base/BaseModel$5;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iput-object p3, p0, Lcom/ayma/commonerp/base/BaseModel$5;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 286
    iget-object p1, p0, Lcom/ayma/commonerp/base/BaseModel$5;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel$5;->val$message:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void

    .line 289
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/base/BaseModel$5;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel$5;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    const-string v1, "\u9886\u6599\u5355\u4fdd\u5b58\u5931\u8d25\uff0c\u539f\u56e0\u672a\u77e5"

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/base/BaseModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
