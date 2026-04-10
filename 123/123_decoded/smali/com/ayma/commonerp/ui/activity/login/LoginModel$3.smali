.class Lcom/ayma/commonerp/ui/activity/login/LoginModel$3;
.super Ljava/lang/Object;
.source "LoginModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/login/LoginModel;->setNewStoreId(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/login/LoginModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

.field final synthetic val$company2Id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/login/LoginModel;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$3;->val$company2Id:Ljava/lang/String;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

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

    const-string v2, "company2Id=? and storeId!=\'\' "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 330
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$3;->val$company2Id:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/bean/CrossRoadDataBean;

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/CrossRoadDataBean;

    if-nez v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->access$1500(Lcom/ayma/commonerp/ui/activity/login/LoginModel;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/activity/login/LoginModel$3$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/login/LoginModel$3$1;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginModel$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 340
    :cond_0
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/CrossRoadDataBean;->getStoreId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->storeId:Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->access$1600(Lcom/ayma/commonerp/ui/activity/login/LoginModel;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/activity/login/LoginModel$3$2;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/login/LoginModel$3$2;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginModel$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 348
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->access$1800(Lcom/ayma/commonerp/ui/activity/login/LoginModel;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/activity/login/LoginModel$3$3;

    invoke-direct {v2, p0, v0}, Lcom/ayma/commonerp/ui/activity/login/LoginModel$3$3;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginModel$3;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 354
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
