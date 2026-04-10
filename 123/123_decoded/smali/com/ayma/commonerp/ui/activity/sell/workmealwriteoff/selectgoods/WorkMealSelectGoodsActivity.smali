.class public Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;
.super Lcom/ayma/commonerp/base/BaseActivity;
.source "WorkMealSelectGoodsActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsContact$IWorkMealSelectGoodsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;,
        Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$TypeAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseActivity<",
        "Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsContact$IWorkMealSelectGoodsView;",
        "Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsContact$IWorkMealSelectGoodsView;"
    }
.end annotation


# instance fields
.field etSearchCondition:Lcom/ayma/base/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080292
    .end annotation
.end field

.field rlvGoods:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080294
    .end annotation
.end field

.field rlvType:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080295
    .end annotation
.end field

.field sgaBtnSubmit:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080290
    .end annotation
.end field

.field sgaClBottom:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080291
    .end annotation
.end field

.field private sgfGoodsAdapter:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;

.field tvSelectGoods:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080296
    .end annotation
.end field

.field private typeAdapter:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$TypeAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;)Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$TypeAdapter;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;->typeAdapter:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$TypeAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;)Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;->sgfGoodsAdapter:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;

    return-object p0
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b0043

    return v0
.end method

.method public init()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;->etSearchCondition:Lcom/ayma/base/widget/ClearEditText;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$1;-><init>(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;)V

    invoke-virtual {v0, v1}, Lcom/ayma/base/widget/ClearEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 103
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;->etSearchCondition:Lcom/ayma/base/widget/ClearEditText;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$2;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$2;-><init>(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;)V

    invoke-virtual {v0, v1}, Lcom/ayma/base/widget/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;->initPresenter()Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsPresenter;
    .locals 2

    .line 88
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public listMoveTo(I)V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;->sgfGoodsAdapter:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;

    if-nez v0, :cond_0

    return-void

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;->rlvGoods:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_1

    return-void

    .line 193
    :cond_1
    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_2

    return-void

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;->rlvGoods:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    return-void
.end method

.method public notifyGoodsListChange()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;->sgfGoodsAdapter:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onBtnSubmitClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080290
        }
    .end annotation

    .line 131
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsPresenter;->submitSelected()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 83
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsPresenter;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsPresenter;->onCreate(Landroid/content/Intent;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 201
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public showGoods(Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;",
            ">;)V"
        }
    .end annotation

    .line 151
    new-instance p1, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;

    invoke-direct {p1, p0, p2}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;-><init>(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;Ljava/util/List;)V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;->sgfGoodsAdapter:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;

    .line 152
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;->context:Landroid/content/Context;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 153
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;->rlvGoods:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 154
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;->rlvGoods:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;->sgfGoodsAdapter:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 155
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;->rlvGoods:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$3;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$3;-><init>(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 169
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;->rlvGoods:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method public showGoodsType(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;",
            ">;)V"
        }
    .end annotation

    .line 136
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$TypeAdapter;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$TypeAdapter;-><init>(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;->typeAdapter:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$TypeAdapter;

    .line 137
    new-instance p1, Lcom/ayma/base/widget/XLinearLayoutManager;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;->context:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/ayma/base/widget/XLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 138
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;->rlvType:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 139
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;->rlvType:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;->typeAdapter:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$TypeAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public showSelectGoods(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;->tvSelectGoods:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->isSelect()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
