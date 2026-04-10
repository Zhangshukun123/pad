.class Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$17;
.super Ljava/lang/Object;
.source "MenuPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->updateOrderPayStatue(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ayma/base/mvp/ModelParamCallBack<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

.field final synthetic val$isTakeOff:Z


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;Z)V
    .locals 0

    .line 876
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$17;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    iput-boolean p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$17;->val$isTakeOff:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 892
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$17;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$7100(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$17;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$7200(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->hideLoading()V

    .line 896
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$17;->val$isTakeOff:Z

    if-eqz v0, :cond_1

    .line 897
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$17;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$7300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->takeOff()V

    goto :goto_1

    .line 899
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$17;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$7400(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    if-nez p1, :cond_2

    const-string p1, "\u672a\u77e5\u5f02\u5e38"

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 905
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$17;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 876
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$17;->requestSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public requestSuccess(Ljava/lang/String;)V
    .locals 1

    .line 879
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$17;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$6700(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 882
    :cond_0
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$17;->val$isTakeOff:Z

    if-eqz v0, :cond_1

    .line 883
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$17;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$6800(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->takeOff()V

    goto :goto_0

    .line 885
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$17;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$6900(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->hideLoading()V

    .line 886
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$17;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$7000(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
