.class Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$8;
.super Ljava/lang/Object;
.source "LoginPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->downloadBasic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

.field final synthetic val$pwd:Ljava/lang/String;

.field final synthetic val$userCode:Ljava/lang/String;

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$8;->val$userCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$8;->val$userName:Ljava/lang/String;

    iput-object p4, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$8;->val$pwd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 2

    .line 411
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$2300(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$2400(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->hideLoading()V

    .line 415
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$2500(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\u4e0b\u8f7d\u57fa\u7840\u5b57\u5178\u5931\u8d25"

    invoke-interface {v0, v1, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showSingleAlertNoAction(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 420
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$8;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 4

    .line 402
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$2200(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$8;->val$userCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$8;->val$userName:Ljava/lang/String;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$8;->val$pwd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->downloadUserList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
