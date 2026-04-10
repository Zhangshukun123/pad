.class public Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;
.super Lcom/ayma/commonerp/base/BaseActivity;
.source "SelectGoodsActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter;,
        Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;,
        Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseActivity<",
        "Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;",
        "Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;"
    }
.end annotation


# instance fields
.field etSearchCondition:Lcom/ayma/base/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08024f
    .end annotation
.end field

.field private inputCountDialog:Landroid/app/AlertDialog;

.field private inputCountDialogView:Landroid/view/View;

.field private priceType:Ljava/lang/String;

.field rlvGoods:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080678
    .end annotation
.end field

.field rlvType:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080250
    .end annotation
.end field

.field private selectGoodsPopup:Landroid/widget/PopupWindow;

.field sgaBtnSubmit:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080675
    .end annotation
.end field

.field sgaClBottom:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080676
    .end annotation
.end field

.field sgaTvGoods1:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08067a
    .end annotation
.end field

.field sgaTvGoodsCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08067b
    .end annotation
.end field

.field sgaTvGoodsTotalPrice:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08067c
    .end annotation
.end field

.field private sgfGoodsAdapter:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;

.field private shopCarPopup:Landroid/widget/PopupWindow;

.field srl:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080679
    .end annotation
.end field

.field private typeAdapter:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;)Landroid/widget/PopupWindow;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->selectGoodsPopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;)Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->sgfGoodsAdapter:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;)Landroid/widget/PopupWindow;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->shopCarPopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;)Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->typeAdapter:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;

    return-object p0
.end method


# virtual methods
.method public confirmDeleteSelectedGoods(ILcom/ayma/commonerp/bean/SellDetailBean;)V
    .locals 0

    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b0036

    return v0
.end method

.method public init()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->etSearchCondition:Lcom/ayma/base/widget/ClearEditText;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$4;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$4;-><init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;)V

    invoke-virtual {v0, v1}, Lcom/ayma/base/widget/ClearEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 159
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->etSearchCondition:Lcom/ayma/base/widget/ClearEditText;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$5;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$5;-><init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;)V

    invoke-virtual {v0, v1}, Lcom/ayma/base/widget/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->initPresenter()Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;
    .locals 2

    .line 132
    new-instance v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public synthetic lambda$showInputCountDialog$0$SelectGoodsActivity(Lcom/ayma/base/widget/ClearEditText;Lcom/ayma/commonerp/bean/SellDetailBean;ILandroid/view/View;)V
    .locals 4

    .line 347
    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p4

    .line 348
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "\u8bf7\u8f93\u5165\u5546\u54c1\u6570\u91cf"

    .line 349
    invoke-virtual {p0, p2}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->showToast(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    return-void

    .line 353
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double p4, v0, v2

    if-gez p4, :cond_1

    const-string p2, "\u5546\u54c1\u6570\u91cf\u4e0d\u80fd\u4e3a\u8d1f\u6570"

    .line 355
    invoke-virtual {p0, p2}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->showToast(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    return-void

    .line 359
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->inputCountDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 360
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->hideSoftKeyboard()V

    .line 361
    invoke-virtual {p2, v0, v1}, Lcom/ayma/commonerp/bean/SellDetailBean;->setQty(D)V

    .line 362
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->sgfGoodsAdapter:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;

    if-eqz p1, :cond_2

    .line 363
    invoke-virtual {p1, p3}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->notifyItemChanged(I)V

    .line 365
    :cond_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$showInputCountDialog$1$SelectGoodsActivity(Landroid/view/View;)V
    .locals 0

    .line 367
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->inputCountDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public listMoveTo(I)V
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->sgfGoodsAdapter:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;

    if-nez v0, :cond_0

    return-void

    .line 430
    :cond_0
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->rlvGoods:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_1

    return-void

    .line 433
    :cond_1
    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_2

    return-void

    .line 436
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->sgfGoodsAdapter:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->notifyListItemChange(I)V

    return-void
.end method

.method public notifyGoodsListChange()V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->sgfGoodsAdapter:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->selectGoodsPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->selectGoodsPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->shopCarPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->shopCarPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    .line 145
    :cond_1
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->onBackPressed()V

    return-void
.end method

.method public onBtnSubmitClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080675
        }
    .end annotation

    .line 203
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->submitSelected()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 101
    invoke-super {p0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "priceType"

    .line 103
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->priceType:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->onCreate(Landroid/content/Intent;)V

    .line 105
    new-instance p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$1;

    invoke-direct {p1, p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$1;-><init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;)V

    const-string v0, "\u5237\u65b0"

    invoke-virtual {p0, v0, p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->showRightBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->srl:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$2;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$2;-><init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;)V

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 121
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->etSearchCondition:Lcom/ayma/base/widget/ClearEditText;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$3;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$3;-><init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;)V

    invoke-virtual {p1, v0}, Lcom/ayma/base/widget/ClearEditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 446
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onIvShopCarClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080677
        }
    .end annotation

    .line 193
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->showSelectedGoods()V

    return-void
.end method

