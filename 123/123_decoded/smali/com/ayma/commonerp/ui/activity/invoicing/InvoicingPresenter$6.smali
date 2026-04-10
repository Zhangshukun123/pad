.class Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$6;
.super Ljava/lang/Object;
.source "InvoicingPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->refundOrder(Ljava/lang/String;Lcom/ayma/commonerp/bean/OrderBean;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->access$4700(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;->hideLoading()V

    .line 304
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->access$4800(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 309
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$6;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 284
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$6;->requestSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public requestSuccess(Ljava/lang/String;)V
    .locals 4

    .line 287
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->access$4300(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 290
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->access$4400(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;->hideLoading()V

    .line 291
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->access$4600(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$6$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$6$1;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$6;)V

    const-string v1, ""

    const-string v2, "\u9000\u6b3e\u7533\u8bf7\u5df2\u63d0\u4ea4\uff0c\u8bf7\u4ee5\u5b9e\u9645\u5230\u8d26\u4e3a\u51c6\u3002"

    const-string v3, "\u786e\u5b9a"

    invoke-interface {p1, v1, v2, v3, v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
