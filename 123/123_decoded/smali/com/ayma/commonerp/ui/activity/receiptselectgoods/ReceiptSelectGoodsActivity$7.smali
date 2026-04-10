.class Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity$7;
.super Ljava/lang/Object;
.source "ReceiptSelectGoodsActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;->showInputGoodsCountDialog(Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;

.field final synthetic val$etPrice:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity$7;->this$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity$7;->val$etPrice:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 406
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity$7;->val$etPrice:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 407
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity$7;->val$etPrice:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
