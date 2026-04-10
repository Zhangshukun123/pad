.class Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$12;
.super Ljava/lang/Object;
.source "LoginPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->downloadCrossRoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

    .line 539
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$12;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    iput-boolean p2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$12;->val$isUpdateCrossRoad:Z

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$12;->val$userCode:Ljava/lang/String;

    iput-object p4, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$12;->val$userName:Ljava/lang/String;

    iput-object p5, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$12;->val$pwd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 4

    .line 555
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$12;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$3800(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$12;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$3900(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->hideLoading()V

    .line 559
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u767b\u5f55\u5df2\u5931\u6548"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$12;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$12;->val$userCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$12;->val$userName:Ljava/lang/String;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$12;->val$pwd:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->loginFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 563
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$12;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$4000(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    iget-boolean v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$12;->val$isUpdateCrossRoad:Z

    if-eqz v1, :cond_2

    const-string v1, "\u66f4\u65b0\u4ea4\u8def\u4fe1\u606f\u5931\u8d25"

    goto :goto_0

    :cond_2
    const-string v1, "\u4e0b\u8f7d\u4ea4\u8def\u4fe1\u606f\u5931\u8d25"

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showSingleAlertNoAction(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 568
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$12;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 9

    .line 542
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$12;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$3600(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 545
    :cond_0
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$12;->val$isUpdateCrossRoad:Z

    if-eqz v0, :cond_1

    .line 546
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$12;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$3700(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    const-string v1, "\u4ea4\u8def\u66f4\u65b0\u6210\u529f"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showToast(Ljava/lang/String;)V

    .line 547
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$12;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->userId:Ljava/lang/String;

    sget-object v4, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$12;->val$userCode:Ljava/lang/String;

    iget-object v6, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$12;->val$userName:Ljava/lang/String;

    iget-object v7, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$12;->val$pwd:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->queryCrossRoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$12;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$12;->val$userCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$12;->val$userName:Ljava/lang/String;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$12;->val$pwd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->downloadGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
