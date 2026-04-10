.class Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$14;
.super Ljava/lang/Object;
.source "MenuPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->queryTakeOffPermission(ZLjava/lang/String;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

.field final synthetic val$isCommit:Z

.field final synthetic val$takeOffDate:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;ZLjava/lang/String;)V
    .locals 0

    .line 706
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$14;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    iput-boolean p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$14;->val$isCommit:Z

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$14;->val$takeOffDate:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$14;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$5700(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$14;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$5800(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->hideLoading()V

    .line 725
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$14;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$5900(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    if-nez p1, :cond_1

    const-string p1, "\u672a\u77e5\u5f02\u5e38"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 730
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$14;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess(Ljava/lang/Boolean;)V
    .locals 1

    .line 709
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$14;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$5500(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 712
    :cond_0
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$14;->val$isCommit:Z

    if-eqz v0, :cond_1

    .line 713
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$14;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$14;->val$takeOffDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->takeOff(Ljava/lang/String;)V

    return-void

    .line 716
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$14;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$5600(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showTakeOffIsNot(Z)V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 706
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$14;->requestSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
