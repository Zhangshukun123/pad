.class Lcom/ayma/commonerp/ui/activity/menu/MenuModel$12;
.super Ljava/lang/Object;
.source "MenuModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->queryTrain(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

.field final synthetic val$trainName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 0

    .line 545
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$12;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$12;->val$trainName:Ljava/lang/String;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$12;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "trainName=?"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 549
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$12;->val$trainName:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/bean/TrainInfo;

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 550
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$12;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$12;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-virtual {v1, v2, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->callBackSuccessSwitchToMain(Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 552
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 553
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$12;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$12;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-static {v1, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->access$4400(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->callBackErrorSwitchToMain(Lcom/ayma/base/mvp/ModelBaseCallBack;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
