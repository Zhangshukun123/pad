.class public Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity_ViewBinding;
.super Ljava/lang/Object;
.source "QuerySellGetMoneyActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;

.field private view7f0800e6:Landroid/view/View;

.field private view7f08017e:Landroid/view/View;

.field private view7f080183:Landroid/view/View;

.field private view7f08018a:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;)V
    .locals 1

    .line 31
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;Landroid/view/View;)V
    .locals 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;

    const v0, 0x7f0800e6

    const-string v1, "field \'btnRegetData\' and method \'onBtnReGetDataClick\'"

    .line 40
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 41
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'btnRegetData\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->btnRegetData:Landroid/widget/TextView;

    .line 42
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    .line 43
    new-instance v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity_ViewBinding$1;-><init>(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08018e

    const-string v2, "field \'tvTotalSaleMoney\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvTotalSaleMoney:Landroid/widget/TextView;

    .line 50
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080184

    const-string v2, "field \'tvCodeSale\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvCodeSale:Landroid/widget/TextView;

    .line 51
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08018c

    const-string v2, "field \'tvOnlineSaleAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvOnlineSaleAmount:Landroid/widget/TextView;

    .line 52
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08018b

    const-string v2, "field \'tvNormalSaleMoney\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvNormalSaleMoney:Landroid/widget/TextView;

    .line 53
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080191

    const-string v2, "field \'tvWaijuSaleMoney\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvWaijuSaleMoney:Landroid/widget/TextView;

    .line 54
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08018f

    const-string v2, "field \'tvTuancanSaleMoney\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvTuancanSaleMoney:Landroid/widget/TextView;

    .line 55
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080190

    const-string v2, "field \'tvVipSaleMoney\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvVipSaleMoney:Landroid/widget/TextView;

    .line 56
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080189

    const-string v2, "field \'tvJiedaiSaleMoney\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvJiedaiSaleMoney:Landroid/widget/TextView;

    .line 57
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080186

    const-string v2, "field \'tvCwzaoSaleMoney\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvCwzaoSaleMoney:Landroid/widget/TextView;

    .line 58
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080187

    const-string v2, "field \'tvCwzhengSaleMoney\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvCwzhengSaleMoney:Landroid/widget/TextView;

    .line 59
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08017f

    const-string v2, "field \'tv12306SaleMoney\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tv12306SaleMoney:Landroid/widget/TextView;

    .line 60
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080182

    const-string v2, "field \'tvCashSaleMoney\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvCashSaleMoney:Landroid/widget/TextView;

    .line 61
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080193

    const-string v2, "field \'tvWechatSaleMoney\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvWechatSaleMoney:Landroid/widget/TextView;

    .line 62
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080180

    const-string v2, "field \'tvAlipaySaleMoney\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvAlipaySaleMoney:Landroid/widget/TextView;

    .line 63
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080181

    const-string v2, "field \'tvCashGet\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvCashGet:Landroid/widget/TextView;

    .line 64
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080192

    const-string v2, "field \'tvWechatGet\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvWechatGet:Landroid/widget/TextView;

    .line 65
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080195

    const-string v2, "field \'tvAlipayGet\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvAlipayGet:Landroid/widget/TextView;

    const v0, 0x7f08017e

    const-string v1, "field \'btnQueryUnusualOrder\' and method \'onBtnQueryUnusualOrderClick\'"

    .line 66
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 67
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnQueryUnusualOrder\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->btnQueryUnusualOrder:Landroid/widget/Button;

    .line 68
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity_ViewBinding;->view7f08017e:Landroid/view/View;

    .line 69
    new-instance v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity_ViewBinding$2;-><init>(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080183

    const-string v1, "field \'tvCashToOnline\' and method \'tvCashToOnlineClick\'"

    .line 75
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 76
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvCashToOnline\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvCashToOnline:Landroid/widget/TextView;

    .line 77
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity_ViewBinding;->view7f080183:Landroid/view/View;

    .line 78
    new-instance v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity_ViewBinding$3;-><init>(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080197

    const-string v2, "field \'tvCashToWechat\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvCashToWechat:Landroid/widget/TextView;

    .line 85
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080196

    const-string v2, "field \'tvCashToAlipay\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvCashToAlipay:Landroid/widget/TextView;

    .line 86
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080199

    const-string v2, "field \'tvLost\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvLost:Landroid/widget/TextView;

    .line 87
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08018d

    const-string v2, "field \'tvScrapped\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvScrapped:Landroid/widget/TextView;

    .line 88
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08019a

    const-string v2, "field \'tvScrappedLostToOnline\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvScrappedLostToOnline:Landroid/widget/TextView;

    .line 89
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080198

    const-string v2, "field \'tvChengwucan\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvChengwucan:Landroid/widget/TextView;

    .line 90
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08019b

    const-string v2, "field \'tvWork\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvWork:Landroid/widget/TextView;

    .line 91
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0802d1

    const-string v2, "field \'clDiscountAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->clDiscountAmount:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 92
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080188

    const-string v2, "field \'tvDiscountAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvDiscountAmount:Landroid/widget/TextView;

    .line 93
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f080194

    const-string v2, "field \'cb\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->cb:Landroid/widget/CheckBox;

    const v0, 0x7f08018a

    const-string v1, "method \'onTvLostScrappedToOnlineClick\'"

    .line 94
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 95
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity_ViewBinding;->view7f08018a:Landroid/view/View;

    .line 96
    new-instance v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity_ViewBinding$4;-><init>(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 109
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;

    .line 111
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->btnRegetData:Landroid/widget/TextView;

    .line 112
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvTotalSaleMoney:Landroid/widget/TextView;

    .line 113
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvCodeSale:Landroid/widget/TextView;

    .line 114
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvOnlineSaleAmount:Landroid/widget/TextView;

    .line 115
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvNormalSaleMoney:Landroid/widget/TextView;

    .line 116
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvWaijuSaleMoney:Landroid/widget/TextView;

    .line 117
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvTuancanSaleMoney:Landroid/widget/TextView;

    .line 118
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvVipSaleMoney:Landroid/widget/TextView;

    .line 119
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvJiedaiSaleMoney:Landroid/widget/TextView;

    .line 120
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvCwzaoSaleMoney:Landroid/widget/TextView;

    .line 121
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvCwzhengSaleMoney:Landroid/widget/TextView;

    .line 122
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tv12306SaleMoney:Landroid/widget/TextView;

    .line 123
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvCashSaleMoney:Landroid/widget/TextView;

    .line 124
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvWechatSaleMoney:Landroid/widget/TextView;

    .line 125
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvAlipaySaleMoney:Landroid/widget/TextView;

    .line 126
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvCashGet:Landroid/widget/TextView;

    .line 127
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvWechatGet:Landroid/widget/TextView;

    .line 128
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvAlipayGet:Landroid/widget/TextView;

    .line 129
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->btnQueryUnusualOrder:Landroid/widget/Button;

    .line 130
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvCashToOnline:Landroid/widget/TextView;

    .line 131
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvCashToWechat:Landroid/widget/TextView;

    .line 132
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvCashToAlipay:Landroid/widget/TextView;

    .line 133
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvLost:Landroid/widget/TextView;

    .line 134
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvScrapped:Landroid/widget/TextView;

    .line 135
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvScrappedLostToOnline:Landroid/widget/TextView;

    .line 136
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvChengwucan:Landroid/widget/TextView;

    .line 137
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvWork:Landroid/widget/TextView;

    .line 138
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->clDiscountAmount:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 139
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvDiscountAmount:Landroid/widget/TextView;

    .line 140
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->cb:Landroid/widget/CheckBox;

    .line 142
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    .line 144
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity_ViewBinding;->view7f08017e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity_ViewBinding;->view7f08017e:Landroid/view/View;

    .line 146
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity_ViewBinding;->view7f080183:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity_ViewBinding;->view7f080183:Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity_ViewBinding;->view7f08018a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity_ViewBinding;->view7f08018a:Landroid/view/View;

    return-void

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
