.class public Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity_ViewBinding;
.super Ljava/lang/Object;
.source "QueryOrderActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;

.field private view7f0800e6:Landroid/view/View;

.field private view7f08012d:Landroid/view/View;

.field private view7f080131:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;)V
    .locals 1

    .line 33
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;Landroid/view/View;)V
    .locals 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;

    const v0, 0x7f0800e6

    const-string v1, "field \'btnRight\' and method \'onTvQueryAllOrderClick\'"

    .line 41
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 42
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'btnRight\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->btnRight:Landroid/widget/TextView;

    .line 43
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    .line 44
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity_ViewBinding$1;-><init>(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const-class v0, Landroid/widget/RadioButton;

    const v1, 0x7f080125

    const-string v2, "field \'rbNewest\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->rbNewest:Landroid/widget/RadioButton;

    .line 51
    const-class v0, Landroid/widget/RadioButton;

    const v1, 0x7f080124

    const-string v2, "field \'rbEarly\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->rbEarly:Landroid/widget/RadioButton;

    .line 52
    const-class v0, Landroid/widget/RadioGroup;

    const v1, 0x7f080126

    const-string v2, "field \'rgSortDate\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->rgSortDate:Landroid/widget/RadioGroup;

    .line 53
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f080127

    const-string v2, "field \'rlvData\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08012e

    const-string v2, "field \'tvNoData\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->tvNoData:Landroid/widget/TextView;

    .line 55
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f08070b

    const-string v2, "field \'toolBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->toolBar:Landroidx/appcompat/widget/Toolbar;

    .line 56
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f080128

    const-string v2, "field \'spOrderType\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->spOrderType:Landroid/widget/Spinner;

    .line 57
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f080129

    const-string v2, "field \'spPayType\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->spPayType:Landroid/widget/Spinner;

    .line 58
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f080123

    const-string v2, "field \'llFilterContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->llFilterContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f080131

    const-string v1, "field \'tvStartTime\' and method \'onTvStartTimeClick\'"

    .line 59
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 60
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvStartTime\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->tvStartTime:Landroid/widget/TextView;

    .line 61
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity_ViewBinding;->view7f080131:Landroid/view/View;

    .line 62
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity_ViewBinding$2;-><init>(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08012d

    const-string v1, "field \'tvEndTime\' and method \'onTvEndTimeClick\'"

    .line 68
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 69
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvEndTime\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->tvEndTime:Landroid/widget/TextView;

    .line 70
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity_ViewBinding;->view7f08012d:Landroid/view/View;

    .line 71
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity_ViewBinding$3;-><init>(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const-class v0, Lcom/ayma/base/widget/ClearEditText;

    const v1, 0x7f080122

    const-string v2, "field \'etOrderTrainName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ayma/base/widget/ClearEditText;

    iput-object p2, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->etOrderTrainName:Lcom/ayma/base/widget/ClearEditText;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 85
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;

    .line 87
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->btnRight:Landroid/widget/TextView;

    .line 88
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->rbNewest:Landroid/widget/RadioButton;

    .line 89
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->rbEarly:Landroid/widget/RadioButton;

    .line 90
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->rgSortDate:Landroid/widget/RadioGroup;

    .line 91
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    .line 92
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->tvNoData:Landroid/widget/TextView;

    .line 93
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->toolBar:Landroidx/appcompat/widget/Toolbar;

    .line 94
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->spOrderType:Landroid/widget/Spinner;

    .line 95
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->spPayType:Landroid/widget/Spinner;

    .line 96
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->llFilterContainer:Landroid/widget/LinearLayout;

    .line 97
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->tvStartTime:Landroid/widget/TextView;

    .line 98
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->tvEndTime:Landroid/widget/TextView;

    .line 99
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->etOrderTrainName:Lcom/ayma/base/widget/ClearEditText;

    .line 101
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    .line 103
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity_ViewBinding;->view7f080131:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity_ViewBinding;->view7f080131:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity_ViewBinding;->view7f08012d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity_ViewBinding;->view7f08012d:Landroid/view/View;

    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
