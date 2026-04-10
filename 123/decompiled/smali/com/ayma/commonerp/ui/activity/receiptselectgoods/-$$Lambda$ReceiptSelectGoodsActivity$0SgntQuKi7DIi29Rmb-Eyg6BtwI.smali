.class public final synthetic Lcom/ayma/commonerp/ui/activity/receiptselectgoods/-$$Lambda$ReceiptSelectGoodsActivity$0SgntQuKi7DIi29Rmb-Eyg6BtwI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;

.field public final synthetic f$1:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/ayma/base/widget/ClearEditText;

.field public final synthetic f$4:Landroid/widget/EditText;

.field public final synthetic f$5:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;Lcom/ayma/commonerp/bean/ReceiptSelectBean;ILcom/ayma/base/widget/ClearEditText;Landroid/widget/EditText;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/-$$Lambda$ReceiptSelectGoodsActivity$0SgntQuKi7DIi29Rmb-Eyg6BtwI;->f$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/-$$Lambda$ReceiptSelectGoodsActivity$0SgntQuKi7DIi29Rmb-Eyg6BtwI;->f$1:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    iput p3, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/-$$Lambda$ReceiptSelectGoodsActivity$0SgntQuKi7DIi29Rmb-Eyg6BtwI;->f$2:I

    iput-object p4, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/-$$Lambda$ReceiptSelectGoodsActivity$0SgntQuKi7DIi29Rmb-Eyg6BtwI;->f$3:Lcom/ayma/base/widget/ClearEditText;

    iput-object p5, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/-$$Lambda$ReceiptSelectGoodsActivity$0SgntQuKi7DIi29Rmb-Eyg6BtwI;->f$4:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/-$$Lambda$ReceiptSelectGoodsActivity$0SgntQuKi7DIi29Rmb-Eyg6BtwI;->f$5:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/-$$Lambda$ReceiptSelectGoodsActivity$0SgntQuKi7DIi29Rmb-Eyg6BtwI;->f$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/-$$Lambda$ReceiptSelectGoodsActivity$0SgntQuKi7DIi29Rmb-Eyg6BtwI;->f$1:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    iget v2, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/-$$Lambda$ReceiptSelectGoodsActivity$0SgntQuKi7DIi29Rmb-Eyg6BtwI;->f$2:I

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/-$$Lambda$ReceiptSelectGoodsActivity$0SgntQuKi7DIi29Rmb-Eyg6BtwI;->f$3:Lcom/ayma/base/widget/ClearEditText;

    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/-$$Lambda$ReceiptSelectGoodsActivity$0SgntQuKi7DIi29Rmb-Eyg6BtwI;->f$4:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/-$$Lambda$ReceiptSelectGoodsActivity$0SgntQuKi7DIi29Rmb-Eyg6BtwI;->f$5:Ljava/util/List;

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;->lambda$showInputGoodsCountDialog$2$ReceiptSelectGoodsActivity(Lcom/ayma/commonerp/bean/ReceiptSelectBean;ILcom/ayma/base/widget/ClearEditText;Landroid/widget/EditText;Ljava/util/List;Landroid/view/View;)V

    return-void
.end method
