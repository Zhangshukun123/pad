.class Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity$9;
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

.field final synthetic val$bean:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

.field final synthetic val$etCount:Lcom/ayma/base/widget/ClearEditText;

.field final synthetic val$etPrice:Landroid/widget/EditText;

.field final synthetic val$goodsPrice:Ljava/util/List;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;Lcom/ayma/commonerp/bean/ReceiptSelectBean;ILcom/ayma/base/widget/ClearEditText;Landroid/widget/EditText;Ljava/util/List;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity$9;->this$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity$9;->val$bean:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    iput p3, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity$9;->val$position:I

    iput-object p4, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity$9;->val$etCount:Lcom/ayma/base/widget/ClearEditText;

    iput-object p5, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity$9;->val$etPrice:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity$9;->val$goodsPrice:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 430
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity$9;->this$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity$9;->val$bean:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    iget v2, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity$9;->val$position:I

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity$9;->val$etCount:Lcom/ayma/base/widget/ClearEditText;

    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity$9;->val$etPrice:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity$9;->val$goodsPrice:Ljava/util/List;

    invoke-virtual/range {v0 .. v5}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;->updateGoodsCount(Lcom/ayma/commonerp/bean/ReceiptSelectBean;ILcom/ayma/base/widget/ClearEditText;Landroid/widget/EditText;Ljava/util/List;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
