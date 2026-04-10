.class public Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding;
.super Ljava/lang/Object;
.source "QueryWarehouseActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;

.field private view7f0801b1:Landroid/view/View;

.field private view7f08055d:Landroid/view/View;

.field private view7f08055e:Landroid/view/View;

.field private view7f08055f:Landroid/view/View;

.field private view7f080560:Landroid/view/View;

.field private view7f080561:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;)V
    .locals 1

    .line 36
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;Landroid/view/View;)V
    .locals 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;

    .line 44
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0801b8

    const-string v2, "field \'tvTotalCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->tvTotalCount:Landroid/widget/TextView;

    .line 45
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0801b9

    const-string v2, "field \'tvTotalPrice\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->tvTotalPrice:Landroid/widget/TextView;

    .line 46
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f0801b5

    const-string v2, "field \'spinnerWarebigtype\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->spinnerWarebigtype:Landroid/widget/Spinner;

    .line 47
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f0801b6

    const-string v2, "field \'spinnerWaresmalltype\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->spinnerWaresmalltype:Landroid/widget/Spinner;

    .line 48
    const-class v0, Lcom/ayma/base/widget/ClearEditText;

    const v1, 0x7f0801b3

    const-string v2, "field \'etWarename\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/base/widget/ClearEditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->etWarename:Lcom/ayma/base/widget/ClearEditText;

    const v0, 0x7f0801b1

    const-string v1, "field \'btQuery\' and method \'onBtnQueryClick\'"

    .line 49
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 50
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btQuery\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->btQuery:Landroid/widget/Button;

    .line 51
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding;->view7f0801b1:Landroid/view/View;

    .line 52
    new-instance v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding$1;-><init>(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0801b4

    const-string v2, "field \'rlvData\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f08055d

    const-string v1, "method \'onTvGoodsCodeClick\'"

    .line 59
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding;->view7f08055d:Landroid/view/View;

    .line 61
    new-instance v1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding$2;-><init>(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08055e

    const-string v1, "method \'onTvGoodsNameClick\'"

    .line 67
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding;->view7f08055e:Landroid/view/View;

    .line 69
    new-instance v1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding$3;-><init>(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08055f

    const-string v1, "method \'onTvGoodsQtyClick\'"

    .line 75
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding;->view7f08055f:Landroid/view/View;

    .line 77
    new-instance v1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding$4;-><init>(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080560

    const-string v1, "method \'onTvGoodsPriceClick\'"

    .line 83
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 84
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding;->view7f080560:Landroid/view/View;

    .line 85
    new-instance v1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding$5;-><init>(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080561

    const-string v1, "method \'onTvGoodsAmountClick\'"

    .line 91
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 92
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding;->view7f080561:Landroid/view/View;

    .line 93
    new-instance v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding$6;-><init>(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 106
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;

    .line 108
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->tvTotalCount:Landroid/widget/TextView;

    .line 109
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->tvTotalPrice:Landroid/widget/TextView;

    .line 110
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->spinnerWarebigtype:Landroid/widget/Spinner;

    .line 111
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->spinnerWaresmalltype:Landroid/widget/Spinner;

    .line 112
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->etWarename:Lcom/ayma/base/widget/ClearEditText;

    .line 113
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->btQuery:Landroid/widget/Button;

    .line 114
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    .line 116
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding;->view7f0801b1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding;->view7f0801b1:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding;->view7f08055d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding;->view7f08055d:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding;->view7f08055e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding;->view7f08055e:Landroid/view/View;

    .line 122
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding;->view7f08055f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding;->view7f08055f:Landroid/view/View;

    .line 124
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding;->view7f080560:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding;->view7f080560:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding;->view7f080561:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding;->view7f080561:Landroid/view/View;

    return-void

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
