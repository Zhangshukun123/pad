.class public Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding;
.super Ljava/lang/Object;
.source "StockInFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;

.field private view7f0800e6:Landroid/view/View;

.field private view7f080395:Landroid/view/View;

.field private view7f080399:Landroid/view/View;

.field private view7f08039b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;Landroid/view/View;)V
    .locals 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding;->target:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;

    .line 34
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f080390

    const-string v2, "field \'rv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->rv:Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080397

    const-string v2, "field \'tvNoData\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->tvNoData:Landroid/widget/TextView;

    .line 36
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f080392

    const-string v2, "field \'spStore\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->spStore:Landroid/widget/Spinner;

    .line 37
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f080393

    const-string v2, "field \'spStoreModel\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->spStoreModel:Landroid/widget/Spinner;

    const v0, 0x7f08039b

    const-string v1, "field \'tvStartDate\', method \'selectStartDate\', and method \'onTvStartDateLongClick\'"

    .line 38
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 39
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvStartDate\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->tvStartDate:Landroid/widget/TextView;

    .line 40
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding;->view7f08039b:Landroid/view/View;

    .line 41
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding;Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding$2;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding;Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v0, 0x7f080395

    const-string v1, "field \'tvEndDate\', method \'selectEndDate\', and method \'onTvEndDateLongClick\'"

    .line 53
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 54
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvEndDate\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->tvEndDate:Landroid/widget/TextView;

    .line 55
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding;->view7f080395:Landroid/view/View;

    .line 56
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding$3;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding;Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding$4;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding;Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 68
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f080394

    const-string v2, "field \'spSupplier\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->spSupplier:Landroid/widget/Spinner;

    .line 69
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f080391

    const-string v2, "field \'spPostMark\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->spPostMark:Landroid/widget/Spinner;

    .line 70
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f08038f

    const-string v2, "field \'etReceiptNo\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->etReceiptNo:Landroid/widget/EditText;

    const v0, 0x7f080399

    const-string v1, "field \'tvQuery\' and method \'onTvQueryClick\'"

    .line 71
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 72
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvQuery\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->tvQuery:Landroid/widget/TextView;

    .line 73
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding;->view7f080399:Landroid/view/View;

    .line 74
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding$5;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding;Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0803a0

    const-string v2, "field \'tvTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->tvTip:Landroid/widget/TextView;

    const v0, 0x7f0800e6

    const-string v1, "method \'onTvRightClick\'"

    .line 81
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 82
    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding;->view7f0800e6:Landroid/view/View;

    .line 83
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding$6;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding;Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding;->target:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 96
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding;->target:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;

    .line 98
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->rv:Landroidx/recyclerview/widget/RecyclerView;

    .line 99
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->tvNoData:Landroid/widget/TextView;

    .line 100
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->spStore:Landroid/widget/Spinner;

    .line 101
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->spStoreModel:Landroid/widget/Spinner;

    .line 102
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->tvStartDate:Landroid/widget/TextView;

    .line 103
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->tvEndDate:Landroid/widget/TextView;

    .line 104
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->spSupplier:Landroid/widget/Spinner;

    .line 105
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->spPostMark:Landroid/widget/Spinner;

    .line 106
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->etReceiptNo:Landroid/widget/EditText;

    .line 107
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->tvQuery:Landroid/widget/TextView;

    .line 108
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->tvTip:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding;->view7f08039b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding;->view7f08039b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 112
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding;->view7f08039b:Landroid/view/View;

    .line 113
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding;->view7f080395:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding;->view7f080395:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 115
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding;->view7f080395:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding;->view7f080399:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding;->view7f080399:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding;->view7f0800e6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding;->view7f0800e6:Landroid/view/View;

    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
