.class public abstract Lcom/ayma/commonerp/base/BaseActivity;
.super Lcom/ayma/base/mvp/MvpBaseActivity;
.source "BaseActivity.java"

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
        "Lcom/ayma/base/mvp/MvpBaseActivity<",
        "TV;TT;>;",
        "Lcom/ayma/commonerp/base/IBaseView;"
    }
.end annotation


# static fields
.field public static final FINISH_DISTANCE:I = 0xe1

.field public static final FINISH_DISTANCE_Y:I = 0x64

.field public static final KEY_IS_PRODUCTION_ENVIRONMENT:Ljava/lang/String; = "isProductionEnvironment"

.field public static final KEY_NET_ADDRESS:Ljava/lang/String; = "netAddress"

.field public static final RUNNING_TYPE_DEBUG:Ljava/lang/String; = "(\u9884\u53d1\u5e03)"

.field public static final RUNNING_TYPE_RELEASE:Ljava/lang/String; = ""


# instance fields
.field protected final CHECK_UPLOAD_DATA_SERVICE_INTERVAL:I

.field protected app:Lcom/ayma/commonerp/app/App;

.field protected handler:Landroid/os/Handler;

.field private infoDetailPopup:Landroid/widget/PopupWindow;

.field protected isLoading:Z

.field protected isResume:Z

.field private noticeToast:Lcom/ayma/commonerp/widget/NoticeToast;

.field private progressDialog:Landroid/app/ProgressDialog;

.field protected runningMode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/ayma/base/mvp/MvpBaseActivity;-><init>()V

    const-string v0, ""

    .line 79
    iput-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->runningMode:Ljava/lang/String;

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->handler:Landroid/os/Handler;

    const/16 v0, 0x7530

    .line 81
    iput v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->CHECK_UPLOAD_DATA_SERVICE_INTERVAL:I

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->isResume:Z

    .line 84
    iput-boolean v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->isLoading:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/base/BaseActivity;)Landroid/app/ProgressDialog;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/ayma/commonerp/base/BaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/base/BaseActivity;)Lcom/ayma/commonerp/widget/NoticeToast;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/ayma/commonerp/base/BaseActivity;->noticeToast:Lcom/ayma/commonerp/widget/NoticeToast;

    return-object p0
.end method

