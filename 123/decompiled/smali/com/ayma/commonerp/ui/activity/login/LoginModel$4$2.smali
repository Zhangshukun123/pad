.class Lcom/ayma/commonerp/ui/activity/login/LoginModel$4$2;
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

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/login/LoginModel$4;Ljava/lang/Exception;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$4$2;->this$1:Lcom/ayma/commonerp/ui/activity/login/LoginModel$4;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$4$2;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 399
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$4$2;->this$1:Lcom/ayma/commonerp/ui/activity/login/LoginModel$4;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$4;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$4$2;->this$1:Lcom/ayma/commonerp/ui/activity/login/LoginModel$4;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/activity/login/LoginModel$4;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$4$2;->val$e:Ljava/lang/Exception;

    invoke-static {v1, v2}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->access$2100(Lcom/ayma/commonerp/ui/activity/login/LoginModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
