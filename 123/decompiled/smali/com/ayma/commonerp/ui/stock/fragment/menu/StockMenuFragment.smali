.class public Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;
.super Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;
.source "StockMenuFragment.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment<",
        "Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;",
        "Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public changePwdClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0803c0
        }
    .end annotation

    .line 85
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;->activity:Landroid/app/Activity;

    const/16 v0, 0x6f

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->show(Landroid/app/Activity;II)V

    return-void
.end method

.method public confirmExit()V
    .locals 9

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u662f\u5426\u767b\u51fa\u7528\u6237\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff1f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Lcom/ayma/commonerp/ui/stock/fragment/menu/-$$Lambda$StockMenuFragment$DsYteqS4HcFbaP51hhCPRBjxivo;

    invoke-direct {v8, p0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/-$$Lambda$StockMenuFragment$DsYteqS4HcFbaP51hhCPRBjxivo;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;)V

    const-string v3, ""

    const-string v5, "\u53d6\u6d88"

    const/4 v6, 0x0

    const-string v7, "\u786e\u5b9a"

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public downloadStockOutTemp(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0803c2
        }
    .end annotation

    .line 98
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->downloadBase()V

    .line 102
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->downloadStockOutTemp()V

    .line 103
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->downloadGoodsData()V

    .line 104
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->downloadStoreData()V

    .line 105
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->downloadSupplierData()V

    return-void
.end method

.method public exit()V
    .locals 1

    .line 132
    invoke-static {}, Lcom/ayma/commonerp/app/AppUserData;->clearAll()V

    .line 133
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;->app:Lcom/ayma/commonerp/app/App;

    invoke-virtual {v0}, Lcom/ayma/commonerp/app/App;->finishAll()V

    .line 134
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->show(Landroid/content/Context;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0b0079

    return v0
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;->initPresenter()Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;
    .locals 2

    .line 26
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public synthetic lambda$confirmExit$0$StockMenuFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 125
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 126
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;->exit()V

    return-void
.end method

.method public onBackPress()Z
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;->confirmExit()V

    const/4 v0, 0x1

    return v0
.end method

.method public onBntQueryReceiptClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0803c6
        }
    .end annotation

    .line 73
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const p1, 0x7f080047

    .line 76
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;->navigateTo(I)V

    return-void
.end method

.method public onBtnCheckUpdateClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0803c1
        }
    .end annotation

    .line 110
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;->stockMainActivity:Lcom/ayma/commonerp/ui/stock/activity/main/StockMainActivity;

    if-nez p1, :cond_1

    return-void

    .line 116
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;->stockMainActivity:Lcom/ayma/commonerp/ui/stock/activity/main/StockMainActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;->checkUpdate(Z)V

    return-void
.end method

.method public onBtnStockInClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0803c7
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const p1, 0x7f080045

    .line 55
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;->navigateTo(I)V

    return-void
.end method

.method public onBtnStockOutClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0803c8
        }
    .end annotation

    .line 65
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const p1, 0x7f080046

    .line 68
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragment;->navigateTo(I)V

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "\u5e93\u623f\u83dc\u5355"

    return-object v0
.end method
