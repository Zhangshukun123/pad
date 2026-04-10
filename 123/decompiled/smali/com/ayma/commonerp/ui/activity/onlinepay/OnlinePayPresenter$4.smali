.class Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$4;
.super Ljava/lang/Object;
.source "OnlinePayPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->initBaseData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$700(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$800(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->hideLoading()V

    .line 153
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$1000(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    .line 154
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$4$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$4$1;-><init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$4;)V

    const-string v2, "\u63d0\u793a"

    const-string v3, "\u786e\u5b9a"

    .line 153
    invoke-interface {v0, v2, p1, v3, v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$4;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$300(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$500(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$400(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->getPayTypeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->showPayWay(Ljava/util/List;)V

    .line 144
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$600(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->hideLoading()V

    return-void
.end method
