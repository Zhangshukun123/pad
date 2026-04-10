.class Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$1;
.super Ljava/lang/Object;
.source "TeamReturnPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->initBaseData(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$1;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$600(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$700(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->hideLoading()V

    .line 104
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$900(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$1$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$1$1;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$1;)V

    const-string v2, ""

    const-string v3, "\u786e\u5b9a"

    invoke-interface {v0, v2, p1, v3, v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$1000(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$1100(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->hideLoading()V

    .line 120
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$1300(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$1$2;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$1$2;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$1;)V

    const-string v2, ""

    const-string v3, "\u786e\u5b9a"

    invoke-interface {v0, v2, p1, v3, v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public requestSuccess(Ljava/lang/Boolean;)V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$000(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$102(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;Z)Z

    .line 91
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->initHandler()V

    .line 92
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$200(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->hideLoading()V

    .line 93
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$400(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$1;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$300(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->access$500(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;->setCanAddForOtherTrain(Z)V

    .line 95
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->getStoreList(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 84
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter$1;->requestSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
