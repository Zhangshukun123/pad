.class public Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;
.super Lcom/ayma/commonerp/base/BaseActivity;
.source "GoodsOptionActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionContact$IGoodsOptionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;,
        Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseActivity<",
        "Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionContact$IGoodsOptionView;",
        "Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionContact$IGoodsOptionView;"
    }
.end annotation


# instance fields
.field private eBtnCancel:Landroid/widget/Button;

.field private eBtnCommit:Landroid/widget/Button;

.field private eEtQty:Landroid/widget/EditText;

.field private eTvStockQty:Landroid/widget/TextView;

.field private eTvTitle:Landroid/widget/TextView;

.field private editOnlineQtyDialog:Landroid/app/AlertDialog;

.field etSearchGoods:Lcom/ayma/base/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08006d
    .end annotation
.end field

.field private goodsAdapter:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;

.field rlvGoods:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080072
    .end annotation
.end field

.field rlvSmallType:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080071
    .end annotation
.end field

.field private smallTypeAdapter:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;

.field tvNoData:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080073
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;)Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->goodsAdapter:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;)Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->smallTypeAdapter:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;)Landroid/app/AlertDialog;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->editOnlineQtyDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;)Landroid/widget/EditText;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->eEtQty:Landroid/widget/EditText;

    return-object p0
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public editOnlineQty(Lcom/ayma/commonerp/bean/GoodsOptionBean;I)V
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->editOnlineQtyDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0061

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0802fe

    .line 186
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->eTvTitle:Landroid/widget/TextView;

    const v1, 0x7f0802ff

    .line 187
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->eTvStockQty:Landroid/widget/TextView;

    const v1, 0x7f0802fb

    .line 188
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->eEtQty:Landroid/widget/EditText;

    const v1, 0x7f0802f9

    .line 189
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->eBtnCancel:Landroid/widget/Button;

    const v1, 0x7f0802fa

    .line 190
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->eBtnCommit:Landroid/widget/Button;

    .line 191
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 192
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->editOnlineQtyDialog:Landroid/app/AlertDialog;

    .line 195
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->eBtnCancel:Landroid/widget/Button;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$6;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$6;-><init>(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->eTvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsOptionBean;->getGoodsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->eTvStockQty:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsOptionBean;->getQty()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsOptionBean;->getDownQty()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->eEtQty:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->eEtQty:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 210
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->eBtnCommit:Landroid/widget/Button;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$7;-><init>(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;Lcom/ayma/commonerp/bean/GoodsOptionBean;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->editOnlineQtyDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 231
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->editOnlineQtyDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->resetDialogWidth(Landroid/app/AlertDialog;)V

    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b001f

    return v0
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->initPresenter()Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;
    .locals 2

    .line 74
    new-instance v0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public notifyGoodsList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsOptionBean;",
            ">;)V"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->goodsAdapter:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;-><init>(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->goodsAdapter:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;

    .line 134
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->rlvGoods:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 135
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->rlvGoods:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 136
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->context:Landroid/content/Context;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v0, v2}, Lcom/ayma/base/util/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 137
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->context:Landroid/content/Context;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Lcom/ayma/base/util/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 139
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->rlvGoods:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcom/ayma/commonerp/widget/SpacesItemDecoration;

    invoke-direct {v4, v0, v2, v0, v2}, Lcom/ayma/commonerp/widget/SpacesItemDecoration;-><init>(IIII)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 140
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->rlvGoods:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->context:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 141
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->rlvGoods:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$5;

    invoke-direct {v2, p0, p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$5;-><init>(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;->notifyDataSetChanged()V

    .line 166
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->goodsAdapter:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;->getItemCount()I

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_1

    .line 167
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->rlvGoods:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_1

    .line 170
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->rlvGoods:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public notifyItemChange(I)V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->goodsAdapter:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;->getItemCount()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->goodsAdapter:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;->notifyItemChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifySmallTypeList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 177
    new-instance v0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;-><init>(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->smallTypeAdapter:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;

    .line 178
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->rlvSmallType:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 179
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->rlvSmallType:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->context:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 83
    invoke-super {p0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    new-instance p1, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$1;

    invoke-direct {p1, p0}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$1;-><init>(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;)V

    const-string v0, "\u5237\u65b0"

    invoke-virtual {p0, v0, p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->showRightBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->etSearchGoods:Lcom/ayma/base/widget/ClearEditText;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$2;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$2;-><init>(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;)V

    invoke-virtual {p1, v0}, Lcom/ayma/base/widget/ClearEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 104
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->etSearchGoods:Lcom/ayma/base/widget/ClearEditText;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$3;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$3;-><init>(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;)V

    invoke-virtual {p1, v0}, Lcom/ayma/base/widget/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 120
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->etSearchGoods:Lcom/ayma/base/widget/ClearEditText;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$4;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$4;-><init>(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;)V

    invoke-virtual {p1, v0}, Lcom/ayma/base/widget/ClearEditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "\u5546\u54c1\u4e0a\u4e0b\u67b6"

    return-object v0
.end method

.method public showUpdateResult(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 245
    invoke-virtual {p0, p2}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->showNoticeToastOk(Ljava/lang/String;)V

    .line 246
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->editOnlineQtyDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 247
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->editOnlineQtyDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void

    .line 251
    :cond_1
    invoke-virtual {p0, p2}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->showNoticeToastError(Ljava/lang/String;)V

    return-void
.end method
