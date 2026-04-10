.class public Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;
.super Ljava/lang/Object;
.source "StockOutEditFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

.field private view7f0803e3:Landroid/view/View;

.field private view7f0803e4:Landroid/view/View;

.field private view7f0803e5:Landroid/view/View;

.field private view7f0803e7:Landroid/view/View;

.field private view7f0803f0:Landroid/view/View;

.field private view7f0803fb:Landroid/view/View;

.field private view7f0803fd:Landroid/view/View;

.field private view7f080402:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;Landroid/view/View;)V
    .locals 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;->target:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

    const v0, 0x7f0803fb

    const-string v1, "field \'tvOutDate\' and method \'SelectOutDate\'"

    .line 42
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 43
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvOutDate\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->tvOutDate:Landroid/widget/TextView;

    .line 44
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;->view7f0803fb:Landroid/view/View;

    .line 45
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080402

    const-string v1, "field \'tvTrainNo\' and method \'SelectTrainNo\'"

    .line 51
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 52
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvTrainNo\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->tvTrainNo:Landroid/widget/TextView;

    .line 53
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;->view7f080402:Landroid/view/View;

    .line 54
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding$2;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0803f0

    const-string v1, "field \'tvOrderDate\' and method \'SelectOrderDate\'"

    .line 60
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 61
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvOrderDate\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->tvOrderDate:Landroid/widget/TextView;

    .line 62
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;->view7f0803f0:Landroid/view/View;

    .line 63
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding$3;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f0803eb

    const-string v2, "field \'spStockModel\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->spStockModel:Landroid/widget/Spinner;

    .line 70
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f0803ea

    const-string v2, "field \'spStore\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->spStore:Landroid/widget/Spinner;

    .line 71
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f080400

    const-string v2, "field \'spTemplate\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->spTemplate:Landroid/widget/Spinner;

    .line 72
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0803e9

    const-string v2, "field \'rlvGoodsData\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->rlvGoodsData:Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0803e8

    const-string v2, "field \'tvNoData\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->tvNoData:Landroid/widget/TextView;

    .line 74
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0803ec

    const-string v2, "field \'tvAllCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->tvAllCount:Landroid/widget/TextView;

    .line 75
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0803ee

    const-string v2, "field \'tvAllMoney\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->tvAllMoney:Landroid/widget/TextView;

    const v0, 0x7f0803fd

    const-string v1, "field \'tvRemark\' and method \'onTvRemarkClick\'"

    .line 76
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 77
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvRemark\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->tvRemark:Landroid/widget/TextView;

    .line 78
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;->view7f0803fd:Landroid/view/View;

    .line 79
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding$4;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const-class v0, Lcom/ayma/base/widget/ClearEditText;

    const v1, 0x7f0803f4

    const-string v2, "field \'etGoodsCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/base/widget/ClearEditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->etGoodsCode:Lcom/ayma/base/widget/ClearEditText;

    const v0, 0x7f0803e4

    const-string v1, "method \'btnSave\'"

    .line 86
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 87
    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;->view7f0803e4:Landroid/view/View;

    .line 88
    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding$5;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0803e3

    const-string v1, "method \'btnGetNewData\'"

    .line 94
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 95
    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;->view7f0803e3:Landroid/view/View;

    .line 96
    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding$6;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0803e5

    const-string v1, "method \'btnUpload\'"

    .line 102
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 103
    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;->view7f0803e5:Landroid/view/View;

    .line 104
    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding$7;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0803e7

    const-string v1, "method \'onIvScanClick\'"

    .line 110
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 111
    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;->view7f0803e7:Landroid/view/View;

    .line 112
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding$8;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding$8;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;->target:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 125
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;->target:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

    .line 127
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->tvOutDate:Landroid/widget/TextView;

    .line 128
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->tvTrainNo:Landroid/widget/TextView;

    .line 129
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->tvOrderDate:Landroid/widget/TextView;

    .line 130
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->spStockModel:Landroid/widget/Spinner;

    .line 131
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->spStore:Landroid/widget/Spinner;

    .line 132
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->spTemplate:Landroid/widget/Spinner;

    .line 133
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->rlvGoodsData:Landroidx/recyclerview/widget/RecyclerView;

    .line 134
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->tvNoData:Landroid/widget/TextView;

    .line 135
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->tvAllCount:Landroid/widget/TextView;

    .line 136
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->tvAllMoney:Landroid/widget/TextView;

    .line 137
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->tvRemark:Landroid/widget/TextView;

    .line 138
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->etGoodsCode:Lcom/ayma/base/widget/ClearEditText;

    .line 140
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;->view7f0803fb:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;->view7f0803fb:Landroid/view/View;

    .line 142
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;->view7f080402:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;->view7f080402:Landroid/view/View;

    .line 144
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;->view7f0803f0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;->view7f0803f0:Landroid/view/View;

    .line 146
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;->view7f0803fd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;->view7f0803fd:Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;->view7f0803e4:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;->view7f0803e4:Landroid/view/View;

    .line 150
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;->view7f0803e3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;->view7f0803e3:Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;->view7f0803e5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;->view7f0803e5:Landroid/view/View;

    .line 154
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;->view7f0803e7:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment_ViewBinding;->view7f0803e7:Landroid/view/View;

    return-void

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
