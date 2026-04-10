.class public Lcom/unitech/api/apn/ApnCtrl;
.super Ljava/lang/Object;
.source "ApnCtrl.java"


# static fields
.field private static final ACTION_BIND_SERVICE:Ljava/lang/String; = "com.unitech.dmservice.action.apn"

.field private static ApnCtrlAidl:Lcom/unitech/dmservice/IApnCtrlAidl; = null

.field public static final BUNDLE_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final BUNDLE_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field public static final ERROR_UNSUPPORTED:Ljava/lang/String; = "Unsupported device"

.field private static final PKG_API_SERVICE:Ljava/lang/String; = "com.unitech.dmservice"

.field public static final RESULT_CODE_ERROR:I = 0x1

.field public static final RESULT_CODE_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UnitechSDK"

.field private static mContext:Landroid/content/Context; = null

.field private static mServiceChecked:I = -0x1

.field private static mServiceHandler:Lcom/unitech/api/util/ServiceHandler;


# instance fields
.field final COLUMNS_OF_APN:[Ljava/lang/String;

.field private final DISABLE:Ljava/lang/String;

.field private final ENABLE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "enable"

    .line 29
    iput-object v1, v0, Lcom/unitech/api/apn/ApnCtrl;->ENABLE:Ljava/lang/String;

    const-string v1, "disable"

    .line 30
    iput-object v1, v0, Lcom/unitech/api/apn/ApnCtrl;->DISABLE:Ljava/lang/String;

    const-string v2, "_id"

    const-string v3, "name"

    const-string v4, "numeric"

    const-string v5, "mcc"

    const-string v6, "mnc"

    const-string v7, "apn"

    const-string v8, "user"

    const-string v9, "server"

    const-string v10, "password"

    const-string v11, "proxy"

    const-string v12, "port"

    const-string v13, "mmsproxy"

    const-string v14, "mmsport"

    const-string v15, "mmsc"

    const-string v16, "authtype"

    const-string v17, "type"

    const-string v18, "current"

    const-string v19, "protocol"

    const-string v20, "roaming_protocol"

    const-string v21, "carrier_enabled"

    const-string v22, "bearer"

    const-string v23, "mvno_type"

    const-string v24, "mvno_match_data"

    .line 41
    filled-new-array/range {v2 .. v24}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unitech/api/apn/ApnCtrl;->COLUMNS_OF_APN:[Ljava/lang/String;

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/unitech/api/apn/ApnCtrl;->mContext:Landroid/content/Context;

    .line 75
    sget-object v2, Lcom/unitech/api/apn/ApnCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    if-nez v2, :cond_0

    .line 76
    new-instance v2, Lcom/unitech/api/util/ServiceHandler;

    .line 77
    invoke-direct/range {p0 .. p0}, Lcom/unitech/api/apn/ApnCtrl;->createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v3

    const-string v4, "com.unitech.dmservice"

    const-string v5, "com.unitech.dmservice.action.apn"

    invoke-direct {v2, v1, v4, v5, v3}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    sput-object v2, Lcom/unitech/api/apn/ApnCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    .line 79
    :cond_0
    sget v1, Lcom/unitech/api/apn/ApnCtrl;->mServiceChecked:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 80
    invoke-direct/range {p0 .. p0}, Lcom/unitech/api/apn/ApnCtrl;->checkApnCtrlService()V

    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/unitech/dmservice/IApnCtrlAidl;)Lcom/unitech/dmservice/IApnCtrlAidl;
    .locals 0

    .line 21
    sput-object p0, Lcom/unitech/api/apn/ApnCtrl;->ApnCtrlAidl:Lcom/unitech/dmservice/IApnCtrlAidl;

    return-object p0
.end method

.method private checkApnCtrlService()V
    .locals 5

    .line 85
    sget v0, Lcom/unitech/api/apn/ApnCtrl;->mServiceChecked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 92
    :cond_0
    sget-object v0, Lcom/unitech/api/apn/ApnCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 95
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

    .line 96
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

    const-string v0, "ApnCtrl, package com.unitech.dmservice is found."

    .line 103
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sput v3, Lcom/unitech/api/apn/ApnCtrl;->mServiceChecked:I

    goto :goto_1

    :cond_3
    const-string v0, "ApnCtrl, package com.unitech.dmservice is not found"

    .line 106
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sput v1, Lcom/unitech/api/apn/ApnCtrl;->mServiceChecked:I

    :goto_1
    return-void
.end method

.method private createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
    .locals 1

    .line 119
    new-instance v0, Lcom/unitech/api/apn/ApnCtrl$1;

    invoke-direct {v0, p0}, Lcom/unitech/api/apn/ApnCtrl$1;-><init>(Lcom/unitech/api/apn/ApnCtrl;)V

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

    .line 142
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 144
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

    .line 112
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    .line 113
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "errorMsg"

    .line 114
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private tryToBindService()Z
    .locals 1

    .line 151
    :try_start_0
    sget-object v0, Lcom/unitech/api/apn/ApnCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unitech/api/apn/ApnCtrl;->ensureNotOnMainThread(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    sget-object v0, Lcom/unitech/api/apn/ApnCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public ApnAddProfile(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "profileData"
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApnCtrl, ApnAddProfile(), profileData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "ApnCtrl, ApnAddProfile failed: profileData cannot be empty."

    .line 179
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/apn/ApnCtrl;->tryToBindService()Z

    .line 184
    sget-object v0, Lcom/unitech/api/apn/ApnCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v2

    .line 186
    sget-object v0, Lcom/unitech/api/apn/ApnCtrl;->ApnCtrlAidl:Lcom/unitech/dmservice/IApnCtrlAidl;

    if-eqz v0, :cond_1

    .line 189
    :try_start_0
    invoke-interface {v0, p1}, Lcom/unitech/dmservice/IApnCtrlAidl;->ApnAddProfile(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    .line 191
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v4, "errorMsg"

    .line 192
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 193
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 196
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 197
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "ApnCtrlAidl.ApnAddProfile exception: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "ApnCtrlAidl is null."

    .line 200
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 203
    :goto_0
    sget-object v0, Lcom/unitech/api/apn/ApnCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public ApnDeleteAll()Landroid/os/Bundle;
    .locals 6

    .line 346
    invoke-direct {p0}, Lcom/unitech/api/apn/ApnCtrl;->tryToBindService()Z

    .line 347
    sget-object v0, Lcom/unitech/api/apn/ApnCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    const-string v2, "UnitechSDK"

    const-string v3, "ApnCtrl, ApnDeleteAll() ..."

    .line 349
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    sget-object v2, Lcom/unitech/api/apn/ApnCtrl;->ApnCtrlAidl:Lcom/unitech/dmservice/IApnCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 354
    :try_start_0
    invoke-interface {v2}, Lcom/unitech/dmservice/IApnCtrlAidl;->ApnDeleteAll()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 356
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 357
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 358
    invoke-direct {p0, v4, v2}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 361
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 362
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "ApnCtrlAidl.ApnDeleteAll exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "ApnCtrlAidl is null."

    .line 365
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 368
    :goto_0
    sget-object v3, Lcom/unitech/api/apn/ApnCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v3, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v2
.end method

.method public ApnDeleteProfile(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apnName"
        }
    .end annotation

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApnCtrl, ApnDeleteProfile(), apnName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "ApnCtrl, ApnDeleteProfile failed: apnName cannot be empty."

    .line 220
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 224
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/apn/ApnCtrl;->tryToBindService()Z

    .line 225
    sget-object v0, Lcom/unitech/api/apn/ApnCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v2

    .line 227
    sget-object v0, Lcom/unitech/api/apn/ApnCtrl;->ApnCtrlAidl:Lcom/unitech/dmservice/IApnCtrlAidl;

    if-eqz v0, :cond_1

    .line 230
    :try_start_0
    invoke-interface {v0, p1}, Lcom/unitech/dmservice/IApnCtrlAidl;->ApnDeleteProfile(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    .line 232
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v4, "errorMsg"

    .line 233
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 237
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 238
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "ApnCtrlAidl.ApnDeleteProfile exception: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "ApnCtrlAidl is null."

    .line 241
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 244
    :goto_0
    sget-object v0, Lcom/unitech/api/apn/ApnCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public ApnGetActivieProfileApnName()Landroid/os/Bundle;
    .locals 7

    const-string v0, "ApnName"

    .line 424
    invoke-direct {p0}, Lcom/unitech/api/apn/ApnCtrl;->tryToBindService()Z

    .line 425
    sget-object v1, Lcom/unitech/api/apn/ApnCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v1

    const-string v3, "UnitechSDK"

    const-string v4, "ApnCtrl, ApnGetActivieProfileApnName()"

    .line 427
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    sget-object v3, Lcom/unitech/api/apn/ApnCtrl;->ApnCtrlAidl:Lcom/unitech/dmservice/IApnCtrlAidl;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 432
    :try_start_0
    invoke-interface {v3}, Lcom/unitech/dmservice/IApnCtrlAidl;->ApnGetActivieProfileApnName()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "errorCode"

    .line 434
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "errorMsg"

    .line 435
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 436
    invoke-direct {p0, v5, v6}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 438
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 441
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 442
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    const-string v0, "ApnCtrlAidl.ApnGetActivieProfileApnName exception: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    goto :goto_0

    :cond_0
    const-string v0, "ApnCtrlAidl is null."

    .line 445
    invoke-direct {p0, v4, v0}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 448
    :goto_0
    sget-object v0, Lcom/unitech/api/apn/ApnCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v1, v2}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v5
.end method

.method public ApnGetNameList()Landroid/os/Bundle;
    .locals 7

    const-string v0, "ApnNameList"

    .line 464
    invoke-direct {p0}, Lcom/unitech/api/apn/ApnCtrl;->tryToBindService()Z

    .line 465
    sget-object v1, Lcom/unitech/api/apn/ApnCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v1

    const-string v3, "UnitechSDK"

    const-string v4, "ApnCtrl, ApnGetNameList()"

    .line 467
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    sget-object v3, Lcom/unitech/api/apn/ApnCtrl;->ApnCtrlAidl:Lcom/unitech/dmservice/IApnCtrlAidl;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 472
    :try_start_0
    invoke-interface {v3}, Lcom/unitech/dmservice/IApnCtrlAidl;->ApnGetNameList()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "errorCode"

    .line 474
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "errorMsg"

    .line 475
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 476
    invoke-direct {p0, v5, v6}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 478
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 481
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 482
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    const-string v0, "ApnCtrlAidl.ApnGetNameList exception: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    goto :goto_0

    :cond_0
    const-string v0, "ApnCtrlAidl is null."

    .line 485
    invoke-direct {p0, v4, v0}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 488
    :goto_0
    sget-object v0, Lcom/unitech/api/apn/ApnCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v1, v2}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v5
.end method

.method public ApnGetProfile(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apnName"
        }
    .end annotation

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApnCtrl, ApnGetProfile(), ApnName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string p1, "ApnCtrl, ApnGetProfile failed: apnName cannot be empty."

    .line 513
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 517
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/apn/ApnCtrl;->tryToBindService()Z

    .line 518
    sget-object v0, Lcom/unitech/api/apn/ApnCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v3

    .line 519
    sget-object v0, Lcom/unitech/api/apn/ApnCtrl;->ApnCtrlAidl:Lcom/unitech/dmservice/IApnCtrlAidl;

    if-eqz v0, :cond_1

    const/4 v5, 0x0

    .line 522
    :try_start_0
    invoke-interface {v0, p1}, Lcom/unitech/dmservice/IApnCtrlAidl;->ApnGetProfile(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    .line 524
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v6, "errorMsg"

    .line 525
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 526
    invoke-direct {p0, v0, v6}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v6, 0x0

    .line 528
    :goto_0
    iget-object v7, p0, Lcom/unitech/api/apn/ApnCtrl;->COLUMNS_OF_APN:[Ljava/lang/String;

    array-length v7, v7

    if-ge v6, v7, :cond_2

    .line 530
    iget-object v7, p0, Lcom/unitech/api/apn/ApnCtrl;->COLUMNS_OF_APN:[Ljava/lang/String;

    aget-object v7, v7, v6

    iget-object v8, p0, Lcom/unitech/api/apn/ApnCtrl;->COLUMNS_OF_APN:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ApnCtrl, ApnGetProfile(), COLUMNS_OF_APN["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/unitech/api/apn/ApnCtrl;->COLUMNS_OF_APN:[Ljava/lang/String;

    aget-object v8, v8, v6

    .line 533
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 532
    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 537
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v2, [Ljava/lang/Object;

    .line 538
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v5

    const-string p1, "ApnCtrlAidl.ApnGetProfile exception: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string p1, "ApnCtrlAidl is null."

    .line 541
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 544
    :cond_2
    :goto_1
    sget-object p1, Lcom/unitech/api/apn/ApnCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p1, v3, v4}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v0
.end method

.method public ApnProfileIsExist(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apnName"
        }
    .end annotation

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApnCtrl, ApnProfileIsExist(), apnName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "ApnCtrl, ApnProfileIsExist failed: apnName cannot be empty."

    .line 261
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 265
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/apn/ApnCtrl;->tryToBindService()Z

    .line 266
    sget-object v0, Lcom/unitech/api/apn/ApnCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v2

    .line 268
    sget-object v0, Lcom/unitech/api/apn/ApnCtrl;->ApnCtrlAidl:Lcom/unitech/dmservice/IApnCtrlAidl;

    if-eqz v0, :cond_1

    .line 271
    :try_start_0
    invoke-interface {v0, p1}, Lcom/unitech/dmservice/IApnCtrlAidl;->ApnProfileIsExist(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    .line 273
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v4, "errorMsg"

    .line 274
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 275
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 278
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 279
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "ApnCtrlAidl.ApnProfileIsExist exception: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "ApnCtrlAidl is null."

    .line 282
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 285
    :goto_0
    sget-object v0, Lcom/unitech/api/apn/ApnCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public ApnSetActiveProfile(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apnName"
        }
    .end annotation

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApnCtrl, ApnSetActiveProfile(), apnName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "ApnCtrl, ApnSetActiveProfile failed: apnName cannot be empty."

    .line 385
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 389
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/apn/ApnCtrl;->tryToBindService()Z

    .line 390
    sget-object v0, Lcom/unitech/api/apn/ApnCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v2

    .line 391
    sget-object v0, Lcom/unitech/api/apn/ApnCtrl;->ApnCtrlAidl:Lcom/unitech/dmservice/IApnCtrlAidl;

    if-eqz v0, :cond_1

    .line 394
    :try_start_0
    invoke-interface {v0, p1}, Lcom/unitech/dmservice/IApnCtrlAidl;->ApnSetActiveProfile(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    .line 396
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v4, "errorMsg"

    .line 397
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 398
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 401
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 402
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "ApnCtrlAidl.ApnSetActiveProfile exception: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "ApnCtrlAidl is null."

    .line 405
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 408
    :goto_0
    sget-object v0, Lcom/unitech/api/apn/ApnCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public ApnUpdateProfile(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "profileData"
        }
    .end annotation

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApnCtrl, ApnUpdateProfile(), profileData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "ApnCtrl, ApnUpdateProfile failed: profileData cannot be empty."

    .line 306
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 310
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/apn/ApnCtrl;->tryToBindService()Z

    .line 311
    sget-object v0, Lcom/unitech/api/apn/ApnCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v2

    .line 313
    sget-object v0, Lcom/unitech/api/apn/ApnCtrl;->ApnCtrlAidl:Lcom/unitech/dmservice/IApnCtrlAidl;

    if-eqz v0, :cond_1

    .line 316
    :try_start_0
    invoke-interface {v0, p1}, Lcom/unitech/dmservice/IApnCtrlAidl;->ApnUpdateProfile(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    .line 318
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v4, "errorMsg"

    .line 319
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 320
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 323
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 324
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "ApnCtrlAidl.ApnUpdateProfile exception: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "ApnCtrlAidl is null."

    .line 327
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 330
    :goto_0
    sget-object v0, Lcom/unitech/api/apn/ApnCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public getActiveNetworkBearers()Landroid/os/Bundle;
    .locals 6

    .line 598
    invoke-direct {p0}, Lcom/unitech/api/apn/ApnCtrl;->tryToBindService()Z

    .line 599
    sget-object v0, Lcom/unitech/api/apn/ApnCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    const-string v2, "UnitechSDK"

    const-string v3, "ApnCtrl, getActiveNetworkBearers() ..."

    .line 601
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    sget-object v2, Lcom/unitech/api/apn/ApnCtrl;->ApnCtrlAidl:Lcom/unitech/dmservice/IApnCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 607
    :try_start_0
    invoke-interface {v2}, Lcom/unitech/dmservice/IApnCtrlAidl;->getActiveNetworkBearers()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 609
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 610
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 611
    invoke-direct {p0, v4, v5}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 612
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 614
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 615
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "ApnCtrlAidl.getActiveNetworkBearers exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v2, "ApnCtrlAidl is null."

    .line 620
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 622
    :goto_0
    sget-object v2, Lcom/unitech/api/apn/ApnCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4
.end method

.method public getDefaultDataSubscriptionId()Landroid/os/Bundle;
    .locals 6

    .line 715
    invoke-direct {p0}, Lcom/unitech/api/apn/ApnCtrl;->tryToBindService()Z

    .line 716
    sget-object v0, Lcom/unitech/api/apn/ApnCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    const-string v2, "UnitechSDK"

    const-string v3, "ApnCtrl, getDefaultDataSubscriptionId() ..."

    .line 718
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    sget-object v2, Lcom/unitech/api/apn/ApnCtrl;->ApnCtrlAidl:Lcom/unitech/dmservice/IApnCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 724
    :try_start_0
    invoke-interface {v2}, Lcom/unitech/dmservice/IApnCtrlAidl;->getDefaultDataSubscriptionId()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 726
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 727
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 728
    invoke-direct {p0, v4, v5}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 729
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 731
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 732
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "ApnCtrlAidl.getDefaultDataSubscriptionId exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v2, "ApnCtrlAidl is null."

    .line 737
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 739
    :goto_0
    sget-object v2, Lcom/unitech/api/apn/ApnCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4
.end method

.method public getSignalStrength()Landroid/os/Bundle;
    .locals 6

    .line 676
    invoke-direct {p0}, Lcom/unitech/api/apn/ApnCtrl;->tryToBindService()Z

    .line 677
    sget-object v0, Lcom/unitech/api/apn/ApnCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    const-string v2, "UnitechSDK"

    const-string v3, "ApnCtrl, getSignalStrength() ..."

    .line 679
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    sget-object v2, Lcom/unitech/api/apn/ApnCtrl;->ApnCtrlAidl:Lcom/unitech/dmservice/IApnCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 685
    :try_start_0
    invoke-interface {v2}, Lcom/unitech/dmservice/IApnCtrlAidl;->getSignalStrength()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 687
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 688
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 689
    invoke-direct {p0, v4, v5}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 690
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 692
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 693
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "ApnCtrlAidl.getSignalStrength exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v2, "ApnCtrlAidl is null."

    .line 698
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 700
    :goto_0
    sget-object v2, Lcom/unitech/api/apn/ApnCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4
.end method

.method public getSupportNetworkBearers()Landroid/os/Bundle;
    .locals 6

    .line 753
    invoke-direct {p0}, Lcom/unitech/api/apn/ApnCtrl;->tryToBindService()Z

    .line 754
    sget-object v0, Lcom/unitech/api/apn/ApnCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    const-string v2, "UnitechSDK"

    const-string v3, "ApnCtrl, getSupportNetworkBearers() ..."

    .line 756
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    sget-object v2, Lcom/unitech/api/apn/ApnCtrl;->ApnCtrlAidl:Lcom/unitech/dmservice/IApnCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 762
    :try_start_0
    invoke-interface {v2}, Lcom/unitech/dmservice/IApnCtrlAidl;->getSupportNetworkBearers()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 764
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 765
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 766
    invoke-direct {p0, v4, v5}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 767
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 769
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 770
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "ApnCtrlAidl.getSupportNetworkBearers exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v2, "ApnCtrlAidl is null."

    .line 775
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 777
    :goto_0
    sget-object v2, Lcom/unitech/api/apn/ApnCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4
.end method

.method public getWWANIpAddress()Landroid/os/Bundle;
    .locals 6

    .line 637
    invoke-direct {p0}, Lcom/unitech/api/apn/ApnCtrl;->tryToBindService()Z

    .line 638
    sget-object v0, Lcom/unitech/api/apn/ApnCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    const-string v2, "UnitechSDK"

    const-string v3, "ApnCtrl, getWWANIpAddress() ..."

    .line 640
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    sget-object v2, Lcom/unitech/api/apn/ApnCtrl;->ApnCtrlAidl:Lcom/unitech/dmservice/IApnCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 646
    :try_start_0
    invoke-interface {v2}, Lcom/unitech/dmservice/IApnCtrlAidl;->getWWANIpAddress()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "errorCode"

    .line 648
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    .line 649
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 650
    invoke-direct {p0, v4, v5}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 651
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 653
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 654
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "ApnCtrlAidl.getWWANIpAddress exception: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v2, "ApnCtrlAidl is null."

    .line 659
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 661
    :goto_0
    sget-object v2, Lcom/unitech/api/apn/ApnCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4
.end method

.method public setAirplaneMode(Z)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 560
    invoke-direct {p0}, Lcom/unitech/api/apn/ApnCtrl;->tryToBindService()Z

    .line 561
    sget-object v0, Lcom/unitech/api/apn/ApnCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 563
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ApnCtrl, setAirplaneMode(), enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UnitechSDK"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    sget-object v2, Lcom/unitech/api/apn/ApnCtrl;->ApnCtrlAidl:Lcom/unitech/dmservice/IApnCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 568
    :try_start_0
    invoke-interface {v2, p1}, Lcom/unitech/dmservice/IApnCtrlAidl;->setAirplaneMode(Z)Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "errorCode"

    .line 570
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v4, "errorMsg"

    .line 571
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 572
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 575
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 576
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "ApnCtrlAidl.setAirplaneMode exception: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "ApnCtrlAidl is null."

    .line 579
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/apn/ApnCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 582
    :goto_0
    sget-object v2, Lcom/unitech/api/apn/ApnCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method
