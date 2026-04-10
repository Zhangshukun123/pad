.class public Lcom/unitech/api/uapps/StageGoCtrl;
.super Ljava/lang/Object;
.source "StageGoCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unitech/api/uapps/StageGoCtrl$Api;
    }
.end annotation


# static fields
.field public static final BUNDLE_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final BUNDLE_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field private static final MOBOLINK_API_ACTION:Ljava/lang/String; = "mobolink.api.action"

.field public static final RESULT_CODE_ERROR:I = 0x1

.field public static final RESULT_CODE_SUCCESS:I = 0x0

.field private static final STAGEGO_2_PACKAGE_NAME:Ljava/lang/String; = "com.unitech.stagego2"

.field private static final STAGEGO_API_ACTION:Ljava/lang/String; = "stagego.api.action"

.field private static final STAGEGO_API_RESULT_ACTION:Ljava/lang/String; = "ActionStageGoResult"

.field private static final TAG:Ljava/lang/String; = "UnitechSDK"

.field private static mCondition:Ljava/util/concurrent/locks/Condition;

.field private static mContext:Landroid/content/Context;

.field private static mLocker:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private mBroadcastHandler:Lcom/unitech/api/util/BroadcastHandler;

.field private mResult:Ljava/lang/String;

.field private mResultReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mResult:Ljava/lang/String;

    .line 362
    new-instance v0, Lcom/unitech/api/uapps/StageGoCtrl$1;

    invoke-direct {v0, p0}, Lcom/unitech/api/uapps/StageGoCtrl$1;-><init>(Lcom/unitech/api/uapps/StageGoCtrl;)V

    iput-object v0, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/unitech/api/uapps/StageGoCtrl;->mContext:Landroid/content/Context;

    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "ActionStageGoResult"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 45
    new-instance v1, Lcom/unitech/api/util/BroadcastHandler;

    iget-object v2, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {v1, p1, v0, v2}, Lcom/unitech/api/util/BroadcastHandler;-><init>(Landroid/content/Context;Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mBroadcastHandler:Lcom/unitech/api/util/BroadcastHandler;

    .line 47
    sget-object p1, Lcom/unitech/api/uapps/StageGoCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    if-nez p1, :cond_0

    .line 48
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object p1, Lcom/unitech/api/uapps/StageGoCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    .line 49
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    sput-object p1, Lcom/unitech/api/uapps/StageGoCtrl;->mCondition:Ljava/util/concurrent/locks/Condition;

    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/unitech/api/uapps/StageGoCtrl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mResult:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 17
    sget-object v0, Lcom/unitech/api/uapps/StageGoCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/concurrent/locks/Condition;
    .locals 1

    .line 17
    sget-object v0, Lcom/unitech/api/uapps/StageGoCtrl;->mCondition:Ljava/util/concurrent/locks/Condition;

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

    .line 62
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 64
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

    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    .line 56
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "errorMsg"

    .line 57
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private tryToRegisterBroadcastReciver()Z
    .locals 1

    .line 71
    :try_start_0
    sget-object v0, Lcom/unitech/api/uapps/StageGoCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unitech/api/uapps/StageGoCtrl;->ensureNotOnMainThread(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    iget-object v0, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mBroadcastHandler:Lcom/unitech/api/util/BroadcastHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/BroadcastHandler;->RegisterBroadcastReciver()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public enabledBootupScript(Z)Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    const-string v0, "StageGoCtrl, enabledBootupScript fail"

    const/4 v1, 0x0

    const-string v2, "StageGoCtrl, enabledBootupScript success"

    .line 178
    invoke-direct {p0, v1, v2}, Lcom/unitech/api/uapps/StageGoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StageGoCtrl, enabledBootupScript(), enabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UnitechSDK"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-direct {p0}, Lcom/unitech/api/uapps/StageGoCtrl;->tryToRegisterBroadcastReciver()Z

    .line 183
    iget-object v2, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mBroadcastHandler:Lcom/unitech/api/util/BroadcastHandler;

    invoke-virtual {v2}, Lcom/unitech/api/util/BroadcastHandler;->getTicket()J

    move-result-wide v2

    .line 184
    sget-object v4, Lcom/unitech/api/uapps/StageGoCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v4, 0x1

    .line 187
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string v6, "stagego.api.action"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.unitech.stagego2"

    .line 188
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "PackageName"

    .line 189
    sget-object v7, Lcom/unitech/api/uapps/StageGoCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "EnableBootupScript"

    .line 190
    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 191
    invoke-virtual {v5, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 192
    sget-object p1, Lcom/unitech/api/uapps/StageGoCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 194
    sget-object p1, Lcom/unitech/api/uapps/StageGoCtrl;->mCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v5, 0x1f4

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v5, v6, v7}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 196
    iget-object p1, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mResult:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mResult:Ljava/lang/String;

    const-string v5, "Success"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 197
    :cond_0
    invoke-direct {p0, v4, v0}, Lcom/unitech/api/uapps/StageGoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 200
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    invoke-direct {p0, v4, v0}, Lcom/unitech/api/uapps/StageGoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 204
    iput-object p1, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mResult:Ljava/lang/String;

    .line 205
    sget-object p1, Lcom/unitech/api/uapps/StageGoCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 206
    iget-object p1, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mBroadcastHandler:Lcom/unitech/api/util/BroadcastHandler;

    invoke-virtual {p1, v2, v3}, Lcom/unitech/api/util/BroadcastHandler;->releaseTicket(J)Z

    return-object v1
.end method

.method public setBootupScript(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filepath"
        }
    .end annotation

    const-string v0, "StageGoCtrl, setBootupScript fail"

    const-string v1, ","

    const-string v2, "\n"

    .line 220
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "StageGoCtrl, setBootupScript success"

    .line 222
    invoke-direct {p0, v2, v3}, Lcom/unitech/api/uapps/StageGoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StageGoCtrl, setBootupScript(), filepath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "UnitechSDK"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-direct {p0}, Lcom/unitech/api/uapps/StageGoCtrl;->tryToRegisterBroadcastReciver()Z

    .line 227
    iget-object p1, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mBroadcastHandler:Lcom/unitech/api/util/BroadcastHandler;

    invoke-virtual {p1}, Lcom/unitech/api/util/BroadcastHandler;->getTicket()J

    move-result-wide v3

    .line 228
    sget-object p1, Lcom/unitech/api/uapps/StageGoCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 p1, 0x1

    .line 231
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string v6, "stagego.api.action"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.unitech.stagego2"

    .line 232
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "PackageName"

    .line 233
    sget-object v7, Lcom/unitech/api/uapps/StageGoCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "SetBootupScripts"

    .line 234
    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    .line 235
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 236
    sget-object v1, Lcom/unitech/api/uapps/StageGoCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 238
    sget-object v1, Lcom/unitech/api/uapps/StageGoCtrl;->mCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v5, 0x1f4

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v5, v6, v7}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 240
    iget-object v1, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mResult:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mResult:Ljava/lang/String;

    const-string v5, "Success"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 241
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/unitech/api/uapps/StageGoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 244
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
    invoke-direct {p0, p1, v0}, Lcom/unitech/api/uapps/StageGoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 248
    iput-object p1, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mResult:Ljava/lang/String;

    .line 249
    sget-object p1, Lcom/unitech/api/uapps/StageGoCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 250
    iget-object p1, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mBroadcastHandler:Lcom/unitech/api/util/BroadcastHandler;

    invoke-virtual {p1, v3, v4}, Lcom/unitech/api/util/BroadcastHandler;->releaseTicket(J)Z

    return-object v2
.end method

.method public setPasscode(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "passcode"
        }
    .end annotation

    const-string v0, "StageGoCtrl, setPasscode fail"

    const/4 v1, 0x0

    const-string v2, "StageGoCtrl, setPasscode success"

    .line 265
    invoke-direct {p0, v1, v2}, Lcom/unitech/api/uapps/StageGoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "UnitechSDK"

    const-string v3, "StageGoCtrl, setPasscode(), setPasscode: ****"

    .line 267
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-direct {p0}, Lcom/unitech/api/uapps/StageGoCtrl;->tryToRegisterBroadcastReciver()Z

    .line 270
    iget-object v2, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mBroadcastHandler:Lcom/unitech/api/util/BroadcastHandler;

    invoke-virtual {v2}, Lcom/unitech/api/util/BroadcastHandler;->getTicket()J

    move-result-wide v2

    .line 271
    sget-object v4, Lcom/unitech/api/uapps/StageGoCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v4, 0x1

    .line 274
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string v6, "stagego.api.action"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.unitech.stagego2"

    .line 275
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "PackageName"

    .line 276
    sget-object v7, Lcom/unitech/api/uapps/StageGoCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "SettingPasscode"

    .line 277
    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 278
    invoke-virtual {v5, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 279
    sget-object p1, Lcom/unitech/api/uapps/StageGoCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 281
    sget-object p1, Lcom/unitech/api/uapps/StageGoCtrl;->mCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v5, 0x1f4

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v5, v6, v7}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 283
    iget-object p1, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mResult:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mResult:Ljava/lang/String;

    const-string v5, "Success"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 284
    :cond_0
    invoke-direct {p0, v4, v0}, Lcom/unitech/api/uapps/StageGoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 287
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 288
    invoke-direct {p0, v4, v0}, Lcom/unitech/api/uapps/StageGoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 291
    iput-object p1, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mResult:Ljava/lang/String;

    .line 292
    sget-object p1, Lcom/unitech/api/uapps/StageGoCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 293
    iget-object p1, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mBroadcastHandler:Lcom/unitech/api/util/BroadcastHandler;

    invoke-virtual {p1, v2, v3}, Lcom/unitech/api/util/BroadcastHandler;->releaseTicket(J)Z

    return-object v1
.end method

.method public setReportMaxNum(I)Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "num"
        }
    .end annotation

    const-string v0, "StageGoCtrl, setReportMaxNum fail"

    const/4 v1, 0x0

    const-string v2, "StageGoCtrl, setReportMaxNum success"

    .line 136
    invoke-direct {p0, v1, v2}, Lcom/unitech/api/uapps/StageGoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StageGoCtrl, setReportMaxNum(), num:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UnitechSDK"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-direct {p0}, Lcom/unitech/api/uapps/StageGoCtrl;->tryToRegisterBroadcastReciver()Z

    .line 141
    iget-object v2, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mBroadcastHandler:Lcom/unitech/api/util/BroadcastHandler;

    invoke-virtual {v2}, Lcom/unitech/api/util/BroadcastHandler;->getTicket()J

    move-result-wide v2

    .line 142
    sget-object v4, Lcom/unitech/api/uapps/StageGoCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v4, 0x1

    .line 145
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string v6, "stagego.api.action"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.unitech.stagego2"

    .line 146
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "PackageName"

    .line 147
    sget-object v7, Lcom/unitech/api/uapps/StageGoCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "MaxNumberOfReportsSaved"

    .line 148
    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 149
    invoke-virtual {v5, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 150
    sget-object p1, Lcom/unitech/api/uapps/StageGoCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 152
    sget-object p1, Lcom/unitech/api/uapps/StageGoCtrl;->mCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v5, 0x1f4

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v5, v6, v7}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 154
    iget-object p1, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mResult:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mResult:Ljava/lang/String;

    const-string v5, "Success"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 155
    :cond_0
    invoke-direct {p0, v4, v0}, Lcom/unitech/api/uapps/StageGoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 158
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 159
    invoke-direct {p0, v4, v0}, Lcom/unitech/api/uapps/StageGoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 162
    iput-object p1, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mResult:Ljava/lang/String;

    .line 163
    sget-object p1, Lcom/unitech/api/uapps/StageGoCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 164
    iget-object p1, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mBroadcastHandler:Lcom/unitech/api/util/BroadcastHandler;

    invoke-virtual {p1, v2, v3}, Lcom/unitech/api/util/BroadcastHandler;->releaseTicket(J)Z

    return-object v1
