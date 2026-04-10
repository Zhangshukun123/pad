.class Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$2;
.super Ljava/lang/Object;
.source "LoginPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->queryUser(Ljava/lang/String;)V
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
        "Lcom/ayma/commonerp/bean/UserDataBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 132
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$2;->requestSuccess(Ljava/util/List;)V

    return-void
.end method

.method public requestSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/UserDataBean;",
            ">;)V"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$200(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/UserDataBean;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UserDataBean;->getEmployeeName()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, ""

    :goto_1
    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showUserName(Ljava/lang/String;)V

    return-void
.end method
