.class Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter$1;
.super Ljava/lang/Object;
.source "RevisePwdPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;->changePwd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;->access$400(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;->access$500(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdContact$IRevisePwdView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdContact$IRevisePwdView;->hideLoading()V

    .line 70
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;->access$600(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdContact$IRevisePwdView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdContact$IRevisePwdView;->showToast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;->access$700(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;->access$800(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdContact$IRevisePwdView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdContact$IRevisePwdView;->hideLoading()V

    .line 78
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;->access$900(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdContact$IRevisePwdView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdContact$IRevisePwdView;->showToast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public requestSuccess()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;->access$000(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;->access$100(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdContact$IRevisePwdView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdContact$IRevisePwdView;->hideLoading()V

    .line 61
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;->access$200(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdContact$IRevisePwdView;

    const-string v1, "\u5bc6\u7801\u4fee\u6539\u6210\u529f\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdContact$IRevisePwdView;->showToast(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;->access$300(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdContact$IRevisePwdView;

    const/16 v1, 0x7a

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdContact$IRevisePwdView;->requestLogin(I)V

    :cond_0
    return-void
.end method
