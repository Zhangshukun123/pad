.class Lcom/ayma/commonerp/ui/activity/menu/MenuModel$9$1;
.super Ljava/lang/Object;
.source "MenuModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuModel$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuModel$9;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuModel$9;Ljava/util/List;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$9$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuModel$9;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$9$1;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 443
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$9$1;->val$list:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$9$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuModel$9;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$9;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$9$1;->val$list:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/OpenShopBean;

    invoke-interface {v0, v1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void

    .line 444
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$9$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuModel$9;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$9;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void
.end method
