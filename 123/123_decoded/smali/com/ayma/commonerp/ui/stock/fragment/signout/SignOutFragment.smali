.class public Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutFragment;
.super Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;
.source "SignOutFragment.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutContact$ISignOutView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutFragment$TrainListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment<",
        "Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutContact$ISignOutView;",
        "Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutContact$ISignOutView;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0b0076

    return v0
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutFragment;->initPresenter()Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutPresenter;
    .locals 2

    .line 31
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutFragment;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;->initView(Landroid/view/View;)V

    .line 53
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 41
    invoke-super {p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 42
    invoke-super {p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 2

    .line 47
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
