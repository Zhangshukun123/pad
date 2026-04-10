.class Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$4;
.super Ljava/lang/Object;
.source "LoginPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->checkIsLastLoginUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 235
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$4;->val$userCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$4;->val$userName:Ljava/lang/String;

    iput-object p4, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$4;->val$pwd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 10

    .line 244
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$500(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "hadUpdatedToken"

    invoke-static {p1, v1, v0}, Lcom/ayma/base/util/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 245
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$600(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$4;->val$userCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$4;->val$userName:Ljava/lang/String;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$4;->val$pwd:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->saveUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    sget-object v4, Lcom/ayma/commonerp/app/AppUserData;->userId:Ljava/lang/String;

    sget-object v5, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    iget-object v6, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$4;->val$userCode:Ljava/lang/String;

    iget-object v7, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$4;->val$userName:Ljava/lang/String;

    iget-object v8, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$4;->val$pwd:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->queryCrossRoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 248
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/ayma/commonerp/eventbus/UpdateTokenEvent;

    invoke-direct {v0}, Lcom/ayma/commonerp/eventbus/UpdateTokenEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 253
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$4;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 11

    .line 238
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$400(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$4;->val$userCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$4;->val$userName:Ljava/lang/String;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$4;->val$pwd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->saveUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    sget-object v5, Lcom/ayma/commonerp/app/AppUserData;->userId:Ljava/lang/String;

    sget-object v6, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    iget-object v7, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$4;->val$userCode:Ljava/lang/String;

    iget-object v8, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$4;->val$userName:Ljava/lang/String;

    iget-object v9, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$4;->val$pwd:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->queryCrossRoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
