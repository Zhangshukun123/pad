.class Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$4;
.super Ljava/lang/Object;
.source "MenuPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->checkUpdate(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ayma/base/mvp/ModelParamCallBack<",
        "Lcom/ayma/commonerp/bean/UpdateInfoBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

.field final synthetic val$autoCheck:Z


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;Z)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    iput-boolean p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$4;->val$autoCheck:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$1200(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$1300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->hideLoading()V

    .line 230
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$1400(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "\u66f4\u65b0\u5f02\u5e38\uff1a%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ayma/commonerp/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 235
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$4;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess(Lcom/ayma/commonerp/bean/UpdateInfoBean;)V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$900(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$1000(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->hideLoading()V

    .line 221
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$1100(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    iget-boolean v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$4;->val$autoCheck:Z

    invoke-interface {v0, p1, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->updateInfo(Lcom/ayma/commonerp/bean/UpdateInfoBean;Z)V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 214
    check-cast p1, Lcom/ayma/commonerp/bean/UpdateInfoBean;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$4;->requestSuccess(Lcom/ayma/commonerp/bean/UpdateInfoBean;)V

    return-void
.end method
