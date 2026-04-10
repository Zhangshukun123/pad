.class public Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ReceiptSelectGoodsActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;

.field private view7f0800e5:Landroid/view/View;

.field private view7f0801d5:Landroid/view/View;

.field private view7f0801d6:Landroid/view/View;

.field private view7f0801d7:Landroid/view/View;

.field private view7f0801d9:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;)V
    .locals 1

    .line 34
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;Landroid/view/View;)V
    .locals 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;

    const v0, 0x7f0801d7

    const-string v1, "field \'btnSave\' and method \'onArsgBtnSaveClicked\'"

    .line 43
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 44
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnSave\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;->btnSave:Landroid/widget/Button;

    .line 45
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity_ViewBinding;->view7f0801d7:Landroid/view/View;

    .line 46
    new-instance v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity_ViewBinding$1;-><init>(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801d6

    const-string v1, "field \'btnReset\' and method \'onArsgBtnResetClicked\'"

    .line 52
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 53
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnReset\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;->btnReset:Landroid/widget/Button;

    .line 54
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity_ViewBinding;->view7f0801d6:Landroid/view/View;

    .line 55
    new-instance v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity_ViewBinding$2;-><init>(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801d5

    const-string v1, "field \'btnCheck\' and method \'onArsgBtnCheckClicked\'"

    .line 61
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 62
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnCheck\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;->btnCheck:Landroid/widget/Button;

    .line 63
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity_ViewBinding;->view7f0801d5:Landroid/view/View;

    .line 64
    new-instance v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity_ViewBinding$3;-><init>(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0801da

    const-string v2, "field \'rlv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;->rlv:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08078a

    const-string v2, "field \'tvSupplier\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;->tvSupplier:Landroid/widget/TextView;

    .line 72
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0801dd

    const-string v2, "field \'tvStockHint\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;->tvStockHint:Landroid/widget/TextView;

    .line 73
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0801e0

    const-string v2, "field \'tvBirthdayHint\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;->tvBirthdayHint:Landroid/widget/TextView;

    .line 74
    const-class v0, Lcom/ayma/base/widget/ClearEditText;

    const v1, 0x7f0801d8

    const-string v2, "field \'etSearch\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/base/widget/ClearEditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;->etSearch:Lcom/ayma/base/widget/ClearEditText;

    const v0, 0x7f0801d9

    const-string v1, "field \'ivSearch\' and method \'onIvSearchClick\'"

    .line 75
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 76
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivSearch\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;->ivSearch:Landroid/widget/ImageView;

    .line 77
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity_ViewBinding;->view7f0801d9:Landroid/view/View;

    .line 78
    new-instance v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity_ViewBinding$4;-><init>(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0801e1

    const-string v2, "field \'tvNoData\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;->tvNoData:Landroid/widget/TextView;

    .line 85
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0801e2

    const-string v2, "field \'tvQtyAndAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;->tvQtyAndAmount:Landroid/widget/TextView;

    const v0, 0x7f0800e5

    const-string v1, "method \'onAppTitleBtnLeftClicked\'"

    .line 86
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 87
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity_ViewBinding;->view7f0800e5:Landroid/view/View;

    .line 88
    new-instance v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity_ViewBinding$5;-><init>(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 101
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;

    .line 103
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;->btnSave:Landroid/widget/Button;

    .line 104
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;->btnReset:Landroid/widget/Button;

    .line 105
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;->btnCheck:Landroid/widget/Button;

    .line 106
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;->rlv:Landroidx/recyclerview/widget/RecyclerView;

    .line 107
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;->tvSupplier:Landroid/widget/TextView;

    .line 108
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;->tvStockHint:Landroid/widget/TextView;

    .line 109
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;->tvBirthdayHint:Landroid/widget/TextView;

    .line 110
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;->etSearch:Lcom/ayma/base/widget/ClearEditText;

    .line 111
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;->ivSearch:Landroid/widget/ImageView;

    .line 112
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;->tvNoData:Landroid/widget/TextView;

    .line 113
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;->tvQtyAndAmount:Landroid/widget/TextView;

    .line 115
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity_ViewBinding;->view7f0801d7:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity_ViewBinding;->view7f0801d7:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity_ViewBinding;->view7f0801d6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity_ViewBinding;->view7f0801d6:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity_ViewBinding;->view7f0801d5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity_ViewBinding;->view7f0801d5:Landroid/view/View;

    .line 121
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity_ViewBinding;->view7f0801d9:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity_ViewBinding;->view7f0801d9:Landroid/view/View;

    .line 123
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity_ViewBinding;->view7f0800e5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity_ViewBinding;->view7f0800e5:Landroid/view/View;

    return-void

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
