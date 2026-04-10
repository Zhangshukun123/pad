.class Lcom/ayma/commonerp/ui/activity/menu/MenuModel$1;
.super Ljava/lang/Object;
.source "MenuModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->queryNeedUploadSellData(Lcom/ayma/commonerp/bean/OrderPositionBean;Lcom/ayma/base/mvp/ModelParamCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

.field final synthetic val$orderPosition:Lcom/ayma/commonerp/bean/OrderPositionBean;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;Lcom/ayma/commonerp/bean/OrderPositionBean;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$1;->val$orderPosition:Lcom/ayma/commonerp/bean/OrderPositionBean;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->access$000(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;)V

    .line 92
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->access$100(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;)Lcom/ayma/commonerp/litepal/LitepalUse;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$1;->val$orderPosition:Lcom/ayma/commonerp/bean/OrderPositionBean;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryNeedUploadSellData(Lcom/ayma/commonerp/bean/OrderPositionBean;)Ljava/util/List;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->access$200(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$1$1;

    invoke-direct {v2, p0, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$1$1;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuModel$1;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 101
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->access$300(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$1$2;

    invoke-direct {v2, p0, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$1$2;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuModel$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
