.class Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1$1;
.super Ljava/lang/Object;
.source "ShowInvoicingQrCodeUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1$1;->this$0:Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 46
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 47
    iget-object p1, p0, Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1$1;->this$0:Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1;

    iget-object p1, p1, Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 48
    iget-object p1, p0, Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1$1;->this$0:Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1;

    iget-boolean p1, p1, Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1;->val$closeWithFinish:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1$1;->this$0:Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1;

    iget-object p1, p1, Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1;->val$activity:Lcom/ayma/commonerp/base/BaseActivity;

    invoke-virtual {p1}, Lcom/ayma/commonerp/base/BaseActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1$1;->this$0:Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1;

    iget-object p1, p1, Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1;->val$activity:Lcom/ayma/commonerp/base/BaseActivity;

    invoke-virtual {p1}, Lcom/ayma/commonerp/base/BaseActivity;->finishActivity()V

    :cond_0
    return-void
.end method
