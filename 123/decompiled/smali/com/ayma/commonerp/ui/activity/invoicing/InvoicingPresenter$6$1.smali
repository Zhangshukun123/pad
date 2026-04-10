.class Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$6$1;
.super Ljava/lang/Object;
.source "InvoicingPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$6;->requestSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$6;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$6;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$6$1;->this$1:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 295
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 296
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$6$1;->this$1:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$6;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->access$4500(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;->refundApplySuccess()V

    return-void
.end method
