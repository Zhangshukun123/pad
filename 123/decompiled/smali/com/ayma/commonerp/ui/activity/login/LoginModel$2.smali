.class Lcom/ayma/commonerp/ui/activity/login/LoginModel$2;
.super Ljava/lang/Object;
.source "LoginModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/login/LoginModel;->getUserInfoFromServer(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/ayma/commonerp/bean/RequestHeaderBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/login/LoginModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

.field final synthetic val$pwd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/login/LoginModel;Lcom/ayma/base/mvp/ModelCallBack;Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$2;->val$pwd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/ayma/commonerp/bean/RequestHeaderBean;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 181
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->access$1300(Lcom/ayma/commonerp/ui/activity/login/LoginModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/ayma/commonerp/bean/RequestHeaderBean;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/ayma/commonerp/bean/RequestHeaderBean;",
            ">;)V"
        }
    .end annotation

    const-string p1, "-"

    .line 120
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    .line 121
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->notOk(I)Z

    move-result v1

    if-nez v1, :cond_8

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 125
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 126
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    invoke-static {p2, v0}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->access$700(Lcom/ayma/commonerp/ui/activity/login/LoginModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 130
    :cond_1
    :try_start_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 131
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6570\u636e\u6709\u8bef\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->access$800(Lcom/ayma/commonerp/ui/activity/login/LoginModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 135
    :cond_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->access$900(Lcom/ayma/commonerp/ui/activity/login/LoginModel;)V

    .line 136
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->access$1000(Lcom/ayma/commonerp/ui/activity/login/LoginModel;)Lcom/google/gson/Gson;

    move-result-object p1

    const-class v0, Lcom/ayma/commonerp/bean/UserInfoBean;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/UserInfoBean;

    if-nez p1, :cond_3

    .line 138
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6570\u636e\u8f6c\u6362\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->access$1100(Lcom/ayma/commonerp/ui/activity/login/LoginModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 141
    :cond_3
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UserInfoBean;->getTeam()Lcom/ayma/commonerp/bean/UserInfoBean$TeamBean;

    move-result-object p2

    .line 142
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UserInfoBean;->getPersonnelType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UserInfoBean;->getPersonnelType()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->personnelType:Ljava/lang/String;

    .line 144
    invoke-static {}, Lcom/ayma/commonerp/app/AppUserData;->isQC()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_5

    .line 146
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/UserInfoBean$TeamBean;->getTeamName()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/ayma/commonerp/app/AppUserData$QCInfo;->teamName:Ljava/lang/String;

    .line 149
    :cond_5
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UserInfoBean;->getCompany2Id()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UserInfoBean;->getEmployeeCode()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UserInfoBean;->getCompany2Id()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/ayma/commonerp/app/AppUserData$QCInfo;->company2Id:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UserInfoBean;->getCompanyId()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/ayma/commonerp/app/AppUserData$QCInfo;->companyId:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UserInfoBean;->getTeamId()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/ayma/commonerp/app/AppUserData$QCInfo;->teamId:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UserInfoBean;->getEmployeeName()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/ayma/commonerp/app/AppUserData$QCInfo;->userName:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UserInfoBean;->getEmployeeCode()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/ayma/commonerp/app/AppUserData$QCInfo;->userCode:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UserInfoBean;->getEmployeeId()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/ayma/commonerp/app/AppUserData$QCInfo;->userId:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UserInfoBean;->getStoreId()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/ayma/commonerp/app/AppUserData$QCInfo;->storeId:Ljava/lang/String;

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_7

    .line 161
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/UserInfoBean$TeamBean;->getTeamName()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/ayma/commonerp/app/AppUserData;->teamName:Ljava/lang/String;

    .line 163
    :cond_7
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UserInfoBean;->getCompany2Id()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UserInfoBean;->getEmployeeCode()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UserInfoBean;->getCompanyId()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UserInfoBean;->getTeamId()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/ayma/commonerp/app/AppUserData;->teamId:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UserInfoBean;->getEmployeeName()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/ayma/commonerp/app/AppUserData;->userName:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UserInfoBean;->getEmployeeId()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/ayma/commonerp/app/AppUserData;->userId:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UserInfoBean;->getStoreId()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/ayma/commonerp/app/AppUserData;->storeId:Ljava/lang/String;

    .line 171
    :goto_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UserInfoBean;->getEmployeeCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UserInfoBean;->getEmployeeName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$2;->val$pwd:Ljava/lang/String;

    invoke-virtual {p2, v0, p1, v1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->saveUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 174
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 175
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->access$1200(Lcom/ayma/commonerp/ui/activity/login/LoginModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    .line 122
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/login/LoginModel;->access$600(Lcom/ayma/commonerp/ui/activity/login/LoginModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
