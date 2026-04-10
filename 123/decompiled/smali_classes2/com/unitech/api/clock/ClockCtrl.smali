.class public Lcom/unitech/api/clock/ClockCtrl;
.super Ljava/lang/Object;
.source "ClockCtrl.java"


# static fields
.field private static final ACTION_BIND_SERVICE:Ljava/lang/String; = "com.unitech.dmservice.action.clock"

.field public static final BUNDLE_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final BUNDLE_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field private static ClockCtrlAidl:Lcom/unitech/dmservice/IClockCtrlAidl; = null

.field private static final PKG_API_SERVICE:Ljava/lang/String; = "com.unitech.dmservice"

.field public static final RESULT_CODE_ERROR:I = 0x1

.field public static final RESULT_CODE_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UnitechSDK"

.field private static mContext:Landroid/content/Context; = null

.field private static mServiceChecked:I = -0x1

.field private static mServiceHandler:Lcom/unitech/api/util/ServiceHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/unitech/api/clock/ClockCtrl;->mContext:Landroid/content/Context;

    .line 47
    sget-object v0, Lcom/unitech/api/clock/ClockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/unitech/api/util/ServiceHandler;

    .line 49
    invoke-direct {p0}, Lcom/unitech/api/clock/ClockCtrl;->createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v1

    const-string v2, "com.unitech.dmservice"

    const-string v3, "com.unitech.dmservice.action.clock"

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    sput-object v0, Lcom/unitech/api/clock/ClockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    .line 51
    :cond_0
    sget p1, Lcom/unitech/api/clock/ClockCtrl;->mServiceChecked:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 52
    invoke-direct {p0}, Lcom/unitech/api/clock/ClockCtrl;->checkClockCtrlService()V

    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/unitech/dmservice/IClockCtrlAidl;)Lcom/unitech/dmservice/IClockCtrlAidl;
    .locals 0

    .line 23
    sput-object p0, Lcom/unitech/api/clock/ClockCtrl;->ClockCtrlAidl:Lcom/unitech/dmservice/IClockCtrlAidl;

    return-object p0
.end method

.method private checkClockCtrlService()V
    .locals 5

    .line 57
    sget v0, Lcom/unitech/api/clock/ClockCtrl;->mServiceChecked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 64
    :cond_0
    sget-object v0, Lcom/unitech/api/clock/ClockCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 68
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.unitech.dmservice"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-string v2, "UnitechSDK"

    if-eqz v0, :cond_3

    const-string v0, "ClockCtrl, package com.unitech.dmservice is found."

    .line 75
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sput v3, Lcom/unitech/api/clock/ClockCtrl;->mServiceChecked:I

    goto :goto_1

    :cond_3
    const-string v0, "ClockCtrl, package com.unitech.dmservice is not found"

    .line 78
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sput v1, Lcom/unitech/api/clock/ClockCtrl;->mServiceChecked:I

    :goto_1
    return-void
.end method

.method private checkTimeZoneFormat(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeZone"
        }
    .end annotation

    const-string v0, "GMT(\\+|\\-)([0-9]|0[0-9]|1[0-9]|2[0-3]):[0|3][0]$"

    .line 600
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 601
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 602
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method private createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
    .locals 1

    .line 91
    new-instance v0, Lcom/unitech/api/clock/ClockCtrl$1;

    invoke-direct {v0, p0}, Lcom/unitech/api/clock/ClockCtrl$1;-><init>(Lcom/unitech/api/clock/ClockCtrl;)V

    return-object v0
.end method

