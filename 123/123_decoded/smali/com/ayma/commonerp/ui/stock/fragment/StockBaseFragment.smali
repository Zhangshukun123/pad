.class public abstract Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;
.super Lcom/ayma/commonerp/base/BaseFragment;
.source "StockBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/ayma/commonerp/base/IBaseView;",
        "T:",
        "Lcom/ayma/commonerp/base/BasePresenter;",
        ">",
        "Lcom/ayma/commonerp/base/BaseFragment<",
        "TV;TT;>;"
    }
.end annotation


# instance fields
.field protected stockMainActivity:Lcom/ayma/commonerp/ui/stock/activity/main/StockMainActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public finishActivity()V
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;->navigateBack()V

    return-void
.end method

.method public getGoDate()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 79
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "\u767b\u5f55\u65e5\u671f\uff1a%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrainInfo()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1

    .line 74
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseFragment;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public navigateBack()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;->rootView:Landroid/view/View;

    invoke-static {v0}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroidx/navigation/NavController;->popBackStack()Z

    return-void
.end method

.method public navigateTo(I)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;->rootView:Landroid/view/View;

    invoke-static {v0}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object v0

    .line 52
    invoke-virtual {v0, p1}, Landroidx/navigation/NavController;->navigate(I)V

    return-void
.end method

.method public navigateTo(ILandroid/os/Bundle;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;->rootView:Landroid/view/View;

    invoke-static {v0}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p1, p2}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lcom/ayma/commonerp/base/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainActivity;

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;->stockMainActivity:Lcom/ayma/commonerp/ui/stock/activity/main/StockMainActivity;

    return-void
.end method

.method public onBackPress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 1

    .line 30
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseFragment;->onResume()V

    .line 31
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;->showUserInfo()V

    .line 32
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;->stockMainActivity:Lcom/ayma/commonerp/ui/stock/activity/main/StockMainActivity;

    iput-object p0, v0, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainActivity;->currentFragment:Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;

    return-void
.end method

.method public rightClick()V
    .locals 0

    return-void
.end method
