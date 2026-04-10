.class public Lcom/unitech/api/debugging/DebuggingCtrl;
.super Ljava/lang/Object;
.source "DebuggingCtrl.java"


# static fields
.field private static final ACTION_BIND_SERVICE:Ljava/lang/String; = "com.unitech.dmservice.action.debugging"

.field public static final BUNDLE_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final BUNDLE_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field private static DebuggingCtrlAidl:Lcom/unitech/dmservice/IDebuggingCtrlAidl; = null

.field public static final ERROR_UNSUPPORTED:Ljava/lang/String; = "Unsupported device"

.field private static final PKG_API_SERVICE:Ljava/lang/String; = "com.unitech.dmservice"

.field public static final RESULT_CODE_ERROR:I = 0x1

.field public static final RESULT_CODE_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UnitechSDK"

.field private static mContext:Landroid/content/Context; = null

.field private static mServiceChecked:I = -0x1

.field private static mServiceHandler:Lcom/unitech/api/util/ServiceHandler;


# instance fields
.field private final DISABLE:Ljava/lang/String;

.field private final ENABLE:Ljava/lang/String;


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

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "enable"

    .line 30
    iput-object v0, p0, Lcom/unitech/api/debugging/DebuggingCtrl;->ENABLE:Ljava/lang/String;

    const-string v0, "disable"

    .line 31
    iput-object v0, p0, Lcom/unitech/api/debugging/DebuggingCtrl;->DISABLE:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/unitech/api/debugging/DebuggingCtrl;->mContext:Landroid/content/Context;

    .line 49
    sget-object v0, Lcom/unitech/api/debugging/DebuggingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/unitech/api/util/ServiceHandler;

    .line 51
    invoke-direct {p0}, Lcom/unitech/api/debugging/DebuggingCtrl;->createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v1

    const-string v2, "com.unitech.dmservice"

    const-string v3, "com.unitech.dmservice.action.debugging"

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    sput-object v0, Lcom/unitech/api/debugging/DebuggingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    .line 53
    :cond_0
    sget p1, Lcom/unitech/api/debugging/DebuggingCtrl;->mServiceChecked:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 54
    invoke-direct {p0}, Lcom/unitech/api/debugging/DebuggingCtrl;->checkDebuggingCtrlService()V

    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/unitech/dmservice/IDebuggingCtrlAidl;)Lcom/unitech/dmservice/IDebuggingCtrlAidl;
    .locals 0

    .line 21
    sput-object p0, Lcom/unitech/api/debugging/DebuggingCtrl;->DebuggingCtrlAidl:Lcom/unitech/dmservice/IDebuggingCtrlAidl;

    return-object p0
.end method

.method private checkDebuggingCtrlService()V
    .locals 5

    .line 59
    sget v0, Lcom/unitech/api/debugging/DebuggingCtrl;->mServiceChecked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 66
    :cond_0
    sget-object v0, Lcom/unitech/api/debugging/DebuggingCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 69
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

    .line 70
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

    const-string v0, "DebuggingCtrl, package com.unitech.dmservice is found."

    .line 77
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sput v3, Lcom/unitech/api/debugging/DebuggingCtrl;->mServiceChecked:I

    goto :goto_1

    :cond_3
    const-string v0, "DebuggingCtrl, package com.unitech.dmservice is not found"

    .line 80
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sput v1, Lcom/unitech/api/debugging/DebuggingCtrl;->mServiceChecked:I

    :goto_1
    return-void
.end method

.method private createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
    .locals 1

    .line 93
    new-instance v0, Lcom/unitech/api/debugging/DebuggingCtrl$1;

    invoke-direct {v0, p0}, Lcom/unitech/api/debugging/DebuggingCtrl$1;-><init>(Lcom/unitech/api/debugging/DebuggingCtrl;)V

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

    .line 116
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 118
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

    .line 86
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    .line 87
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "errorMsg"

    .line 88
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private tryToBindService()Z
    .locals 1

    .line 125
    :try_start_0
    sget-object v0, Lcom/unitech/api/debugging/DebuggingCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unitech/api/debugging/DebuggingCtrl;->ensureNotOnMainThread(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    sget-object v0, Lcom/unitech/api/debugging/DebuggingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public saveLogcatFile(Ljava/lang/String;J)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filePath",
            "seconds"
        }
    .end annotation

    const-string v0, "Pid"

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DebuggingCtrl, saveLogcatFile(), filePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", seconds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnitechSDK"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string p1, "DebuggingCtrl, saveLogcatFile failed: filePath cannot be empty."

    .line 147
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/debugging/DebuggingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/debugging/DebuggingCtrl;->tryToBindService()Z

    .line 152
    sget-object v1, Lcom/unitech/api/debugging/DebuggingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getImmortalTicket()J

    move-result-wide v3

    .line 154
    sget-object v1, Lcom/unitech/api/debugging/DebuggingCtrl;->DebuggingCtrlAidl:Lcom/unitech/dmservice/IDebuggingCtrlAidl;

    if-eqz v1, :cond_1

    .line 157
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/unitech/dmservice/IDebuggingCtrlAidl;->saveLogcatFile(Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "errorCode"

    .line 159
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string p3, "errorMsg"

    .line 160
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 161
    invoke-direct {p0, p2, p3}, Lcom/unitech/api/debugging/DebuggingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 163
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 166
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array p2, v2, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 167
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, p3

    const-string p1, "DebuggingCtrlAidl.saveLogcatFile exception: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/debugging/DebuggingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p1, "DebuggingCtrlAidl is null."

    .line 170
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/debugging/DebuggingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 173
    :goto_0
    sget-object p1, Lcom/unitech/api/debugging/DebuggingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p1, v3, v4}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p2
.end method

.method public stopSaveLogcat(I)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    .line 190
    invoke-direct {p0}, Lcom/unitech/api/debugging/DebuggingCtrl;->tryToBindService()Z

    .line 191
    sget-object v0, Lcom/unitech/api/debugging/DebuggingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DebuggingCtrl, stopSaveLogcat(), pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UnitechSDK"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    sget-object v2, Lcom/unitech/api/debugging/DebuggingCtrl;->DebuggingCtrlAidl:Lcom/unitech/dmservice/IDebuggingCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 198
    :try_start_0
    invoke-interface {v2, p1}, Lcom/unitech/dmservice/IDebuggingCtrlAidl;->stopSaveLogcat(I)Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "errorCode"

    .line 200
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v4, "errorMsg"

    .line 201
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 202
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/debugging/DebuggingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 205
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 206
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "DebuggingCtrlAidl.stopSaveLogcat exception: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/debugging/DebuggingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "DebuggingCtrlAidl is null."

    .line 209
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/debugging/DebuggingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 212
    :goto_0
    sget-object v2, Lcom/unitech/api/debugging/DebuggingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method
