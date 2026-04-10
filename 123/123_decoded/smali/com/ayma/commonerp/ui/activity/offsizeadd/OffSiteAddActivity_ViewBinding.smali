.class public Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding;
.super Ljava/lang/Object;
.source "OffSiteAddActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

.field private view7f08005a:Landroid/view/View;

.field private view7f08005b:Landroid/view/View;

.field private view7f080063:Landroid/view/View;

.field private view7f080064:Landroid/view/View;

.field private view7f080065:Landroid/view/View;

.field private view7f080067:Landroid/view/View;

.field private view7f0800e6:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;)V
    .locals 1

    .line 38
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;Landroid/view/View;)V
    .locals 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    .line 46
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080787

    const-string v2, "field \'tvStoreHint\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->tvStoreHint:Landroid/widget/TextView;

    .line 47
    const-class v0, Lcom/ayma/base/widget/ClearEditText;

    const v1, 0x7f080365

    const-string v2, "field \'etStation\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/base/widget/ClearEditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->etStation:Lcom/ayma/base/widget/ClearEditText;

    .line 48
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080799

    const-string v2, "field \'tvTypeHint\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->tvTypeHint:Landroid/widget/TextView;

    .line 49
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f08069b

    const-string v2, "field \'spSupplier\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->spSupplier:Landroid/widget/Spinner;

    .line 50
    const-class v0, Lcom/ayma/base/widget/ClearEditText;

    const v1, 0x7f08005d

    const-string v2, "field \'etGoodsCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/base/widget/ClearEditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->etGoodsCode:Lcom/ayma/base/widget/ClearEditText;

    .line 51
    const-class v0, Lcom/ayma/base/widget/ClearEditText;

    const v1, 0x7f08005c

    const-string v2, "field \'etCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/base/widget/ClearEditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->etCount:Lcom/ayma/base/widget/ClearEditText;

    .line 52
    const-class v0, Lcom/ayma/base/widget/ClearEditText;

    const v1, 0x7f08005e

    const-string v2, "field \'etGoodsName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/base/widget/ClearEditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->etGoodsName:Lcom/ayma/base/widget/ClearEditText;

    const v0, 0x7f08005b

    const-string v1, "field \'btnSelectGoods\' and method \'onBtnSelectGoodsClick\'"

    .line 53
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 54
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnSelectGoods\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->btnSelectGoods:Landroid/widget/Button;

    .line 55
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding;->view7f08005b:Landroid/view/View;

    .line 56
    new-instance v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding$1;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08005a

    const-string v1, "field \'btnDeleteAll\' and method \'onBtnDeleteAllClick\'"

    .line 62
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 63
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnDeleteAll\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->btnDeleteAll:Landroid/widget/Button;

    .line 64
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding;->view7f08005a:Landroid/view/View;

    .line 65
    new-instance v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding$2;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080061

    const-string v2, "field \'tvAllCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->tvAllCount:Landroid/widget/TextView;

    .line 72
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080068

    const-string v2, "field \'tvTotalCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->tvTotalCount:Landroid/widget/TextView;

    .line 73
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080062

    const-string v2, "field \'tvAllMoney\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->tvAllMoney:Landroid/widget/TextView;

    .line 74
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080069

    const-string v2, "field \'tvTotalPrice\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->tvTotalPrice:Landroid/widget/TextView;

    .line 75
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f08005f

    const-string v2, "field \'rlvData\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0800e6

    const-string v1, "method \'onBtnCommitClick\'"

    .line 76
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    .line 78
    new-instance v1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding$3;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080063

    const-string v1, "method \'onTvGoodsCodeClick\'"

    .line 84
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 85
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding;->view7f080063:Landroid/view/View;

    .line 86
    new-instance v1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding$4;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080064

    const-string v1, "method \'onTvGoodsNameClick\'"

    .line 92
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 93
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding;->view7f080064:Landroid/view/View;

    .line 94
    new-instance v1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding$5;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080065

    const-string v1, "method \'onTvGoodsQtyClick\'"

    .line 100
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 101
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding;->view7f080065:Landroid/view/View;

    .line 102
    new-instance v1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding$6;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080067

    const-string v1, "method \'onTvGoodsPriceClick\'"

    .line 108
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 109
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding;->view7f080067:Landroid/view/View;

    .line 110
    new-instance v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding$7;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding$7;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 123
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    .line 125
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->tvStoreHint:Landroid/widget/TextView;

    .line 126
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->etStation:Lcom/ayma/base/widget/ClearEditText;

    .line 127
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->tvTypeHint:Landroid/widget/TextView;

    .line 128
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->spSupplier:Landroid/widget/Spinner;

    .line 129
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->etGoodsCode:Lcom/ayma/base/widget/ClearEditText;

    .line 130
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->etCount:Lcom/ayma/base/widget/ClearEditText;

    .line 131
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->etGoodsName:Lcom/ayma/base/widget/ClearEditText;

    .line 132
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->btnSelectGoods:Landroid/widget/Button;

    .line 133
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->btnDeleteAll:Landroid/widget/Button;

    .line 134
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->tvAllCount:Landroid/widget/TextView;

    .line 135
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->tvTotalCount:Landroid/widget/TextView;

    .line 136
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->tvAllMoney:Landroid/widget/TextView;

    .line 137
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->tvTotalPrice:Landroid/widget/TextView;

    .line 138
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    .line 140
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding;->view7f08005b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding;->view7f08005b:Landroid/view/View;

    .line 142
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding;->view7f08005a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding;->view7f08005a:Landroid/view/View;

    .line 144
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    .line 146
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding;->view7f080063:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding;->view7f080063:Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding;->view7f080064:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding;->view7f080064:Landroid/view/View;

    .line 150
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding;->view7f080065:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding;->view7f080065:Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding;->view7f080067:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity_ViewBinding;->view7f080067:Landroid/view/View;

    return-void

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