.method static synthetic access$201(Lcom/ayma/commonerp/base/BaseActivity;)Landroid/content/res/Resources;
    .locals 0

    .line 72
    invoke-super {p0}, Lcom/ayma/base/mvp/MvpBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$showAlert$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 486
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showAlert$2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 493
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private showUserInfo()V
    .locals 2

    const v0, 0x7f08028a

    .line 320
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/base/BaseActivity;->$(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x7f080289

    .line 324
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/base/BaseActivity;->$(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 326
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseActivity;->getTrainInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v0, 0x7f080288

    .line 328
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/base/BaseActivity;->$(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 330
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseActivity;->getGoDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected backClick(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected checkDevice()V
    .locals 4

    .line 746
    invoke-static {}, Lcom/ayma/commonerp/util/CommonUtil;->check()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 750
    :cond_0
    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "newland"

    .line 751
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide v2, 0x40c3880000000000L    # 10000.0

    if-nez v1, :cond_2

    const-string v1, "alps"

    .line 752
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 758
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/base/BaseActivity;->randomResult(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 759
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    mul-double v0, v0, v2

    double-to-long v0, v0

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    .line 760
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x5

    .line 753
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/base/BaseActivity;->randomResult(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 754
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    mul-double v0, v0, v2

    double-to-long v0, v0

    .line 755
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 764
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected checkLogin()V
    .locals 2

    .line 220
    sget-object v0, Lcom/ayma/commonerp/config/Constants;->notNeedLoginList:Ljava/util/List;

    iget-object v1, p0, Lcom/ayma/commonerp/base/BaseActivity;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->TOKEN:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->userName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "\u8bf7\u5148\u767b\u5f55"

    .line 222
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/base/BaseActivity;->showToast(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->app:Lcom/ayma/commonerp/app/App;

    invoke-virtual {v0}, Lcom/ayma/commonerp/app/App;->finishAll()V

    .line 224
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->show(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method protected checkPermissions()V
    .locals 5

    .line 233
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroid/app/Activity;)V

    const-string v1, "android.permission.CAMERA"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v4, "android.permission.READ_PHONE_STATE"

    .line 234
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->requestEach([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/base/-$$Lambda$BaseActivity$-GE6Sety9kLpcIEjSbin5ipID8I;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/base/-$$Lambda$BaseActivity$-GE6Sety9kLpcIEjSbin5ipID8I;-><init>(Lcom/ayma/commonerp/base/BaseActivity;)V

    .line 236
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public finish()V
    .locals 2

    .line 565
    invoke-super {p0}, Lcom/ayma/base/mvp/MvpBaseActivity;->finish()V

    const v0, 0x7f01000d

    const v1, 0x7f010010

    .line 566
    invoke-virtual {p0, v0, v1}, Lcom/ayma/commonerp/base/BaseActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public finishActivity()V
    .locals 0

    .line 560
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseActivity;->finish()V

    return-void
.end method

.method public finishAll()V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->app:Lcom/ayma/commonerp/app/App;

    invoke-virtual {v0}, Lcom/ayma/commonerp/app/App;->finishAll()V

    return-void
.end method

.method public getGoDate()Ljava/lang/String;
    .locals 4

    const-string v0, "-"

    const-string v1, "/"

    .line 346
    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->TOKEN:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "\u767b\u5f55\u5f02\u5e38\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    .line 347
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/base/BaseActivity;->showToast(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->app:Lcom/ayma/commonerp/app/App;

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0}, Lcom/ayma/commonerp/app/App;->finishAll()V

    .line 351
    :cond_0
    invoke-static {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->show(Landroid/content/Context;)V

    const-string v0, ""

    return-object v0

    .line 356
    :cond_1
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

    .line 358
    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public getGoDateNonePrefix()Ljava/lang/String;
    .locals 4

    const-string v0, "-"

    const-string v1, "/"

    .line 368
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

    .line 370
    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method protected abstract getLayoutId()I
.end method

.method public getPermissionCode()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected getSortIcon(Z)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 733
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    const p1, 0x7f0c0032

    goto :goto_0

    :cond_0
    const p1, 0x7f0c0033

    :goto_0
    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 734
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 735
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    return-object v0
.end method

.method public getTableBackground(I)I
    .locals 0

    .line 865
    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const p1, 0x7f070076

    goto :goto_0

    :cond_0
    const p1, 0x7f070077

    :goto_0
    return p1
.end method

.method public getTrainInfo()Ljava/lang/String;
    .locals 1

    .line 341
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->trainName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 2

    .line 336
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
    .locals 3

    double-to-int v0, p1

    int-to-double v0, v0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected hideBack()V
    .locals 2

    const v0, 0x7f0800e5

    .line 149
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/base/BaseActivity;->$(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 151
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideInfoDetailPopup()Z
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->infoDetailPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->infoDetailPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 667
    iput-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->infoDetailPopup:Landroid/widget/PopupWindow;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hideLoading()V
    .locals 4

    .line 428
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 430
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->handler:Landroid/os/Handler;

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/ayma/commonerp/base/BaseActivity$3;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/base/BaseActivity$3;-><init>(Lcom/ayma/commonerp/base/BaseActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public hideSoftKeyboard()V
    .locals 3

    const-string v0, "input_method"

    .line 381
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/base/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 382
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseActivity;->getCurrentFocus()Landroid/view/View;

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

    const-string v0, "input_method"

    .line 392
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/base/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_0

    .line 393
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 394
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

.method public initAnim()V
    .locals 2

    const v0, 0x7f01000c

    const v1, 0x7f01000f

    .line 141
    invoke-virtual {p0, v0, v1}, Lcom/ayma/commonerp/base/BaseActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public judgeRunningMode()V
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isProductionEnvironment"

    invoke-static {v0, v2, v1}, Lcom/ayma/base/util/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 313
    iput-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->runningMode:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "(\u9884\u53d1\u5e03)"

    .line 315
    iput-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->runningMode:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public synthetic lambda$checkPermissions$0$BaseActivity(Lcom/tbruyelle/rxpermissions2/Permission;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 237
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/Permission;->granted:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    iget-boolean p1, p1, Lcom/tbruyelle/rxpermissions2/Permission;->shouldShowRequestPermissionRationale:Z

    if-eqz p1, :cond_1

    const-string p1, "\u7533\u8bf7\u7684\u6743\u9650\u4e3a\u5fc5\u8981\u6743\u9650\uff0c\u8bf7\u52a1\u5fc5\u6388\u4e88"

    .line 241
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->showToast(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseActivity;->checkPermissions()V

    goto :goto_0

    .line 246
    :cond_1
    new-instance p1, Lcom/ayma/commonerp/base/BaseActivity$2;

    invoke-direct {p1, p0}, Lcom/ayma/commonerp/base/BaseActivity$2;-><init>(Lcom/ayma/commonerp/base/BaseActivity;)V

    const-string v0, "\u63d0\u793a"

    const-string v1, "\u60a8\u5df2\u8bbe\u7f6e\u62d2\u7edd\u4e86\u90e8\u5206\u6743\u9650\u5e76\u4e0d\u518d\u8be2\u95ee,\u7cfb\u7edf\u53ef\u80fd\u4f1a\u65e0\u6cd5\u6b63\u5e38\u4f7f\u7528,\u8bf7\u5728\u6743\u9650\u8bbe\u7f6e\u4e2d\u7ed9\u4e88\u6444\u50cf\u5934\u4ee5\u53ca\u5b58\u50a8\u6743\u9650,\u5176\u4e2d\u6444\u50cf\u5934\u6743\u9650\u7528\u4e8e\u626b\u7801,\u5b58\u50a8\u6743\u9650\u7528\u4e8e\u4fdd\u5b58\u5fc5\u8981\u6587\u4ef6"

    const-string v2, "\u53bb\u6388\u6743"

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/ayma/commonerp/base/BaseActivity;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$showInfoDetailPopup$3$BaseActivity(Landroid/view/View;)V
    .locals 0

    .line 578
    iget-object p1, p0, Lcom/ayma/commonerp/base/BaseActivity;->infoDetailPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public needLogin()V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->show(Landroid/content/Context;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 675
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseActivity;->hideInfoDetailPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 678
    :cond_0
    invoke-super {p0}, Lcom/ayma/base/mvp/MvpBaseActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 99
    invoke-super {p0, p1}, Lcom/ayma/base/mvp/MvpBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseActivity;->getLayoutId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->setContentView(I)V

    .line 101
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 102
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseActivity;->initAnim()V

    .line 104
    invoke-static {}, Lcom/ayma/commonerp/app/App;->getInstance()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/app/App;

    iput-object p1, p0, Lcom/ayma/commonerp/base/BaseActivity;->app:Lcom/ayma/commonerp/app/App;

    .line 105
    invoke-virtual {p1, p0}, Lcom/ayma/commonerp/app/App;->addActivity(Landroid/app/Activity;)V

    .line 106
    sget-object p1, Lcom/ayma/commonerp/config/Constants;->notNeedLoginList:Ljava/util/List;

    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->TAG:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u8bf7\u5148\u767b\u5f55"

    .line 107
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->showToast(Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lcom/ayma/commonerp/base/BaseActivity;->app:Lcom/ayma/commonerp/app/App;

    invoke-virtual {p1}, Lcom/ayma/commonerp/app/App;->finishAll()V

    .line 109
    iget-object p1, p0, Lcom/ayma/commonerp/base/BaseActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->show(Landroid/content/Context;)V

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseActivity;->checkPermissions()V

    .line 112
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseActivity;->showUserInfo()V

    .line 113
    iget-object p1, p0, Lcom/ayma/commonerp/base/BaseActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/base/BasePresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/base/BasePresenter;->onCreate()V

    const p1, 0x7f0800e5

    .line 114
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->$(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 116
    new-instance v0, Lcom/ayma/commonerp/base/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/base/BaseActivity$1;-><init>(Lcom/ayma/commonerp/base/BaseActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 290
    iput-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->app:Lcom/ayma/commonerp/app/App;

    invoke-virtual {v0, p0}, Lcom/ayma/commonerp/app/App;->removeActivity(Landroid/app/Activity;)V

    .line 293
    invoke-super {p0}, Lcom/ayma/base/mvp/MvpBaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 282
    invoke-super {p0}, Lcom/ayma/base/mvp/MvpBaseActivity;->onPause()V

    const/4 v0, 0x0

    .line 283
    iput-boolean v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->isResume:Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 195
    invoke-super {p0, p1}, Lcom/ayma/base/mvp/MvpBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "token"

    .line 199
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->TOKEN:Ljava/lang/String;

    const-string v0, "trainName"

    .line 200
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->trainName:Ljava/lang/String;

    const-string v0, "trainId"

    .line 201
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    const-string v0, "storeId"

    .line 202
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->storeId:Ljava/lang/String;

    const-string v0, "goRideDate"

    .line 203
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    const-string v0, "userName"

    .line 204
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->userName:Ljava/lang/String;

    const-string v0, "userCode"

    .line 205
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    const-string v0, "userId"

    .line 206
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->userId:Ljava/lang/String;

    const-string v0, "teamId"

    .line 207
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->teamId:Ljava/lang/String;

    const-string v0, "teamName"

    .line 208
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->teamName:Ljava/lang/String;

    const-string v0, "companyId"

    .line 209
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    const-string v0, "company2Id"

    .line 210
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    const-string v0, "companyName"

    .line 211
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->companyName:Ljava/lang/String;

    const-string v0, "company2Name"

    .line 212
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->company2Name:Ljava/lang/String;

    const-string v0, "fleetId"

    .line 213
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/ayma/commonerp/app/AppUserData;->fleetId:Ljava/lang/String;

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 264
    invoke-super {p0}, Lcom/ayma/base/mvp/MvpBaseActivity;->onResume()V

    const/4 v0, 0x1

    .line 265
    iput-boolean v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->isResume:Z

    .line 266
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseActivity;->judgeRunningMode()V

    .line 267
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseActivity;->showTitle()V

    .line 268
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseActivity;->checkLogin()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 175
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->TOKEN:Ljava/lang/String;

    const-string v1, "token"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->trainName:Ljava/lang/String;

    const-string v1, "trainName"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    const-string v1, "trainId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->storeId:Ljava/lang/String;

    const-string v1, "storeId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    const-string v1, "goRideDate"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->userName:Ljava/lang/String;

    const-string v1, "userName"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    const-string v1, "userCode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->userId:Ljava/lang/String;

    const-string v1, "userId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->teamId:Ljava/lang/String;

    const-string v1, "teamId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->teamName:Ljava/lang/String;

    const-string v1, "teamName"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    const-string v1, "companyId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    const-string v1, "company2Id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->companyName:Ljava/lang/String;

    const-string v1, "companyName"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->company2Name:Ljava/lang/String;

    const-string v1, "company2Name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->fleetId:Ljava/lang/String;

    const-string v1, "fleetId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-super {p0, p1}, Lcom/ayma/base/mvp/MvpBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 699
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p1, "input_method"

    .line 703
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 704
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result p1

    return p1

    .line 706
    :cond_0
    invoke-super {p0, p1}, Lcom/ayma/base/mvp/MvpBaseActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public randomResult(I)Z
    .locals 4

    .line 779
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/16 p1, 0x5a

    :cond_0
    if-ge v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public resetDialogWidth(Landroid/app/AlertDialog;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 883
    :cond_0
    new-instance v0, Lcom/ayma/commonerp/base/BaseActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/base/BaseActivity$7;-><init>(Lcom/ayma/commonerp/base/BaseActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/base/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetSortIcon(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setAutoSizeConfig()V
    .locals 1

    .line 869
    new-instance v0, Lcom/ayma/commonerp/base/BaseActivity$6;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/base/BaseActivity$6;-><init>(Lcom/ayma/commonerp/base/BaseActivity;)V

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/base/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setResultCode(I)V
    .locals 0

    .line 555
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->setResult(I)V

    return-void
.end method

.method public setTableBackground(Landroid/view/View;I)V
    .locals 0

    .line 857
    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_0

    const p2, 0x7f070076

    .line 858
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const p2, 0x7f070077

    .line 860
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
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

    .line 469
    invoke-virtual/range {v0 .. v7}, Lcom/ayma/commonerp/base/BaseActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method public showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 2

    .line 474
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 477
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ayma/commonerp/base/BaseActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 478
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 479
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 481
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 482
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 484
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    if-nez p4, :cond_3

    .line 486
    sget-object p1, Lcom/ayma/commonerp/base/-$$Lambda$BaseActivity$eESNWlyeBYJXU6Eg0NxBl-KcsgU;->INSTANCE:Lcom/ayma/commonerp/base/-$$Lambda$BaseActivity$eESNWlyeBYJXU6Eg0NxBl-KcsgU;

    invoke-virtual {v0, p3, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 488
    :cond_3
    invoke-virtual {v0, p3, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 491
    :cond_4
    :goto_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    if-nez p6, :cond_5

    .line 493
    sget-object p1, Lcom/ayma/commonerp/base/-$$Lambda$BaseActivity$YauXw4vWlM9hPLg7wEBoFEa8un4;->INSTANCE:Lcom/ayma/commonerp/base/-$$Lambda$BaseActivity$YauXw4vWlM9hPLg7wEBoFEa8un4;

    invoke-virtual {v0, p5, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 495
    :cond_5
    invoke-virtual {v0, p5, p6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 498
    :cond_6
    :goto_1
    invoke-virtual {v0, p7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 499
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 500
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseActivity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_7

    .line 501
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 502
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->resetDialogWidth(Landroid/app/AlertDialog;)V

    :cond_7
    return-void
.end method

.method public showInfoDetailPopup(Lcom/ayma/commonerp/behavior/InfoDetailBehavior;)V
    .locals 6

    .line 572
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->infoDetailPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 573
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00f4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 574
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/ayma/commonerp/base/BaseActivity;->infoDetailPopup:Landroid/widget/PopupWindow;

    goto :goto_0

    .line 576
    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    :goto_0
    const v1, 0x7f0807a5

    .line 578
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/base/-$$Lambda$BaseActivity$S1VNn408TqDjE6su6WSNvCO2KCU;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/base/-$$Lambda$BaseActivity$S1VNn408TqDjE6su6WSNvCO2KCU;-><init>(Lcom/ayma/commonerp/base/BaseActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f08073b

    .line 580
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/ayma/commonerp/behavior/InfoDetailBehavior;->goodsCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    invoke-interface {p1}, Lcom/ayma/commonerp/behavior/InfoDetailBehavior;->goodsBarCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const v1, 0x7f080738

    .line 583
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f080737

    .line 584
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 585
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 586
    invoke-interface {p1}, Lcom/ayma/commonerp/behavior/InfoDetailBehavior;->goodsBarCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v1, 0x7f080744

    .line 589
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/ayma/commonerp/behavior/InfoDetailBehavior;->goodsName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    invoke-interface {p1}, Lcom/ayma/commonerp/behavior/InfoDetailBehavior;->goodsSmallType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_3

    const v1, 0x7f080751

    .line 592
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f080750

    .line 593
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 594
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 595
    invoke-interface {p1}, Lcom/ayma/commonerp/behavior/InfoDetailBehavior;->goodsBigType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 596
    invoke-interface {p1}, Lcom/ayma/commonerp/behavior/InfoDetailBehavior;->goodsBigType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-interface {p1}, Lcom/ayma/commonerp/behavior/InfoDetailBehavior;->goodsSmallType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "%s->%s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 598
    :cond_2
    invoke-interface {p1}, Lcom/ayma/commonerp/behavior/InfoDetailBehavior;->goodsSmallType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    :cond_3
    :goto_1
    invoke-interface {p1}, Lcom/ayma/commonerp/behavior/InfoDetailBehavior;->goodsCompany2Name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const v1, 0x7f08073e

    .line 603
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f08073d

    .line 604
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 605
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 606
    invoke-interface {p1}, Lcom/ayma/commonerp/behavior/InfoDetailBehavior;->goodsCompany2Name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    :cond_4
    invoke-interface {p1}, Lcom/ayma/commonerp/behavior/InfoDetailBehavior;->goodsBirthday()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const v1, 0x7f08073a

    .line 610
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f080739

    .line 611
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 612
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 613
    invoke-interface {p1}, Lcom/ayma/commonerp/behavior/InfoDetailBehavior;->goodsBirthday()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    :cond_5
    invoke-interface {p1}, Lcom/ayma/commonerp/behavior/InfoDetailBehavior;->goodsValidityPeriod()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const v1, 0x7f080753

    .line 617
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f080752

    .line 618
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 619
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 620
    invoke-interface {p1}, Lcom/ayma/commonerp/behavior/InfoDetailBehavior;->goodsValidityPeriod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    :cond_6
    invoke-interface {p1}, Lcom/ayma/commonerp/behavior/InfoDetailBehavior;->goodsSalePrice()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const v1, 0x7f080747

    .line 624
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f080746

    .line 625
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 626
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 627
    invoke-interface {p1}, Lcom/ayma/commonerp/behavior/InfoDetailBehavior;->goodsSalePrice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    :cond_7
    invoke-interface {p1}, Lcom/ayma/commonerp/behavior/InfoDetailBehavior;->goodsPriceValidityPeriod()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const v1, 0x7f080749

    .line 631
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f080748

    .line 632
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 633
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 634
    invoke-interface {p1}, Lcom/ayma/commonerp/behavior/InfoDetailBehavior;->goodsPriceValidityPeriod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    :cond_8
    invoke-interface {p1}, Lcom/ayma/commonerp/behavior/InfoDetailBehavior;->goodsFactory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const v1, 0x7f080741

    .line 638
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f080740

    .line 639
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 640
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 641
    invoke-interface {p1}, Lcom/ayma/commonerp/behavior/InfoDetailBehavior;->goodsFactory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    :cond_9
    invoke-interface {p1}, Lcom/ayma/commonerp/behavior/InfoDetailBehavior;->goodsSupplierName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const v1, 0x7f08074c

    .line 645
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f08074b

    .line 646
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 647
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 648
    invoke-interface {p1}, Lcom/ayma/commonerp/behavior/InfoDetailBehavior;->goodsSupplierName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    :cond_a
    invoke-interface {p1}, Lcom/ayma/commonerp/behavior/InfoDetailBehavior;->goodsSupplierValidityPeriod()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const v1, 0x7f08074e

    .line 652
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f08074d

    .line 653
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 654
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 655
    invoke-interface {p1}, Lcom/ayma/commonerp/behavior/InfoDetailBehavior;->goodsSupplierValidityPeriod()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    :cond_b
    iget-object p1, p0, Lcom/ayma/commonerp/base/BaseActivity;->infoDetailPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 658
    iget-object p1, p0, Lcom/ayma/commonerp/base/BaseActivity;->infoDetailPopup:Landroid/widget/PopupWindow;

    const v0, 0x7f1102ea

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    const p1, 0x1020002

    .line 659
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 660
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->infoDetailPopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x51

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public showLoading()V
    .locals 1

    const-string v0, "\u6b63\u5728\u52a0\u8f7d..."

    .line 404
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/base/BaseActivity;->showLoading(Ljava/lang/String;)V

    return-void
.end method

.method public showLoading(Ljava/lang/String;)V
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 410
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/ayma/commonerp/base/BaseActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    .line 411
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 412
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f1102eb

    .line 414
    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_0
    const/4 v0, 0x1

    .line 417
    iput-boolean v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->isLoading:Z

    .line 418
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 419
    iget-object p1, p0, Lcom/ayma/commonerp/base/BaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 420
    iget-object p1, p0, Lcom/ayma/commonerp/base/BaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->resetDialogWidth(Landroid/app/AlertDialog;)V

    return-void
.end method

.method public showNoticeToast(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 508
    invoke-virtual {p0, p1, v0}, Lcom/ayma/commonerp/base/BaseActivity;->showNoticeToast(Ljava/lang/String;I)V

    return-void
.end method

.method public showNoticeToast(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 523
    invoke-virtual {p0, p1, p2, v0}, Lcom/ayma/commonerp/base/BaseActivity;->showNoticeToast(Ljava/lang/String;II)V

    return-void
.end method

.method public showNoticeToast(Ljava/lang/String;II)V
    .locals 2

    .line 528
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->noticeToast:Lcom/ayma/commonerp/widget/NoticeToast;

    if-nez v0, :cond_1

    .line 532
    new-instance v0, Lcom/ayma/commonerp/widget/NoticeToast;

    iget-object v1, p0, Lcom/ayma/commonerp/base/BaseActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/widget/NoticeToast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity;->noticeToast:Lcom/ayma/commonerp/widget/NoticeToast;

    .line 533
    invoke-virtual {v0, p3}, Lcom/ayma/commonerp/widget/NoticeToast;->initToast(I)V

    .line 534
    iget-object p3, p0, Lcom/ayma/commonerp/base/BaseActivity;->noticeToast:Lcom/ayma/commonerp/widget/NoticeToast;

    const/16 v0, 0x11

    invoke-virtual {p3, v0}, Lcom/ayma/commonerp/widget/NoticeToast;->setGravity(I)V

    .line 536
    :cond_1
    iget-object p3, p0, Lcom/ayma/commonerp/base/BaseActivity;->noticeToast:Lcom/ayma/commonerp/widget/NoticeToast;

    invoke-virtual {p3, p2}, Lcom/ayma/commonerp/widget/NoticeToast;->setMessageType(I)V

    .line 537
    iget-object p2, p0, Lcom/ayma/commonerp/base/BaseActivity;->noticeToast:Lcom/ayma/commonerp/widget/NoticeToast;

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/widget/NoticeToast;->setText(Ljava/lang/String;)V

    .line 538
    new-instance p1, Lcom/ayma/commonerp/base/BaseActivity$4;

    invoke-direct {p1, p0}, Lcom/ayma/commonerp/base/BaseActivity$4;-><init>(Lcom/ayma/commonerp/base/BaseActivity;)V

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showNoticeToastError(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 513
    invoke-virtual {p0, p1, v0}, Lcom/ayma/commonerp/base/BaseActivity;->showNoticeToast(Ljava/lang/String;I)V

    return-void
.end method

.method public showNoticeToastOk(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 518
    invoke-virtual {p0, p1, v0}, Lcom/ayma/commonerp/base/BaseActivity;->showNoticeToast(Ljava/lang/String;I)V

    return-void
.end method

.method protected showRightBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2

    const v0, 0x7f0800e6

    .line 164
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/base/BaseActivity;->$(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 166
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected showRightBtnText(Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f0800e6

    .line 156
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/base/BaseActivity;->$(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 158
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
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

    .line 463
    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/base/BaseActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public showSingleAlertNoAction(Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, ""

    .line 448
    invoke-virtual {p0, v0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->showSingleAlertNoAction(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showSingleAlertNoAction(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "\u786e\u5b9a"

    .line 453
    invoke-virtual {p0, p1, p2, v0}, Lcom/ayma/commonerp/base/BaseActivity;->showSingleAlertNoAction(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showSingleAlertNoAction(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 458
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ayma/commonerp/base/BaseActivity;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public showTipsOnTop(Ljava/lang/String;)V
    .locals 4

    const v0, 0x7f0800e4

    .line 786
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 788
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->showToast(Ljava/lang/String;)V

    return-void

    :cond_0
    const v1, 0x7f0800e7

    .line 791
    invoke-virtual {p0, v1}, Lcom/ayma/commonerp/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 793
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 796
    :cond_1
    iget-object v2, p0, Lcom/ayma/commonerp/base/BaseActivity;->handler:Landroid/os/Handler;

    if-nez v2, :cond_2

    .line 797
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 800
    :cond_2
    check-cast v1, Landroid/widget/TextView;

    .line 801
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 802
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 803
    iget-object p1, p0, Lcom/ayma/commonerp/base/BaseActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/ayma/commonerp/base/BaseActivity$5;

    invoke-direct {v1, p0, v0}, Lcom/ayma/commonerp/base/BaseActivity$5;-><init>(Lcom/ayma/commonerp/base/BaseActivity;Landroid/view/View;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected showTitle()V
    .locals 4

    const v0, 0x7f0800e8

    .line 273
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/base/BaseActivity;->$(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 277
    :cond_0
    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseActivity;->setTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ayma/commonerp/base/BaseActivity;->runningMode:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "%s%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 550
    new-instance v0, Lcom/ayma/base/util/ToastCompat;

    invoke-direct {v0}, Lcom/ayma/base/util/ToastCompat;-><init>()V

    iget-object v1, p0, Lcom/ayma/commonerp/base/BaseActivity;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/ayma/base/util/ToastCompat;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public updateInfo(Lcom/ayma/commonerp/bean/UpdateInfoBean;Z)V
    .locals 5

    const-string v0, "http://"

    .line 817
    :try_start_0
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UpdateInfoBean;->getVerCode()I

    move-result v1

    const/16 v2, 0x10b

    if-gt v1, v2, :cond_1

    if-nez p2, :cond_0

    const-string p1, "\u5f53\u524d\u5df2\u662f\u6700\u65b0\u7248\u672c\n\u5f53\u524d\u7248\u672c\uff1a1.0.46.48"

    .line 820
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->showToast(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 824
    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    .line 826
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UpdateInfoBean;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "\u5f53\u524d\u7248\u672c\uff1a1.0.46.48\n\u6700\u65b0\u7248\u672c\uff1a"

    const-string v4, "content"

    if-eqz v2, :cond_2

    .line 829
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UpdateInfoBean;->getVerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 831
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UpdateInfoBean;->getVerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\u66f4\u65b0\u5185\u5bb9\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UpdateInfoBean;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v2, "tips"

    .line 833
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UpdateInfoBean;->getTips()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UpdateInfoBean;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    .line 836
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "https://"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "versionCode"

    .line 838
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "isCheckMd5"

    const/4 v1, 0x0

    .line 840
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "isForceUpdate"

    .line 844
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/UpdateInfoBean;->isEnforceUpdate()Z

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "cancelable"

    .line 846
    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 847
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseActivity;->setAutoSizeConfig()V

    .line 848
    invoke-static {p0, p2}, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->show(Landroidx/fragment/app/FragmentActivity;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 850
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u66f4\u65b0\u5f02\u5e38\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/ayma/commonerp/base/BaseActivity;->showToast(Ljava/lang/String;)V

    .line 851
    invoke-static {}, Lcom/ayma/base/util/CrashHandler;->getInstance()Lcom/ayma/base/util/CrashHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ayma/base/util/CrashHandler;->saveCatchInfo2File(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 852
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
