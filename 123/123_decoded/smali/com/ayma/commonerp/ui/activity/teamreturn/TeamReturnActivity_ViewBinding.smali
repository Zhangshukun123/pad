.class public Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;
.super Ljava/lang/Object;
.source "TeamReturnActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;

.field private view7f0800e5:Landroid/view/View;

.field private view7f0800e6:Landroid/view/View;

.field private view7f0801bb:Landroid/view/View;

.field private view7f0801bc:Landroid/view/View;

.field private view7f0801bd:Landroid/view/View;

.field private view7f0801c4:Landroid/view/View;

.field private view7f0801c5:Landroid/view/View;

.field private view7f0801c6:Landroid/view/View;

.field private view7f0801c8:Landroid/view/View;

.field private view7f0801c9:Landroid/view/View;

.field private view7f0801d2:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)V
    .locals 1

    .line 46
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;Landroid/view/View;)V
    .locals 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;

    .line 54
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0800e8

    const-string v2, "field \'tvTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f0801d2

    const-string v1, "field \'tvTrainDate\' and method \'onTvTrainDateClick\'"

    .line 55
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 56
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvTrainDate\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvTrainDate:Landroid/widget/TextView;

    .line 57
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->view7f0801d2:Landroid/view/View;

    .line 58
    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding$1;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0801d4

    const-string v2, "field \'tvWarehouseHint\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvWarehouseHint:Landroid/widget/TextView;

    .line 65
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0801d3

    const-string v2, "field \'tvTypeHint\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvTypeHint:Landroid/widget/TextView;

    .line 66
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f08006c

    const-string v2, "field \'spWarehouse\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->spWarehouse:Landroid/widget/Spinner;

    .line 67
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0801ca

    const-string v2, "field \'tvGoodsDateHint\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvGoodsDateHint:Landroid/widget/TextView;

    const v0, 0x7f0801c9

    const-string v1, "field \'tvGoodsDate\' and method \'onTvGoodsDateClick\'"

    .line 68
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 69
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvGoodsDate\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvGoodsDate:Landroid/widget/TextView;

    .line 70
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->view7f0801c9:Landroid/view/View;

    .line 71
    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding$2;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0801cb

    const-string v2, "field \'tvGoodsTran\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvGoodsTran:Landroid/widget/TextView;

    .line 78
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0801bf

    const-string v2, "field \'etTrainNo\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->etTrainNo:Landroid/widget/EditText;

    const v0, 0x7f0801bd

    const-string v1, "field \'btnSelect\' and method \'onBtnSelectClicked\'"

    .line 79
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 80
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnSelect\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->btnSelect:Landroid/widget/Button;

    .line 81
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->view7f0801bd:Landroid/view/View;

    .line 82
    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding$3;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801bc

    const-string v1, "field \'btnGetData\' and method \'onBtnGetDataClicked\'"

    .line 88
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 89
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnGetData\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->btnGetData:Landroid/widget/Button;

    .line 90
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->view7f0801bc:Landroid/view/View;

    .line 91
    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding$4;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801bb

    const-string v1, "field \'btnDeleteAll\' and method \'onBtnDeleteAllClicked\'"

    .line 97
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 98
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnDeleteAll\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->btnDeleteAll:Landroid/widget/Button;

    .line 99
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->view7f0801bb:Landroid/view/View;

    .line 100
    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding$5;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0801c2

    const-string v2, "field \'tvAllCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvAllCount:Landroid/widget/TextView;

    .line 107
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0801d0

    const-string v2, "field \'tvTotalCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvTotalCount:Landroid/widget/TextView;

    .line 108
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0801c3

    const-string v2, "field \'tvAllMoney\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvAllMoney:Landroid/widget/TextView;

    .line 109
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0801d1

    const-string v2, "field \'tvTotalPrice\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvTotalPrice:Landroid/widget/TextView;

    .line 110
    const-class v0, Landroid/widget/ExpandableListView;

    const v1, 0x7f0801c0

    const-string v2, "field \'rlvData\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->rlvData:Landroid/widget/ExpandableListView;

    .line 111
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0801cf

    const-string v2, "field \'tvOutDateHint\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvOutDateHint:Landroid/widget/TextView;

    .line 112
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f08006b

    const-string v2, "field \'spType\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->spType:Landroid/widget/Spinner;

    .line 113
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0801ce

    const-string v2, "field \'tvNoData\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvNoData:Landroid/widget/TextView;

    .line 114
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f08006a

    const-string v2, "field \'spDataStore\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->spDataStore:Landroid/widget/Spinner;

    const v0, 0x7f0800e5

    const-string v1, "method \'onBtnExitClicked\'"

    .line 115
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 116
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->view7f0800e5:Landroid/view/View;

    .line 117
    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding$6;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800e6

    const-string v1, "method \'onBtnCommitClicked\'"

    .line 123
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 124
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    .line 125
    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding$7;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801c4

    const-string v1, "method \'onTvGoodsCodeClick\'"

    .line 131
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 132
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->view7f0801c4:Landroid/view/View;

    .line 133
    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding$8;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding$8;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801c5

    const-string v1, "method \'onTvGoodsNameClick\'"

    .line 139
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 140
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->view7f0801c5:Landroid/view/View;

    .line 141
    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding$9;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding$9;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801c6

    const-string v1, "method \'onTvGoodsQtyClick\'"

    .line 147
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 148
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->view7f0801c6:Landroid/view/View;

    .line 149
    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding$10;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding$10;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801c8

    const-string v1, "method \'onTvGoodsPriceClick\'"

    .line 155
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 156
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->view7f0801c8:Landroid/view/View;

    .line 157
    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding$11;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding$11;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 170
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;

    .line 172
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvTitle:Landroid/widget/TextView;

    .line 173
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvTrainDate:Landroid/widget/TextView;

    .line 174
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvWarehouseHint:Landroid/widget/TextView;

    .line 175
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvTypeHint:Landroid/widget/TextView;

    .line 176
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->spWarehouse:Landroid/widget/Spinner;

    .line 177
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvGoodsDateHint:Landroid/widget/TextView;

    .line 178
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvGoodsDate:Landroid/widget/TextView;

    .line 179
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvGoodsTran:Landroid/widget/TextView;

    .line 180
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->etTrainNo:Landroid/widget/EditText;

    .line 181
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->btnSelect:Landroid/widget/Button;

    .line 182
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->btnGetData:Landroid/widget/Button;

    .line 183
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->btnDeleteAll:Landroid/widget/Button;

    .line 184
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvAllCount:Landroid/widget/TextView;

    .line 185
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvTotalCount:Landroid/widget/TextView;

    .line 186
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvAllMoney:Landroid/widget/TextView;

    .line 187
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvTotalPrice:Landroid/widget/TextView;

    .line 188
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->rlvData:Landroid/widget/ExpandableListView;

    .line 189
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvOutDateHint:Landroid/widget/TextView;

    .line 190
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->spType:Landroid/widget/Spinner;

    .line 191
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvNoData:Landroid/widget/TextView;

    .line 192
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->spDataStore:Landroid/widget/Spinner;

    .line 194
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->view7f0801d2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->view7f0801d2:Landroid/view/View;

    .line 196
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->view7f0801c9:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->view7f0801c9:Landroid/view/View;

    .line 198
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->view7f0801bd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->view7f0801bd:Landroid/view/View;

    .line 200
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->view7f0801bc:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->view7f0801bc:Landroid/view/View;

    .line 202
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->view7f0801bb:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->view7f0801bb:Landroid/view/View;

    .line 204
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->view7f0800e5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->view7f0800e5:Landroid/view/View;

    .line 206
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    .line 208
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->view7f0801c4:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->view7f0801c4:Landroid/view/View;

    .line 210
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->view7f0801c5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->view7f0801c5:Landroid/view/View;

    .line 212
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->view7f0801c6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->view7f0801c6:Landroid/view/View;

    .line 214
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->view7f0801c8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;->view7f0801c8:Landroid/view/View;

    return-void

    .line 169
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
