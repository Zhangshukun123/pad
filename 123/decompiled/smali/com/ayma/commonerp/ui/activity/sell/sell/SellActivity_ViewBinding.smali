.class public Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SellActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

.field private view7f0800e5:Landroid/view/View;

.field private view7f0800e6:Landroid/view/View;

.field private view7f080215:Landroid/view/View;

.field private view7f080216:Landroid/view/View;

.field private view7f080217:Landroid/view/View;

.field private view7f080218:Landroid/view/View;

.field private view7f080632:Landroid/view/View;

.field private view7f080633:Landroid/view/View;

.field private view7f080634:Landroid/view/View;

.field private view7f080635:Landroid/view/View;

.field private view7f080636:Landroid/view/View;

.field private view7f080637:Landroid/view/View;

.field private view7f080638:Landroid/view/View;

.field private view7f08063a:Landroid/view/View;

.field private view7f08063b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V
    .locals 1

    .line 57
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;Landroid/view/View;)V
    .locals 4

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    const v0, 0x7f0800e6

    const-string v1, "field \'tvSubmit\' and method \'onBtnSubmitClick\'"

    .line 65
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 66
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvSubmit\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvSubmit:Landroid/widget/TextView;

    .line 67
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    .line 68
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding$1;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08024c

    const-string v2, "field \'tvSellTypeTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvSellTypeTip:Landroid/widget/TextView;

    .line 75
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f08024a

    const-string v2, "field \'spSellType\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->spSellType:Landroid/widget/Spinner;

    .line 76
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080249

    const-string v2, "field \'tvSellCountTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvSellCountTip:Landroid/widget/TextView;

    .line 77
    const-class v0, Lcom/ayma/base/widget/ClearEditText;

    const v1, 0x7f08021f

    const-string v2, "field \'etSellCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/base/widget/ClearEditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->etSellCount:Lcom/ayma/base/widget/ClearEditText;

    .line 78
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f080219

    const-string v2, "field \'cbUserQuitWare\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->cbUserQuitWare:Landroid/widget/CheckBox;

    .line 79
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080248

    const-string v2, "field \'tvScanTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvScanTip:Landroid/widget/TextView;

    .line 80
    const-class v0, Lcom/ayma/base/widget/ClearEditText;

    const v1, 0x7f08021e

    const-string v2, "field \'etScanningCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/base/widget/ClearEditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->etScanningCode:Lcom/ayma/base/widget/ClearEditText;

    const v0, 0x7f080218

    const-string v1, "field \'btnSelectGoods\' and method \'onBtnSelectGoodsCLick\'"

    .line 81
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 82
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnSelectGoods\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnSelectGoods:Landroid/widget/Button;

    .line 83
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f080218:Landroid/view/View;

    .line 84
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding$2;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080217

    const-string v1, "field \'btnDeleteAll\' and method \'onBtnDeleteAllClick\'"

    .line 90
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 91
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnDeleteAll\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnDeleteAll:Landroid/widget/Button;

    .line 92
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f080217:Landroid/view/View;

    .line 93
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding$3;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080216

    const-string v1, "field \'btnOnlinePayment\' and method \'onBtnOnlinePaymentClick\'"

    .line 99
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 100
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnOnlinePayment\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnOnlinePayment:Landroid/widget/Button;

    .line 101
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f080216:Landroid/view/View;

    .line 102
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding$4;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080215

    const-string v1, "field \'btnOnlineCamera\' and method \'onBtnOnlineCameraClick\'"

    .line 108
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 109
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnOnlineCamera\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnOnlineCamera:Landroid/widget/Button;

    .line 110
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f080215:Landroid/view/View;

    .line 111
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding$5;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080639

    const-string v2, "field \'tvGoodsTotalPrice\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvGoodsTotalPrice:Landroid/widget/TextView;

    const v0, 0x7f080637

    const-string v1, "field \'tvGoodsNameHint\' and method \'onTvGoodsNameClick\'"

    .line 118
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 119
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvGoodsNameHint\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvGoodsNameHint:Landroid/widget/TextView;

    .line 120
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f080637:Landroid/view/View;

    .line 121
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding$6;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080636

    const-string v1, "field \'tvGoodsCountHint\' and method \'onTvGoodsQtyClick\'"

    .line 127
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 128
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvGoodsCountHint\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvGoodsCountHint:Landroid/widget/TextView;

    .line 129
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f080636:Landroid/view/View;

    .line 130
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding$7;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding$7;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080638

    const-string v1, "field \'tvGoodsPriceHint\' and method \'onTvGoodsPriceClick\'"

    .line 136
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 137
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvGoodsPriceHint\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvGoodsPriceHint:Landroid/widget/TextView;

    .line 138
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f080638:Landroid/view/View;

    .line 139
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding$8;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding$8;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08063a

    const-string v1, "field \'tvGoodsTypeHint\' and method \'onTvGoodsTypeClick\'"

    .line 145
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 146
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvGoodsTypeHint\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvGoodsTypeHint:Landroid/widget/TextView;

    .line 147
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f08063a:Landroid/view/View;

    .line 148
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding$9;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding$9;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080635

    const-string v1, "field \'tvGoodsCodeHint\' and method \'onTvGoodsCodeClick\'"

    .line 154
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 155
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvGoodsCodeHint\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvGoodsCodeHint:Landroid/widget/TextView;

    .line 156
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f080635:Landroid/view/View;

    .line 157
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding$10;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding$10;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f080630

    const-string v2, "field \'clListHead\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->clListHead:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 164
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f080221

    const-string v2, "field \'rlvGoods\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->rlvGoods:Landroidx/recyclerview/widget/RecyclerView;

    .line 165
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f080631

    const-string v2, "field \'llDiscount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->llDiscount:Landroid/widget/LinearLayout;

    const v0, 0x7f080632

    const-string v1, "field \'tvDiscount\' and method \'onTvDiscountClick\'"

    .line 166
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 167
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvDiscount\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvDiscount:Landroid/widget/TextView;

    .line 168
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f080632:Landroid/view/View;

    .line 169
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding$11;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding$11;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800e5

    const-string v1, "method \'onBtnQuitClick\'"

    .line 175
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 176
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f0800e5:Landroid/view/View;

    .line 177
    new-instance v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding$12;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding$12;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080633

    const-string v1, "method \'onTvDiscountClick\'"

    .line 183
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 184
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f080633:Landroid/view/View;

    .line 185
    new-instance v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding$13;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding$13;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08063b

    const-string v1, "method \'onTvResetDiscountClick\'"

    .line 191
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 192
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f08063b:Landroid/view/View;

    .line 193
    new-instance v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding$14;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding$14;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080634

    const-string v1, "method \'onTvGoodsAmountClick\'"

    .line 199
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 200
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f080634:Landroid/view/View;

    .line 201
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding$15;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding$15;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 214
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    .line 216
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvSubmit:Landroid/widget/TextView;

    .line 217
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvSellTypeTip:Landroid/widget/TextView;

    .line 218
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->spSellType:Landroid/widget/Spinner;

    .line 219
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvSellCountTip:Landroid/widget/TextView;

    .line 220
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->etSellCount:Lcom/ayma/base/widget/ClearEditText;

    .line 221
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->cbUserQuitWare:Landroid/widget/CheckBox;

    .line 222
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvScanTip:Landroid/widget/TextView;

    .line 223
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->etScanningCode:Lcom/ayma/base/widget/ClearEditText;

    .line 224
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnSelectGoods:Landroid/widget/Button;

    .line 225
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnDeleteAll:Landroid/widget/Button;

    .line 226
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnOnlinePayment:Landroid/widget/Button;

    .line 227
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnOnlineCamera:Landroid/widget/Button;

    .line 228
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvGoodsTotalPrice:Landroid/widget/TextView;

    .line 229
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvGoodsNameHint:Landroid/widget/TextView;

    .line 230
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvGoodsCountHint:Landroid/widget/TextView;

    .line 231
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvGoodsPriceHint:Landroid/widget/TextView;

    .line 232
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvGoodsTypeHint:Landroid/widget/TextView;

    .line 233
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvGoodsCodeHint:Landroid/widget/TextView;

    .line 234
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->clListHead:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 235
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->rlvGoods:Landroidx/recyclerview/widget/RecyclerView;

    .line 236
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->llDiscount:Landroid/widget/LinearLayout;

    .line 237
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvDiscount:Landroid/widget/TextView;

    .line 239
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    .line 241
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f080218:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f080218:Landroid/view/View;

    .line 243
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f080217:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f080217:Landroid/view/View;

    .line 245
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f080216:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f080216:Landroid/view/View;

    .line 247
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f080215:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f080215:Landroid/view/View;

    .line 249
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f080637:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f080637:Landroid/view/View;

    .line 251
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f080636:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f080636:Landroid/view/View;

    .line 253
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f080638:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f080638:Landroid/view/View;

    .line 255
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f08063a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f08063a:Landroid/view/View;

    .line 257
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f080635:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f080635:Landroid/view/View;

    .line 259
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f080632:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f080632:Landroid/view/View;

    .line 261
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f0800e5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f0800e5:Landroid/view/View;

    .line 263
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f080633:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f080633:Landroid/view/View;

    .line 265
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f08063b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f08063b:Landroid/view/View;

    .line 267
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f080634:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity_ViewBinding;->view7f080634:Landroid/view/View;

    return-void

    .line 213
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
