.class Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$16;
.super Ljava/lang/Object;
.source "LoginPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->queryCrossRoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ayma/base/mvp/ModelParamCallBack<",
        "Ljava/util/List<",
        "Lcom/ayma/commonerp/bean/CrossRoadDataBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

.field final synthetic val$isUpdateCrossRoad:Z

.field final synthetic val$pwd:Ljava/lang/String;

.field final synthetic val$userCode:Ljava/lang/String;

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 722
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$16;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    iput-boolean p2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$16;->val$isUpdateCrossRoad:Z

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$16;->val$userCode:Ljava/lang/String;

    iput-object p4, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$16;->val$userName:Ljava/lang/String;

    iput-object p5, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$16;->val$pwd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 4

    .line 741
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$16;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$6000(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$16;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$6100(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->hideLoading()V

    .line 745
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u60a8\u6ca1\u6709\u5408\u9002\u7684\u4ea4\u8def\u53ef\u767b\u5f55"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u8bf7\u5148\u4e0b\u8f7d\u4ea4\u8def\u8d44\u6599"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 753
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$16;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$6300(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showToast(Ljava/lang/String;)V

    return-void

    .line 746
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$16;->val$isUpdateCrossRoad:Z

    if-eqz p1, :cond_3

    .line 747
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$16;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$6200(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    const-string v0, "\u67e5\u8be2\u4e0d\u5230\u60a8\u7684\u4ea4\u8def\uff0c\u8bf7\u901a\u77e5\u7cfb\u7edf\u7ba1\u7406\u5458\u68c0\u67e5\u4ea4\u8def"

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void

    .line 750
    :cond_3
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$16;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$16;->val$userCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$16;->val$userName:Ljava/lang/String;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$16;->val$pwd:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->loginFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 758
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$16;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 722
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$16;->requestSuccess(Ljava/util/List;)V

    return-void
.end method

.method public requestSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/CrossRoadDataBean;",
            ">;)V"
        }
    .end annotation

    .line 725
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$16;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$5500(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$16;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$5600(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->hideLoading()V

    .line 729
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 730
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/CrossRoadDataBean;

    .line 731
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$16;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$5700(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->setCrossRoadDataBean(Lcom/ayma/commonerp/bean/CrossRoadDataBean;)V

    .line 732
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$16;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$5800(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$16;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-virtual {v1, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->generateLoginTipsContent(Lcom/ayma/commonerp/bean/CrossRoadDataBean;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showConfirmDialog(Ljava/lang/String;)V

    return-void

    .line 736
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$16;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$5900(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showSelectCrossRoad(Ljava/util/List;)V

    return-void
.end method