.end method

.method public setReportPath(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filepath"
        }
    .end annotation

    const-string v0, "StageGoCtrl, setReportPath fail"

    const/4 v1, 0x0

    const-string v2, "StageGoCtrl, setReportPath success"

    .line 90
    invoke-direct {p0, v1, v2}, Lcom/unitech/api/uapps/StageGoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StageGoCtrl, setReportPath(), filepath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UnitechSDK"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-direct {p0}, Lcom/unitech/api/uapps/StageGoCtrl;->tryToRegisterBroadcastReciver()Z

    .line 95
    iget-object v2, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mBroadcastHandler:Lcom/unitech/api/util/BroadcastHandler;

    invoke-virtual {v2}, Lcom/unitech/api/util/BroadcastHandler;->getTicket()J

    move-result-wide v2

    .line 96
    sget-object v4, Lcom/unitech/api/uapps/StageGoCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v4, 0x1

    .line 99
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string v6, "stagego.api.action"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.unitech.stagego2"

    .line 100
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "PackageName"

    .line 101
    sget-object v7, Lcom/unitech/api/uapps/StageGoCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "SetReportPath"

    .line 102
    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 103
    invoke-virtual {v5, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 104
    sget-object p1, Lcom/unitech/api/uapps/StageGoCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 107
    sget-object p1, Lcom/unitech/api/uapps/StageGoCtrl;->mCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v5, 0x1f4

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v5, v6, v7}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 111
    iget-object p1, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mResult:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mResult:Ljava/lang/String;

    const-string v5, "Success"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 112
    :cond_0
    invoke-direct {p0, v4, v0}, Lcom/unitech/api/uapps/StageGoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 115
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    invoke-direct {p0, v4, v0}, Lcom/unitech/api/uapps/StageGoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 119
    iput-object p1, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mResult:Ljava/lang/String;

    .line 120
    sget-object p1, Lcom/unitech/api/uapps/StageGoCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 121
    iget-object p1, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mBroadcastHandler:Lcom/unitech/api/util/BroadcastHandler;

    invoke-virtual {p1, v2, v3}, Lcom/unitech/api/util/BroadcastHandler;->releaseTicket(J)Z

    return-object v1