.method private ensureNotOnMainThread(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 114
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "calling this from your main thread can lead to deadlock"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "errorCode",
            "errorMsg"
        }
    .end annotation

    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    .line 85
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "errorMsg"

    .line 86
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private tryToBindService()Z
    .locals 1

    .line 123
    :try_start_0
    sget-object v0, Lcom/unitech/api/clock/ClockCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unitech/api/clock/ClockCtrl;->ensureNotOnMainThread(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    sget-object v0, Lcom/unitech/api/clock/ClockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getManualTime()Landroid/os/Bundle;
    .locals 8

    const-string v0, "ManualTime"

    .line 395
    invoke-direct {p0}, Lcom/unitech/api/clock/ClockCtrl;->tryToBindService()Z

    .line 396
    sget-object v1, Lcom/unitech/api/clock/ClockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v1

    .line 399
    sget-object v3, Lcom/unitech/api/clock/ClockCtrl;->ClockCtrlAidl:Lcom/unitech/dmservice/IClockCtrlAidl;

    const/4 v4, 0x1

    const-string v5, ""

    if-eqz v3, :cond_0

    .line 403
    :try_start_0
    invoke-interface {v3}, Lcom/unitech/dmservice/IClockCtrlAidl;->getManualTime()Landroid/os/Bundle;

    move-result-object v3

    const-string v6, "errorCode"

    .line 405
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "errorMsg"

    .line 406
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 407
    invoke-direct {p0, v6, v7}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 409
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 410
    invoke-virtual {v6, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 413
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 414
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    const-string v0, "ClockCtrlAidl.getManualTime exception: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    goto :goto_0

    :cond_0
    const-string v0, "ClockCtrlAidl is null."

    .line 417
    invoke-direct {p0, v4, v0}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 420
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClockCtrl, getManualTime(), manualtime: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UnitechSDK"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    sget-object v0, Lcom/unitech/api/clock/ClockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v1, v2}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v6
.end method

.method public getNTPServer()Landroid/os/Bundle;
    .locals 8

    const-string v0, "NtpServer"

    .line 183
    invoke-direct {p0}, Lcom/unitech/api/clock/ClockCtrl;->tryToBindService()Z

    .line 184
    sget-object v1, Lcom/unitech/api/clock/ClockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v1

    const-string v3, "UnitechSDK"

    const-string v4, "ClockCtrl, getNTPServer().."

    .line 186
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sget-object v4, Lcom/unitech/api/clock/ClockCtrl;->ClockCtrlAidl:Lcom/unitech/dmservice/IClockCtrlAidl;

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 192
    :try_start_0
    invoke-interface {v4}, Lcom/unitech/dmservice/IClockCtrlAidl;->getNTPServer()Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "errorCode"

    .line 194
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "errorMsg"

    .line 195
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 196
    invoke-direct {p0, v6, v7}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 198
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 199
    invoke-virtual {v6, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClockCtrl, getNTPServer(), NtpServer:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 204
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 205
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "ClockCtrlAidl.getNTPServer exception: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    goto :goto_0

    :cond_0
    const-string v0, "ClockCtrlAidl is null."

    .line 208
    invoke-direct {p0, v5, v0}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 211
    :goto_0
    sget-object v0, Lcom/unitech/api/clock/ClockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v1, v2}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v6
.end method

.method public getTimeFormat()Landroid/os/Bundle;
    .locals 8

    const-string v0, "TimeFormat"

    .line 661
    invoke-direct {p0}, Lcom/unitech/api/clock/ClockCtrl;->tryToBindService()Z

    .line 662
    sget-object v1, Lcom/unitech/api/clock/ClockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v1

    .line 665
    sget-object v3, Lcom/unitech/api/clock/ClockCtrl;->ClockCtrlAidl:Lcom/unitech/dmservice/IClockCtrlAidl;

    const/4 v4, 0x1

    const/16 v5, 0xc

    if-eqz v3, :cond_0

    .line 669
    :try_start_0
    invoke-interface {v3}, Lcom/unitech/dmservice/IClockCtrlAidl;->getTimeFormat()Landroid/os/Bundle;

    move-result-object v3

    const-string v6, "errorCode"

    .line 671
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "errorMsg"

    .line 672
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 673
    invoke-direct {p0, v6, v7}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 675
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 676
    invoke-virtual {v6, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 679
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 680
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    const-string v0, "ClockCtrlAidl.getTimeFormat exception: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    goto :goto_0

    :cond_0
    const-string v0, "ClockCtrlAidl is null."

    .line 683
    invoke-direct {p0, v4, v0}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 686
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClockCtrl, getTimeFormat(), timeformat: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UnitechSDK"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    sget-object v0, Lcom/unitech/api/clock/ClockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v1, v2}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v6
.end method

.method public getTimeMode()Landroid/os/Bundle;
    .locals 8

    const-string v0, "TimeMode"

    .line 270
    invoke-direct {p0}, Lcom/unitech/api/clock/ClockCtrl;->tryToBindService()Z

    .line 271
    sget-object v1, Lcom/unitech/api/clock/ClockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v1

    .line 274
    sget-object v3, Lcom/unitech/api/clock/ClockCtrl;->ClockCtrlAidl:Lcom/unitech/dmservice/IClockCtrlAidl;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 278
    :try_start_0
    invoke-interface {v3}, Lcom/unitech/dmservice/IClockCtrlAidl;->getTimeMode()Landroid/os/Bundle;

    move-result-object v3

    const-string v6, "errorCode"

    .line 280
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "errorMsg"

    .line 281
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 282
    invoke-direct {p0, v6, v7}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 284
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 285
    :try_start_1
    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v3, 0x0

    .line 288
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-array v6, v5, [Ljava/lang/Object;

    .line 289
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    const-string v0, "ClockCtrlAidl.getTimeMode exception: %s"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    :goto_1
    move v4, v3

    goto :goto_2

    :cond_0
    const-string v0, "ClockCtrlAidl is null."

    .line 292
    invoke-direct {p0, v5, v0}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 295
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClockCtrl, getTimeMode(), mode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (0:manual, 1:auto)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UnitechSDK"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    sget-object v0, Lcom/unitech/api/clock/ClockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v1, v2}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v6
.end method

.method public getTimeZone()Landroid/os/Bundle;
    .locals 8

    const-string v0, "TimeZone"

    .line 567
    invoke-direct {p0}, Lcom/unitech/api/clock/ClockCtrl;->tryToBindService()Z

    .line 568
    sget-object v1, Lcom/unitech/api/clock/ClockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v1

    .line 571
    sget-object v3, Lcom/unitech/api/clock/ClockCtrl;->ClockCtrlAidl:Lcom/unitech/dmservice/IClockCtrlAidl;

    const/4 v4, 0x1

    const-string v5, ""

    if-eqz v3, :cond_0

    .line 575
    :try_start_0
    invoke-interface {v3}, Lcom/unitech/dmservice/IClockCtrlAidl;->getTimeZone()Landroid/os/Bundle;

    move-result-object v3

    const-string v6, "errorCode"

    .line 577
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "errorMsg"

    .line 578
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 579
    invoke-direct {p0, v6, v7}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 581
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 582
    invoke-virtual {v6, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 585
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 586
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    const-string v0, "ClockCtrlAidl.getTimeZone exception: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    goto :goto_0

    :cond_0
    const-string v0, "ClockCtrlAidl is null."

    .line 589
    invoke-direct {p0, v4, v0}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 592
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClockCtrl, getTimeZone(), ID:: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UnitechSDK"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    sget-object v0, Lcom/unitech/api/clock/ClockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v1, v2}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v6
.end method

.method public getTimeZoneMode()Landroid/os/Bundle;
    .locals 8

    const-string v0, "TimeZoneMode"

    .line 483
    invoke-direct {p0}, Lcom/unitech/api/clock/ClockCtrl;->tryToBindService()Z

    .line 484
    sget-object v1, Lcom/unitech/api/clock/ClockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v1

    .line 487
    sget-object v3, Lcom/unitech/api/clock/ClockCtrl;->ClockCtrlAidl:Lcom/unitech/dmservice/IClockCtrlAidl;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 491
    :try_start_0
    invoke-interface {v3}, Lcom/unitech/dmservice/IClockCtrlAidl;->getTimeZoneMode()Landroid/os/Bundle;

    move-result-object v3

    const-string v6, "errorCode"

    .line 493
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "errorMsg"

    .line 494
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 495
    invoke-direct {p0, v6, v7}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 497
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 498
    :try_start_1
    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v3, 0x0

    .line 501
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-array v6, v5, [Ljava/lang/Object;

    .line 502
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    const-string v0, "ClockCtrlAidl.getTimeZoneMode exception: %s"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    :goto_1
    move v4, v3

    goto :goto_2

    :cond_0
    const-string v0, "ClockCtrlAidl is null."

    .line 505
    invoke-direct {p0, v5, v0}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 508
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClockCtrl, getTimeZoneMode(), mode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (0:manual, 1:auto)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UnitechSDK"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    sget-object v0, Lcom/unitech/api/clock/ClockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v1, v2}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v6
.end method

.method public setManualDate(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "date"
        }
    .end annotation

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClockCtrl, setManualDate(), date: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [ex: 31/12/2019 (day/month/year)]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "ClockCtrl, setManualDate failed: date cannot be empty."

    .line 314
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 318
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/clock/ClockCtrl;->tryToBindService()Z

    .line 319
    sget-object v0, Lcom/unitech/api/clock/ClockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v2

    .line 321
    sget-object v0, Lcom/unitech/api/clock/ClockCtrl;->ClockCtrlAidl:Lcom/unitech/dmservice/IClockCtrlAidl;

    if-eqz v0, :cond_1

    .line 324
    :try_start_0
    invoke-interface {v0, p1}, Lcom/unitech/dmservice/IClockCtrlAidl;->setManualDate(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    .line 326
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v4, "errorMsg"

    .line 327
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 328
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 331
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 332
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "ClockCtrlAidl.setManualDate exception: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "ClockCtrlAidl is null."

    .line 335
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 338
    :goto_0
    sget-object v0, Lcom/unitech/api/clock/ClockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public setManualTime(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClockCtrl, setManualTime(), time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [ex: 23:59 (hour/minute)]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "ClockCtrl, setManualTime failed: time cannot be empty."

    .line 354
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 358
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/clock/ClockCtrl;->tryToBindService()Z

    .line 359
    sget-object v0, Lcom/unitech/api/clock/ClockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v2

    .line 361
    sget-object v0, Lcom/unitech/api/clock/ClockCtrl;->ClockCtrlAidl:Lcom/unitech/dmservice/IClockCtrlAidl;

    if-eqz v0, :cond_1

    .line 364
    :try_start_0
    invoke-interface {v0, p1}, Lcom/unitech/dmservice/IClockCtrlAidl;->setManualTime(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    .line 366
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v4, "errorMsg"

    .line 367
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 368
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 371
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 372
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "ClockCtrlAidl.setManualTime exception: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "ClockCtrlAidl is null."

    .line 375
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 378
    :goto_0
    sget-object v0, Lcom/unitech/api/clock/ClockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public setNTPServer(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "NTPServerURL"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClockCtrl, SetNTPServer(), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "ClockCtrl, SetNTPServer failed: NTPServerURL cannot be empty."

    .line 143
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/clock/ClockCtrl;->tryToBindService()Z

    .line 148
    sget-object v0, Lcom/unitech/api/clock/ClockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v2

    .line 150
    sget-object v0, Lcom/unitech/api/clock/ClockCtrl;->ClockCtrlAidl:Lcom/unitech/dmservice/IClockCtrlAidl;

    if-eqz v0, :cond_1

    .line 153
    :try_start_0
    invoke-interface {v0, p1}, Lcom/unitech/dmservice/IClockCtrlAidl;->setNTPServer(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    .line 155
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v4, "errorMsg"

    .line 156
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 160
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 161
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "ClockCtrlAidl.SetNTPServer exception: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "ClockCtrlAidl is null."

    .line 164
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 167
    :goto_0
    sget-object v0, Lcom/unitech/api/clock/ClockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public setTimeFormat(I)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeFormat"
        }
    .end annotation

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClockCtrl, setTimeFormat(), timeformat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/16 v1, 0xc

    if-eq p1, v1, :cond_0

    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const-string p1, "ClockCtrl, setTimeFormat failed: timeFormat is out of range (12 or 24)."

    .line 620
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 624
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/clock/ClockCtrl;->tryToBindService()Z

    .line 625
    sget-object v1, Lcom/unitech/api/clock/ClockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v1

    .line 627
    sget-object v3, Lcom/unitech/api/clock/ClockCtrl;->ClockCtrlAidl:Lcom/unitech/dmservice/IClockCtrlAidl;

    if-eqz v3, :cond_1

    .line 630
    :try_start_0
    invoke-interface {v3, p1}, Lcom/unitech/dmservice/IClockCtrlAidl;->setTimeFormat(I)Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "errorCode"

    .line 632
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "errorMsg"

    .line 633
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 634
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 637
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 638
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    const-string p1, "ClockCtrlAidl.setTimeFormat exception: %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "ClockCtrlAidl is null."

    .line 641
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 644
    :goto_0
    sget-object v0, Lcom/unitech/api/clock/ClockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v1, v2}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public setTimeMode(I)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClockCtrl, setTimeMode(), mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (0:manual, 1:auto)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const-string p1, "ClockCtrl, setTimeMode failed: mode is out of range (0 or 1) ."

    .line 228
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/clock/ClockCtrl;->tryToBindService()Z

    .line 233
    sget-object v1, Lcom/unitech/api/clock/ClockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v1

    .line 235
    sget-object v3, Lcom/unitech/api/clock/ClockCtrl;->ClockCtrlAidl:Lcom/unitech/dmservice/IClockCtrlAidl;

    if-eqz v3, :cond_1

    .line 238
    :try_start_0
    invoke-interface {v3, p1}, Lcom/unitech/dmservice/IClockCtrlAidl;->setTimeMode(I)Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "errorCode"

    .line 240
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "errorMsg"

    .line 241
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 242
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 245
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 246
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    const-string p1, "ClockCtrlAidl.setTimeMode exception: %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "ClockCtrlAidl is null."

    .line 249
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 252
    :goto_0
    sget-object v0, Lcom/unitech/api/clock/ClockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v1, v2}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public setTimeZone(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeZone"
        }
    .end annotation

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClockCtrl, setTimeZone(), timeZone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "ClockCtrl, setTimeZone failed: timeZone cannot be empty."

    .line 526
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 530
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/clock/ClockCtrl;->tryToBindService()Z

    .line 531
    sget-object v0, Lcom/unitech/api/clock/ClockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v2

    .line 533
    sget-object v0, Lcom/unitech/api/clock/ClockCtrl;->ClockCtrlAidl:Lcom/unitech/dmservice/IClockCtrlAidl;

    if-eqz v0, :cond_1

    .line 536
    :try_start_0
    invoke-interface {v0, p1}, Lcom/unitech/dmservice/IClockCtrlAidl;->setTimeZone(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    .line 538
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v4, "errorMsg"

    .line 539
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 540
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 543
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 544
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "ClockCtrlAidl.setTimeZone exception: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "ClockCtrlAidl is null."

    .line 547
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 550
    :goto_0
    sget-object v0, Lcom/unitech/api/clock/ClockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public setTimeZoneMode(I)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClockCtrl, setTimeZoneMode(), mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (0:manual, 1:auto)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const-string p1, "ClockCtrl, setTimeZoneMode failed: mode is out of range (0 or 1)."

    .line 439
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 443
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/clock/ClockCtrl;->tryToBindService()Z

    .line 444
    sget-object v1, Lcom/unitech/api/clock/ClockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v1

    .line 447
    sget-object v3, Lcom/unitech/api/clock/ClockCtrl;->ClockCtrlAidl:Lcom/unitech/dmservice/IClockCtrlAidl;

    if-eqz v3, :cond_1

    .line 450
    :try_start_0
    invoke-interface {v3, p1}, Lcom/unitech/dmservice/IClockCtrlAidl;->setTimeZoneMode(I)Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "errorCode"

    .line 452
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "errorMsg"

    .line 453
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 454
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 457
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 458
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    const-string p1, "ClockCtrlAidl.setTimeZoneMode exception: %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "ClockCtrlAidl is null."

    .line 461
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/clock/ClockCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 464
    :goto_0
    sget-object v0, Lcom/unitech/api/clock/ClockCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v1, v2}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method
