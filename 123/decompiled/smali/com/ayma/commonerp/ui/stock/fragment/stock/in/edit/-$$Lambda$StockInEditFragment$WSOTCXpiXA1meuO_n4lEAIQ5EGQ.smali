.class public final synthetic Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$WSOTCXpiXA1meuO_n4lEAIQ5EGQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;

.field public final synthetic f$3:Landroid/widget/EditText;

.field public final synthetic f$4:Landroid/widget/EditText;

.field public final synthetic f$5:Landroid/widget/TextView;

.field public final synthetic f$6:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;Landroid/widget/EditText;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$WSOTCXpiXA1meuO_n4lEAIQ5EGQ;->f$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$WSOTCXpiXA1meuO_n4lEAIQ5EGQ;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$WSOTCXpiXA1meuO_n4lEAIQ5EGQ;->f$2:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;

    iput-object p4, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$WSOTCXpiXA1meuO_n4lEAIQ5EGQ;->f$3:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$WSOTCXpiXA1meuO_n4lEAIQ5EGQ;->f$4:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$WSOTCXpiXA1meuO_n4lEAIQ5EGQ;->f$5:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$WSOTCXpiXA1meuO_n4lEAIQ5EGQ;->f$6:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$WSOTCXpiXA1meuO_n4lEAIQ5EGQ;->f$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$WSOTCXpiXA1meuO_n4lEAIQ5EGQ;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$WSOTCXpiXA1meuO_n4lEAIQ5EGQ;->f$2:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$WSOTCXpiXA1meuO_n4lEAIQ5EGQ;->f$3:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$WSOTCXpiXA1meuO_n4lEAIQ5EGQ;->f$4:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$WSOTCXpiXA1meuO_n4lEAIQ5EGQ;->f$5:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$WSOTCXpiXA1meuO_n4lEAIQ5EGQ;->f$6:Landroid/widget/EditText;

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->lambda$showChangeGoodsDialog$1$StockInEditFragment(Landroid/widget/EditText;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method