.end method

.method public setScanMode(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scanMode"
        }
    .end annotation

    const-string v0, "StageGoCtrl, setScanMode fail"

    const/4 v1, 0x0

    const-string v2, "StageGoCtrl, setScanMode success"

    .line 308
    invoke-direct {p0, v1, v2}, Lcom/unitech/api/uapps/StageGoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StageGoCtrl, setScanMode(), scanMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UnitechSDK"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-direct {p0}, Lcom/unitech/api/uapps/StageGoCtrl;->tryToRegisterBroadcastReciver()Z

    .line 313
    iget-object v2, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mBroadcastHandler:Lcom/unitech/api/util/BroadcastHandler;

    invoke-virtual {v2}, Lcom/unitech/api/util/BroadcastHandler;->getTicket()J

    move-result-wide v2

    .line 314
    sget-object v4, Lcom/unitech/api/uapps/StageGoCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v4, 0x1

    .line 317
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string v6, "stagego.api.action"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.unitech.stagego2"

    .line 318
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "PackageName"

    .line 319
    sget-object v7, Lcom/unitech/api/uapps/StageGoCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "ScanMode"

    .line 320
    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 321
    invoke-virtual {v5, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 322
    sget-object p1, Lcom/unitech/api/uapps/StageGoCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 324
    sget-object p1, Lcom/unitech/api/uapps/StageGoCtrl;->mCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v5, 0x1f4

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v5, v6, v7}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 326
    iget-object p1, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mResult:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mResult:Ljava/lang/String;

    const-string v5, "Success"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 327
    :cond_0
    invoke-direct {p0, v4, v0}, Lcom/unitech/api/uapps/StageGoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 330
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 331
    invoke-direct {p0, v4, v0}, Lcom/unitech/api/uapps/StageGoCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 334
    iput-object p1, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mResult:Ljava/lang/String;

    .line 335
    sget-object p1, Lcom/unitech/api/uapps/StageGoCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 336
    iget-object p1, p0, Lcom/unitech/api/uapps/StageGoCtrl;->mBroadcastHandler:Lcom/unitech/api/util/BroadcastHandler;

    invoke-virtual {p1, v2, v3}, Lcom/unitech/api/util/BroadcastHandler;->releaseTicket(J)Z

    return-object v1
.end method
