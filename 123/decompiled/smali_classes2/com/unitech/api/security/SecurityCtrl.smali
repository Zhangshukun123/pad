.class public Lcom/unitech/api/security/SecurityCtrl;
.super Ljava/lang/Object;
.source "SecurityCtrl.java"


# static fields
.field private static final ACTION_BIND_SERVICE:Ljava/lang/String; = "com.unitech.dmservice.action.security"

.field public static final BUNDLE_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final BUNDLE_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field private static final DMIPKG_API_SERVICE:Ljava/lang/String; = "com.unitech.dmiservice"

.field private static final DMI_ACTION_BIND_SERVICE:Ljava/lang/String; = "com.unitech.dmiservice.action.bind"

.field private static final PKG_API_SERVICE:Ljava/lang/String; = "com.unitech.dmservice"

.field public static final RESULT_CODE_ERROR:I = 0x1

.field public static final RESULT_CODE_SUCCESS:I = 0x0

.field private static SecurityCtrlAidl:Lcom/unitech/dmservice/ISecurityCtrlAidl; = null

.field private static final TAG:Ljava/lang/String; = "UnitechSDK"

.field private static dmiAidl:Lcom/unitech/dmiservice/IDmiAidl; = null

.field private static mContext:Landroid/content/Context; = null

.field private static mDmiServiceHandler:Lcom/unitech/api/util/ServiceHandler; = null

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

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/unitech/api/security/SecurityCtrl;->mContext:Landroid/content/Context;

    .line 81
    sget-object v0, Lcom/unitech/api/security/SecurityCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/unitech/api/util/ServiceHandler;

    .line 83
    invoke-direct {p0}, Lcom/unitech/api/security/SecurityCtrl;->createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v1

    const-string v2, "com.unitech.dmservice"

    const-string v3, "com.unitech.dmservice.action.security"

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    sput-object v0, Lcom/unitech/api/security/SecurityCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    .line 85
    :cond_0
    sget p1, Lcom/unitech/api/security/SecurityCtrl;->mServiceChecked:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 86
    invoke-direct {p0}, Lcom/unitech/api/security/SecurityCtrl;->checkSecurityCtrlService()V

    .line 89
    :cond_1
    new-instance p1, Lcom/unitech/api/util/ServiceHandler;

    sget-object v0, Lcom/unitech/api/security/SecurityCtrl;->mContext:Landroid/content/Context;

    .line 90
    invoke-direct {p0}, Lcom/unitech/api/security/SecurityCtrl;->createDmiServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v1

    const-string v2, "com.unitech.dmiservice"

    const-string v3, "com.unitech.dmiservice.action.bind"

    invoke-direct {p1, v0, v2, v3, v1}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    sput-object p1, Lcom/unitech/api/security/SecurityCtrl;->mDmiServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    return-void
.end method

.method static synthetic access$002(Lcom/unitech/dmiservice/IDmiAidl;)Lcom/unitech/dmiservice/IDmiAidl;
    .locals 0

    .line 21
    sput-object p0, Lcom/unitech/api/security/SecurityCtrl;->dmiAidl:Lcom/unitech/dmiservice/IDmiAidl;

    return-object p0
.end method

.method static synthetic access$102(Lcom/unitech/dmservice/ISecurityCtrlAidl;)Lcom/unitech/dmservice/ISecurityCtrlAidl;
    .locals 0

    .line 21
    sput-object p0, Lcom/unitech/api/security/SecurityCtrl;->SecurityCtrlAidl:Lcom/unitech/dmservice/ISecurityCtrlAidl;

    return-object p0
.end method

.method private checkSecurityCtrlService()V
    .locals 5

    .line 94
    sget v0, Lcom/unitech/api/security/SecurityCtrl;->mServiceChecked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 101
    :cond_0
    sget-object v0, Lcom/unitech/api/security/SecurityCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 102
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 104
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

    .line 105
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

    const-string v0, "SecurityCtrl, package com.unitech.dmservice is found."

    .line 112
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sput v3, Lcom/unitech/api/security/SecurityCtrl;->mServiceChecked:I

    goto :goto_1

    :cond_3
    const-string v0, "SecurityCtrl, package com.unitech.dmservice is not found"

    .line 115
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sput v1, Lcom/unitech/api/security/SecurityCtrl;->mServiceChecked:I

    :goto_1
    return-void
.end method

.method private createDmiServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
    .locals 1

    .line 42
    new-instance v0, Lcom/unitech/api/security/SecurityCtrl$1;

    invoke-direct {v0, p0}, Lcom/unitech/api/security/SecurityCtrl$1;-><init>(Lcom/unitech/api/security/SecurityCtrl;)V

    return-object v0
.end method

