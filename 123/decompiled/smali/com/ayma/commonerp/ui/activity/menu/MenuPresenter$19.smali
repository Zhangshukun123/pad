.class Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$19;
.super Ljava/lang/Object;
.source "MenuPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->updateSignInStatue(ZI)V
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

.field final synthetic val$isSell:Z

.field final synthetic val$sellType:I


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;ZI)V
    .locals 0

    .line 972
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$19;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    iput-boolean p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$19;->val$isSell:Z

    iput p3, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$19;->val$sellType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 3

    .line 983
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$19;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$8200(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 986
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$19;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$8300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->hideLoading()V

    .line 988
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$19;->val$isSell:Z

    if-eqz v0, :cond_1

    .line 989
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$19;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    iget v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$19;->val$sellType:I

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->judgeToSell(I)V

    return-void

    .line 992
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$19;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$8400(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u66f4\u65b0\u7b7e\u5230\u72b6\u6001\u5f02\u5e38\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_2

    const-string p1, "\u672a\u77e5\u5f02\u5e38"

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 997
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$19;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess(Ljava/lang/Boolean;)V
    .locals 4

    .line 975
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$19;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$8100(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 978
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$19;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$19;->val$isSell:Z

    iget v3, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$19;->val$sellType:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->saveSignInStatue(ZZZI)V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 972
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$19;->requestSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
