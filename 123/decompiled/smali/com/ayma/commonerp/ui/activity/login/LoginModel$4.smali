.class Lcom/ayma/commonerp/ui/activity/login/LoginModel$4;
.super Ljava/lang/Object;
.source "LoginModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/login/LoginModel;->searchCrossRoad(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/login/LoginModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

.field final synthetic val$trainName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/login/LoginModel;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$4;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$4;->val$trainName:Ljava/lang/String;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$4;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "%"

    .line 386
    :try_start_0
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$4;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->access$1900(Lcom/ayma/commonerp/ui/activity/login/LoginModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "trainname like ?"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$4;->val$trainName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-string v1, "roadDay desc"

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->order(Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/bean/CrossRoadDataBean;

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 388
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$4;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->access$1900(Lcom/ayma/commonerp/ui/activity/login/LoginModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 389
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$4;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->access$2000(Lcom/ayma/commonerp/ui/activity/login/LoginModel;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/activity/login/LoginModel$4$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/login/LoginModel$4$1;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginModel$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 396
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$4;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->access$2200(Lcom/ayma/commonerp/ui/activity/login/LoginModel;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/activity/login/LoginModel$4$2;

    invoke-direct {v2, p0, v0}, Lcom/ayma/commonerp/ui/activity/login/LoginModel$4$2;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginModel$4;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 402
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
