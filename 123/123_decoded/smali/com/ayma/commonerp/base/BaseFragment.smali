.class public abstract Lcom/ayma/commonerp/base/BaseFragment;
.super Lcom/ayma/base/mvp/MvpBaseFragment;
.source "BaseFragment.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/ayma/commonerp/base/IBaseView;",
        "T:",
        "Lcom/ayma/commonerp/base/BasePresenter;",
        ">",
        "Lcom/ayma/base/mvp/MvpBaseFragment<",
        "TV;TT;>;",
        "Lcom/ayma/commonerp/base/IBaseView;"
    }
.end annotation


# instance fields
.field protected app:Lcom/ayma/commonerp/app/App;

.field private baseActivity:Lcom/ayma/commonerp/base/BaseActivity;

.field protected isLoading:Z

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/ayma/base/mvp/MvpBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/ayma/commonerp/base/BaseFragment;->isLoading:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/base/BaseFragment;)Landroid/app/ProgressDialog;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ayma/commonerp/base/BaseFragment;->progressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic lambda$showAlert$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 218
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showAlert$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 225
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method protected backClick(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public finishActivity()V
    .locals 0

    return-void
.end method

.method public finishAll()V
    .locals 0

    return-void
.end method

.method public getGoDate()Ljava/lang/String;
    .locals 6

    const-string v0, "-"

    const-string v1, "/"

    .line 326
    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->TOKEN:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "\u767b\u5f55\u5f02\u5e38\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    .line 327
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/base/BaseFragment;->showToast(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseFragment;->app:Lcom/ayma/commonerp/app/App;

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0}, Lcom/ayma/commonerp/app/App;->finishAll()V

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseFragment;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->show(Landroid/content/Context;)V

    const-string v0, ""

    return-object v0

    :cond_1
    const v2, 0x7f10003f

    .line 336
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 338
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public getGoDateNonePrefix()Ljava/lang/String;
    .locals 4

    const-string v0, "-"

    const-string v1, "/"

    .line 348
    :try_start_0
    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 350
    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public getPermissionCode()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getTrainInfo()Ljava/lang/String;
    .locals 3

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->trainName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 2

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasDecimal(D)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected hideBack()V
    .locals 2

    const v0, 0x7f0800e5

    .line 100
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/base/BaseFragment;->$(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideInfoDetailPopup()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hideLoading()V
    .locals 4

    .line 288
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseFragment;->rootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseFragment;->rootView:Landroid/view/View;

    new-instance v1, Lcom/ayma/commonerp/base/BaseFragment$2;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/base/BaseFragment$2;-><init>(Lcom/ayma/commonerp/base/BaseFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public hideSoftKeyboard()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseFragment;->activity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 153
    iget-object v1, p0, Lcom/ayma/commonerp/base/BaseFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/ayma/commonerp/base/BaseFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/ayma/commonerp/base/BaseFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public hideSoftKeyboard(Landroid/view/View;)V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseFragment;->activity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Lcom/ayma/base/mvp/MvpBaseFragment;->initView(Landroid/view/View;)V

    .line 57
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 58
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseFragment;->showUserInfo()V

    const p1, 0x7f0800e5

    .line 59
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/base/BaseFragment;->$(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    new-instance v0, Lcom/ayma/commonerp/base/BaseFragment$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/base/BaseFragment$1;-><init>(Lcom/ayma/commonerp/base/BaseFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public judgeRunningMode()V
    .locals 0

    return-void
.end method

.method public loadData()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/base/BasePresenter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/base/BasePresenter;->onCreate()V

    return-void
.end method

.method public needLogin()V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/ayma/base/mvp/MvpBaseFragment;->onAttach(Landroid/content/Context;)V

    .line 45
    invoke-static {}, Lcom/ayma/commonerp/app/App;->getInstance()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/app/App;

    iput-object p1, p0, Lcom/ayma/commonerp/base/BaseFragment;->app:Lcom/ayma/commonerp/app/App;

    .line 46
    iget-object p1, p0, Lcom/ayma/commonerp/base/BaseFragment;->activity:Landroid/app/Activity;

    instance-of p1, p1, Lcom/ayma/commonerp/base/BaseActivity;

    if-eqz p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/ayma/commonerp/base/BaseFragment;->activity:Landroid/app/Activity;

    check-cast p1, Lcom/ayma/commonerp/base/BaseActivity;

    iput-object p1, p0, Lcom/ayma/commonerp/base/BaseFragment;->baseActivity:Lcom/ayma/commonerp/base/BaseActivity;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 135
    invoke-super {p0}, Lcom/ayma/base/mvp/MvpBaseFragment;->onResume()V

    .line 136
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseFragment;->showTitle()V

    return-void
.end method

.method public resetDialogWidth(Landroid/app/AlertDialog;)V
    .locals 2

    .line 395
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 397
    iget-object v1, p0, Lcom/ayma/commonerp/base/BaseFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x64

    mul-int/lit8 v1, v1, 0x5f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x11

    .line 398
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 399
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public resetSortIcon(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setResultCode(I)V
    .locals 0

    return-void
.end method

.method protected abstract setTitle()Ljava/lang/String;
.end method

.method public showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 201
    invoke-virtual/range {v0 .. v7}, Lcom/ayma/commonerp/base/BaseFragment;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method public showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 209
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ayma/commonerp/base/BaseFragment;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 211
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 213
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 214
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 216
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    if-nez p4, :cond_3

    .line 218
    sget-object p1, Lcom/ayma/commonerp/base/-$$Lambda$BaseFragment$3SerTlFyy5qm9WPB3bAzqiMicic;->INSTANCE:Lcom/ayma/commonerp/base/-$$Lambda$BaseFragment$3SerTlFyy5qm9WPB3bAzqiMicic;

    invoke-virtual {v0, p3, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 220
    :cond_3
    invoke-virtual {v0, p3, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 223
    :cond_4
    :goto_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    if-nez p6, :cond_5

    .line 225
    sget-object p1, Lcom/ayma/commonerp/base/-$$Lambda$BaseFragment$iA96v7kAgMgElszkyPT0p0h3cLw;->INSTANCE:Lcom/ayma/commonerp/base/-$$Lambda$BaseFragment$iA96v7kAgMgElszkyPT0p0h3cLw;

    invoke-virtual {v0, p5, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 227
    :cond_5
    invoke-virtual {v0, p5, p6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 230
    :cond_6
    :goto_1
    invoke-virtual {v0, p7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 231
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 232
    iget-object p2, p0, Lcom/ayma/commonerp/base/BaseFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_7

    .line 233
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 234
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/base/BaseFragment;->resetDialogWidth(Landroid/app/AlertDialog;)V

    :cond_7
    return-void
.end method

.method public showInfoDetailPopup(Lcom/ayma/commonerp/behavior/InfoDetailBehavior;)V
    .locals 0

    return-void
.end method

.method public showLoading()V
    .locals 1

    const-string v0, "\u6b63\u5728\u52a0\u8f7d..."

    .line 267
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/base/BaseFragment;->showLoading(Ljava/lang/String;)V

    return-void
.end method

.method public showLoading(Ljava/lang/String;)V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/ayma/commonerp/base/BaseFragment;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ayma/commonerp/base/BaseFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    .line 274
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 275
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f1102eb

    .line 277
    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_0
    const/4 v0, 0x1

    .line 280
    iput-boolean v0, p0, Lcom/ayma/commonerp/base/BaseFragment;->isLoading:Z

    .line 281
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 282
    iget-object p1, p0, Lcom/ayma/commonerp/base/BaseFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 283
    iget-object p1, p0, Lcom/ayma/commonerp/base/BaseFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/base/BaseFragment;->resetDialogWidth(Landroid/app/AlertDialog;)V

    return-void
.end method

.method public showNoticeToast(Ljava/lang/String;)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseFragment;->baseActivity:Lcom/ayma/commonerp/base/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->showNoticeToast(Ljava/lang/String;)V

    return-void
.end method

.method public showNoticeToast(Ljava/lang/String;I)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseFragment;->baseActivity:Lcom/ayma/commonerp/base/BaseActivity;

    invoke-virtual {v0, p1, p2}, Lcom/ayma/commonerp/base/BaseActivity;->showNoticeToast(Ljava/lang/String;I)V

    return-void
.end method

.method public showNoticeToast(Ljava/lang/String;II)V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseFragment;->baseActivity:Lcom/ayma/commonerp/base/BaseActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ayma/commonerp/base/BaseActivity;->showNoticeToast(Ljava/lang/String;II)V

    return-void
.end method

.method public showNoticeToastError(Ljava/lang/String;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseFragment;->baseActivity:Lcom/ayma/commonerp/base/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->showNoticeToastError(Ljava/lang/String;)V

    return-void
.end method

.method public showNoticeToastOk(Ljava/lang/String;)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseFragment;->baseActivity:Lcom/ayma/commonerp/base/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->showNoticeToastOk(Ljava/lang/String;)V

    return-void
.end method

.method protected showRightBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2

    const v0, 0x7f0800e6

    .line 115
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/base/BaseFragment;->$(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 117
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected showRightBtnText(Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f0800e6

    .line 107
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/base/BaseFragment;->$(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    .line 195
    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/base/BaseFragment;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public showSingleAlertNoAction(Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, ""

    .line 180
    invoke-virtual {p0, v0, p1}, Lcom/ayma/commonerp/base/BaseFragment;->showSingleAlertNoAction(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showSingleAlertNoAction(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "\u786e\u5b9a"

    .line 185
    invoke-virtual {p0, p1, p2, v0}, Lcom/ayma/commonerp/base/BaseFragment;->showSingleAlertNoAction(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showSingleAlertNoAction(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 190
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ayma/commonerp/base/BaseFragment;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public showTipsOnTop(Ljava/lang/String;)V
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseFragment;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 379
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/base/BaseFragment;->showToast(Ljava/lang/String;)V

    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseFragment;->activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/ayma/commonerp/base/BaseActivity;

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseFragment;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/ayma/commonerp/base/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->showTipsOnTop(Ljava/lang/String;)V

    goto :goto_0

    .line 385
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/base/BaseFragment;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected showTitle()V
    .locals 4

    const v0, 0x7f0800e8

    .line 73
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/base/BaseFragment;->$(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseFragment;->setTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ayma/commonerp/base/BaseFragment;->baseActivity:Lcom/ayma/commonerp/base/BaseActivity;

    if-nez v3, :cond_1

    const-string v3, ""

    goto :goto_0

    :cond_1
    iget-object v3, v3, Lcom/ayma/commonerp/base/BaseActivity;->runningMode:Ljava/lang/String;

    :goto_0
    aput-object v3, v1, v2

    const-string v2, "%s%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 306
    new-instance v0, Lcom/ayma/base/util/ToastCompat;

    invoke-direct {v0}, Lcom/ayma/base/util/ToastCompat;-><init>()V

    iget-object v1, p0, Lcom/ayma/commonerp/base/BaseFragment;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/ayma/base/util/ToastCompat;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method protected showUserInfo()V
    .locals 2

    const v0, 0x7f08028a

    .line 81
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/base/BaseFragment;->$(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseFragment;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x7f080289

    .line 85
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/base/BaseFragment;->$(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 87
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseFragment;->getTrainInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v0, 0x7f080288

    .line 89
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/base/BaseFragment;->$(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 91
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseFragment;->getGoDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public updateInfo(Lcom/ayma/commonerp/bean/UpdateInfoBean;Z)V
    .locals 0

    return-void
.end method
