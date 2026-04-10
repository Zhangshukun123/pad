.class Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$1;
.super Ljava/lang/Object;
.source "OnlineRefundSimplePresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->queryOrder(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ayma/base/mvp/ModelParamCallBack<",
        "Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;

.field final synthetic val$transactionNo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$1;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$1;->val$transactionNo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$1;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->access$500(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$1;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->access$600(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;->hideLoading()V

    .line 70
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$1;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->access$700(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$1;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->access$800(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$1;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->access$900(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;->hideLoading()V

    .line 79
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$1;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->access$1000(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestSuccess(Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$1;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->access$000(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$1;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$1;->val$transactionNo:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->access$102(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$1;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->access$300(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$1;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->access$200(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;->getSelectList()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;->showOrder(Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;Ljava/util/Map;)V

    .line 61
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$1;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->access$400(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;->hideLoading()V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 53
    check-cast p1, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$1;->requestSuccess(Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;)V

    return-void
.end method
