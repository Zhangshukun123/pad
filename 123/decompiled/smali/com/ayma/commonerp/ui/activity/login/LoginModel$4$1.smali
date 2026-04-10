.class Lcom/ayma/commonerp/ui/activity/login/LoginModel$4$1;
.super Ljava/lang/Object;
.source "LoginModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/login/LoginModel$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/login/LoginModel$4;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/login/LoginModel$4;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$4$1;->this$1:Lcom/ayma/commonerp/ui/activity/login/LoginModel$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$4$1;->this$1:Lcom/ayma/commonerp/ui/activity/login/LoginModel$4;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$4;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$4$1;->this$1:Lcom/ayma/commonerp/ui/activity/login/LoginModel$4;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/activity/login/LoginModel$4;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->access$1900(Lcom/ayma/commonerp/ui/activity/login/LoginModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void
.end method
