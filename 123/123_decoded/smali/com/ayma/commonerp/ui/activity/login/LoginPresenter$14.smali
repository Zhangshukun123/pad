.class Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$14;
.super Ljava/lang/Object;
.source "LoginPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->updateSignInStatue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ayma/base/mvp/ModelParamCallBack<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$14;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 4

    .line 639
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$14;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$4400(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$14;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$4500(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->hideLoading()V

    .line 643
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$14;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$4700(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u7b7e\u5230\u72b6\u6001\u5f02\u5e38\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\u8bf7\u8fdb\u5165\u7cfb\u7edf\u540e\u8fdb\u5165\u4e0b\u8f7d\u9875\u9762\u5c1d\u8bd5\u518d\u6b21\u66f4\u65b0\uff0c\u5426\u5219\u65e0\u6cd5\u4f7f\u7528\u9500\u552e\u529f\u80fd"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$14$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$14$1;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$14;)V

    const-string v2, ""

    const-string v3, "\u786e\u5b9a"

    .line 643
    invoke-interface {v0, v2, p1, v3, v1}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 656
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$14;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess(Ljava/lang/Boolean;)V
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$14;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$4300(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$14;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->saveSignInStatue(Z)V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 628
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$14;->requestSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
