.class Lcom/ayma/commonerp/ui/activity/menu/MenuModel$9;
.super Ljava/lang/Object;
.source "MenuModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->checkOpenShop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

.field final synthetic val$outDay:Ljava/lang/String;

.field final synthetic val$trainName:Ljava/lang/String;

.field final synthetic val$userCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$9;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$9;->val$userCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$9;->val$trainName:Ljava/lang/String;

    iput-object p4, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$9;->val$outDay:Ljava/lang/String;

    iput-object p5, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$9;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "userCode= ? and trainName=? and outDay = ? order by operateDate desc"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 439
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$9;->val$userCode:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$9;->val$trainName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$9;->val$outDay:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/bean/OpenShopBean;

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 440
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$9;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->access$2900(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$9$1;

    invoke-direct {v2, p0, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$9$1;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuModel$9;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 451
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$9;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->access$3100(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$9$2;

    invoke-direct {v2, p0, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$9$2;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuModel$9;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 457
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
