.class Lcom/ayma/commonerp/ui/activity/menu/MenuModel$7;
.super Ljava/lang/Object;
.source "MenuModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->deleteOldSimCardInfo(ILcom/ayma/base/mvp/ModelCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

.field final synthetic val$day:I


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;ILcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$7;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    iput p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$7;->val$day:I

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$7;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$7;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->access$2400(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;)V

    .line 403
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$7;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->access$2500(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;)Lcom/ayma/commonerp/litepal/LitepalUse;

    move-result-object v0

    iget v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$7;->val$day:I

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/litepal/LitepalUse;->deleteSimCardInfoBeforeNDay(I)V

    .line 404
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$7;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->access$2600(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$7$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$7$1;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuModel$7;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 411
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$7;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->access$2800(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$7$2;

    invoke-direct {v2, p0, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$7$2;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuModel$7;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 417
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
