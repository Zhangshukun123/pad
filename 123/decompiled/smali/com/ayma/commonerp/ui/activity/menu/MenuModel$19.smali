.class Lcom/ayma/commonerp/ui/activity/menu/MenuModel$19;
.super Ljava/lang/Object;
.source "MenuModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->fetchMenuPermission(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 0

    .line 872
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$19;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$19;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    const-string v0, "level=? "

    const-string v1, "1"

    .line 876
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/bean/PdaPermissionBean;

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 877
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$19;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$19;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-virtual {v1, v2, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->callBackSuccessSwitchToMain(Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 879
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$19;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$19;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-static {v1, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->access$8000(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->callBackErrorSwitchToMain(Lcom/ayma/base/mvp/ModelBaseCallBack;Ljava/lang/Throwable;)V

    .line 880
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
