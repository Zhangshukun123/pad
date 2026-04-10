.class Lcom/ayma/commonerp/base/BaseModel$10;
.super Ljava/lang/Object;
.source "BaseModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/base/BaseModel;->callBackErrorSwitchToMain(Lcom/ayma/base/mvp/ModelBaseCallBack;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/base/BaseModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelBaseCallBack;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/base/BaseModel;Lcom/ayma/base/mvp/ModelBaseCallBack;Ljava/lang/String;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/ayma/commonerp/base/BaseModel$10;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    iput-object p2, p0, Lcom/ayma/commonerp/base/BaseModel$10;->val$callBack:Lcom/ayma/base/mvp/ModelBaseCallBack;

    iput-object p3, p0, Lcom/ayma/commonerp/base/BaseModel$10;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 710
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel$10;->val$callBack:Lcom/ayma/base/mvp/ModelBaseCallBack;

    iget-object v1, p0, Lcom/ayma/commonerp/base/BaseModel$10;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    iget-object v2, p0, Lcom/ayma/commonerp/base/BaseModel$10;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/base/BaseModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/base/mvp/ModelBaseCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
