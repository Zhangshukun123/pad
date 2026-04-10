.class Lcom/ayma/commonerp/ui/activity/menu/MenuModel$1$1;
.super Ljava/lang/Object;
.source "MenuModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuModel$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuModel$1;

.field final synthetic val$data:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuModel$1;Ljava/util/List;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$1$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuModel$1;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$1$1;->val$data:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$1$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuModel$1;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$1$1;->val$data:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void
.end method
