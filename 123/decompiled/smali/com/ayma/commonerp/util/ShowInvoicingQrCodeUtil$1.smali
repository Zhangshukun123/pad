.class Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1;
.super Ljava/lang/Object;
.source "ShowInvoicingQrCodeUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil;->showInvoicingQrCode(Lcom/ayma/commonerp/base/BaseActivity;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/ayma/commonerp/base/BaseActivity;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;

.field final synthetic val$closeWithFinish:Z

.field final synthetic val$isShowConfirm:Z


# direct methods
.method constructor <init>(ZLcom/ayma/commonerp/base/BaseActivity;Landroid/app/AlertDialog;Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1;->val$isShowConfirm:Z

    iput-object p2, p0, Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1;->val$activity:Lcom/ayma/commonerp/base/BaseActivity;

    iput-object p3, p0, Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1;->val$alertDialog:Landroid/app/AlertDialog;

    iput-boolean p4, p0, Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1;->val$closeWithFinish:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 34
    iget-boolean p1, p0, Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1;->val$isShowConfirm:Z

    if-eqz p1, :cond_1

    .line 35
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1;->val$activity:Lcom/ayma/commonerp/base/BaseActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u662f\u5426\u5173\u95ed\u4e8c\u7ef4\u7801\u5c55\u793a\uff1f\n\u5173\u95ed\u540e\u53ef\u4ece <\u83dc\u5355> \u9875\u9762\u7684 <\u7535\u5b50\u53d1\u7968\u5f00\u5177> \u8fdb\u5165\u8ba2\u5355\u67e5\u8be2\u9875\u9762\u67e5\u8be2\u8ba2\u5355\uff0c\u70b9\u51fb\u6307\u5b9a\u8ba2\u5355\u7684 <\u5f00\u7968> \u6309\u94ae\u5373\u53ef\u518d\u6b21\u751f\u6210"

    .line 36
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1$2;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1$2;-><init>(Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1;)V

    const-string v1, "\u53d6\u6d88"

    .line 37
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1$1;-><init>(Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1;)V

    const-string v1, "\u5173\u95ed"

    .line 43
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1;->val$activity:Lcom/ayma/commonerp/base/BaseActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/base/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 55
    iget-object v0, p0, Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1;->val$activity:Lcom/ayma/commonerp/base/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->resetDialogWidth(Landroid/app/AlertDialog;)V

    :cond_0
    return-void

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 60
    iget-boolean p1, p0, Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1;->val$closeWithFinish:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1;->val$activity:Lcom/ayma/commonerp/base/BaseActivity;

    invoke-virtual {p1}, Lcom/ayma/commonerp/base/BaseActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 61
    iget-object p1, p0, Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1;->val$activity:Lcom/ayma/commonerp/base/BaseActivity;

    invoke-virtual {p1}, Lcom/ayma/commonerp/base/BaseActivity;->finishActivity()V

    :cond_2
    return-void
.end method
