.class public Lcom/unitech/api/keypad/KeypadCtrl;
.super Ljava/lang/Object;
.source "KeypadCtrl.java"


# static fields
.field private static final ACTION_BIND_SERVICE:Ljava/lang/String; = "com.unitech.dmservice.action.keypadctrl"

.field public static final BUNDLE_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final BUNDLE_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field private static KeypadCtrlAidl:Lcom/unitech/dmservice/IKeypadCtrlAidl; = null

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

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/unitech/api/keypad/KeypadCtrl;->mContext:Landroid/content/Context;

    .line 49
    sget-object v0, Lcom/unitech/api/keypad/KeypadCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/unitech/api/util/ServiceHandler;

    .line 51
    invoke-direct {p0}, Lcom/unitech/api/keypad/KeypadCtrl;->createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v1

    const-string v2, "com.unitech.dmservice"

    const-string v3, "com.unitech.dmservice.action.keypadctrl"

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    sput-object v0, Lcom/unitech/api/keypad/KeypadCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    .line 53
    :cond_0
    sget p1, Lcom/unitech/api/keypad/KeypadCtrl;->mServiceChecked:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 54
    invoke-direct {p0}, Lcom/unitech/api/keypad/KeypadCtrl;->checkKeypadCtrlService()V

    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/unitech/dmservice/IKeypadCtrlAidl;)Lcom/unitech/dmservice/IKeypadCtrlAidl;
    .locals 0

    .line 25
    sput-object p0, Lcom/unitech/api/keypad/KeypadCtrl;->KeypadCtrlAidl:Lcom/unitech/dmservice/IKeypadCtrlAidl;

    return-object p0
.end method

.method private checkKeypadCtrlService()V
    .locals 5

    .line 59
    sget v0, Lcom/unitech/api/keypad/KeypadCtrl;->mServiceChecked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 66
    :cond_0
    sget-object v0, Lcom/unitech/api/keypad/KeypadCtrl;->mContext:Landroid/content/Context;

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

    const-string v0, "KeypadCtrl, package com.unitech.dmservice is found."

    .line 77
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sput v3, Lcom/unitech/api/keypad/KeypadCtrl;->mServiceChecked:I

    goto :goto_1

    :cond_3
    const-string v0, "KeypadCtrl, package com.unitech.dmservice is not found"

    .line 80
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sput v1, Lcom/unitech/api/keypad/KeypadCtrl;->mServiceChecked:I

    :goto_1
    return-void
.end method

