.class public Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;
.super Ljava/lang/Object;
.source "DeviceInfoCtrl.java"


# static fields
.field private static final ACTION_BIND_SERVICE:Ljava/lang/String; = "com.unitech.dmservice.action.general"

.field public static final BUNDLE_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final BUNDLE_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field private static GeneralCtrlAidl:Lcom/unitech/dmservice/IGeneralCtrlAidl; = null

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

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->mContext:Landroid/content/Context;

    .line 48
    sget-object v0, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/unitech/api/util/ServiceHandler;

    .line 50
    invoke-direct {p0}, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v1

    const-string v2, "com.unitech.dmservice"

    const-string v3, "com.unitech.dmservice.action.general"

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    sput-object v0, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    .line 52
    :cond_0
    sget p1, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->mServiceChecked:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 53
    invoke-direct {p0}, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->checkGeneralCtrlService()V

    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/unitech/dmservice/IGeneralCtrlAidl;)Lcom/unitech/dmservice/IGeneralCtrlAidl;
    .locals 0

    .line 24
    sput-object p0, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->GeneralCtrlAidl:Lcom/unitech/dmservice/IGeneralCtrlAidl;

    return-object p0
.end method

.method private checkGeneralCtrlService()V
    .locals 5

    .line 58
    sget v0, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->mServiceChecked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 65
    :cond_0
    sget-object v0, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 68
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

    .line 69
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

    const-string v0, "DeviceInfoCtrl, package com.unitech.dmservice is found."

    .line 76
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sput v3, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->mServiceChecked:I

    goto :goto_1

    :cond_3
    const-string v0, "DeviceInfoCtrl, package com.unitech.dmservice is not found"

    .line 79
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sput v1, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->mServiceChecked:I

    :goto_1
    return-void
.end method

.method private createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
    .locals 1

    .line 92
    new-instance v0, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl$1;

    invoke-direct {v0, p0}, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl$1;-><init>(Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;)V

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

    .line 115
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 117
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

    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    .line 86
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "errorMsg"

    .line 87
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private tryToBindService()Z
    .locals 1

    .line 124
    :try_start_0
    sget-object v0, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->ensureNotOnMainThread(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    sget-object v0, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getDeviceBuildNumber()Landroid/os/Bundle;
    .locals 6

    const-string v0, "UnitechSDK"

    const-string v1, "DeviceInfoCtrl, getDeviceBuildNumber()"

    .line 177
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-direct {p0}, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->tryToBindService()Z

    .line 181
    sget-object v0, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 183
    sget-object v2, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->GeneralCtrlAidl:Lcom/unitech/dmservice/IGeneralCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 185
    :try_start_0
    invoke-interface {v2}, Lcom/unitech/dmservice/IGeneralCtrlAidl;->getDeviceBuildNumber()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 187
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 188
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 189
    invoke-direct {p0, v4, v5}, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 190
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 193
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 194
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "GeneralCtrlAidl.getDeviceSerialNumber exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v2, "GeneralCtrlAidl is null."

    .line 197
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 200
    :goto_0
    sget-object v2, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4
.end method

.method public getDeviceSerialNumber()Landroid/os/Bundle;
    .locals 6

    const-string v0, "UnitechSDK"

    const-string v1, "DeviceInfoCtrl, getDeviceSerialNumber()"

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-direct {p0}, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->tryToBindService()Z

    .line 145
    sget-object v0, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 147
    sget-object v2, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->GeneralCtrlAidl:Lcom/unitech/dmservice/IGeneralCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 149
    :try_start_0
    invoke-interface {v2}, Lcom/unitech/dmservice/IGeneralCtrlAidl;->getDeviceSerialNumber()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 151
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 152
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 153
    invoke-direct {p0, v4, v5}, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 154
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 157
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 158
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "GeneralCtrlAidl.getDeviceSerialNumber exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v2, "GeneralCtrlAidl is null."

    .line 161
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 164
    :goto_0
    sget-object v2, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4
.end method

.method public getIMEI()Landroid/os/Bundle;
    .locals 6

    const-string v0, "UnitechSDK"

    const-string v1, "DeviceInfoCtrl, getIMEI()"

    .line 213
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-direct {p0}, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->tryToBindService()Z

    .line 217
    sget-object v0, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 219
    sget-object v2, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->GeneralCtrlAidl:Lcom/unitech/dmservice/IGeneralCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v4, -0x1

    .line 221
    :try_start_0
    invoke-interface {v2, v4}, Lcom/unitech/dmservice/IGeneralCtrlAidl;->getIMEI(I)Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 223
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 224
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 225
    invoke-direct {p0, v4, v5}, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 226
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 229
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 230
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "GeneralCtrlAidl.getIMEI exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v2, "GeneralCtrlAidl is null."

    .line 233
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 236
    :goto_0
    sget-object v2, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4
.end method

.method public getIMEI(I)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "simSlot"
        }
    .end annotation

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceInfoCtrl, getIMEI(), SimSlot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const-string p1, "DeviceInfoCtrl, getIMEI(), parameter error, sim slot(0:sim0, 1:sime2) "

    .line 258
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 262
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->tryToBindService()Z

    .line 263
    sget-object v1, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v1

    .line 265
    sget-object v3, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->GeneralCtrlAidl:Lcom/unitech/dmservice/IGeneralCtrlAidl;

    if-eqz v3, :cond_1

    .line 267
    :try_start_0
    invoke-interface {v3, p1}, Lcom/unitech/dmservice/IGeneralCtrlAidl;->getIMEI(I)Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "errorCode"

    .line 269
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "errorMsg"

    .line 270
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 271
    invoke-direct {p0, v3, v4}, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 272
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 275
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 276
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    const-string p1, "GeneralCtrlAidl.getIMEI exception: %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string p1, "GeneralCtrlAidl is null."

    .line 279
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 282
    :goto_0
    sget-object p1, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p1, v1, v2}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v3
