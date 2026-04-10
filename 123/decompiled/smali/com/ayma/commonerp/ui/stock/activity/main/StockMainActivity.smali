.class public Lcom/ayma/commonerp/ui/stock/activity/main/StockMainActivity;
.super Lcom/ayma/commonerp/base/BaseActivity;
.source "StockMainActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/stock/activity/main/StockMainContact$IStockMainView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseActivity<",
        "Lcom/ayma/commonerp/ui/stock/activity/main/StockMainContact$IStockMainView;",
        "Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/stock/activity/main/StockMainContact$IStockMainView;"
    }
.end annotation


# instance fields
.field public currentFragment:Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected checkPermissions()V
    .locals 0

    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b003e

    return v0
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainActivity;->initPresenter()Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;
    .locals 2

    .line 50
    new-instance v0, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x7a

    if-ne p2, p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainActivity;->app:Lcom/ayma/commonerp/app/App;

    invoke-virtual {p1}, Lcom/ayma/commonerp/app/App;->finishAll()V

    .line 73
    invoke-static {}, Lcom/ayma/commonerp/app/AppUserData;->clearAll()V

    .line 74
    invoke-static {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->show(Landroid/content/Context;)V

    :cond_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainActivity;->currentFragment:Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;

    if-eqz v0, :cond_2

    .line 80
    invoke-virtual {v0, p1, p2, p3}, Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 82
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/ayma/commonerp/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainActivity;->currentFragment:Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;->onBackPress()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;->checkUpdate(Z)V

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
