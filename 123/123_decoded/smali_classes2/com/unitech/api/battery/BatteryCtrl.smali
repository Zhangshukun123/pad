.class public Lcom/unitech/api/battery/BatteryCtrl;
.super Ljava/lang/Object;
.source "BatteryCtrl.java"


# static fields
.field public static final RESULT_CODE_ERROR:I = 0x1

.field public static final RESULT_CODE_SUCCESS:I = 0x0

.field private static iBatteryCtrlAidl:Lcom/unitech/dmservice/IBatteryCtrlAidl; = null

.field private static mServiceChecked:I = -0x1


# instance fields
.field private final ACTION_BIND_SERVICE:Ljava/lang/String;

.field private final BUNDLE_ERROR_CODE:Ljava/lang/String;

.field private final BUNDLE_ERROR_MSG:Ljava/lang/String;

.field private final PKG_API_SERVICE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field mServiceHandler:Lcom/unitech/api/util/ServiceHandler;


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

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "errorCode"

    .line 20
    iput-object v0, p0, Lcom/unitech/api/battery/BatteryCtrl;->BUNDLE_ERROR_CODE:Ljava/lang/String;

    const-string v0, "errorMsg"

    .line 21
    iput-object v0, p0, Lcom/unitech/api/battery/BatteryCtrl;->BUNDLE_ERROR_MSG:Ljava/lang/String;

    const-string v0, "com.unitech.dmservice"

    .line 24
    iput-object v0, p0, Lcom/unitech/api/battery/BatteryCtrl;->PKG_API_SERVICE:Ljava/lang/String;

    const-string v1, "com.unitech.dmservice.action.battery"

    .line 25
    iput-object v1, p0, Lcom/unitech/api/battery/BatteryCtrl;->ACTION_BIND_SERVICE:Ljava/lang/String;

    const-string v2, "BatteryCtrl"

    .line 26
    iput-object v2, p0, Lcom/unitech/api/battery/BatteryCtrl;->TAG:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/unitech/api/battery/BatteryCtrl;->mContext:Landroid/content/Context;

    .line 37
    iget-object v2, p0, Lcom/unitech/api/battery/BatteryCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    if-nez v2, :cond_0

    .line 38
    new-instance v2, Lcom/unitech/api/util/ServiceHandler;

    .line 39
    invoke-direct {p0}, Lcom/unitech/api/battery/BatteryCtrl;->createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v3

    invoke-direct {v2, p1, v0, v1, v3}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    iput-object v2, p0, Lcom/unitech/api/battery/BatteryCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    .line 41
    :cond_0
    sget p1, Lcom/unitech/api/battery/BatteryCtrl;->mServiceChecked:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 42
    invoke-direct {p0}, Lcom/unitech/api/battery/BatteryCtrl;->checkService()V

    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/unitech/dmservice/IBatteryCtrlAidl;)Lcom/unitech/dmservice/IBatteryCtrlAidl;
    .locals 0

    .line 19
    sput-object p0, Lcom/unitech/api/battery/BatteryCtrl;->iBatteryCtrlAidl:Lcom/unitech/dmservice/IBatteryCtrlAidl;

    return-object p0
.end method

.method private checkService()V
    .locals 5

    .line 52
    sget v0, Lcom/unitech/api/battery/BatteryCtrl;->mServiceChecked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/unitech/api/battery/BatteryCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 62
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

    .line 63
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
    const-string v2, "BatteryCtrl"

    if-eqz v0, :cond_3

    const-string v0, "BatteryCtrl, package com.unitech.dmservice is found."

    .line 70
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    sput v3, Lcom/unitech/api/battery/BatteryCtrl;->mServiceChecked:I

    goto :goto_1

    :cond_3
    const-string v0, "BatteryCtrl, package com.unitech.dmservice is not found"

    .line 73
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sput v1, Lcom/unitech/api/battery/BatteryCtrl;->mServiceChecked:I

    :goto_1
    return-void
.end method

