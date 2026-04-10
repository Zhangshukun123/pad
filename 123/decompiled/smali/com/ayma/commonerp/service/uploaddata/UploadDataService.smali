.class public Lcom/ayma/commonerp/service/uploaddata/UploadDataService;
.super Landroid/app/Service;
.source "UploadDataService.java"

# interfaces
.implements Lcom/ayma/commonerp/service/uploaddata/UploadDataContact$IUploadDataView;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static TAG:Ljava/lang/String; = "UploadDataService"


# instance fields
.field private presenter:Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static isRunning(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "activity"

    .line 66
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/16 v0, 0x3c

    .line 68
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p0

    .line 69
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 70
    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.ayma.commonerp.service.uploaddata.UploadDataService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static restart(Landroid/content/Context;)V
    .locals 0

    .line 122
    invoke-static {p0}, Lcom/ayma/commonerp/service/uploaddata/UploadDataService;->stop(Landroid/content/Context;)V

    .line 123
    invoke-static {p0}, Lcom/ayma/commonerp/service/uploaddata/UploadDataService;->start(Landroid/content/Context;)V

    return-void
.end method

.method private setForeground()V
    .locals 3

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/ayma/commonerp/service/uploaddata/UploadDataService;->initChannel()V

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-le v0, v1, :cond_0

    .line 82
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    const-string v1, "com.ayma.commonerp"

    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "\u4e2d\u56fd\u94c1\u8def\u9910\u996e"

    .line 83
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "\u6570\u636e\u4e0a\u4f20\u670d\u52a1\u6b63\u5728\u8fd0\u884c"

    .line 84
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x7f0c0016

    .line 85
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_0
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    :goto_0
    const-string v1, "notification"

    .line 90
    invoke-virtual {p0, v1}, Lcom/ayma/commonerp/service/uploaddata/UploadDataService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/16 v2, 0x58

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 91
    invoke-virtual {p0, v2, v0}, Lcom/ayma/commonerp/service/uploaddata/UploadDataService;->startForeground(ILandroid/app/Notification;)V

    :cond_1
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 4

    .line 105
    const-class v0, Lcom/ayma/commonerp/service/uploaddata/UploadDataService;

    invoke-static {p0}, Lcom/ayma/commonerp/service/uploaddata/UploadDataService;->isRunning(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 106
    monitor-enter v0

    .line 107
    :try_start_0
    invoke-static {p0}, Lcom/ayma/commonerp/service/uploaddata/UploadDataService;->isRunning(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 108
    sget-object v1, Lcom/ayma/commonerp/service/uploaddata/UploadDataService;->TAG:Ljava/lang/String;

    const-string v2, "service not running,start"

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    invoke-virtual {p0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 111
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-le v2, v3, :cond_0

    .line 112
    invoke-virtual {p0, v1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 117
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public static stop(Landroid/content/Context;)V
    .locals 2

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ayma/commonerp/service/uploaddata/UploadDataService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public finishActivity()V
    .locals 0

    return-void
.end method

.method public finishAll()V
    .locals 0

    return-void
.end method

.method public getApp()Lcom/ayma/commonerp/app/App;
    .locals 1

    .line 141
    invoke-virtual {p0}, Lcom/ayma/commonerp/service/uploaddata/UploadDataService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/app/App;

    return-object v0
.end method

.method public getGoDate()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGoDateNonePrefix()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPermissionCode()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrainInfo()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasDecimal(D)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public hideInfoDetailPopup()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hideLoading()V
    .locals 0

    return-void
.end method

.method public hideSoftKeyboard()V
    .locals 0

    return-void
.end method

.method public hideSoftKeyboard(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public init()V
    .locals 0

    .line 167
    invoke-virtual {p0}, Lcom/ayma/commonerp/service/uploaddata/UploadDataService;->initPresenter()V

    return-void
.end method

.method public initChannel()V
    .locals 5

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-le v0, v1, :cond_0

    const-string v0, "notification"

    .line 97
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/service/uploaddata/UploadDataService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 98
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x4

    const-string v3, "com.ayma.commonerp"

    const-string v4, "\u901a\u7528PDA"

    invoke-direct {v1, v3, v4, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v2, "\u6b63\u5728\u8fd0\u884c"

    .line 99
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method public initPresenter()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataService;->presenter:Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;

    invoke-virtual {p0}, Lcom/ayma/commonerp/service/uploaddata/UploadDataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;-><init>(Landroid/content/Context;Lcom/ayma/commonerp/service/uploaddata/UploadDataContact$IUploadDataView;)V

    iput-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataService;->presenter:Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;

    :cond_0
    return-void
.end method

.method public judgeRunningMode()V
    .locals 0

    return-void
.end method

.method public needLogin()V
    .locals 0

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 46
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 47
    sget-object v0, Lcom/ayma/commonerp/service/uploaddata/UploadDataService;->TAG:Ljava/lang/String;

    const-string v1, "\u6570\u636e\u4e0a\u4f20\u670d\u52a1\u5f00\u542f"

    invoke-static {v0, v1}, Lcom/ayma/commonerp/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lcom/ayma/commonerp/service/uploaddata/UploadDataService;->setForeground()V

    .line 49
    invoke-virtual {p0}, Lcom/ayma/commonerp/service/uploaddata/UploadDataService;->init()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 146
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 147
    sget-object v0, Lcom/ayma/commonerp/service/uploaddata/UploadDataService;->TAG:Ljava/lang/String;

    const-string v1, "\u6570\u636e\u4e0a\u4f20\u670d\u52a1\u5173\u95ed"

    invoke-static {v0, v1}, Lcom/ayma/commonerp/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataService;->presenter:Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->onDestroy()V

    :cond_0
    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataService;->presenter:Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;

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

.method public showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    return-void
.end method

.method public showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 0

    return-void
.end method

.method public showInfoDetailPopup(Lcom/ayma/commonerp/behavior/InfoDetailBehavior;)V
    .locals 0

    return-void
.end method

.method public showLoading()V
    .locals 0

    return-void
.end method

.method public showLoading(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showNoticeToast(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showNoticeToast(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public showNoticeToast(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public showNoticeToastError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showNoticeToastOk(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    return-void
.end method

.method public showSingleAlertNoAction(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public showSingleAlertNoAction(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public showSingleAlertNoAction(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public showTipsOnTop(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateInfo(Lcom/ayma/commonerp/bean/UpdateInfoBean;Z)V
    .locals 0

    return-void
.end method
