.class Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$6;
.super Ljava/lang/Object;
.source "LoginPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->queryUserInfoForServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 316
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$6;->val$userCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$6;->val$userName:Ljava/lang/String;

    iput-object p4, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$6;->val$pwd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$1500(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$1600(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->hideLoading()V

    .line 347
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$1700(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\u83b7\u53d6\u7528\u6237\u4fe1\u606f\u5931\u8d25"

    invoke-interface {v0, v1, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showSingleAlertNoAction(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 352
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$6;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 5

    .line 319
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$1100(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->initUserInfo()V

    .line 324
    invoke-static {}, Lcom/ayma/commonerp/app/AppUserData;->isKuGuan()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMdWithNoneSep()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    .line 326
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$1200(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->hideLoading()V

    .line 327
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$1300(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    const-string v1, "\u767b\u5f55\u6210\u529f"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showToast(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$1400(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->toStockMenu()V

    return-void

    .line 332
    :cond_1
    invoke-static {}, Lcom/ayma/commonerp/app/AppUserData;->isQC()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$6;->val$userCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$6;->val$userName:Ljava/lang/String;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$6;->val$pwd:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->downloadCrossRoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$6;->val$userCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$6;->val$userName:Ljava/lang/String;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$6;->val$pwd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->downloadPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
