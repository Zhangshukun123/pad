.class Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$3;
.super Ljava/lang/Object;
.source "InvoicingPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->queryAllOrder(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->access$3600(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->access$3700(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;->hideLoading()V

    .line 182
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->access$3800(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;

    const-string v1, "\u67e5\u8be2\u5931\u8d25"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;->showToast(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->access$3900(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;->notifyListDataChanged()V

    .line 184
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->access$4000(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 189
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$3;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->access$2800(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->access$2900(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;

    const-string v1, "\u67e5\u8be2\u6210\u529f"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;->showToast(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->access$3000(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;->hideLoading()V

    .line 171
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->access$3300(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->access$3100(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->getFilterStartDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->access$3200(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    invoke-virtual {v2}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->getFilterEndDate()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;->initFilterDate(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->access$3400(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;->showFilterAndSortIsNot(Z)V

    .line 173
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->access$3500(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;->notifyListDataChanged()V

    return-void
.end method
