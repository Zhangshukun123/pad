.class Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$2;
.super Ljava/lang/Object;
.source "InvoicingPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->getBaseData()V
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

    .line 106
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->access$2400(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->access$2500(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;->hideLoading()V

    .line 123
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->access$2700(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$2$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$2$1;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$2;)V

    const-string v2, ""

    const-string v3, "\u786e\u5b9a"

    invoke-interface {v0, v2, p1, v3, v1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 134
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$2;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->access$1600(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->access$1700(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;->hideLoading()V

    .line 113
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->access$2000(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->access$1800(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->getFilterStartDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->access$1900(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    invoke-virtual {v2}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->getFilterEndDate()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;->initFilterDate(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->access$2300(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->access$2100(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->getPayTypeList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->access$2200(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    invoke-virtual {v2}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->getOrderTypeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;->initSpinner(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
