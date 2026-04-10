.class Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$17;
.super Ljava/lang/Object;
.source "LoginPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->downloadPickingList(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ayma/base/mvp/ModelParamCallBack<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)V
    .locals 0

    .line 829
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$17;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 4

    .line 851
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$17;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$7000(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$17;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$7100(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->hideLoading()V

    .line 855
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$17;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$7300(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 856
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%s\n\u8bf7\u8fdb\u5165\u7cfb\u7edf\u540e\u5c1d\u8bd5\u91cd\u65b0\u4e0b\u8f7d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$17$2;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$17$2;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$17;)V

    const-string v2, "\u4e0b\u8f7d\u9886\u6599\u5355\u5931\u8d25"

    const-string v3, "\u786e\u5b9a"

    .line 855
    invoke-interface {v0, v2, p1, v3, v1}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 868
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$17;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 829
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$17;->requestSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public requestSuccess(Ljava/lang/String;)V
    .locals 4

    .line 832
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$17;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$6400(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$17;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$6500(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->hideLoading()V

    .line 836
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 837
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$17;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$6600(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    const-string v0, "\u9886\u6599\u5355\u4e0b\u8f7d\u6210\u529f"

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showToast(Ljava/lang/String;)V

    .line 838
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$17;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$6700(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->toMenu()V

    return-void

    .line 841
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$17;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$6900(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$17$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$17$1;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$17;)V

    const-string v2, ""

    const-string v3, "\u77e5\u9053\u4e86"

    invoke-interface {v0, v2, p1, v3, v1}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