.end method

.method public getIMSI()Landroid/os/Bundle;
    .locals 6

    const-string v0, "UnitechSDK"

    const-string v1, "DeviceInfoCtrl, getIMSI()"

    .line 295
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-direct {p0}, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->tryToBindService()Z

    .line 299
    sget-object v0, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 301
    sget-object v2, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->GeneralCtrlAidl:Lcom/unitech/dmservice/IGeneralCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v4, -0x1

    .line 303
    :try_start_0
    invoke-interface {v2, v4}, Lcom/unitech/dmservice/IGeneralCtrlAidl;->getIMSI(I)Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 305
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 306
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 307
    invoke-direct {p0, v4, v5}, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 308
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 311
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 312
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "GeneralCtrlAidl.getIMSI exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v2, "GeneralCtrlAidl is null."

    .line 315
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 318
    :goto_0
    sget-object v2, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4
.end method

.method public getIMSI(I)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "simSlot"
        }
    .end annotation

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceInfoCtrl, getIMSI(), SimSlot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const-string p1, "DeviceInfoCtrl, getIMSI(), parameter error, sim slot(0:sim0, 1:sime2) "

    .line 340
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 344
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->tryToBindService()Z

    .line 345
    sget-object v1, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v1

    .line 347
    sget-object v3, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->GeneralCtrlAidl:Lcom/unitech/dmservice/IGeneralCtrlAidl;

    if-eqz v3, :cond_1

    .line 349
    :try_start_0
    invoke-interface {v3, p1}, Lcom/unitech/dmservice/IGeneralCtrlAidl;->getIMSI(I)Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "errorCode"

    .line 351
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "errorMsg"

    .line 352
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 353
    invoke-direct {p0, v3, v4}, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 354
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 357
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 358
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    const-string p1, "GeneralCtrlAidl.getIMSI exception: %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string p1, "GeneralCtrlAidl is null."

    .line 361
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 364
    :goto_0
    sget-object p1, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p1, v1, v2}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v3
.end method

.method public getNetworkInformation(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iName"
        }
    .end annotation

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceInfoCtrl, getNetworkInformation(), interfaceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-direct {p0}, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->tryToBindService()Z

    .line 385
    sget-object v0, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 387
    sget-object v2, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->GeneralCtrlAidl:Lcom/unitech/dmservice/IGeneralCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 389
    :try_start_0
    invoke-interface {v2, p1}, Lcom/unitech/dmservice/IGeneralCtrlAidl;->getNetworkInformation(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 391
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 392
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "GeneralCtrlAidl.getNetworkInformation exception: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "GeneralCtrlAidl is null."

    .line 395
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 397
    :goto_0
    sget-object v2, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method
