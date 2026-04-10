.class Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$2;
.super Ljava/lang/Object;
.source "OnlineRefundJDPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->queryJDOrder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$2;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$2;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->access$2400(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$2;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->access$2500(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;->hideLoading()V

    .line 114
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$2;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->access$2600(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;

    const-string v1, "\u67e5\u8be2\u5931\u8d25"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;->showToast(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$2;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->access$2700(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;->notifyListDataChanged()V

    .line 116
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$2;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->access$2800(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$2;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$2;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->access$1600(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$2;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->access$1700(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;

    const-string v1, "\u67e5\u8be2\u6210\u529f"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;->showToast(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$2;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->access$1800(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;->hideLoading()V

    .line 103
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$2;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->access$2100(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$2;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->access$1900(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;

    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;->getFilterStartDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$2;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->access$2000(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;

    invoke-virtual {v2}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDModel;->getFilterEndDate()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;->initFilterDate(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$2;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->access$2200(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;->showFilterAndSortIsNot(Z)V

    .line 105
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$2;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->access$2300(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;->notifyListDataChanged()V

    return-void
.end method
