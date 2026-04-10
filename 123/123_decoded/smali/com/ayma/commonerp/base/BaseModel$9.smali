.class Lcom/ayma/commonerp/base/BaseModel$9;
.super Ljava/lang/Object;
.source "BaseModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/base/BaseModel;->callBackSuccessSwitchToMain(Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/base/BaseModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

.field final synthetic val$t:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/base/BaseModel;Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/lang/Object;)V
    .locals 0

    .line 694
    iput-object p1, p0, Lcom/ayma/commonerp/base/BaseModel$9;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    iput-object p2, p0, Lcom/ayma/commonerp/base/BaseModel$9;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iput-object p3, p0, Lcom/ayma/commonerp/base/BaseModel$9;->val$t:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 697
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel$9;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v1, p0, Lcom/ayma/commonerp/base/BaseModel$9;->val$t:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void
.end method
