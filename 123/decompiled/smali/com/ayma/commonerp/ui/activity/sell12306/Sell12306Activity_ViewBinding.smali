.class public Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity_ViewBinding;
.super Ljava/lang/Object;
.source "Sell12306Activity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;

.field private view7f0800e5:Landroid/view/View;

.field private view7f0800e6:Landroid/view/View;

.field private view7f0801f4:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;)V
    .locals 1

    .line 30
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;Landroid/view/View;)V
    .locals 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;

    const v0, 0x7f0800e6

    const-string v1, "field \'tvRight\' and method \'onBtnRightClick\'"

    .line 38
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 39
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvRight\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->tvRight:Landroid/widget/TextView;

    .line 40
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity_ViewBinding;->view7f0800e6:Landroid/view/View;

    .line 41
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity_ViewBinding$1;-><init>(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity_ViewBinding;Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801f4

    const-string v1, "field \'tvQuery\' and method \'onTvQueryClick\'"

    .line 47
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 48
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvQuery\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->tvQuery:Landroid/widget/TextView;

    .line 49
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity_ViewBinding;->view7f0801f4:Landroid/view/View;

    .line 50
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity_ViewBinding$2;-><init>(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity_ViewBinding;Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0801e8

    const-string v2, "field \'rlv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->rlv:Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0801f3

    const-string v2, "field \'tvNoData\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->tvNoData:Landroid/widget/TextView;

    .line 58
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f0801e9

    const-string v2, "field \'spStatue\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->spStatue:Landroid/widget/Spinner;

    .line 59
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0801e4

    const-string v2, "field \'etCustomerTrain\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->etCustomerTrain:Landroid/widget/EditText;

    .line 60
    const-class v0, Landroid/widget/RadioGroup;

    const v1, 0x7f0801e7

    const-string v2, "field \'rgSelect\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->rgSelect:Landroid/widget/RadioGroup;

    .line 61
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0801f2

    const-string v2, "field \'tvDataCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->tvDataCount:Landroid/widget/TextView;

    const v0, 0x7f0800e5

    const-string v1, "method \'onBtnBackClick\'"

    .line 62
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 63
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity_ViewBinding;->view7f0800e5:Landroid/view/View;

    .line 64
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity_ViewBinding$3;-><init>(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity_ViewBinding;Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 77
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;

    .line 79
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->tvRight:Landroid/widget/TextView;

    .line 80
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->tvQuery:Landroid/widget/TextView;

    .line 81
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->rlv:Landroidx/recyclerview/widget/RecyclerView;

    .line 82
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->tvNoData:Landroid/widget/TextView;

    .line 83
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->spStatue:Landroid/widget/Spinner;

    .line 84
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->etCustomerTrain:Landroid/widget/EditText;

    .line 85
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->rgSelect:Landroid/widget/RadioGroup;

    .line 86
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->tvDataCount:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity_ViewBinding;->view7f0800e6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity_ViewBinding;->view7f0800e6:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity_ViewBinding;->view7f0801f4:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity_ViewBinding;->view7f0801f4:Landroid/view/View;

    .line 92
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity_ViewBinding;->view7f0800e5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity_ViewBinding;->view7f0800e5:Landroid/view/View;

    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
