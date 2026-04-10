.class public Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding;
.super Ljava/lang/Object;
.source "StockMenuFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;

.field private view7f0803c0:Landroid/view/View;

.field private view7f0803c1:Landroid/view/View;

.field private view7f0803c2:Landroid/view/View;

.field private view7f0803c6:Landroid/view/View;

.field private view7f0803c7:Landroid/view/View;

.field private view7f0803c8:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;Landroid/view/View;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding;->target:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;

    const v0, 0x7f0803c7

    const-string v1, "method \'onBtnStockInClick\'"

    .line 34
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding;->view7f0803c7:Landroid/view/View;

    .line 36
    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding;Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0803c8

    const-string v1, "method \'onBtnStockOutClick\'"

    .line 42
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding;->view7f0803c8:Landroid/view/View;

    .line 44
    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding$2;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding;Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0803c6

    const-string v1, "method \'onBntQueryReceiptClick\'"

    .line 50
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding;->view7f0803c6:Landroid/view/View;

    .line 52
    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding$3;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding;Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0803c0

    const-string v1, "method \'changePwdClick\'"

    .line 58
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding;->view7f0803c0:Landroid/view/View;

    .line 60
    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding$4;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding;Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0803c2

    const-string v1, "method \'downloadStockOutTemp\'"

    .line 66
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding;->view7f0803c2:Landroid/view/View;

    .line 68
    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding$5;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding;Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0803c1

    const-string v1, "method \'onBtnCheckUpdateClick\'"

    .line 74
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 75
    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding;->view7f0803c1:Landroid/view/View;

    .line 76
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding$6;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding;Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding;->target:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding;->target:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;

    .line 91
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding;->view7f0803c7:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding;->view7f0803c7:Landroid/view/View;

    .line 93
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding;->view7f0803c8:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding;->view7f0803c8:Landroid/view/View;

    .line 95
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding;->view7f0803c6:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding;->view7f0803c6:Landroid/view/View;

    .line 97
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding;->view7f0803c0:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding;->view7f0803c0:Landroid/view/View;

    .line 99
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding;->view7f0803c2:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding;->view7f0803c2:Landroid/view/View;

    .line 101
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding;->view7f0803c1:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment_ViewBinding;->view7f0803c1:Landroid/view/View;

    return-void

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
