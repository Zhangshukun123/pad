.class public Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;
.super Lcom/ayma/commonerp/base/BaseActivity;
.source "OnlineRefundActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundContact$IOnlineReturnView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseActivity<",
        "Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundContact$IOnlineReturnView;",
        "Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundContact$IOnlineReturnView;"
    }
.end annotation


# instance fields
.field private currentFragment:Landroidx/fragment/app/Fragment;

.field fl:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800e0
    .end annotation
.end field

.field private jdFragment:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;

.field navView:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800e2
    .end annotation
.end field

.field private simpleFragment:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;)Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;->simpleFragment:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment;

    return-object p0
.end method

.method static synthetic access$002(Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment;)Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;->simpleFragment:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;)Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;->jdFragment:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;)Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;->jdFragment:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;

    return-object p1
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b0025

    return v0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;->initPresenter()Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundPresenter;
    .locals 2

    .line 98
    new-instance v0, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;->simpleFragment:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0, p1, p2, p3}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 133
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/ayma/commonerp/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;->init()V

    .line 62
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;->checkDevice()V

    .line 63
    new-instance p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment;

    invoke-direct {p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;->simpleFragment:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment;

    .line 64
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;->switchFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 65
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;->navView:Lcom/google/android/material/tabs/TabLayout;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity$1;-><init>(Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 138
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 2

    .line 46
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public switchFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .locals 4

    .line 108
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 109
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 113
    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    :cond_0
    const v1, 0x7f0800e0

    .line 115
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 116
    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 119
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 120
    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 121
    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 122
    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    .line 124
    :goto_0
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method
