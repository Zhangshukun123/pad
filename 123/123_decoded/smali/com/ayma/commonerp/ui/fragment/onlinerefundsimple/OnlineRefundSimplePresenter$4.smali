.class Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$4;
.super Ljava/lang/Object;
.source "OnlineRefundSimplePresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->queryRefundOrder(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;

.field final synthetic val$errorMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$4;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$4;->val$errorMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$4;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->access$1900(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$4;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->access$2000(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;->hideLoading()V

    .line 193
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$4;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->access$2100(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$4;->val$errorMessage:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%s\n%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$4;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->access$2200(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$4;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->access$2300(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;->hideLoading()V

    .line 202
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$4;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->access$2400(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 176
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$4;->requestSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public requestSuccess(Ljava/lang/String;)V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$4;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->access$1500(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$4;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->access$1600(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;

    const/4 v1, 0x1

    const-string v2, "\u5df2\u9000\u6b3e"

    invoke-interface {v0, v2, v1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;->setReturnState(Ljava/lang/String;Z)V

    .line 183
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$4;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->access$1700(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;->hideLoading()V

    .line 184
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$4;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->access$1800(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method
