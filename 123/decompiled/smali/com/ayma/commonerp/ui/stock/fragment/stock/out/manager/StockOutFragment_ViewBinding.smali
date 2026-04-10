.class public Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding;
.super Ljava/lang/Object;
.source "StockOutFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

.field private view7f0800e6:Landroid/view/View;

.field private view7f0803d5:Landroid/view/View;

.field private view7f0803d7:Landroid/view/View;

.field private view7f0803d8:Landroid/view/View;

.field private view7f0803dc:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;Landroid/view/View;)V
    .locals 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding;->target:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

    .line 36
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0803cb

    const-string v2, "field \'rv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->rv:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0803d6

    const-string v2, "field \'tvNoData\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->tvNoData:Landroid/widget/TextView;

    .line 38
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f0803cf

    const-string v2, "field \'spStock\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->spStock:Landroid/widget/Spinner;

    .line 39
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f0803d0

    const-string v2, "field \'spStockType\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->spStockType:Landroid/widget/Spinner;

    .line 40
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f0803ce

    const-string v2, "field \'spReceiptType\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->spReceiptType:Landroid/widget/Spinner;

    .line 41
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0803ca

    const-string v2, "field \'etOutTrain\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->etOutTrain:Landroid/widget/EditText;

    const v0, 0x7f0803d7

    const-string v1, "field \'tvOutDay\' and method \'onTvOutDayClick\'"

    .line 42
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 43
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvOutDay\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->tvOutDay:Landroid/widget/TextView;

    .line 44
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding;->view7f0803d7:Landroid/view/View;

    .line 45
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding;Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0803dc

    const-string v1, "field \'tvStartDay\' and method \'onTvStartDayClick\'"

    .line 51
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 52
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvStartDay\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->tvStartDay:Landroid/widget/TextView;

    .line 53
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding;->view7f0803dc:Landroid/view/View;

    .line 54
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding$2;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding;Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0803d5

    const-string v1, "field \'tvEndDay\' and method \'onTvEndDayClick\'"

    .line 60
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 61
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvEndDay\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->tvEndDay:Landroid/widget/TextView;

    .line 62
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding;->view7f0803d5:Landroid/view/View;

    .line 63
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding$3;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding;Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f0803cd

    const-string v2, "field \'spReceiptStatue\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->spReceiptStatue:Landroid/widget/Spinner;

    const v0, 0x7f0803d8

    const-string v1, "field \'tvQuery\' and method \'onTvQueryClick\'"

    .line 70
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 71
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvQuery\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->tvQuery:Landroid/widget/TextView;

    .line 72
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding;->view7f0803d8:Landroid/view/View;

    .line 73
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding$4;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding;Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0803c9

    const-string v2, "field \'etBillNo\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->etBillNo:Landroid/widget/EditText;

    const v0, 0x7f0800e6

    const-string v1, "method \'onRightClick\'"

    .line 80
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 81
    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding;->view7f0800e6:Landroid/view/View;

    .line 82
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding$5;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding;Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding;->target:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 95
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding;->target:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

    .line 97
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->rv:Landroidx/recyclerview/widget/RecyclerView;

    .line 98
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->tvNoData:Landroid/widget/TextView;

    .line 99
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->spStock:Landroid/widget/Spinner;

    .line 100
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->spStockType:Landroid/widget/Spinner;

    .line 101
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->spReceiptType:Landroid/widget/Spinner;

    .line 102
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->etOutTrain:Landroid/widget/EditText;

    .line 103
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->tvOutDay:Landroid/widget/TextView;

    .line 104
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->tvStartDay:Landroid/widget/TextView;

    .line 105
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->tvEndDay:Landroid/widget/TextView;

    .line 106
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->spReceiptStatue:Landroid/widget/Spinner;

    .line 107
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->tvQuery:Landroid/widget/TextView;

    .line 108
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->etBillNo:Landroid/widget/EditText;

    .line 110
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding;->view7f0803d7:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding;->view7f0803d7:Landroid/view/View;

    .line 112
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding;->view7f0803dc:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding;->view7f0803dc:Landroid/view/View;

    .line 114
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding;->view7f0803d5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding;->view7f0803d5:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding;->view7f0803d8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding;->view7f0803d8:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding;->view7f0800e6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding;->view7f0800e6:Landroid/view/View;

    return-void

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
