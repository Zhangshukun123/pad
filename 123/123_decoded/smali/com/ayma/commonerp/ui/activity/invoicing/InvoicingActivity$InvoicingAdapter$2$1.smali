.class Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$2$1;
.super Ljava/lang/Object;
.source "InvoicingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$2;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$2;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$2$1;->this$2:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 535
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 536
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$2$1;->this$2:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$2;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$2;->this$1:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "1M"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$2$1;->this$2:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$2;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$2;->val$orderCode:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$2$1;->this$2:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$2;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$2;->val$bean:Lcom/ayma/commonerp/bean/OrderBean;

    invoke-virtual {p1, p2, v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->refundOrder(Ljava/lang/String;Lcom/ayma/commonerp/bean/OrderBean;)V

    return-void
.end method
