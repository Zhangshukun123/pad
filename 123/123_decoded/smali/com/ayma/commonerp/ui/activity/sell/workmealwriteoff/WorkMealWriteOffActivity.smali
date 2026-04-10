.class public Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;
.super Lcom/ayma/commonerp/base/BaseActivity;
.source "WorkMealWriteOffActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffContact$IWorkMealWriteOffView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseActivity<",
        "Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffContact$IWorkMealWriteOffView;",
        "Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffContact$IWorkMealWriteOffView;"
    }
.end annotation


# instance fields
.field etCondition:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080297
    .end annotation
.end field

.field rvData:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080298
    .end annotation
.end field

.field private selectGoodsDialog:Landroid/app/AlertDialog;

.field spMealStatue:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080299
    .end annotation
.end field

.field spMealType:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08029a
    .end annotation
.end field

.field tvNoData:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08029d
    .end annotation
.end field

.field tvRight:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800e6
    .end annotation
.end field

.field private workMealWriteOffAdapter:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter;

.field private workMealWriteOffBean:Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;

.field private writeOffGoodsPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseActivity;-><init>()V

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->writeOffGoodsPosition:I

    return-void
.end method

.method static synthetic access$002(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;)Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->workMealWriteOffBean:Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;

    return-object p1
.end method

.method static synthetic access$102(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->writeOffGoodsPosition:I

    return p1
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public confirmWriteOff(Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;I)V
    .locals 9

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 178
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;->getUsername()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;->getUserMobile()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;->getGoodsPrice()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "\u5373\u5c06\u6838\u9500\uff1a\n\u7528\u9910\u4eba\uff1a%s\n\u624b\u673a\u53f7\uff1a%s\n\u5546\u54c1\uff1a%s\n\u5355\u4ef7\uff1a\uffe5%s"

    .line 177
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$2;

    invoke-direct {v6, p0}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$2;-><init>(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;)V

    new-instance v8, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$3;

    invoke-direct {v8, p0, p1, p2, p3}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$3;-><init>(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;I)V

    const-string v3, ""

    const-string v5, "\u53d6\u6d88"

    const-string v7, "\u786e\u8ba4"

    move-object v2, p0

    .line 176
    invoke-virtual/range {v2 .. v8}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public dealSelectGoodsEvent(Lcom/ayma/commonerp/eventbus/WorkMealSelectGoodsEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_3

    .line 159
    invoke-virtual {p1}, Lcom/ayma/commonerp/eventbus/WorkMealSelectGoodsEvent;->getGoods()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->workMealWriteOffBean:Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->writeOffGoodsPosition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {p1}, Lcom/ayma/commonerp/eventbus/WorkMealSelectGoodsEvent;->getGoods()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object p1

    iget v1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->writeOffGoodsPosition:I

    invoke-virtual {p0, v0, p1, v1}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->confirmWriteOff(Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;I)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "\u7528\u9910\u4eba\u5458\u6570\u636e\u5f02\u5e38\uff0c\u8bf7\u91cd\u65b0\u9009\u62e9\u8fdb\u884c\u6838\u9500"

    .line 163
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->showToast(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b0044

    return v0
.end method

.method public init()V
    .locals 2

    const-string v0, "\u67e5\u8be2"

    .line 115
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->showRightBtnText(Ljava/lang/String;)V

    .line 116
    sget-object v0, Lcom/ayma/commonerp/config/Constants;->WORK_MEAL_TYPE:Ljava/util/List;

    sget-object v1, Lcom/ayma/commonerp/config/Constants;->WORK_MEAL_STATUE:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->initSpinner(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->initPresenter()Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;
    .locals 2

    .line 110
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public initSpinner(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->spMealType:Landroid/widget/Spinner;

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->context:Landroid/content/Context;

    const v3, 0x1090009

    invoke-direct {v1, v2, v3, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 129
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->spMealStatue:Landroid/widget/Spinner;

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v3, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public notifyListChange(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;",
            ">;)V"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->workMealWriteOffAdapter:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter;-><init>(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->workMealWriteOffAdapter:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter;

    .line 141
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->rvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 142
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->rvData:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->context:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 143
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->rvData:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/ayma/commonerp/widget/SpacesItemDecoration;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->context:Landroid/content/Context;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v2, v3}, Lcom/ayma/base/util/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/ayma/commonerp/widget/SpacesItemDecoration;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 144
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->rvData:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter;->notifyDataSetChanged()V

    .line 148
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->workMealWriteOffAdapter:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter;->getItemCount()I

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_1

    .line 149
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->rvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 150
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 152
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->rvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 153
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public onBtnRightClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0800e6
        }
    .end annotation

    .line 121
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->spMealType:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 122
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->spMealStatue:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;

    sget-object v2, Lcom/ayma/commonerp/config/Constants;->WORK_MEAL_TYPE_MAP:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v2, Lcom/ayma/commonerp/config/Constants;->WORK_MEAL_STATUE_MAP:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->etCondition:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;->queryData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 89
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->etCondition:Landroid/widget/EditText;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$1;-><init>(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 99
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->init()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 104
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 105
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public removeListItem(I)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->workMealWriteOffAdapter:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter;

    if-nez v0, :cond_0

    return-void

    .line 205
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter;->removeItem(I)V

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 2

    .line 77
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
