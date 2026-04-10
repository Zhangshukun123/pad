.class Lcom/ayma/commonerp/ui/activity/menu/MenuModel$7$1;
.super Ljava/lang/Object;
.source "MenuModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuModel$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuModel$7;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuModel$7;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$7$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuModel$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$7$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuModel$7;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$7;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-interface {v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void
.end method