.method private createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
    .locals 1

    .line 78
    new-instance v0, Lcom/unitech/api/battery/BatteryCtrl$1;

    invoke-direct {v0, p0}, Lcom/unitech/api/battery/BatteryCtrl$1;-><init>(Lcom/unitech/api/battery/BatteryCtrl;)V

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

    .line 100
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "calling this from your main thread can lead to deadlock"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private execAidl(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "command"
        }
    .end annotation

    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "BatteryCtrl, execAidl failed: command cannot be empty."

    .line 121
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/battery/BatteryCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/battery/BatteryCtrl;->tryToBindService()Z

    .line 126
    iget-object v0, p0, Lcom/unitech/api/battery/BatteryCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v2

    .line 128
    sget-object v0, Lcom/unitech/api/battery/BatteryCtrl;->iBatteryCtrlAidl:Lcom/unitech/dmservice/IBatteryCtrlAidl;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 131
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v6, "getSerialNumber"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x5

    goto/16 :goto_0

    :sswitch_1
    const-string v6, "getVoltage"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v4, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v6, "getBackupBatteryChargingStatus"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v4, 0xc

    goto/16 :goto_0

    :sswitch_3
    const-string v6, "getDateOfManufacture"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x2

    goto :goto_0

    :sswitch_4
    const-string v6, "getBackupBatteryVoltage"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v4, 0xb

    goto :goto_0

    :sswitch_5
    const-string v6, "getChargingStatus"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :sswitch_6
    const-string v6, "getBatteryLevel"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x3

    goto :goto_0

    :sswitch_7
    const-string v6, "getTemperature"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v4, 0x8

    goto :goto_0

    :sswitch_8
    const-string v6, "getPluggedInStatus"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :sswitch_9
    const-string v6, "getCycleCount"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :sswitch_a
    const-string v6, "getStateOfHealth"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x6

    goto :goto_0

    :sswitch_b
    const-string v6, "getTechnology"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x7

    goto :goto_0

    :sswitch_c
    const-string v6, "getCurrent"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v4, 0xa

    :cond_1
    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 170
    :pswitch_0
    sget-object v0, Lcom/unitech/api/battery/BatteryCtrl;->iBatteryCtrlAidl:Lcom/unitech/dmservice/IBatteryCtrlAidl;

    invoke-interface {v0}, Lcom/unitech/dmservice/IBatteryCtrlAidl;->getBackupBatteryChargingStatus()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 167
    :pswitch_1
    sget-object v0, Lcom/unitech/api/battery/BatteryCtrl;->iBatteryCtrlAidl:Lcom/unitech/dmservice/IBatteryCtrlAidl;

    invoke-interface {v0}, Lcom/unitech/dmservice/IBatteryCtrlAidl;->getBackupBatteryVoltage()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 164
    :pswitch_2
    sget-object v0, Lcom/unitech/api/battery/BatteryCtrl;->iBatteryCtrlAidl:Lcom/unitech/dmservice/IBatteryCtrlAidl;

    invoke-interface {v0}, Lcom/unitech/dmservice/IBatteryCtrlAidl;->getCurrent()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 161
    :pswitch_3
    sget-object v0, Lcom/unitech/api/battery/BatteryCtrl;->iBatteryCtrlAidl:Lcom/unitech/dmservice/IBatteryCtrlAidl;

    invoke-interface {v0}, Lcom/unitech/dmservice/IBatteryCtrlAidl;->getVoltage()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 158
    :pswitch_4
    sget-object v0, Lcom/unitech/api/battery/BatteryCtrl;->iBatteryCtrlAidl:Lcom/unitech/dmservice/IBatteryCtrlAidl;

    invoke-interface {v0}, Lcom/unitech/dmservice/IBatteryCtrlAidl;->getTemperature()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 155
    :pswitch_5
    sget-object v0, Lcom/unitech/api/battery/BatteryCtrl;->iBatteryCtrlAidl:Lcom/unitech/dmservice/IBatteryCtrlAidl;

    invoke-interface {v0}, Lcom/unitech/dmservice/IBatteryCtrlAidl;->getTechnology()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 152
    :pswitch_6
    sget-object v0, Lcom/unitech/api/battery/BatteryCtrl;->iBatteryCtrlAidl:Lcom/unitech/dmservice/IBatteryCtrlAidl;

    invoke-interface {v0}, Lcom/unitech/dmservice/IBatteryCtrlAidl;->getStateOfHealth()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 149
    :pswitch_7
    sget-object v0, Lcom/unitech/api/battery/BatteryCtrl;->iBatteryCtrlAidl:Lcom/unitech/dmservice/IBatteryCtrlAidl;

    invoke-interface {v0}, Lcom/unitech/dmservice/IBatteryCtrlAidl;->getSerialNumber()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 146
    :pswitch_8
    sget-object v0, Lcom/unitech/api/battery/BatteryCtrl;->iBatteryCtrlAidl:Lcom/unitech/dmservice/IBatteryCtrlAidl;

    invoke-interface {v0}, Lcom/unitech/dmservice/IBatteryCtrlAidl;->getPluggedInStatus()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 143
    :pswitch_9
    sget-object v0, Lcom/unitech/api/battery/BatteryCtrl;->iBatteryCtrlAidl:Lcom/unitech/dmservice/IBatteryCtrlAidl;

    invoke-interface {v0}, Lcom/unitech/dmservice/IBatteryCtrlAidl;->getBatteryLevel()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 140
    :pswitch_a
    sget-object v0, Lcom/unitech/api/battery/BatteryCtrl;->iBatteryCtrlAidl:Lcom/unitech/dmservice/IBatteryCtrlAidl;

    invoke-interface {v0}, Lcom/unitech/dmservice/IBatteryCtrlAidl;->getDateOfManufacture()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 137
    :pswitch_b
    sget-object v0, Lcom/unitech/api/battery/BatteryCtrl;->iBatteryCtrlAidl:Lcom/unitech/dmservice/IBatteryCtrlAidl;

    invoke-interface {v0}, Lcom/unitech/dmservice/IBatteryCtrlAidl;->getCycleCount()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 134
    :pswitch_c
    sget-object v0, Lcom/unitech/api/battery/BatteryCtrl;->iBatteryCtrlAidl:Lcom/unitech/dmservice/IBatteryCtrlAidl;

    invoke-interface {v0}, Lcom/unitech/dmservice/IBatteryCtrlAidl;->getChargingStatus()Landroid/os/Bundle;

    move-result-object v0

    :goto_1
    const-string v4, "errorCode"

    .line 175
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v6, "errorMsg"

    .line 176
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 177
    invoke-direct {p0, v4, v6}, Lcom/unitech/api/battery/BatteryCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 178
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BatteryCtrl."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " exception: %s"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/battery/BatteryCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_2

    :cond_2
    const-string p1, "BatteryCtrl is null."

    .line 185
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/battery/BatteryCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 188
    :goto_2
    iget-object p1, p0, Lcom/unitech/api/battery/BatteryCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p1, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f0706bd -> :sswitch_c
        -0x75d7c2fe -> :sswitch_b
        -0x63843cf2 -> :sswitch_a
        -0x578ce041 -> :sswitch_9
        -0x45a439a7 -> :sswitch_8
        -0x12fcf3c2 -> :sswitch_7
        -0x4e4b013 -> :sswitch_6
        -0x20d6d47 -> :sswitch_5
        0x3208f69 -> :sswitch_4
        0x13d204a6 -> :sswitch_3
        0x3ad5ff58 -> :sswitch_2
        0x637e9728 -> :sswitch_1
        0x65f110d3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    .line 47
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "errorMsg"

    .line 48
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private tryToBindService()Z
    .locals 1

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/battery/BatteryCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unitech/api/battery/BatteryCtrl;->ensureNotOnMainThread(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    iget-object v0, p0, Lcom/unitech/api/battery/BatteryCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getBackupBatteryChargingStatus()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getBackupBatteryChargingStatus"

    .line 320
    invoke-direct {p0, v0}, Lcom/unitech/api/battery/BatteryCtrl;->execAidl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getBackupBatteryVoltage()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getBackupBatteryVoltage"

    .line 310
    invoke-direct {p0, v0}, Lcom/unitech/api/battery/BatteryCtrl;->execAidl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getBatteryLevel()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getBatteryLevel"

    .line 230
    invoke-direct {p0, v0}, Lcom/unitech/api/battery/BatteryCtrl;->execAidl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getChargingStatus()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getChargingStatus"

    .line 200
    invoke-direct {p0, v0}, Lcom/unitech/api/battery/BatteryCtrl;->execAidl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getCurrent()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getCurrent"

    .line 300
    invoke-direct {p0, v0}, Lcom/unitech/api/battery/BatteryCtrl;->execAidl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getCycleCount()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getCycleCount"

    .line 210
    invoke-direct {p0, v0}, Lcom/unitech/api/battery/BatteryCtrl;->execAidl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getDateOfManufacture()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getDateOfManufacture"

    .line 220
    invoke-direct {p0, v0}, Lcom/unitech/api/battery/BatteryCtrl;->execAidl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getPluggedInStatus()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getPluggedInStatus"

    .line 240
    invoke-direct {p0, v0}, Lcom/unitech/api/battery/BatteryCtrl;->execAidl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getSerialNumber"

    .line 250
    invoke-direct {p0, v0}, Lcom/unitech/api/battery/BatteryCtrl;->execAidl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getStateOfHealth()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getStateOfHealth"

    .line 260
    invoke-direct {p0, v0}, Lcom/unitech/api/battery/BatteryCtrl;->execAidl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getTechnology()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getTechnology"

    .line 270
    invoke-direct {p0, v0}, Lcom/unitech/api/battery/BatteryCtrl;->execAidl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getTemperature()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getTemperature"

    .line 280
    invoke-direct {p0, v0}, Lcom/unitech/api/battery/BatteryCtrl;->execAidl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getVoltage()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getVoltage"

    .line 290
    invoke-direct {p0, v0}, Lcom/unitech/api/battery/BatteryCtrl;->execAidl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public setChargingLimit(I)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "limit"
        }
    .end annotation

    .line 330
    invoke-direct {p0}, Lcom/unitech/api/battery/BatteryCtrl;->tryToBindService()Z

    .line 331
    iget-object v0, p0, Lcom/unitech/api/battery/BatteryCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getImmortalTicket()J

    move-result-wide v0

    .line 334
    :try_start_0
    sget-object v2, Lcom/unitech/api/battery/BatteryCtrl;->iBatteryCtrlAidl:Lcom/unitech/dmservice/IBatteryCtrlAidl;

    invoke-interface {v2, p1}, Lcom/unitech/dmservice/IBatteryCtrlAidl;->setChargingLimit(I)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 336
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x1

    .line 337
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/battery/BatteryCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 339
    :goto_0
    iget-object v2, p0, Lcom/unitech/api/battery/BatteryCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method
