.class public Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment_ViewBinding;
.super Ljava/lang/Object;
.source "StockInEditFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

.field private view7f0803a1:Landroid/view/View;

.field private view7f0803a2:Landroid/view/View;

.field private view7f0803a7:Landroid/view/View;

.field private view7f0803b2:Landroid/view/View;

.field private view7f0803bc:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;Landroid/view/View;)V
    .locals 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment_ViewBinding;->target:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

    const v0, 0x7f0803b2

    const-string v1, "field \'tvBillDay\' and method \'onSelectDate\'"

    .line 40
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 41
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvBillDay\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvBillDay:Landroid/widget/TextView;

    .line 42
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment_ViewBinding;->view7f0803b2:Landroid/view/View;

    .line 43
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment_ViewBinding$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment_ViewBinding;Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0803ab

    const-string v2, "field \'rlvData\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0803aa

    const-string v2, "field \'tvNoData\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvNoData:Landroid/widget/TextView;

    .line 51
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0803ae

    const-string v2, "field \'tvAllAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvAllAmount:Landroid/widget/TextView;

    .line 52
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0803b0

    const-string v2, "field \'tvAllQty\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvAllQty:Landroid/widget/TextView;

    .line 53
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f0803ac

    const-string v2, "field \'spStore\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->spStore:Landroid/widget/Spinner;

    .line 54
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f0803ad

    const-string v2, "field \'spStoreModel\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->spStoreModel:Landroid/widget/Spinner;

    .line 55
    const-class v0, Lcom/ayma/base/widget/ClearEditText;

    const v1, 0x7f0803a6

    const-string v2, "field \'etSupplier\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/base/widget/ClearEditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->etSupplier:Lcom/ayma/base/widget/ClearEditText;

    const v0, 0x7f0803a1

    const-string v1, "field \'btnSave\' and method \'btnSave\'"

    .line 56
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 57
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnSave\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->btnSave:Landroid/widget/Button;

    .line 58
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment_ViewBinding;->view7f0803a1:Landroid/view/View;

    .line 59
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment_ViewBinding$2;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment_ViewBinding;Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0803a2

    const-string v1, "field \'btnUpload\' and method \'btnUpload\'"

    .line 65
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 66
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnUpload\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->btnUpload:Landroid/widget/Button;

    .line 67
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment_ViewBinding;->view7f0803a2:Landroid/view/View;

    .line 68
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment_ViewBinding$3;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment_ViewBinding;Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0803bc

    const-string v1, "field \'tvRemark\' and method \'onTvRemarkClick\'"

    .line 74
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 75
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvRemark\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvRemark:Landroid/widget/TextView;

    .line 76
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment_ViewBinding;->view7f0803bc:Landroid/view/View;

    .line 77
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment_ViewBinding$4;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment_ViewBinding;Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0803a5

    const-string v2, "field \'etGoodsCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->etGoodsCode:Landroid/widget/EditText;

    .line 84
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0800e6

    const-string v2, "field \'tvRight\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvRight:Landroid/widget/TextView;

    const v0, 0x7f0803a7

    const-string v1, "field \'ivScan\' and method \'onIvScanClick\'"

    .line 85
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 86
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivScan\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->ivScan:Landroid/widget/ImageView;

    .line 87
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment_ViewBinding;->view7f0803a7:Landroid/view/View;

    .line 88
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment_ViewBinding$5;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment_ViewBinding;Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0803a3

    const-string v2, "field \'clReceiptInfo\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->clReceiptInfo:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 95
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0803ba

    const-string v2, "field \'tvReceiptNo\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvReceiptNo:Landroid/widget/TextView;

    .line 96
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0803a8

    const-string v2, "field \'ivStatue\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->ivStatue:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment_ViewBinding;->target:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 104
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment_ViewBinding;->target:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

    .line 106
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvBillDay:Landroid/widget/TextView;

    .line 107
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    .line 108
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvNoData:Landroid/widget/TextView;

    .line 109
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvAllAmount:Landroid/widget/TextView;

    .line 110
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvAllQty:Landroid/widget/TextView;

    .line 111
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->spStore:Landroid/widget/Spinner;

    .line 112
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->spStoreModel:Landroid/widget/Spinner;

    .line 113
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->etSupplier:Lcom/ayma/base/widget/ClearEditText;

    .line 114
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->btnSave:Landroid/widget/Button;

    .line 115
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->btnUpload:Landroid/widget/Button;

    .line 116
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvRemark:Landroid/widget/TextView;

    .line 117
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->etGoodsCode:Landroid/widget/EditText;

    .line 118
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvRight:Landroid/widget/TextView;

    .line 119
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->ivScan:Landroid/widget/ImageView;

    .line 120
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->clReceiptInfo:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 121
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvReceiptNo:Landroid/widget/TextView;

    .line 122
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->ivStatue:Landroid/widget/ImageView;

    .line 124
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment_ViewBinding;->view7f0803b2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment_ViewBinding;->view7f0803b2:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment_ViewBinding;->view7f0803a1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment_ViewBinding;->view7f0803a1:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment_ViewBinding;->view7f0803a2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment_ViewBinding;->view7f0803a2:Landroid/view/View;

    .line 130
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment_ViewBinding;->view7f0803bc:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment_ViewBinding;->view7f0803bc:Landroid/view/View;

    .line 132
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment_ViewBinding;->view7f0803a7:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment_ViewBinding;->view7f0803a7:Landroid/view/View;

    return-void

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
