.class Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$3;
.super Ljava/lang/Object;
.source "LoginPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->loginFromLocal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ayma/base/mvp/ModelParamCallBack<",
        "Lcom/ayma/commonerp/bean/UserDataBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

.field final synthetic val$pwd:Ljava/lang/String;

.field final synthetic val$userCode:Ljava/lang/String;

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$3;->val$userCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$3;->val$userName:Ljava/lang/String;

    iput-object p4, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$3;->val$pwd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 4

    .line 202
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$3;->val$userCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$3;->val$userName:Ljava/lang/String;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$3;->val$pwd:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->loginFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 207
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$3;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess(Lcom/ayma/commonerp/bean/UserDataBean;)V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$300(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 189
    :cond_0
    invoke-static {}, Lcom/ayma/commonerp/app/AppUserData;->clearAll()V

    .line 190
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UserDataBean;->getEmployeeId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->userId:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UserDataBean;->getEmployeeCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UserDataBean;->getCompanyId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UserDataBean;->getCompany2Id()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UserDataBean;->getCompanyName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->companyName:Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UserDataBean;->getCompany2Name()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/ayma/commonerp/app/AppUserData;->company2Name:Ljava/lang/String;

    .line 196
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$3;->val$userCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$3;->val$userName:Ljava/lang/String;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$3;->val$pwd:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->checkIsLastLoginUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 183
    check-cast p1, Lcom/ayma/commonerp/bean/UserDataBean;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$3;->requestSuccess(Lcom/ayma/commonerp/bean/UserDataBean;)V

    return-void
.end method
