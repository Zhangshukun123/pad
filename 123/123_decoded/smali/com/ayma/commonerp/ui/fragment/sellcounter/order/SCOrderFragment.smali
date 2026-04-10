.class public Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;
.super Lcom/ayma/commonerp/base/BaseFragment;
.source "SCOrderFragment.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter;,
        Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseFragment<",
        "Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;",
        "Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;",
        "Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;"
    }
.end annotation


# static fields
.field public static final KEY_SELL_COUNTER_ORDER_TYPE:Ljava/lang/String; = "orderType"

.field public static final ORDER_TYPE_FINISHED:I = 0x1

.field public static final ORDER_TYPE_NOT_FINISH:I = 0x0

.field public static final ORDER_TYPE_REFUNDED:I = 0x2


# instance fields
.field private orderAdapter:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;

.field private orderType:I

.field rvList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080404
    .end annotation
.end field

.field sr:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080405
    .end annotation
.end field

.field tvNoData:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080406
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseFragment;-><init>()V

    return-void
.end method

.method public static getInstance(I)Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;
    .locals 2

    .line 57
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "orderType"

    .line 58
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    new-instance p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;

    invoke-direct {p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;-><init>()V

    .line 60
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public dealOrderCompleteOrderEvent(Lcom/ayma/commonerp/bean/SCOrderBean;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 123
    :cond_0
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SCOrderBean;->getType()I

    move-result v0

    iget v1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->orderType:I

    if-eq v0, v1, :cond_1

    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->orderAdapter:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;

    if-nez v0, :cond_2

    return-void

    .line 129
    :cond_2
    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;->addNewData(Lcom/ayma/commonerp/bean/SCOrderBean;)V

    .line 130
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public getData()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;

    iget v1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->orderType:I

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;->getOrderData(I)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0b0075

    return v0
.end method

.method public initList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SCOrderBean;",
            ">;)V"
        }
    .end annotation

    .line 140
    new-instance v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;-><init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->orderAdapter:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;

    .line 141
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 142
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->activity:Landroid/app/Activity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->initPresenter()Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;
    .locals 2

    .line 77
    new-instance v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Lcom/ayma/commonerp/base/BaseFragment;->initView(Landroid/view/View;)V

    .line 93
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 94
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->sr:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 95
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 97
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$1;-><init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    .line 147
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseFragment;->loadData()V

    .line 148
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->getData()V

    return-void
.end method

.method public notifyListDataChange(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SCOrderBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->stopRefresh()V

    .line 154
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->orderAdapter:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->initList(Ljava/util/List;)V

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->orderAdapter:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;->notifyDataSetChanged()V

    .line 158
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->orderAdapter:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;->getItemCount()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 159
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 161
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->tvNoData:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "\u6ca1\u6709\u6570\u636e"

    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->orderType:I

    if-nez p1, :cond_3

    .line 163
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/ayma/commonerp/eventbus/CounterOrderEvent;

    invoke-direct {p2, v1}, Lcom/ayma/commonerp/eventbus/CounterOrderEvent;-><init>(I)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 166
    :cond_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 168
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 169
    iget p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->orderType:I

    if-nez p1, :cond_3

    .line 170
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/ayma/commonerp/eventbus/CounterOrderEvent;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->orderAdapter:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;->getItemCount()I

    move-result v0

    invoke-direct {p2, v0}, Lcom/ayma/commonerp/eventbus/CounterOrderEvent;-><init>(I)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Lcom/ayma/commonerp/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 69
    iput p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->orderType:I

    goto :goto_0

    :cond_0
    const-string v0, "orderType"

    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->orderType:I

    :goto_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 109
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseFragment;->onDestroyView()V

    .line 110
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onRefresh()V
    .locals 0

    .line 135
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->getData()V

    return-void
.end method

.method public removeOrderByPosition(II)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->orderAdapter:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->orderAdapter:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;->removeDataByPosition(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public stopRefresh()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->sr:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
