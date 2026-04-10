.class public Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding;
.super Ljava/lang/Object;
.source "QuerySellActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;

.field private view7f0800e5:Landroid/view/View;

.field private view7f0800e6:Landroid/view/View;

.field private view7f08016d:Landroid/view/View;

.field private view7f08016e:Landroid/view/View;

.field private view7f08016f:Landroid/view/View;

.field private view7f080171:Landroid/view/View;

.field private view7f080175:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;)V
    .locals 1

    .line 37
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;Landroid/view/View;)V
    .locals 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;

    .line 45
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f080164

    const-string v2, "field \'rl\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->rl:Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f080167

    const-string v2, "field \'sp_sell_type\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->sp_sell_type:Landroid/widget/Spinner;

    .line 47
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f080166

    const-string v2, "field \'sp_pay_type\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->sp_pay_type:Landroid/widget/Spinner;

    .line 48
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f080165

    const-string v2, "field \'sp_big_name\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->sp_big_name:Landroid/widget/Spinner;

    .line 49
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f080168

    const-string v2, "field \'sp_small_name\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->sp_small_name:Landroid/widget/Spinner;

    .line 50
    const-class v0, Lcom/ayma/base/widget/ClearEditText;

    const v1, 0x7f0802e3

    const-string v2, "field \'edit_name\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/base/widget/ClearEditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->edit_name:Lcom/ayma/base/widget/ClearEditText;

    .line 51
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080174

    const-string v2, "field \'tvGoodsTotalCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->tvGoodsTotalCount:Landroid/widget/TextView;

    .line 52
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080176

    const-string v2, "field \'tvGoodsTotalPrice\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->tvGoodsTotalPrice:Landroid/widget/TextView;

    const v0, 0x7f0800e5

    const-string v1, "method \'onViewClicked\'"

    .line 53
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding;->view7f0800e5:Landroid/view/View;

    .line 55
    new-instance v2, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding$1;

    invoke-direct {v2, p0, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding$1;-><init>(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800e6

    .line 61
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    .line 63
    new-instance v2, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding$2;

    invoke-direct {v2, p0, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding$2;-><init>(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08016d

    .line 69
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding;->view7f08016d:Landroid/view/View;

    .line 71
    new-instance v2, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding$3;

    invoke-direct {v2, p0, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding$3;-><init>(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08016f

    .line 77
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 78
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding;->view7f08016f:Landroid/view/View;

    .line 79
    new-instance v2, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding$4;

    invoke-direct {v2, p0, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding$4;-><init>(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08016e

    .line 85
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding;->view7f08016e:Landroid/view/View;

    .line 87
    new-instance v2, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding$5;

    invoke-direct {v2, p0, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding$5;-><init>(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080171

    .line 93
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 94
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding;->view7f080171:Landroid/view/View;

    .line 95
    new-instance v2, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding$6;

    invoke-direct {v2, p0, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding$6;-><init>(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080175

    .line 101
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 102
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding;->view7f080175:Landroid/view/View;

    .line 103
    new-instance v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding$7;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding$7;-><init>(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 116
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;

    .line 118
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->rl:Landroidx/recyclerview/widget/RecyclerView;

    .line 119
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->sp_sell_type:Landroid/widget/Spinner;

    .line 120
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->sp_pay_type:Landroid/widget/Spinner;

    .line 121
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->sp_big_name:Landroid/widget/Spinner;

    .line 122
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->sp_small_name:Landroid/widget/Spinner;

    .line 123
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->edit_name:Lcom/ayma/base/widget/ClearEditText;

    .line 124
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->tvGoodsTotalCount:Landroid/widget/TextView;

    .line 125
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->tvGoodsTotalPrice:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding;->view7f0800e5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding;->view7f0800e5:Landroid/view/View;

    .line 129
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    .line 131
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding;->view7f08016d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding;->view7f08016d:Landroid/view/View;

    .line 133
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding;->view7f08016f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding;->view7f08016f:Landroid/view/View;

    .line 135
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding;->view7f08016e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding;->view7f08016e:Landroid/view/View;

    .line 137
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding;->view7f080171:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding;->view7f080171:Landroid/view/View;

    .line 139
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding;->view7f080175:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity_ViewBinding;->view7f080175:Landroid/view/View;

    return-void

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
