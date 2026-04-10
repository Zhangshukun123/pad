.class Lcom/ayma/commonerp/ui/activity/login/LoginModel$3$2;
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

    .line 341
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$3$2;->this$1:Lcom/ayma/commonerp/ui/activity/login/LoginModel$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$3$2;->this$1:Lcom/ayma/commonerp/ui/activity/login/LoginModel$3;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-interface {v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void
.end method
