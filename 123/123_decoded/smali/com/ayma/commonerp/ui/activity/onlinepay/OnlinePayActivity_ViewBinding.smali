.class public Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity_ViewBinding;
.super Ljava/lang/Object;
.source "OnlinePayActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;

.field private view7f0800d0:Landroid/view/View;

.field private view7f0800d4:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;)V
    .locals 1

    .line 31
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;Landroid/view/View;)V
    .locals 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;

    .line 39
    const-class v0, Landroid/widget/RadioGroup;

    const v1, 0x7f0800d9

    const-string v2, "field \'rgPayWay\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->rgPayWay:Landroid/widget/RadioGroup;

    .line 40
    const-class v0, Lcom/ayma/base/widget/ClearEditText;

    const v1, 0x7f0800d3

    const-string v2, "field \'etPayCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/base/widget/ClearEditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->etPayCode:Lcom/ayma/base/widget/ClearEditText;

    const v0, 0x7f0800d0

    const-string v1, "field \'btnPay\' and method \'onBtnPayClick\'"

    .line 41
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 42
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnPay\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->btnPay:Landroid/widget/Button;

    .line 43
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity_ViewBinding;->view7f0800d0:Landroid/view/View;

    .line 44
    new-instance v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity_ViewBinding$1;-><init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0800dc

    const-string v2, "field \'tvPayMoney\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->tvPayMoney:Landroid/widget/TextView;

    .line 51
    const-class v0, Landroid/widget/RadioButton;

    const v1, 0x7f0800d5

    const-string v2, "field \'rbAliPay\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->rbAliPay:Landroid/widget/RadioButton;

    .line 52
    const-class v0, Landroid/widget/RadioButton;

    const v1, 0x7f0800d8

    const-string v2, "field \'rbWechatPay\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->rbWechatPay:Landroid/widget/RadioButton;

    .line 53
    const-class v0, Landroid/widget/RadioButton;

    const v1, 0x7f0800d7

    const-string v2, "field \'rbUnionPay\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->rbUnionPay:Landroid/widget/RadioButton;

    .line 54
    const-class v0, Landroid/widget/RadioButton;

    const v1, 0x7f0800d6

    const-string v2, "field \'rbJD\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->rbJD:Landroid/widget/RadioButton;

    .line 55
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f080570

    const-string v2, "field \'llCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->llCode:Landroid/widget/LinearLayout;

    .line 56
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0800da

    const-string v2, "field \'rvGoods\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->rvGoods:Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0800d1

    const-string v2, "field \'clPayList\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->clPayList:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 58
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0800db

    const-string v2, "field \'tvPayErrorInfo\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->tvPayErrorInfo:Landroid/widget/TextView;

    const v0, 0x7f0800d4

    const-string v1, "method \'onIvScanClick\' and method \'onLongIvScanClick\'"

    .line 59
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 60
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity_ViewBinding;->view7f0800d4:Landroid/view/View;

    .line 61
    new-instance v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity_ViewBinding$2;-><init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    new-instance v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity_ViewBinding$3;-><init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 81
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;

    .line 83
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->rgPayWay:Landroid/widget/RadioGroup;

    .line 84
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->etPayCode:Lcom/ayma/base/widget/ClearEditText;

    .line 85
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->btnPay:Landroid/widget/Button;

    .line 86
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->tvPayMoney:Landroid/widget/TextView;

    .line 87
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->rbAliPay:Landroid/widget/RadioButton;

    .line 88
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->rbWechatPay:Landroid/widget/RadioButton;

    .line 89
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->rbUnionPay:Landroid/widget/RadioButton;

    .line 90
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->rbJD:Landroid/widget/RadioButton;

    .line 91
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->llCode:Landroid/widget/LinearLayout;

    .line 92
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->rvGoods:Landroidx/recyclerview/widget/RecyclerView;

    .line 93
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->clPayList:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 94
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->tvPayErrorInfo:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity_ViewBinding;->view7f0800d0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity_ViewBinding;->view7f0800d0:Landroid/view/View;

    .line 98
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity_ViewBinding;->view7f0800d4:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity_ViewBinding;->view7f0800d4:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 100
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity_ViewBinding;->view7f0800d4:Landroid/view/View;

    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
