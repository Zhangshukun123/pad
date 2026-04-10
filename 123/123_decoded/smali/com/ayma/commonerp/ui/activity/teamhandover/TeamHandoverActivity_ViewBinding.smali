.class public Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;
.super Ljava/lang/Object;
.source "TeamHandoverActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;

.field private view7f0800e6:Landroid/view/View;

.field private view7f080261:Landroid/view/View;

.field private view7f080262:Landroid/view/View;

.field private view7f08026b:Landroid/view/View;

.field private view7f08026c:Landroid/view/View;

.field private view7f08026d:Landroid/view/View;

.field private view7f08026e:Landroid/view/View;

.field private view7f080271:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;)V
    .locals 1

    .line 41
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;Landroid/view/View;)V
    .locals 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;

    const v0, 0x7f0800e6

    const-string v1, "field \'tvRight\' and method \'onBtnRightClick\'"

    .line 49
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 50
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvRight\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tvRight:Landroid/widget/TextView;

    .line 51
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    .line 52
    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding$1;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const-class v0, Lcom/ayma/base/widget/ClearEditText;

    const v1, 0x7f080264

    const-string v2, "field \'etReceiveTranNo\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/base/widget/ClearEditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->etReceiveTranNo:Lcom/ayma/base/widget/ClearEditText;

    const v0, 0x7f080271

    const-string v1, "field \'tvReceiveGoDate\' and method \'onEtDateClick\'"

    .line 59
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 60
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvReceiveGoDate\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tvReceiveGoDate:Landroid/widget/TextView;

    .line 61
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;->view7f080271:Landroid/view/View;

    .line 62
    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding$2;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080262

    const-string v1, "field \'btnQuery\' and method \'onBtnQueryClick\'"

    .line 68
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 69
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnQuery\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->btnQuery:Landroid/widget/Button;

    .line 70
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;->view7f080262:Landroid/view/View;

    .line 71
    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding$3;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080261

    const-string v1, "field \'btnCommit\' and method \'onBtnCommitClick\'"

    .line 77
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 78
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnCommit\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->btnCommit:Landroid/widget/Button;

    .line 79
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;->view7f080261:Landroid/view/View;

    .line 80
    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding$4;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080269

    const-string v2, "field \'tvAllCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tvAllCount:Landroid/widget/TextView;

    .line 87
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080273

    const-string v2, "field \'tvTotalCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tvTotalCount:Landroid/widget/TextView;

    .line 88
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08026a

    const-string v2, "field \'tvAllMoney\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tvAllMoney:Landroid/widget/TextView;

    .line 89
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080274

    const-string v2, "field \'tvTotalPrice\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tvTotalPrice:Landroid/widget/TextView;

    .line 90
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f080268

    const-string v2, "field \'rlvData\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    .line 91
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080270

    const-string v2, "field \'tvNoData\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tvNoData:Landroid/widget/TextView;

    .line 92
    const-class v0, Landroid/widget/RadioGroup;

    const v1, 0x7f080267

    const-string v2, "field \'rgSelectOptions\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->rgSelectOptions:Landroid/widget/RadioGroup;

    .line 93
    const-class v0, Landroid/widget/RadioButton;

    const v1, 0x7f080265

    const-string v2, "field \'rbSelectAll\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->rbSelectAll:Landroid/widget/RadioButton;

    .line 94
    const-class v0, Landroid/widget/RadioButton;

    const v1, 0x7f080266

    const-string v2, "field \'rbSelectReverse\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->rbSelectReverse:Landroid/widget/RadioButton;

    .line 95
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080272

    const-string v2, "field \'tvSelectedCountAndAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tvSelectedCountAndAmount:Landroid/widget/TextView;

    .line 96
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08071b

    const-string v2, "field \'tv3\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tv3:Landroid/widget/TextView;

    .line 97
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08071c

    const-string v2, "field \'tv4\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tv4:Landroid/widget/TextView;

    const v0, 0x7f08026b

    const-string v1, "method \'onTvGoodsCodeClick\'"

    .line 98
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 99
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;->view7f08026b:Landroid/view/View;

    .line 100
    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding$5;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08026c

    const-string v1, "method \'onTvGoodsNameClick\'"

    .line 106
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 107
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;->view7f08026c:Landroid/view/View;

    .line 108
    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding$6;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08026d

    const-string v1, "method \'onTvGoodsQtyClick\'"

    .line 114
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 115
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;->view7f08026d:Landroid/view/View;

    .line 116
    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding$7;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08026e

    const-string v1, "method \'onTvGoodsPriceClick\'"

    .line 122
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 123
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;->view7f08026e:Landroid/view/View;

    .line 124
    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding$8;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding$8;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 137
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;

    .line 139
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tvRight:Landroid/widget/TextView;

    .line 140
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->etReceiveTranNo:Lcom/ayma/base/widget/ClearEditText;

    .line 141
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tvReceiveGoDate:Landroid/widget/TextView;

    .line 142
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->btnQuery:Landroid/widget/Button;

    .line 143
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->btnCommit:Landroid/widget/Button;

    .line 144
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tvAllCount:Landroid/widget/TextView;

    .line 145
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tvTotalCount:Landroid/widget/TextView;

    .line 146
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tvAllMoney:Landroid/widget/TextView;

    .line 147
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tvTotalPrice:Landroid/widget/TextView;

    .line 148
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    .line 149
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tvNoData:Landroid/widget/TextView;

    .line 150
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->rgSelectOptions:Landroid/widget/RadioGroup;

    .line 151
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->rbSelectAll:Landroid/widget/RadioButton;

    .line 152
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->rbSelectReverse:Landroid/widget/RadioButton;

    .line 153
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tvSelectedCountAndAmount:Landroid/widget/TextView;

    .line 154
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tv3:Landroid/widget/TextView;

    .line 155
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tv4:Landroid/widget/TextView;

    .line 157
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    .line 159
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;->view7f080271:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;->view7f080271:Landroid/view/View;

    .line 161
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;->view7f080262:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;->view7f080262:Landroid/view/View;

    .line 163
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;->view7f080261:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;->view7f080261:Landroid/view/View;

    .line 165
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;->view7f08026b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;->view7f08026b:Landroid/view/View;

    .line 167
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;->view7f08026c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;->view7f08026c:Landroid/view/View;

    .line 169
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;->view7f08026d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;->view7f08026d:Landroid/view/View;

    .line 171
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;->view7f08026e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;->view7f08026e:Landroid/view/View;

    return-void

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