.method private createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
    .locals 1

    .line 132
    new-instance v0, Lcom/unitech/api/security/SecurityCtrl$2;

    invoke-direct {v0, p0}, Lcom/unitech/api/security/SecurityCtrl$2;-><init>(Lcom/unitech/api/security/SecurityCtrl;)V

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

    .line 155
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 157
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

    .line 121
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    .line 122
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "errorMsg"

    .line 123
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private setBundleResult(Landroid/os/Bundle;ILjava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resourceBundle",
            "errorCode",
            "errorMsg"
        }
    .end annotation

    const-string v0, "errorCode"

    .line 127
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "errorMsg"

    .line 128
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private tryToBindDmiService()Z
    .locals 1

    .line 65
    :try_start_0
    sget-object v0, Lcom/unitech/api/security/SecurityCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unitech/api/security/SecurityCtrl;->ensureNotOnMainThread(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    sget-object v0, Lcom/unitech/api/security/SecurityCtrl;->mDmiServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method private tryToBindService()Z
    .locals 1

    .line 164
    :try_start_0
    sget-object v0, Lcom/unitech/api/security/SecurityCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unitech/api/security/SecurityCtrl;->ensureNotOnMainThread(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    sget-object v0, Lcom/unitech/api/security/SecurityCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public LockscreenGetType()Landroid/os/Bundle;
    .locals 7

    .line 239
    invoke-direct {p0}, Lcom/unitech/api/security/SecurityCtrl;->tryToBindDmiService()Z

    .line 240
    sget-object v0, Lcom/unitech/api/security/SecurityCtrl;->mDmiServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 242
    :try_start_0
    sget-object v3, Lcom/unitech/api/security/SecurityCtrl;->dmiAidl:Lcom/unitech/dmiservice/IDmiAidl;

    if-eqz v3, :cond_0

    .line 243
    sget-object v3, Lcom/unitech/api/security/SecurityCtrl;->dmiAidl:Lcom/unitech/dmiservice/IDmiAidl;

    invoke-interface {v3}, Lcom/unitech/dmiservice/IDmiAidl;->LockscreenGetType()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "Result"

    .line 244
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "Message"

    const-string v6, ""

    .line 245
    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "errorCode"

    .line 246
    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "errorMsg"

    .line 247
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v3, "SecurityCtrl DmiAidl is null."

    .line 251
    invoke-direct {p0, v2, v3}, Lcom/unitech/api/security/SecurityCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 254
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SecurityCtrl DmiAidl LockscreenGetType function is not defined."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/unitech/api/security/SecurityCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 256
    :goto_0
    sget-object v2, Lcom/unitech/api/security/SecurityCtrl;->mDmiServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v3
.end method

.method public LockscreenSetType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "newType",
            "newParam",
            "curType",
            "curParam"
        }
    .end annotation

    const-string v0, "PIN"

    .line 306
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Swipe"

    const-string v3, "None"

    const-string v4, "Password"

    const/4 v5, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "SecurityCtrl LockscreenSetType newType is not supported."

    .line 307
    invoke-direct {p0, v5, p1}, Lcom/unitech/api/security/SecurityCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 310
    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "SecurityCtrl LockscreenSetType curType is not supported."

    .line 311
    invoke-direct {p0, v5, p1}, Lcom/unitech/api/security/SecurityCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 314
    :cond_1
    invoke-direct {p0}, Lcom/unitech/api/security/SecurityCtrl;->tryToBindDmiService()Z

    .line 315
    sget-object v0, Lcom/unitech/api/security/SecurityCtrl;->mDmiServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 317
    :try_start_0
    sget-object v2, Lcom/unitech/api/security/SecurityCtrl;->dmiAidl:Lcom/unitech/dmiservice/IDmiAidl;

    if-eqz v2, :cond_2

    .line 318
    sget-object v2, Lcom/unitech/api/security/SecurityCtrl;->dmiAidl:Lcom/unitech/dmiservice/IDmiAidl;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/unitech/dmiservice/IDmiAidl;->LockscreenSetType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "Result"

    .line 319
    invoke-virtual {p1, p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    const-string p3, "Message"

    const-string p4, ""

    .line 320
    invoke-virtual {p1, p3, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "errorCode"

    .line 321
    invoke-virtual {p1, p4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "errorMsg"

    .line 322
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "SecurityCtrl DmiAidl is null."

    .line 326
    invoke-direct {p0, v5, p1}, Lcom/unitech/api/security/SecurityCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 329
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 330
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SecurityCtrl DmiAidl LockscreenSetType function is not defined or IllegalArgumentException. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v5, p1}, Lcom/unitech/api/security/SecurityCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 332
    :goto_0
    sget-object p2, Lcom/unitech/api/security/SecurityCtrl;->mDmiServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public setAdbDebugging(Z)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 184
    invoke-direct {p0}, Lcom/unitech/api/security/SecurityCtrl;->tryToBindService()Z

    .line 185
    sget-object v0, Lcom/unitech/api/security/SecurityCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecurityCtrl, setAdbDebugging(), enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UnitechSDK"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget-object v2, Lcom/unitech/api/security/SecurityCtrl;->SecurityCtrlAidl:Lcom/unitech/dmservice/ISecurityCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 192
    :try_start_0
    invoke-interface {v2, p1}, Lcom/unitech/dmservice/ISecurityCtrlAidl;->setAdbDebugging(Z)Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "errorCode"

    .line 194
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v4, "errorMsg"

    .line 195
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/security/SecurityCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 199
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 200
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "SecurityCtrlAidl.setAdbDebugging exception: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/security/SecurityCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "SecurityCtrlAidl is null."

    .line 203
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/security/SecurityCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 206
    :goto_0
    sget-object v2, Lcom/unitech/api/security/SecurityCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method
