.class Lcom/ayma/commonerp/ui/activity/login/LoginModel$3$1;
.super Ljava/lang/Object;
.source "LoginModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/login/LoginModel$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/login/LoginModel$3;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/login/LoginModel$3;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$3$1;->this$1:Lcom/ayma/commonerp/ui/activity/login/LoginModel$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$3$1;->this$1:Lcom/ayma/commonerp/ui/activity/login/LoginModel$3;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$3$1;->this$1:Lcom/ayma/commonerp/ui/activity/login/LoginModel$3;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/activity/login/LoginModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    const-string v2, "\u67e5\u8be2\u672c\u5730\u4ea4\u8def\u4fe1\u606f\u5f02\u5e38"

    invoke-static {v1, v2}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->access$1400(Lcom/ayma/commonerp/ui/activity/login/LoginModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
