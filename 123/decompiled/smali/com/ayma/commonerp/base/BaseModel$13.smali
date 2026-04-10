.class Lcom/ayma/commonerp/base/BaseModel$13;
.super Ljava/lang/Object;
.source "BaseModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/base/BaseModel;->fetchPdaBtnPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/base/BaseModel;

.field final synthetic val$btnCode:Ljava/lang/String;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

.field final synthetic val$level:Ljava/lang/String;

.field final synthetic val$permissionCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/base/BaseModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 0

    .line 743
    iput-object p1, p0, Lcom/ayma/commonerp/base/BaseModel$13;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    iput-object p2, p0, Lcom/ayma/commonerp/base/BaseModel$13;->val$permissionCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/ayma/commonerp/base/BaseModel$13;->val$btnCode:Ljava/lang/String;

    iput-object p4, p0, Lcom/ayma/commonerp/base/BaseModel$13;->val$level:Ljava/lang/String;

    iput-object p5, p0, Lcom/ayma/commonerp/base/BaseModel$13;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " menuCode=? and buttonCode=? and level = ?"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 747
    iget-object v2, p0, Lcom/ayma/commonerp/base/BaseModel$13;->val$permissionCode:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/ayma/commonerp/base/BaseModel$13;->val$btnCode:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/ayma/commonerp/base/BaseModel$13;->val$level:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/bean/PdaPermissionBean;

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 748
    iget-object v1, p0, Lcom/ayma/commonerp/base/BaseModel$13;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    iget-object v2, p0, Lcom/ayma/commonerp/base/BaseModel$13;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-virtual {v1, v2, v0}, Lcom/ayma/commonerp/base/BaseModel;->callBackSuccessSwitchToMain(Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 750
    iget-object v1, p0, Lcom/ayma/commonerp/base/BaseModel$13;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    iget-object v2, p0, Lcom/ayma/commonerp/base/BaseModel$13;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-virtual {v1, v0}, Lcom/ayma/commonerp/base/BaseModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ayma/commonerp/base/BaseModel;->callBackErrorSwitchToMain(Lcom/ayma/base/mvp/ModelBaseCallBack;Ljava/lang/Throwable;)V

    .line 751
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
