.class public Lcom/unitech/api/power/PowerCtrl;
.super Ljava/lang/Object;
.source "PowerCtrl.java"


# static fields
.field private static final ACTION_BIND_SERVICE:Ljava/lang/String; = "com.unitech.dmservice.action.Power"

.field public static final BUNDLE_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final BUNDLE_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field private static final PKG_API_SERVICE:Ljava/lang/String; = "com.unitech.dmservice"

.field private static PowerCtrlAidl:Lcom/unitech/dmservice/IPowerCtrlAidl; = null

.field public static final RESULT_CODE_ERROR:I = 0x1

.field public static final RESULT_CODE_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UnitechSDK"

.field private static mContext:Landroid/content/Context; = null

.field private static mServiceChecked:I = -0x1

.field private static mServiceHandler:Lcom/unitech/api/util/ServiceHandler;


# instance fields
.field private ticketList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


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

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/unitech/api/power/PowerCtrl;->mContext:Landroid/content/Context;

    .line 46
    sget-object v0, Lcom/unitech/api/power/PowerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/unitech/api/util/ServiceHandler;

    .line 48
    invoke-direct {p0}, Lcom/unitech/api/power/PowerCtrl;->createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v1

    const-string v2, "com.unitech.dmservice"

    const-string v3, "com.unitech.dmservice.action.Power"

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    sput-object v0, Lcom/unitech/api/power/PowerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    .line 50
    :cond_0
    sget p1, Lcom/unitech/api/power/PowerCtrl;->mServiceChecked:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 51
    invoke-direct {p0}, Lcom/unitech/api/power/PowerCtrl;->checkPowerCtrlService()V

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/unitech/api/power/PowerCtrl;->ticketList:Ljava/util/List;

    if-nez p1, :cond_2

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/unitech/api/power/PowerCtrl;->ticketList:Ljava/util/List;

    :cond_2
    return-void
.end method

.method static synthetic access$002(Lcom/unitech/dmservice/IPowerCtrlAidl;)Lcom/unitech/dmservice/IPowerCtrlAidl;
    .locals 0

    .line 21
    sput-object p0, Lcom/unitech/api/power/PowerCtrl;->PowerCtrlAidl:Lcom/unitech/dmservice/IPowerCtrlAidl;

    return-object p0
.end method

.method private checkPowerCtrlService()V
    .locals 5

    .line 60
    sget v0, Lcom/unitech/api/power/PowerCtrl;->mServiceChecked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 67
    :cond_0
    sget-object v0, Lcom/unitech/api/power/PowerCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 70
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

    .line 71
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

    const-string v0, "PowerCtrl, package com.unitech.dmservice is found."

    .line 78
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sput v3, Lcom/unitech/api/power/PowerCtrl;->mServiceChecked:I

    goto :goto_1

    :cond_3
    const-string v0, "PowerCtrl, package com.unitech.dmservice is not found"

    .line 81
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sput v1, Lcom/unitech/api/power/PowerCtrl;->mServiceChecked:I

    :goto_1
    return-void
.end method

