.class Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$13;
.super Ljava/lang/Object;
.source "LoginPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->downloadGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 590
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$13;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$13;->val$userCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$13;->val$userName:Ljava/lang/String;

    iput-object p4, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$13;->val$pwd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 7

    .line 602
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$13;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$4200(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$13;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->userId:Ljava/lang/String;

    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$13;->val$userCode:Ljava/lang/String;

    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$13;->val$userName:Ljava/lang/String;

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$13;->val$pwd:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->queryCrossRoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 611
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$13;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 8

    .line 593
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$13;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$4100(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 597
    :cond_0
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$13;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->userId:Ljava/lang/String;

    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$13;->val$userCode:Ljava/lang/String;

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$13;->val$userName:Ljava/lang/String;

    iget-object v6, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$13;->val$pwd:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->queryCrossRoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
