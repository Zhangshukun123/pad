.class public final synthetic Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$ZE79O02NFsNoWLUrKHyfdBC0Q-Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/widget/EditText;

.field public final synthetic f$5:Landroid/widget/EditText;

.field public final synthetic f$6:Landroid/widget/EditText;

.field public final synthetic f$7:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;Landroid/widget/EditText;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;ILandroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$ZE79O02NFsNoWLUrKHyfdBC0Q-Q;->f$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$ZE79O02NFsNoWLUrKHyfdBC0Q-Q;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$ZE79O02NFsNoWLUrKHyfdBC0Q-Q;->f$2:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;

    iput p4, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$ZE79O02NFsNoWLUrKHyfdBC0Q-Q;->f$3:I

    iput-object p5, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$ZE79O02NFsNoWLUrKHyfdBC0Q-Q;->f$4:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$ZE79O02NFsNoWLUrKHyfdBC0Q-Q;->f$5:Landroid/widget/EditText;

    iput-object p7, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$ZE79O02NFsNoWLUrKHyfdBC0Q-Q;->f$6:Landroid/widget/EditText;

    iput-object p8, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$ZE79O02NFsNoWLUrKHyfdBC0Q-Q;->f$7:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$ZE79O02NFsNoWLUrKHyfdBC0Q-Q;->f$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$ZE79O02NFsNoWLUrKHyfdBC0Q-Q;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$ZE79O02NFsNoWLUrKHyfdBC0Q-Q;->f$2:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;

    iget v3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$ZE79O02NFsNoWLUrKHyfdBC0Q-Q;->f$3:I

    iget-object v4, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$ZE79O02NFsNoWLUrKHyfdBC0Q-Q;->f$4:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$ZE79O02NFsNoWLUrKHyfdBC0Q-Q;->f$5:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$ZE79O02NFsNoWLUrKHyfdBC0Q-Q;->f$6:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$ZE79O02NFsNoWLUrKHyfdBC0Q-Q;->f$7:Landroid/widget/TextView;

    move-object v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->lambda$showChangeGoodsDialog$2$StockInEditFragment(Landroid/widget/EditText;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;ILandroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method