.method private createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
    .locals 1

    .line 94
    new-instance v0, Lcom/unitech/api/power/PowerCtrl$1;

    invoke-direct {v0, p0}, Lcom/unitech/api/power/PowerCtrl$1;-><init>(Lcom/unitech/api/power/PowerCtrl;)V

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

    .line 117
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 119
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

    .line 87
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    .line 88
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "errorMsg"

    .line 89
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private tryToBindService()Z
    .locals 1

    .line 126
    :try_start_0
    sget-object v0, Lcom/unitech/api/power/PowerCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unitech/api/power/PowerCtrl;->ensureNotOnMainThread(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    sget-object v0, Lcom/unitech/api/power/PowerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public ColdBoot()Landroid/os/Bundle;
    .locals 6

    const/4 v0, 0x0

    const-string v1, ""

    .line 144
    invoke-direct {p0, v0, v1}, Lcom/unitech/api/power/PowerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 146
    invoke-direct {p0}, Lcom/unitech/api/power/PowerCtrl;->tryToBindService()Z

    .line 147
    sget-object v2, Lcom/unitech/api/power/PowerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v2

    const-string v4, "UnitechSDK"

    const-string v5, "PowerCtrl, ColdBoot()..."

    .line 149
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-object v4, Lcom/unitech/api/power/PowerCtrl;->PowerCtrlAidl:Lcom/unitech/dmservice/IPowerCtrlAidl;

    if-eqz v4, :cond_0

    .line 155
    :try_start_0
    invoke-interface {v4}, Lcom/unitech/dmservice/IPowerCtrlAidl;->RunFactoryReset()Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 160
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 161
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const-string v0, "PowerCtrlAidl.RunFactoryReset exception: %s"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/unitech/api/power/PowerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 165
    :cond_0
    :goto_0
    sget-object v0, Lcom/unitech/api/power/PowerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v1
.end method

.method public ColdBootButKeepESIMs()Landroid/os/Bundle;
    .locals 6

    const/4 v0, 0x0

    const-string v1, ""

    .line 179
    invoke-direct {p0, v0, v1}, Lcom/unitech/api/power/PowerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 181
    invoke-direct {p0}, Lcom/unitech/api/power/PowerCtrl;->tryToBindService()Z

    .line 182
    sget-object v2, Lcom/unitech/api/power/PowerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v2

    const-string v4, "UnitechSDK"

    const-string v5, "PowerCtrl, ColdBootButKeepESIMs()..."

    .line 184
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sget-object v4, Lcom/unitech/api/power/PowerCtrl;->PowerCtrlAidl:Lcom/unitech/dmservice/IPowerCtrlAidl;

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 189
    :try_start_0
    invoke-interface {v4}, Lcom/unitech/dmservice/IPowerCtrlAidl;->RunFactoryResetButKeepESIMs()Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "RunFactoryResetButKeepESIMs function not found"

    .line 191
    invoke-direct {p0, v1, v4}, Lcom/unitech/api/power/PowerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, v4

    goto :goto_0

    :catch_0
    move-exception v4

    .line 197
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    new-array v5, v1, [Ljava/lang/Object;

    .line 198
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v0

    const-string v0, "PowerCtrlAidl.RunFactoryResetButKeepESIMs exception: %s"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/unitech/api/power/PowerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 202
    :cond_1
    :goto_0
    sget-object v0, Lcom/unitech/api/power/PowerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v1
.end method

.method public ShutDown(Z)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "confirm"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, ""

    .line 335
    invoke-direct {p0, v0, v1}, Lcom/unitech/api/power/PowerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    .line 337
    invoke-direct {p0}, Lcom/unitech/api/power/PowerCtrl;->tryToBindService()Z

    .line 338
    sget-object v1, Lcom/unitech/api/power/PowerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v1

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PowerCtrl, Shutdown("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UnitechSDK"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    sget-object v3, Lcom/unitech/api/power/PowerCtrl;->PowerCtrlAidl:Lcom/unitech/dmservice/IPowerCtrlAidl;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 345
    :try_start_0
    invoke-interface {v3, p1}, Lcom/unitech/dmservice/IPowerCtrlAidl;->RunShutdown(Z)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 349
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v4, [Ljava/lang/Object;

    .line 350
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "PowerCtrlAidl.RunShutdown exception: %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lcom/unitech/api/power/PowerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "PowerCtrlAidl is null."

    .line 353
    invoke-direct {p0, v4, p1}, Lcom/unitech/api/power/PowerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 356
    :goto_0
    sget-object v0, Lcom/unitech/api/power/PowerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v1, v2}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public WarmBoot()Landroid/os/Bundle;
    .locals 7

    const-string v0, "Result"

    const/4 v1, 0x0

    const-string v2, ""

    .line 215
    invoke-direct {p0, v1, v2}, Lcom/unitech/api/power/PowerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 217
    invoke-direct {p0}, Lcom/unitech/api/power/PowerCtrl;->tryToBindService()Z

    .line 218
    sget-object v3, Lcom/unitech/api/power/PowerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v3}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v3

    const-string v5, "UnitechSDK"

    const-string v6, "PowerCtrl, WarmBoot()..."

    .line 220
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    sget-object v5, Lcom/unitech/api/power/PowerCtrl;->PowerCtrlAidl:Lcom/unitech/dmservice/IPowerCtrlAidl;

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 226
    :try_start_0
    invoke-interface {v5}, Lcom/unitech/dmservice/IPowerCtrlAidl;->RunReboot()Landroid/os/Bundle;

    move-result-object v5

    .line 227
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 228
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 232
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-array v2, v6, [Ljava/lang/Object;

    .line 233
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "PowerCtrlAidl.RunReboot exception: %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/unitech/api/power/PowerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v0, "PowerCtrlAidl is null."

    .line 236
    invoke-direct {p0, v6, v0}, Lcom/unitech/api/power/PowerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 239
    :goto_0
    sget-object v0, Lcom/unitech/api/power/PowerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v3, v4}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v2
.end method

.method public acquireWakeLock(J)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeout"
        }
    .end annotation

    .line 264
    invoke-direct {p0}, Lcom/unitech/api/power/PowerCtrl;->tryToBindService()Z

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerCtrl, acquireWakeLock("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    sget-object v0, Lcom/unitech/api/power/PowerCtrl;->PowerCtrlAidl:Lcom/unitech/dmservice/IPowerCtrlAidl;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 269
    sget-object v0, Lcom/unitech/api/power/PowerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getImmortalTicket()J

    move-result-wide v2

    .line 270
    iget-object v0, p0, Lcom/unitech/api/power/PowerCtrl;->ticketList:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    :try_start_0
    sget-object v0, Lcom/unitech/api/power/PowerCtrl;->PowerCtrlAidl:Lcom/unitech/dmservice/IPowerCtrlAidl;

    sget-object v2, Lcom/unitech/api/power/PowerCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2}, Lcom/unitech/dmservice/IPowerCtrlAidl;->acquireWakeLock(Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 275
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array p2, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 276
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "PowerCtrlAidl.acquireWakeLock exception: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/power/PowerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "PowerCtrlAidl is null."

    .line 279
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/power/PowerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public releaseWakeLock()Landroid/os/Bundle;
    .locals 5

    .line 300
    invoke-direct {p0}, Lcom/unitech/api/power/PowerCtrl;->tryToBindService()Z

    const-string v0, "UnitechSDK"

    const-string v1, "PowerCtrl, releaseWakeLock()..."

    .line 301
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    sget-object v0, Lcom/unitech/api/power/PowerCtrl;->PowerCtrlAidl:Lcom/unitech/dmservice/IPowerCtrlAidl;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 306
    :try_start_0
    sget-object v2, Lcom/unitech/api/power/PowerCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/unitech/dmservice/IPowerCtrlAidl;->releaseWakeLock(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 310
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 311
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "PowerCtrlAidl.releaseWakeLock exception: %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/unitech/api/power/PowerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 314
    :goto_0
    iget-object v1, p0, Lcom/unitech/api/power/PowerCtrl;->ticketList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 315
    sget-object v4, Lcom/unitech/api/power/PowerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v4, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    goto :goto_1

    :cond_0
    const-string v0, "PowerCtrlAidl is null."

    .line 318
    invoke-direct {p0, v1, v0}, Lcom/unitech/api/power/PowerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :cond_1
    return-object v0
.end method
