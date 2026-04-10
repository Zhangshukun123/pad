.class public Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ScrappedActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;

.field private view7f08005a:Landroid/view/View;

.field private view7f08005b:Landroid/view/View;

.field private view7f080063:Landroid/view/View;

.field private view7f080064:Landroid/view/View;

.field private view7f080065:Landroid/view/View;

.field private view7f080067:Landroid/view/View;

.field private view7f0800e6:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;)V
    .locals 1

    .line 37
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;Landroid/view/View;)V
    .locals 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;

    .line 45
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f080057

    const-string v2, "field \'spScrappedType\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->spScrappedType:Landroid/widget/Spinner;

    const v0, 0x7f08005b

    const-string v1, "field \'btnSelectGoods\' and method \'onBtnSelectGoodsClick\'"

    .line 46
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 47
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnSelectGoods\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->btnSelectGoods:Landroid/widget/Button;

    .line 48
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;->view7f08005b:Landroid/view/View;

    .line 49
    new-instance v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding$1;-><init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08005a

    const-string v1, "field \'btnDeleteAll\' and method \'onBtnDeleteAllClick\'"

    .line 55
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 56
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnDeleteAll\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->btnDeleteAll:Landroid/widget/Button;

    .line 57
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;->view7f08005a:Landroid/view/View;

    .line 58
    new-instance v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding$2;-><init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080061

    const-string v2, "field \'tvAllCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->tvAllCount:Landroid/widget/TextView;

    .line 65
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080068

    const-string v2, "field \'tvTotalCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->tvTotalCount:Landroid/widget/TextView;

    .line 66
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080062

    const-string v2, "field \'tvAllMoney\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->tvAllMoney:Landroid/widget/TextView;

    .line 67
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080069

    const-string v2, "field \'tvTotalPrice\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->tvTotalPrice:Landroid/widget/TextView;

    .line 68
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f08005f

    const-string v2, "field \'rlvData\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    .line 69
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080058

    const-string v2, "field \'tvScrappedTypeHint\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->tvScrappedTypeHint:Landroid/widget/TextView;

    .line 70
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080066

    const-string v2, "field \'addTvColumn4\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->addTvColumn4:Landroid/widget/TextView;

    .line 71
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f080056

    const-string v2, "field \'spReceiptType\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->spReceiptType:Landroid/widget/Spinner;

    const v0, 0x7f0800e6

    const-string v1, "method \'onBtnCommitClick\'"

    .line 72
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 73
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    .line 74
    new-instance v1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding$3;-><init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080063

    const-string v1, "method \'onTvGoodsCodeClick\'"

    .line 80
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 81
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;->view7f080063:Landroid/view/View;

    .line 82
    new-instance v1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding$4;-><init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080064

    const-string v1, "method \'onTvGoodsNameClick\'"

    .line 88
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 89
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;->view7f080064:Landroid/view/View;

    .line 90
    new-instance v1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding$5;-><init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080065

    const-string v1, "method \'onTvGoodsQtyClick\'"

    .line 96
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 97
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;->view7f080065:Landroid/view/View;

    .line 98
    new-instance v1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding$6;-><init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080067

    const-string v1, "method \'onTvGoodsPriceClick\'"

    .line 104
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 105
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;->view7f080067:Landroid/view/View;

    .line 106
    new-instance v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding$7;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding$7;-><init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 119
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;

    .line 121
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->spScrappedType:Landroid/widget/Spinner;

    .line 122
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->btnSelectGoods:Landroid/widget/Button;

    .line 123
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->btnDeleteAll:Landroid/widget/Button;

    .line 124
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->tvAllCount:Landroid/widget/TextView;

    .line 125
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->tvTotalCount:Landroid/widget/TextView;

    .line 126
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->tvAllMoney:Landroid/widget/TextView;

    .line 127
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->tvTotalPrice:Landroid/widget/TextView;

    .line 128
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    .line 129
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->tvScrappedTypeHint:Landroid/widget/TextView;

    .line 130
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->addTvColumn4:Landroid/widget/TextView;

    .line 131
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->spReceiptType:Landroid/widget/Spinner;

    .line 133
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;->view7f08005b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;->view7f08005b:Landroid/view/View;

    .line 135
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;->view7f08005a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;->view7f08005a:Landroid/view/View;

    .line 137
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    .line 139
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;->view7f080063:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;->view7f080063:Landroid/view/View;

    .line 141
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;->view7f080064:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;->view7f080064:Landroid/view/View;

    .line 143
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;->view7f080065:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;->view7f080065:Landroid/view/View;

    .line 145
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;->view7f080067:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;->view7f080067:Landroid/view/View;

    return-void

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
