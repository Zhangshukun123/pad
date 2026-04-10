.class public Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;
.super Ljava/lang/Object;
.source "QuerySellDetailActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;

.field private view7f0800e5:Landroid/view/View;

.field private view7f0800e6:Landroid/view/View;

.field private view7f08016d:Landroid/view/View;

.field private view7f08016e:Landroid/view/View;

.field private view7f08016f:Landroid/view/View;

.field private view7f080170:Landroid/view/View;

.field private view7f080171:Landroid/view/View;

.field private view7f080172:Landroid/view/View;

.field private view7f080173:Landroid/view/View;

.field private view7f080175:Landroid/view/View;

.field private view7f080179:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;)V
    .locals 1

    .line 46
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;Landroid/view/View;)V
    .locals 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;

    const v0, 0x7f0800e6

    const-string v1, "field \'btnRight\' and method \'onBtnQueryClicked\'"

    .line 54
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 55
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'btnRight\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->btnRight:Landroid/widget/TextView;

    .line 56
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    .line 57
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding$1;-><init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f080167

    const-string v2, "field \'spSellType\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->spSellType:Landroid/widget/Spinner;

    .line 64
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f080166

    const-string v2, "field \'spPayType\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->spPayType:Landroid/widget/Spinner;

    .line 65
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f080165

    const-string v2, "field \'spBigName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->spBigName:Landroid/widget/Spinner;

    .line 66
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f080168

    const-string v2, "field \'spSmallName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->spSmallName:Landroid/widget/Spinner;

    .line 67
    const-class v0, Lcom/ayma/base/widget/ClearEditText;

    const v1, 0x7f080163

    const-string v2, "field \'etGoodsName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/base/widget/ClearEditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->etGoodsName:Lcom/ayma/base/widget/ClearEditText;

    .line 68
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f080164

    const-string v2, "field \'rlvData\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    .line 69
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080178

    const-string v2, "field \'tvNoData\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->tvNoData:Landroid/widget/TextView;

    .line 70
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f080160

    const-string v2, "field \'cb\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->cb:Landroid/widget/CheckBox;

    .line 71
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08016b

    const-string v2, "field \'tvDataCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->tvDataCount:Landroid/widget/TextView;

    const v0, 0x7f0800e5

    const-string v1, "method \'onBtnBackClicked\'"

    .line 72
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 73
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->view7f0800e5:Landroid/view/View;

    .line 74
    new-instance v1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding$2;-><init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080172

    const-string v1, "method \'onTvSellTimeClick\'"

    .line 80
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 81
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->view7f080172:Landroid/view/View;

    .line 82
    new-instance v1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding$3;-><init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08016d

    const-string v1, "method \'onTvGoodsCodeHintClick\'"

    .line 88
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 89
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->view7f08016d:Landroid/view/View;

    .line 90
    new-instance v1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding$4;-><init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08016f

    const-string v1, "method \'onTvGoodsNameHintClick\'"

    .line 96
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 97
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->view7f08016f:Landroid/view/View;

    .line 98
    new-instance v1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding$5;-><init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08016e

    const-string v1, "method \'onTvGoodsQtyHintClick\'"

    .line 104
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 105
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->view7f08016e:Landroid/view/View;

    .line 106
    new-instance v1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding$6;-><init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080171

    const-string v1, "method \'onTvGoodsPriceHintClick\'"

    .line 112
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 113
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->view7f080171:Landroid/view/View;

    .line 114
    new-instance v1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding$7;-><init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080175

    const-string v1, "method \'onTvAmountHintClick\'"

    .line 120
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 121
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->view7f080175:Landroid/view/View;

    .line 122
    new-instance v1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding$8;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding$8;-><init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080173

    const-string v1, "method \'onTvSellTypeHintClick\'"

    .line 128
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 129
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->view7f080173:Landroid/view/View;

    .line 130
    new-instance v1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding$9;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding$9;-><init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080170

    const-string v1, "method \'onTvPayTypeHintClick\'"

    .line 136
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 137
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->view7f080170:Landroid/view/View;

    .line 138
    new-instance v1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding$10;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding$10;-><init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080179

    const-string v1, "method \'onTvOrderTypeHintClick\'"

    .line 144
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 145
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->view7f080179:Landroid/view/View;

    .line 146
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding$11;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding$11;-><init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 159
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;

    .line 161
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->btnRight:Landroid/widget/TextView;

    .line 162
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->spSellType:Landroid/widget/Spinner;

    .line 163
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->spPayType:Landroid/widget/Spinner;

    .line 164
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->spBigName:Landroid/widget/Spinner;

    .line 165
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->spSmallName:Landroid/widget/Spinner;

    .line 166
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->etGoodsName:Lcom/ayma/base/widget/ClearEditText;

    .line 167
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    .line 168
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->tvNoData:Landroid/widget/TextView;

    .line 169
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->cb:Landroid/widget/CheckBox;

    .line 170
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->tvDataCount:Landroid/widget/TextView;

    .line 172
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    .line 174
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->view7f0800e5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->view7f0800e5:Landroid/view/View;

    .line 176
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->view7f080172:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->view7f080172:Landroid/view/View;

    .line 178
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->view7f08016d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->view7f08016d:Landroid/view/View;

    .line 180
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->view7f08016f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->view7f08016f:Landroid/view/View;

    .line 182
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->view7f08016e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->view7f08016e:Landroid/view/View;

    .line 184
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->view7f080171:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->view7f080171:Landroid/view/View;

    .line 186
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->view7f080175:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->view7f080175:Landroid/view/View;

    .line 188
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->view7f080173:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->view7f080173:Landroid/view/View;

    .line 190
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->view7f080170:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->view7f080170:Landroid/view/View;

    .line 192
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->view7f080179:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity_ViewBinding;->view7f080179:Landroid/view/View;

    return-void

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
