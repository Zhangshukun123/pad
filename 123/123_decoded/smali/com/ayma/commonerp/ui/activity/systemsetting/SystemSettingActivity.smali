.class public Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;
.super Lcom/ayma/commonerp/base/BaseActivity;
.source "SystemSettingActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingContact$ISystemSettingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseActivity<",
        "Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingContact$ISystemSettingView;",
        "Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingContact$ISystemSettingView;"
    }
.end annotation


# static fields
.field private static final COMPLETED:I = 0x0

.field private static final TYPE_NO_PASSWD:I = 0x11

.field private static final TYPE_WEP:I = 0x12

.field private static final TYPE_WPA:I = 0x13


# instance fields
.field aSwitch:Landroidx/appcompat/widget/SwitchCompat;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080257
    .end annotation
.end field

.field private adapter:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter;

.field private audioMngHelper:Lcom/ayma/commonerp/util/AudioMngHelper;

.field layoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field protected mWifiAdmin:Lcom/ayma/commonerp/util/WifiAdmin;

.field rv:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0806c2
    .end annotation
.end field

.field sbAudio:Landroid/widget/SeekBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080254
    .end annotation
.end field

.field private scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

.field seekBarLight:Landroid/widget/SeekBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080255
    .end annotation
.end field

.field srl:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080256
    .end annotation
.end field

.field tvConnection:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08078c
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseActivity;-><init>()V

    .line 562
    new-instance v0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$13;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$13;-><init>(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;F)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->setScannerBarLight(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;)Landroid/os/Handler;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->isResume:Z

    return p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;)Lcom/ayma/commonerp/util/AudioMngHelper;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->audioMngHelper:Lcom/ayma/commonerp/util/AudioMngHelper;

    return-object p0
.end method