.method public setRefreshFinish()V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->srl:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 91
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->priceType:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public showGoods(Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;)V"
        }
    .end annotation

    .line 268
    new-instance p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;

    invoke-direct {p1, p0, p2}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;-><init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;Ljava/util/List;)V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->sgfGoodsAdapter:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;

    .line 269
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->context:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 270
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->rlvGoods:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 271
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->rlvGoods:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->sgfGoodsAdapter:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 272
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->rlvGoods:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$8;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$8;-><init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 294
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->rlvGoods:Landroidx/recyclerview/widget/RecyclerView;

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

    .line 209
    new-instance v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;-><init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->typeAdapter:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;

    .line 210
    new-instance p1, Lcom/ayma/base/widget/XLinearLayoutManager;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->context:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/ayma/base/widget/XLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 211
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->rlvType:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 212
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->rlvType:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->typeAdapter:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public showInputCountDialog(Lcom/ayma/commonerp/bean/SellDetailBean;I)V
    .locals 9

    .line 324
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->inputCountDialogView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0b0066

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->inputCountDialogView:Landroid/view/View;

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->inputCountDialogView:Landroid/view/View;

    const v2, 0x7f08072b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 328
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->inputCountDialogView:Landroid/view/View;

    const v3, 0x7f08035c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ayma/base/widget/ClearEditText;

    .line 330
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->inputCountDialogView:Landroid/view/View;

    const v4, 0x7f0802a9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 331
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->inputCountDialogView:Landroid/view/View;

    const v5, 0x7f0802aa

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 332
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SellDetailBean;->getQty()D

    move-result-wide v5

    double-to-int v5, v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 334
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SellDetailBean;->getGoodsName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-string v7, "%s-\u5f53\u524d\u6570\u91cf\uff1a%s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez v5, :cond_1

    .line 336
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ayma/base/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 337
    invoke-virtual {v2}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/ayma/base/widget/ClearEditText;->setSelection(I)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 339
    invoke-virtual {v2, v0}, Lcom/ayma/base/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 341
    :goto_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->inputCountDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_2

    .line 342
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->inputCountDialogView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 343
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->inputCountDialog:Landroid/app/AlertDialog;

    .line 346
    :cond_2
    new-instance v0, Lcom/ayma/commonerp/ui/activity/selectgoods/-$$Lambda$SelectGoodsActivity$OYduO8VTUvBfQ0fnOX7Gwoj8_uw;

    invoke-direct {v0, p0, v2, p1, p2}, Lcom/ayma/commonerp/ui/activity/selectgoods/-$$Lambda$SelectGoodsActivity$OYduO8VTUvBfQ0fnOX7Gwoj8_uw;-><init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;Lcom/ayma/base/widget/ClearEditText;Lcom/ayma/commonerp/bean/SellDetailBean;I)V

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    new-instance p1, Lcom/ayma/commonerp/ui/activity/selectgoods/-$$Lambda$SelectGoodsActivity$BWOxft2tjW3fQphhjJM6qHERrPQ;

    invoke-direct {p1, p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/-$$Lambda$SelectGoodsActivity$BWOxft2tjW3fQphhjJM6qHERrPQ;-><init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;)V

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->inputCountDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 369
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->inputCountDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 371
    :cond_3
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_4

    .line 372
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->inputCountDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 373
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->inputCountDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->resetDialogWidth(Landroid/app/AlertDialog;)V

    .line 374
    invoke-virtual {v2, v8}, Lcom/ayma/base/widget/ClearEditText;->setFocusable(Z)V

    .line 375
    invoke-virtual {v2}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    :cond_4
    return-void
.end method

.method public showSearchResultPopup(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;)V"
        }
    .end annotation

    .line 387
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 388
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->selectGoodsPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    const v1, 0x7f0b00f9

    const/4 v2, 0x0

    .line 389
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 390
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->etSearchCondition:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v3}, Lcom/ayma/base/widget/ClearEditText;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->context:Landroid/content/Context;

    const/high16 v5, 0x438c0000    # 280.0f

    invoke-static {v4, v5}, Lcom/ayma/base/util/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v1, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->selectGoodsPopup:Landroid/widget/PopupWindow;

    goto :goto_0

    .line 392
    :cond_0
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    :goto_0
    const v2, 0x7f0805fb

    .line 394
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f0805fc

    .line 395
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$9;

    invoke-direct {v3, p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$9;-><init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 402
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    .line 403
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ayma/commonerp/bean/SellDetailBean;

    const v6, 0x7f0b0097

    .line 404
    invoke-virtual {v0, v6, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f080759

    .line 405
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 406
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/SellDetailBean;->getGoodsName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v5

    if-ne v3, v8, :cond_1

    const v5, 0x7f07007d

    .line 408
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_1
    const v5, 0x7f07007e

    .line 410
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 412
    :goto_2
    new-instance v5, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$10;

    invoke-direct {v5, p0, v4}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$10;-><init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;Lcom/ayma/commonerp/bean/SellDetailBean;)V

    invoke-virtual {v6, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 421
    :cond_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->selectGoodsPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 422
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->selectGoodsPopup:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->etSearchCondition:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1, v0, v1, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public showSelectedGoodsCountAndTotalPrice(DD)V
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->sgaTvGoodsCount:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    const-string p1, "\u5171\u9009\u62e9\u4e86%s\u4ef6\u5546\u54c1"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->sgaTvGoodsTotalPrice:Landroid/widget/TextView;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    aput-object p3, v0, p2

    const-string p2, "\uffe5\uff1a%s"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showSelectedGoodsPopup(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;)V"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->shopCarPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00fc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 225
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->shopCarPopup:Landroid/widget/PopupWindow;

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    :goto_0
    const v1, 0x7f0805f9

    .line 229
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$6;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$6;-><init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0805f8

    .line 235
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 236
    new-instance v2, Lcom/ayma/base/widget/XLinearLayoutManager;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->context:Landroid/content/Context;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/ayma/base/widget/XLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 237
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 238
    new-instance v2, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter;

    invoke-direct {v2, p0, p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter;-><init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;Ljava/util/List;)V

    .line 239
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const p1, 0x7f0805f7

    .line 241
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$7;

    invoke-direct {v0, p0, v2}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$7;-><init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->shopCarPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 250
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->shopCarPopup:Landroid/widget/PopupWindow;

    const v0, 0x7f1102ea

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    const p1, 0x1020002

    .line 251
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 252
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->shopCarPopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x51

    invoke-virtual {v0, p1, v1, v5, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
