.class public Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;
.super Lcom/ayma/commonerp/base/BaseActivity;
.source "SellCounterActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterContact$SellCounterView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseActivity<",
        "Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterContact$SellCounterView;",
        "Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterContact$SellCounterView;"
    }
.end annotation


# instance fields
.field btnRight:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800e6
    .end annotation
.end field

.field private currentFragment:Landroidx/fragment/app/Fragment;

.field private openShopFragment:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;

.field private orderFragment:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;

.field tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800e8
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;)Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->orderFragment:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;

    return-object p1
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b003b

    return v0
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->initPresenter()Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;
    .locals 2

    .line 100
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 108
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/ayma/commonerp/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBtnBackClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0800e5
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->finishActivity()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->init()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 95
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->onResume()V

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->tvTitle:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->runningMode:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "%s%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showOpenStatue(Lcom/ayma/commonerp/bean/OpenShopBean;)V
    .locals 1

    if-nez p1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->switchToOpenShop()V

    return-void

    .line 151
    :cond_0
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/OpenShopBean;->getOpenShopTrainId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->shopTrainId:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/OpenShopBean;->getOpenShopTrainName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/ayma/commonerp/app/AppUserData;->shopTrainName:Ljava/lang/String;

    .line 153
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMdWithNoneSep()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/ayma/commonerp/app/AppUserData;->shopTrainDay:Ljava/lang/String;

    .line 154
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->switchToOrder()V

    return-void
.end method

.method public switchFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .locals 4

    .line 123
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 124
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 128
    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    :cond_0
    const v1, 0x7f08024e

    .line 130
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 131
    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 134
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 135
    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 136
    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 137
    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    .line 139
    :goto_0
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public switchToOpenShop()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 159
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s-%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->setTitle(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->btnRight:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->btnRight:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->openShopFragment:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;

    invoke-direct {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;-><init>()V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->openShopFragment:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->openShopFragment:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->switchFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public switchToOrder()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 170
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1000ed

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "%s-%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->setTitle(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->btnRight:Landroid/widget/TextView;

    const-string v1, "\u5f00\u5e97"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->btnRight:Landroid/widget/TextView;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity$1;-><init>(Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->btnRight:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->orderFragment:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;

    invoke-direct {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;-><init>()V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->orderFragment:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->orderFragment:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->switchFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method