.method private getSystemBrightness()I
    .locals 2

    .line 288
    :try_start_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 290
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setScannerBarLight(F)V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 276
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2

    .line 94
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public checkLocationPermission()V
    .locals 3

    .line 297
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroid/app/Activity;)V

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 298
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->requestEach([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/activity/systemsetting/-$$Lambda$SystemSettingActivity$xDE34RCpFhXIThTdwCrjW8BqBXI;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/systemsetting/-$$Lambda$SystemSettingActivity$xDE34RCpFhXIThTdwCrjW8BqBXI;-><init>(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;)V

    .line 300
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public dealScanResult(Ljava/lang/String;)V
    .locals 9

    const-string v0, ";"

    .line 360
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 361
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 362
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p1, v3

    const-string v5, ":"

    .line 363
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 366
    :cond_0
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 367
    array-length v5, v4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v5, v6, :cond_1

    .line 368
    aget-object v5, v4, v2

    aget-object v4, v4, v7

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 369
    :cond_1
    array-length v5, v4

    const/4 v8, 0x3

    if-ne v5, v8, :cond_2

    .line 370
    aget-object v5, v4, v7

    aget-object v4, v4, v6

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string p1, "S"

    .line 373
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "T"

    .line 374
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "P"

    .line 375
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 376
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v1, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    .line 380
    :cond_4
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->mWifiAdmin:Lcom/ayma/commonerp/util/WifiAdmin;

    invoke-virtual {v2, p0}, Lcom/ayma/commonerp/util/WifiAdmin;->checkState(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "\u6b63\u5728\u5f00\u542fWiFi"

    .line 381
    invoke-virtual {p0, v2}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->showToast(Ljava/lang/String;)V

    .line 382
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->mWifiAdmin:Lcom/ayma/commonerp/util/WifiAdmin;

    invoke-virtual {v2, p0}, Lcom/ayma/commonerp/util/WifiAdmin;->openWifi(Landroid/content/Context;)V

    .line 385
    :cond_5
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "\u626b\u63cf\u5230\u53ef\u7528WiFi"

    .line 386
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070092

    .line 387
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WiFi\u540d\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 388
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$10;

    invoke-direct {v3, p0}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$10;-><init>(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;)V

    const-string v4, "\u53d6\u6d88"

    .line 389
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$9;

    invoke-direct {v3, p0, v1, p1, v0}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$9;-><init>(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "\u52a0\u5165WiFi"

    .line 394
    invoke-virtual {v2, p1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 407
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 408
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 409
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->resetDialogWidth(Landroid/app/AlertDialog;)V

    return-void

    :cond_6
    :goto_2
    const-string p1, "\u7f51\u7edc\u53c2\u6570\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u4e8c\u7ef4\u7801\u5185\u5bb9"

    .line 377
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b003f

    return v0
.end method

.method public init()V
    .locals 4

    .line 173
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 174
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->seekBarLight:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 175
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->seekBarLight:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->getSystemBrightness()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 176
    new-instance v0, Lcom/ayma/commonerp/util/WifiAdmin;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/util/WifiAdmin;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->mWifiAdmin:Lcom/ayma/commonerp/util/WifiAdmin;

    .line 177
    new-instance v0, Lcom/ayma/commonerp/util/AudioMngHelper;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/ayma/commonerp/util/AudioMngHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->audioMngHelper:Lcom/ayma/commonerp/util/AudioMngHelper;

    .line 178
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->sbAudio:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 179
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->sbAudio:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->audioMngHelper:Lcom/ayma/commonerp/util/AudioMngHelper;

    invoke-virtual {v1}, Lcom/ayma/commonerp/util/AudioMngHelper;->getSystemCurrentVolume()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 180
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    .line 181
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 182
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 184
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->seekBarLight:Landroid/widget/SeekBar;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$1;-><init>(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 200
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->aSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$2;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$2;-><init>(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 219
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->mWifiAdmin:Lcom/ayma/commonerp/util/WifiAdmin;

    invoke-virtual {v0, p0}, Lcom/ayma/commonerp/util/WifiAdmin;->checkState(Landroid/content/Context;)Z

    move-result v0

    .line 220
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->aSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 221
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->checkLocationPermission()V

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->tvConnection:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->tvConnection:Landroid/widget/TextView;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$3;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$3;-><init>(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 232
    :cond_0
    new-instance v0, Lcom/ayma/commonerp/util/ScanUtil;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->context:Landroid/content/Context;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ayma/commonerp/util/ScanUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    .line 233
    new-instance v1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$4;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$4;-><init>(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/util/ScanUtil;->registerScanReceiver(Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;)V

    .line 247
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->srl:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$5;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$5;-><init>(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 253
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->sbAudio:Landroid/widget/SeekBar;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$6;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$6;-><init>(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->initPresenter()Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingPresenter;
    .locals 2

    .line 115
    new-instance v0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public inputWifiPwd(Landroid/net/wifi/ScanResult;)V
    .locals 8

    .line 428
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 429
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->mWifiAdmin:Lcom/ayma/commonerp/util/WifiAdmin;

    invoke-virtual {v1}, Lcom/ayma/commonerp/util/WifiAdmin;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->mWifiAdmin:Lcom/ayma/commonerp/util/WifiAdmin;

    invoke-virtual {v1}, Lcom/ayma/commonerp/util/WifiAdmin;->getBSSID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5df2\u8fde\u63a5:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 436
    :cond_0
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->mWifiAdmin:Lcom/ayma/commonerp/util/WifiAdmin;

    iget-object p1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/ayma/commonerp/util/WifiAdmin;->getCipherType(Ljava/lang/String;)Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;

    move-result-object p1

    sget-object v1, Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;->WIFI_CIPHER_NO_PASS:Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;

    const-string v2, ""

    const/4 v3, 0x1

    if-ne p1, v1, :cond_1

    .line 437
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->mWifiAdmin:Lcom/ayma/commonerp/util/WifiAdmin;

    invoke-virtual {p1}, Lcom/ayma/commonerp/util/WifiAdmin;->getNetworkId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/ayma/commonerp/util/WifiAdmin;->disconnectWifi(I)V

    .line 438
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->mWifiAdmin:Lcom/ayma/commonerp/util/WifiAdmin;

    invoke-virtual {p1, v0, v2, v3}, Lcom/ayma/commonerp/util/WifiAdmin;->createWifiInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/util/WifiAdmin;->addNetwork(Landroid/net/wifi/WifiConfiguration;)V

    return-void

    :cond_1
    const-string p1, "wifi_password"

    const/4 v1, 0x0

    .line 442
    invoke-virtual {p0, p1, v1}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 443
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 444
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0b005b

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f08072b

    .line 445
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v0, v7, v1

    const-string v1, "\u8fde\u63a5\u5230\uff1a%s"

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080702

    .line 446
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    const v6, 0x7f080360

    .line 447
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 448
    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 449
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 450
    new-instance v1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$11;

    invoke-direct {v1, p0, v6, p1, v0}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$11;-><init>(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;Landroid/widget/EditText;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    const-string p1, "\u8fde\u63a5"

    invoke-virtual {v4, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 465
    new-instance p1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$12;

    invoke-direct {p1, p0}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$12;-><init>(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;)V

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {v4, v0, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 471
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 472
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 473
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 474
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->resetDialogWidth(Landroid/app/AlertDialog;)V

    return-void
.end method

.method public synthetic lambda$checkLocationPermission$0$SystemSettingActivity(Lcom/tbruyelle/rxpermissions2/Permission;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 301
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/Permission;->granted:Z

    if-eqz v0, :cond_0

    .line 303
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->aSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 304
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->scanWifi()V

    goto :goto_0

    .line 306
    :cond_0
    iget-boolean p1, p1, Lcom/tbruyelle/rxpermissions2/Permission;->shouldShowRequestPermissionRationale:Z

    if-eqz p1, :cond_1

    const-string p1, "\u5730\u7406\u4f4d\u7f6e\u6743\u9650\u4e3a\u626b\u63cf\u53ef\u7528WiFi\u5fc5\u8981\u6743\u9650\uff0c\u8bf7\u52a1\u5fc5\u6388\u4e88"

    .line 308
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->showToast(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->checkLocationPermission()V

    goto :goto_0

    .line 313
    :cond_1
    new-instance p1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$7;

    invoke-direct {p1, p0}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$7;-><init>(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;)V

    const-string v0, "\u63d0\u793a"

    const-string v1, "\u60a8\u5df2\u8bbe\u7f6e\u62d2\u7edd\u4e86\u5730\u7406\u6743\u9650\u5e76\u4e0d\u518d\u8be2\u95ee,\u65e0\u6cd5\u626b\u63cf\u53ef\u7528WiFi\uff0c\u8bf7\u5230\u8bbe\u7f6e\u4e2d\u6388\u4e88"

    const-string v2, "\u53bb\u6388\u6743"

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public notifyListChange(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->adapter:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter;

    if-nez v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 416
    new-instance v0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter;

    invoke-direct {v0, p0, p0, p1}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter;-><init>(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->adapter:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter;

    .line 417
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 418
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/ayma/commonerp/widget/SpacesItemDecoration;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->context:Landroid/content/Context;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Lcom/ayma/base/util/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/widget/SpacesItemDecoration;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_0

    .line 420
    :cond_0
    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter;->notifyDataSetChanged()V

    .line 422
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->rv:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 423
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->srl:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_2

    .line 140
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->hideLoading()V

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    const-string p1, "\u626b\u63cf\u5df2\u53d6\u6d88"

    .line 142
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->showToast(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    return-void

    :cond_1
    const-string p1, "codedContent"

    .line 148
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->dealScanResult(Ljava/lang/String;)V

    return-void

    .line 152
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/ayma/commonerp/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBtnConnect(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080252
        }
    .end annotation

    .line 157
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 161
    :cond_0
    new-instance p1, Lcom/yzq/zxinglibrary/bean/ZxingConfig;

    invoke-direct {p1}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;-><init>()V

    const/4 v0, 0x0

    .line 162
    invoke-virtual {p1, v0}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->setPlayBeep(Z)V

    const/4 v0, 0x1

    .line 163
    invoke-virtual {p1, v0}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->setShake(Z)V

    .line 164
    invoke-virtual {p1, v0}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->setFullScreenScan(Z)V

    .line 165
    invoke-virtual {p1, v0}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->setDecodeBarCode(Z)V

    .line 166
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/yzq/zxinglibrary/android/CaptureActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "zxingConfig"

    .line 167
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 p1, 0x3e7

    .line 168
    invoke-virtual {p0, v0, p1}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 109
    invoke-super {p0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->init()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/ayma/commonerp/util/ScanUtil;->unregisterScanReceiver()V

    .line 122
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->handler:Landroid/os/Handler;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 126
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->handler:Landroid/os/Handler;

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->mWifiAdmin:Lcom/ayma/commonerp/util/WifiAdmin;

    if-eqz v0, :cond_3

    .line 132
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->mWifiAdmin:Lcom/ayma/commonerp/util/WifiAdmin;

    .line 134
    :cond_3
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public scanWifi()V
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->mWifiAdmin:Lcom/ayma/commonerp/util/WifiAdmin;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$8;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$8;-><init>(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/ayma/commonerp/util/WifiAdmin;->startScan(Landroid/content/Context;Lcom/ayma/commonerp/util/WifiAdmin$ScanCallBack;)V

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 2

    .line 99
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