.method private createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
    .locals 1

    .line 93
    new-instance v0, Lcom/unitech/api/keypad/KeypadCtrl$1;

    invoke-direct {v0, p0}, Lcom/unitech/api/keypad/KeypadCtrl$1;-><init>(Lcom/unitech/api/keypad/KeypadCtrl;)V

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
    sget-object v0, Lcom/unitech/api/keypad/KeypadCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unitech/api/keypad/KeypadCtrl;->ensureNotOnMainThread(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    sget-object v0, Lcom/unitech/api/keypad/KeypadCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

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
.method public getBacklight()Landroid/os/Bundle;
    .locals 7

    .line 276
    invoke-direct {p0}, Lcom/unitech/api/keypad/KeypadCtrl;->tryToBindService()Z

    .line 277
    sget-object v0, Lcom/unitech/api/keypad/KeypadCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    const-string v2, "UnitechSDK"

    const-string v3, "KeypadCtrl, getBacklight()"

    .line 278
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    sget-object v3, Lcom/unitech/api/keypad/KeypadCtrl;->KeypadCtrlAidl:Lcom/unitech/dmservice/IKeypadCtrlAidl;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 281
    :try_start_0
    invoke-interface {v3}, Lcom/unitech/dmservice/IKeypadCtrlAidl;->getVibration()Landroid/os/Bundle;

    move-result-object v3

    .line 282
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KeypadCtrl, getBacklight(), getBacklight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "enable"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 284
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 285
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    const-string v2, "KeypadCtrlAidl.getBacklight exception: %s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcom/unitech/api/keypad/KeypadCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v2, "KeypadCtrlAidl is null."

    .line 288
    invoke-direct {p0, v4, v2}, Lcom/unitech/api/keypad/KeypadCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 290
    :goto_0
    sget-object v2, Lcom/unitech/api/keypad/KeypadCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v3
.end method

.method public getFunctionMode()Landroid/os/Bundle;
    .locals 7

    .line 382
    invoke-direct {p0}, Lcom/unitech/api/keypad/KeypadCtrl;->tryToBindService()Z

    .line 383
    sget-object v0, Lcom/unitech/api/keypad/KeypadCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    const-string v2, "UnitechSDK"

    const-string v3, "KeypadCtrl, getFunctionMode()"

    .line 384
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    sget-object v3, Lcom/unitech/api/keypad/KeypadCtrl;->KeypadCtrlAidl:Lcom/unitech/dmservice/IKeypadCtrlAidl;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 387
    :try_start_0
    invoke-interface {v3}, Lcom/unitech/dmservice/IKeypadCtrlAidl;->getFunctionMode()Landroid/os/Bundle;

    move-result-object v3

    .line 388
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KeypadCtrl, getFunctionMode(), getFunctionMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "enable"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 390
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 391
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    const-string v2, "KeypadCtrlAidl.getFunctionMode exception: %s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcom/unitech/api/keypad/KeypadCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v2, "KeypadCtrlAidl is null."

    .line 394
    invoke-direct {p0, v4, v2}, Lcom/unitech/api/keypad/KeypadCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 396
    :goto_0
    sget-object v2, Lcom/unitech/api/keypad/KeypadCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v3
.end method

.method public getMode()Landroid/os/Bundle;
    .locals 7

    .line 329
    invoke-direct {p0}, Lcom/unitech/api/keypad/KeypadCtrl;->tryToBindService()Z

    .line 330
    sget-object v0, Lcom/unitech/api/keypad/KeypadCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    const-string v2, "UnitechSDK"

    const-string v3, "KeypadCtrl, getMode()"

    .line 331
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    sget-object v3, Lcom/unitech/api/keypad/KeypadCtrl;->KeypadCtrlAidl:Lcom/unitech/dmservice/IKeypadCtrlAidl;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 334
    :try_start_0
    invoke-interface {v3}, Lcom/unitech/dmservice/IKeypadCtrlAidl;->getMode()Landroid/os/Bundle;

    move-result-object v3

    .line 335
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KeypadCtrl, getMode(), getMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "mode"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 337
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 338
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    const-string v2, "KeypadCtrlAidl.getMode exception: %s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcom/unitech/api/keypad/KeypadCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v2, "KeypadCtrlAidl is null."

    .line 341
    invoke-direct {p0, v4, v2}, Lcom/unitech/api/keypad/KeypadCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 343
    :goto_0
    sget-object v2, Lcom/unitech/api/keypad/KeypadCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v3
.end method

.method public getSound()Landroid/os/Bundle;
    .locals 7

    .line 170
    invoke-direct {p0}, Lcom/unitech/api/keypad/KeypadCtrl;->tryToBindService()Z

    .line 171
    sget-object v0, Lcom/unitech/api/keypad/KeypadCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    const-string v2, "UnitechSDK"

    const-string v3, "KeypadCtrl, getSound()"

    .line 172
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sget-object v3, Lcom/unitech/api/keypad/KeypadCtrl;->KeypadCtrlAidl:Lcom/unitech/dmservice/IKeypadCtrlAidl;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 175
    :try_start_0
    invoke-interface {v3}, Lcom/unitech/dmservice/IKeypadCtrlAidl;->getSound()Landroid/os/Bundle;

    move-result-object v3

    .line 176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KeypadCtrl, getSound(), getSound="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "enable"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 178
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 179
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    const-string v2, "KeypadCtrlAidl.getSound exception: %s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcom/unitech/api/keypad/KeypadCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v2, "KeypadCtrlAidl is null."

    .line 182
    invoke-direct {p0, v4, v2}, Lcom/unitech/api/keypad/KeypadCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 184
    :goto_0
    sget-object v2, Lcom/unitech/api/keypad/KeypadCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v3
.end method

.method public getVibration()Landroid/os/Bundle;
    .locals 7

    .line 223
    invoke-direct {p0}, Lcom/unitech/api/keypad/KeypadCtrl;->tryToBindService()Z

    .line 224
    sget-object v0, Lcom/unitech/api/keypad/KeypadCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    const-string v2, "UnitechSDK"

    const-string v3, "KeypadCtrl, getVibration()"

    .line 225
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    sget-object v3, Lcom/unitech/api/keypad/KeypadCtrl;->KeypadCtrlAidl:Lcom/unitech/dmservice/IKeypadCtrlAidl;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 228
    :try_start_0
    invoke-interface {v3}, Lcom/unitech/dmservice/IKeypadCtrlAidl;->getVibration()Landroid/os/Bundle;

    move-result-object v3

    .line 229
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KeypadCtrl, getVibration(), getVibration="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "enable"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 231
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 232
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    const-string v2, "KeypadCtrlAidl.getVibration exception: %s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcom/unitech/api/keypad/KeypadCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v2, "KeypadCtrlAidl is null."

    .line 235
    invoke-direct {p0, v4, v2}, Lcom/unitech/api/keypad/KeypadCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 237
    :goto_0
    sget-object v2, Lcom/unitech/api/keypad/KeypadCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v3
.end method

.method public setBacklight(Z)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 250
    invoke-direct {p0}, Lcom/unitech/api/keypad/KeypadCtrl;->tryToBindService()Z

    .line 251
    sget-object v0, Lcom/unitech/api/keypad/KeypadCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeypadCtrl, setBacklight(), enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UnitechSDK"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    sget-object v2, Lcom/unitech/api/keypad/KeypadCtrl;->KeypadCtrlAidl:Lcom/unitech/dmservice/IKeypadCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 255
    :try_start_0
    invoke-interface {v2, p1}, Lcom/unitech/dmservice/IKeypadCtrlAidl;->setBacklight(Z)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 257
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 258
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "KeypadCtrlAidl.setBacklight exception: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/keypad/KeypadCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "KeypadCtrlAidl is null."

    .line 261
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/keypad/KeypadCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 263
    :goto_0
    sget-object v2, Lcom/unitech/api/keypad/KeypadCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public setFunctionMode(Z)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 356
    invoke-direct {p0}, Lcom/unitech/api/keypad/KeypadCtrl;->tryToBindService()Z

    .line 357
    sget-object v0, Lcom/unitech/api/keypad/KeypadCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeypadCtrl, setFunctionMode(), enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UnitechSDK"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    sget-object v2, Lcom/unitech/api/keypad/KeypadCtrl;->KeypadCtrlAidl:Lcom/unitech/dmservice/IKeypadCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 361
    :try_start_0
    invoke-interface {v2, p1}, Lcom/unitech/dmservice/IKeypadCtrlAidl;->setFunctionMode(Z)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 363
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 364
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "KeypadCtrlAidl.setFunctionMode exception: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/keypad/KeypadCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "KeypadCtrlAidl is null."

    .line 367
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/keypad/KeypadCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 369
    :goto_0
    sget-object v2, Lcom/unitech/api/keypad/KeypadCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public setMode(I)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 303
    invoke-direct {p0}, Lcom/unitech/api/keypad/KeypadCtrl;->tryToBindService()Z

    .line 304
    sget-object v0, Lcom/unitech/api/keypad/KeypadCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeypadCtrl, setMode(), mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UnitechSDK"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    sget-object v2, Lcom/unitech/api/keypad/KeypadCtrl;->KeypadCtrlAidl:Lcom/unitech/dmservice/IKeypadCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 308
    :try_start_0
    invoke-interface {v2, p1}, Lcom/unitech/dmservice/IKeypadCtrlAidl;->setMode(I)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 310
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 311
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "KeypadCtrlAidl.setMode exception: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/keypad/KeypadCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "KeypadCtrlAidl is null."

    .line 314
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/keypad/KeypadCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 316
    :goto_0
    sget-object v2, Lcom/unitech/api/keypad/KeypadCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public setSound(Z)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Lcom/unitech/api/keypad/KeypadCtrl;->tryToBindService()Z

    .line 145
    sget-object v0, Lcom/unitech/api/keypad/KeypadCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeypadCtrl, setSound(), enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UnitechSDK"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget-object v2, Lcom/unitech/api/keypad/KeypadCtrl;->KeypadCtrlAidl:Lcom/unitech/dmservice/IKeypadCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 149
    :try_start_0
    invoke-interface {v2, p1}, Lcom/unitech/dmservice/IKeypadCtrlAidl;->setSound(Z)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 151
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 152
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "KeypadCtrlAidl.setSound exception: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/keypad/KeypadCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "KeypadCtrlAidl is null."

    .line 155
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/keypad/KeypadCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 157
    :goto_0
    sget-object v2, Lcom/unitech/api/keypad/KeypadCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public setVibration(Z)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 197
    invoke-direct {p0}, Lcom/unitech/api/keypad/KeypadCtrl;->tryToBindService()Z

    .line 198
    sget-object v0, Lcom/unitech/api/keypad/KeypadCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeypadCtrl, setVibration(), enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UnitechSDK"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sget-object v2, Lcom/unitech/api/keypad/KeypadCtrl;->KeypadCtrlAidl:Lcom/unitech/dmservice/IKeypadCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 202
    :try_start_0
    invoke-interface {v2, p1}, Lcom/unitech/dmservice/IKeypadCtrlAidl;->setVibration(Z)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 204
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 205
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "KeypadCtrlAidl.setVibration exception: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/keypad/KeypadCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "KeypadCtrlAidl is null."

    .line 208
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/keypad/KeypadCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 210
    :goto_0
    sget-object v2, Lcom/unitech/api/keypad/KeypadCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method
