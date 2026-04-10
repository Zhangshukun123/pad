.class public Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;
.super Lcom/ayma/commonerp/base/BaseFragment;
.source "SCOrderContainerFragment.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerContact$ISCOrderContainerView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment$FragmentPageAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseFragment<",
        "Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerContact$ISCOrderContainerView;",
        "Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerContact$ISCOrderContainerView;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment$FragmentPageAdapter;

.field private final orderFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;",
            ">;"
        }
    .end annotation
.end field

.field tl:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0803d1
    .end annotation
.end field

.field vp:Landroidx/viewpager2/widget/ViewPager2;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0803e2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseFragment;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;->orderFragments:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0b0074

    return v0
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;->initPresenter()Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerPresenter;
    .locals 2

    .line 47
    new-instance v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Lcom/ayma/commonerp/base/BaseFragment;->initView(Landroid/view/View;)V

    .line 82
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 83
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;->vp:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;->adapter:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment$FragmentPageAdapter;

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 84
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;->vp:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment$1;-><init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 90
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;->tl:Lcom/google/android/material/tabs/TabLayout;

    new-instance v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment$2;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment$2;-><init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 57
    invoke-super {p0, p1}, Lcom/ayma/commonerp/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 58
    invoke-static {p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->getInstance(I)Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;

    move-result-object p1

    const/4 v0, 0x1

    .line 59
    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->getInstance(I)Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;

    move-result-object v0

    const/4 v1, 0x2

    .line 60
    invoke-static {v1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->getInstance(I)Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;

    move-result-object v1

    .line 61
    iget-object v2, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;->orderFragments:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;->orderFragments:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;->orderFragments:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment$FragmentPageAdapter;

    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    iget-object v2, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;->orderFragments:Ljava/util/List;

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment$FragmentPageAdapter;-><init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;Ljava/util/List;)V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;->adapter:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment$FragmentPageAdapter;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseFragment;->onDestroy()V

    .line 70
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;->orderFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;->adapter:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment$FragmentPageAdapter;

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
