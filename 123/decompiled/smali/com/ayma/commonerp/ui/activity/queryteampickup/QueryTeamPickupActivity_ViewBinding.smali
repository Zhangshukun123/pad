.class public Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding;
.super Ljava/lang/Object;
.source "QueryTeamPickupActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;

.field private view7f08019c:Landroid/view/View;

.field private view7f0801a5:Landroid/view/View;

.field private view7f0801a6:Landroid/view/View;

.field private view7f0801a8:Landroid/view/View;

.field private view7f0801a9:Landroid/view/View;

.field private view7f0801aa:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;)V
    .locals 1

    .line 36
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;Landroid/view/View;)V
    .locals 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;

    .line 44
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f0801a0

    const-string v2, "field \'spWarebigtype\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;->spWarebigtype:Landroid/widget/Spinner;

    .line 45
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f0801a1

    const-string v2, "field \'spWaresmalltype\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;->spWaresmalltype:Landroid/widget/Spinner;

    .line 46
    const-class v0, Lcom/ayma/base/widget/ClearEditText;

    const v1, 0x7f08019e

    const-string v2, "field \'etWarename\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/base/widget/ClearEditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;->etWarename:Lcom/ayma/base/widget/ClearEditText;

    const v0, 0x7f08019c

    const-string v1, "field \'btQuery\' and method \'onBtnQueryClick\'"

    .line 47
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 48
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btQuery\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;->btQuery:Landroid/widget/Button;

    .line 49
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding;->view7f08019c:Landroid/view/View;

    .line 50
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding$1;-><init>(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0801a4

    const-string v2, "field \'tvAllnumber\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;->tvAllnumber:Landroid/widget/TextView;

    .line 57
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0801ac

    const-string v2, "field \'tvTotalCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;->tvTotalCount:Landroid/widget/TextView;

    .line 58
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0801a3

    const-string v2, "field \'tvAllmoney\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;->tvAllmoney:Landroid/widget/TextView;

    .line 59
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0801ad

    const-string v2, "field \'tvTotalPrice\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;->tvTotalPrice:Landroid/widget/TextView;

    .line 60
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f08019f

    const-string v2, "field \'rlvData\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0801a5

    const-string v1, "method \'onTvGoodsCodeClick\'"

    .line 61
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding;->view7f0801a5:Landroid/view/View;

    .line 63
    new-instance v1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding$2;-><init>(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801a6

    const-string v1, "method \'onTvGoodsNameClick\'"

    .line 69
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding;->view7f0801a6:Landroid/view/View;

    .line 71
    new-instance v1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding$3;-><init>(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801a9

    const-string v1, "method \'onTvTotalCountClick\'"

    .line 77
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 78
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding;->view7f0801a9:Landroid/view/View;

    .line 79
    new-instance v1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding$4;-><init>(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801aa

    const-string v1, "method \'onTvColumn6Click\'"

    .line 85
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding;->view7f0801aa:Landroid/view/View;

    .line 87
    new-instance v1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding$5;-><init>(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801a8

    const-string v1, "method \'onTvColumn4Click\'"

    .line 93
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 94
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding;->view7f0801a8:Landroid/view/View;

    .line 95
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding$6;-><init>(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 108
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;

    .line 110
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;->spWarebigtype:Landroid/widget/Spinner;

    .line 111
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;->spWaresmalltype:Landroid/widget/Spinner;

    .line 112
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;->etWarename:Lcom/ayma/base/widget/ClearEditText;

    .line 113
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;->btQuery:Landroid/widget/Button;

    .line 114
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;->tvAllnumber:Landroid/widget/TextView;

    .line 115
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;->tvTotalCount:Landroid/widget/TextView;

    .line 116
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;->tvAllmoney:Landroid/widget/TextView;

    .line 117
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;->tvTotalPrice:Landroid/widget/TextView;

    .line 118
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    .line 120
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding;->view7f08019c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding;->view7f08019c:Landroid/view/View;

    .line 122
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding;->view7f0801a5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding;->view7f0801a5:Landroid/view/View;

    .line 124
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding;->view7f0801a6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding;->view7f0801a6:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding;->view7f0801a9:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding;->view7f0801a9:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding;->view7f0801aa:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding;->view7f0801aa:Landroid/view/View;

    .line 130
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding;->view7f0801a8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding;->view7f0801a8:Landroid/view/View;

    return-void

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
