.class public final synthetic Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/-$$Lambda$StockOutEditFragment$YITY2GDru4j6nXYQF5k5MvemDMI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;Landroid/widget/EditText;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/-$$Lambda$StockOutEditFragment$YITY2GDru4j6nXYQF5k5MvemDMI;->f$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/-$$Lambda$StockOutEditFragment$YITY2GDru4j6nXYQF5k5MvemDMI;->f$1:Landroid/widget/EditText;

    iput p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/-$$Lambda$StockOutEditFragment$YITY2GDru4j6nXYQF5k5MvemDMI;->f$2:I

    iput-object p4, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/-$$Lambda$StockOutEditFragment$YITY2GDru4j6nXYQF5k5MvemDMI;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/-$$Lambda$StockOutEditFragment$YITY2GDru4j6nXYQF5k5MvemDMI;->f$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/-$$Lambda$StockOutEditFragment$YITY2GDru4j6nXYQF5k5MvemDMI;->f$1:Landroid/widget/EditText;

    iget v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/-$$Lambda$StockOutEditFragment$YITY2GDru4j6nXYQF5k5MvemDMI;->f$2:I

    iget-object v3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/-$$Lambda$StockOutEditFragment$YITY2GDru4j6nXYQF5k5MvemDMI;->f$3:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->lambda$showChangeCountDialog$4$StockOutEditFragment(Landroid/widget/EditText;ILjava/util/List;Landroid/view/View;)V

    return-void
.end method
