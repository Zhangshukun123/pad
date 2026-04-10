.class Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1$2;
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

    .line 37
    iput-object p1, p0, Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1$2;->this$0:Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 40
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
