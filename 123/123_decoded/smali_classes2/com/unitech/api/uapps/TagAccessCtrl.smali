.class public Lcom/unitech/api/uapps/TagAccessCtrl;
.super Ljava/lang/Object;
.source "TagAccessCtrl.java"


# static fields
.field private static ConfigFilePath:Ljava/lang/String; = "/sdcard/Unitech/TagAccess/TagAccess.conf"

.field private static TagAccessCtrlPkgName:Ljava/lang/String; = "com.unitech.tagaccess"

.field public static final apiExport:Ljava/lang/String; = "com.unitech.tagAccess.export"

.field public static final apiExportReply:Ljava/lang/String; = "com.unitech.tagAccess.export_reply"

.field public static final apiImport:Ljava/lang/String; = "com.unitech.tagAccess.import"

.field public static final apiImportReply:Ljava/lang/String; = "com.unitech.tagAccess.import_reply"

.field public static final apiReset:Ljava/lang/String; = "com.unitech.tagAccess.reset"

.field public static final apiResetReply:Ljava/lang/String; = "com.unitech.tagAccess.reset_reply"

.field private static ctxPkgName:Ljava/lang/String;

.field private static mCondition:Ljava/util/concurrent/locks/Condition;

.field private static mContext:Landroid/content/Context;

.field private static mLocker:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private final BUNDLE_ERROR_CODE:Ljava/lang/String;

.field private final BUNDLE_ERROR_MSG:Ljava/lang/String;

.field private final RESULT_CODE_ERROR:I

.field private final RESULT_CODE_SUCCESS:I

.field private final TAG:Ljava/lang/String;

.field private mBroadcastHandler:Lcom/unitech/api/util/BroadcastHandler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private riResult:I

.field private rsAction:Ljava/lang/String;

.field private rsMessage:Ljava/lang/String;

.field private rsPkgName:Ljava/lang/String;


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

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UnitechSDK"

    .line 22
    iput-object v0, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->TAG:Ljava/lang/String;

    const-string v0, "errorCode"

    .line 23
    iput-object v0, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->BUNDLE_ERROR_CODE:Ljava/lang/String;

    const-string v0, "errorMsg"

    .line 24
    iput-object v0, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->BUNDLE_ERROR_MSG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 25
    iput v0, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->RESULT_CODE_ERROR:I

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->RESULT_CODE_SUCCESS:I

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->rsAction:Ljava/lang/String;

    .line 44
    iput v0, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->riResult:I

    .line 45
    iput-object v1, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->rsMessage:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->rsPkgName:Ljava/lang/String;

    .line 94
    new-instance v0, Lcom/unitech/api/uapps/TagAccessCtrl$1;

    invoke-direct {v0, p0}, Lcom/unitech/api/uapps/TagAccessCtrl$1;-><init>(Lcom/unitech/api/uapps/TagAccessCtrl;)V

    iput-object v0, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/unitech/api/uapps/TagAccessCtrl;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unitech/api/uapps/TagAccessCtrl;->ctxPkgName:Ljava/lang/String;

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.unitech.tagAccess.import_reply"

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.unitech.tagAccess.export_reply"

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.unitech.tagAccess.reset_reply"

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    new-instance v1, Lcom/unitech/api/util/BroadcastHandler;

    iget-object v2, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {v1, p1, v0, v2}, Lcom/unitech/api/util/BroadcastHandler;-><init>(Landroid/content/Context;Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->mBroadcastHandler:Lcom/unitech/api/util/BroadcastHandler;

    .line 62
    sget-object p1, Lcom/unitech/api/uapps/TagAccessCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    if-nez p1, :cond_0

    .line 63
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object p1, Lcom/unitech/api/uapps/TagAccessCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    .line 64
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    sput-object p1, Lcom/unitech/api/uapps/TagAccessCtrl;->mCondition:Ljava/util/concurrent/locks/Condition;

    :cond_0
    return-void
.end method

.method private ResetReceiveData()V
    .locals 2

    const/4 v0, 0x0

    .line 332
    iput-object v0, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->rsAction:Ljava/lang/String;

    const/4 v1, 0x0

    .line 333
    iput v1, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->riResult:I

    .line 334
    iput-object v0, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->rsMessage:Ljava/lang/String;

    .line 335
    iput-object v0, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->rsPkgName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/unitech/api/uapps/TagAccessCtrl;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->rsAction:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/unitech/api/uapps/TagAccessCtrl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->rsAction:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/unitech/api/uapps/TagAccessCtrl;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->riResult:I

    return p1
.end method

.method static synthetic access$202(Lcom/unitech/api/uapps/TagAccessCtrl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->rsMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/unitech/api/uapps/TagAccessCtrl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->rsPkgName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 21
    sget-object v0, Lcom/unitech/api/uapps/TagAccessCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/concurrent/locks/Condition;
    .locals 1

    .line 21
    sget-object v0, Lcom/unitech/api/uapps/TagAccessCtrl;->mCondition:Ljava/util/concurrent/locks/Condition;

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

    .line 76
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 78
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

    .line 69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    .line 70
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "errorMsg"

    .line 71
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private tryToRegisterBroadcastReciver()Z
    .locals 1

    .line 85
    :try_start_0
    sget-object v0, Lcom/unitech/api/uapps/TagAccessCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unitech/api/uapps/TagAccessCtrl;->ensureNotOnMainThread(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    iget-object v0, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->mBroadcastHandler:Lcom/unitech/api/util/BroadcastHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/BroadcastHandler;->RegisterBroadcastReciver()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public exportSettings(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    const-string v0, "TagAccessCtrl, ExportSettings fail, message:"

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TagAccessCtrl, ExportSettings, filepath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnitechSDK"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const-string p1, "TagAccessCtrl, ExportSettings failed: filePath cannot be empty."

    .line 219
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/uapps/TagAccessCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 220
    :cond_0
    sget-object v1, Lcom/unitech/api/uapps/TagAccessCtrl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v1

    .line 221
    invoke-virtual {v1, p1}, Lcom/unitech/api/file/FileCtrl;->pathConverter(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "errorCode"

    .line 222
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "errorMsg"

    if-nez v6, :cond_1

    const-string p1, "REAL_PATH"

    .line 223
    invoke-virtual {v4, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "NOT_EXIST"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string p1, "TagAccessCtrl, exportSettings() failed: filepath not exist."

    .line 226
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/uapps/TagAccessCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const-string v4, "TagAccessCtrl, ExportSettings fail"

    .line 229
    invoke-direct {p0, v3, v4}, Lcom/unitech/api/uapps/TagAccessCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 231
    invoke-direct {p0}, Lcom/unitech/api/uapps/TagAccessCtrl;->tryToRegisterBroadcastReciver()Z

    .line 232
    iget-object v8, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->mBroadcastHandler:Lcom/unitech/api/util/BroadcastHandler;

    invoke-virtual {v8}, Lcom/unitech/api/util/BroadcastHandler;->getTicket()J

    move-result-wide v8

    .line 233
    sget-object v10, Lcom/unitech/api/uapps/TagAccessCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 236
    :try_start_0
    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.unitech.tagAccess.export"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "packageName"

    .line 238
    sget-object v12, Lcom/unitech/api/uapps/TagAccessCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    sget-object v11, Lcom/unitech/api/uapps/TagAccessCtrl;->TagAccessCtrlPkgName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v11, 0x20

    .line 240
    invoke-virtual {v10, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 241
    sget-object v11, Lcom/unitech/api/uapps/TagAccessCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 243
    sget-object v10, Lcom/unitech/api/uapps/TagAccessCtrl;->mCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v11, 0x1388

    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v10, v11, v12, v13}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    const-string v10, "TagAccessCtrl, ExportSettings, after await 5000ms"

    .line 244
    invoke-static {v2, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v2, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->rsPkgName:Ljava/lang/String;

    sget-object v10, Lcom/unitech/api/uapps/TagAccessCtrl;->ctxPkgName:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 247
    iget-object v2, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->rsAction:Ljava/lang/String;

    const-string v10, "com.unitech.tagAccess.export_reply"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 248
    iget v2, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->riResult:I

    if-nez v2, :cond_3

    const/4 v2, 0x0

    const-string v6, "TagAccessCtrl, ExportSettings success"

    .line 249
    invoke-direct {p0, v2, v6}, Lcom/unitech/api/uapps/TagAccessCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    goto :goto_1

    .line 251
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->rsMessage:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unitech/api/uapps/TagAccessCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 257
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 258
    invoke-direct {p0, v3, v4}, Lcom/unitech/api/uapps/TagAccessCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 261
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/unitech/api/uapps/TagAccessCtrl;->ResetReceiveData()V

    .line 262
    sget-object v2, Lcom/unitech/api/uapps/TagAccessCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 263
    iget-object v2, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->mBroadcastHandler:Lcom/unitech/api/util/BroadcastHandler;

    invoke-virtual {v2, v8, v9}, Lcom/unitech/api/util/BroadcastHandler;->releaseTicket(J)Z

    .line 265
    invoke-virtual {v6, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_8

    .line 266
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 268
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/TagAccess.conf"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 270
    :cond_7
    sget-object v2, Lcom/unitech/api/uapps/TagAccessCtrl;->ConfigFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/unitech/api/file/FileCtrl;->copyFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 271
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_8

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/uapps/TagAccessCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    :cond_8
    return-object v6
.end method

.method public importSettings(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filePath",
            "passCode"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TagAccessCtrl, ImportSettings, filepath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string p1, "TagAccessCtrl, ImportSettings failed: filePath cannot be empty."

    .line 144
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/uapps/TagAccessCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "TagAccessCtrl, ImportSettings fail"

    .line 147
    invoke-direct {p0, v2, v0}, Lcom/unitech/api/uapps/TagAccessCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 148
    sget-object v4, Lcom/unitech/api/uapps/TagAccessCtrl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v4

    .line 149
    invoke-virtual {v4, p1}, Lcom/unitech/api/file/FileCtrl;->pathConverter(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "errorCode"

    .line 150
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "errorMsg"

    if-nez v7, :cond_1

    const-string p1, "REAL_PATH"

    .line 151
    invoke-virtual {v5, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "NOT_EXIST"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string p1, "TagAccessCtrl, importSettings() failed: filepath not exist."

    .line 154
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/uapps/TagAccessCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 157
    :cond_2
    :goto_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/TagAccess.conf"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 160
    :cond_5
    invoke-virtual {v4, p1}, Lcom/unitech/api/file/FileCtrl;->exists(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 161
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v9, "TagAccessCtrl, ImportSettings fail, message:"

    if-eqz v7, :cond_6

    .line 162
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/uapps/TagAccessCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 165
    :cond_6
    sget-object v5, Lcom/unitech/api/uapps/TagAccessCtrl;->ConfigFilePath:Ljava/lang/String;

    invoke-virtual {v4, p1, v5}, Lcom/unitech/api/file/FileCtrl;->copyFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 166
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_7

    .line 167
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/uapps/TagAccessCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 170
    :cond_7
    invoke-direct {p0}, Lcom/unitech/api/uapps/TagAccessCtrl;->tryToRegisterBroadcastReciver()Z

    .line 171
    iget-object p1, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->mBroadcastHandler:Lcom/unitech/api/util/BroadcastHandler;

    invoke-virtual {p1}, Lcom/unitech/api/util/BroadcastHandler;->getTicket()J

    move-result-wide v4

    .line 172
    sget-object p1, Lcom/unitech/api/uapps/TagAccessCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 174
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v6, "com.unitech.tagAccess.import"

    invoke-direct {p1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "passcode"

    .line 176
    invoke-virtual {p1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "packageName"

    .line 177
    sget-object v6, Lcom/unitech/api/uapps/TagAccessCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, p2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    sget-object p2, Lcom/unitech/api/uapps/TagAccessCtrl;->TagAccessCtrlPkgName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x20

    .line 179
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 180
    sget-object p2, Lcom/unitech/api/uapps/TagAccessCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 182
    sget-object p1, Lcom/unitech/api/uapps/TagAccessCtrl;->mCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v6, 0x1388

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v6, v7, p2}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    const-string p1, "TagAccessCtrl, ImportSettings, after await 5000ms"

    .line 183
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object p1, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->rsPkgName:Ljava/lang/String;

    sget-object p2, Lcom/unitech/api/uapps/TagAccessCtrl;->ctxPkgName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 186
    iget-object p1, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->rsAction:Ljava/lang/String;

    const-string p2, "com.unitech.tagAccess.import_reply"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 187
    iget p1, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->riResult:I

    if-nez p1, :cond_8

    const/4 p1, 0x0

    const-string p2, "TagAccessCtrl, ImportSettings success"

    .line 188
    invoke-direct {p0, p1, p2}, Lcom/unitech/api/uapps/TagAccessCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_1

    .line 190
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->rsMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/uapps/TagAccessCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 196
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 197
    invoke-direct {p0, v2, v0}, Lcom/unitech/api/uapps/TagAccessCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 200
    :cond_9
    :goto_1
    invoke-direct {p0}, Lcom/unitech/api/uapps/TagAccessCtrl;->ResetReceiveData()V

    .line 202
    sget-object p1, Lcom/unitech/api/uapps/TagAccessCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 203
    iget-object p1, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->mBroadcastHandler:Lcom/unitech/api/util/BroadcastHandler;

    invoke-virtual {p1, v4, v5}, Lcom/unitech/api/util/BroadcastHandler;->releaseTicket(J)Z

    return-object v3
.end method

.method public resetSettings(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "passCode"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "TagAccessCtrl, ResetSettings fail"

    .line 289
    invoke-direct {p0, v0, v1}, Lcom/unitech/api/uapps/TagAccessCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "UnitechSDK"

    const-string v4, "TagAccessCtrl, ResetSettings"

    .line 291
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-direct {p0}, Lcom/unitech/api/uapps/TagAccessCtrl;->tryToRegisterBroadcastReciver()Z

    .line 294
    iget-object v4, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->mBroadcastHandler:Lcom/unitech/api/util/BroadcastHandler;

    invoke-virtual {v4}, Lcom/unitech/api/util/BroadcastHandler;->getTicket()J

    move-result-wide v4

    .line 295
    sget-object v6, Lcom/unitech/api/uapps/TagAccessCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 298
    :try_start_0
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.unitech.tagAccess.reset"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 299
    sget-object v7, Lcom/unitech/api/uapps/TagAccessCtrl;->TagAccessCtrlPkgName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "passcode"

    .line 300
    invoke-virtual {v6, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "packageName"

    .line 301
    sget-object v7, Lcom/unitech/api/uapps/TagAccessCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 302
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 303
    sget-object p1, Lcom/unitech/api/uapps/TagAccessCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 305
    sget-object p1, Lcom/unitech/api/uapps/TagAccessCtrl;->mCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v6, 0x1388

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v6, v7, v8}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    const-string p1, "TagAccessCtrl, ResetSettings, after await 5000ms"

    .line 306
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object p1, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->rsPkgName:Ljava/lang/String;

    sget-object v3, Lcom/unitech/api/uapps/TagAccessCtrl;->ctxPkgName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 309
    iget-object p1, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->rsAction:Ljava/lang/String;

    const-string v3, "com.unitech.tagAccess.reset_reply"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 310
    iget p1, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->riResult:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const-string v2, "TagAccessCtrl, ResetSettings success"

    .line 311
    invoke-direct {p0, p1, v2}, Lcom/unitech/api/uapps/TagAccessCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    .line 313
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TagAccessCtrl, ResetSettings fail, message:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->rsMessage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unitech/api/uapps/TagAccessCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 319
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 320
    invoke-direct {p0, v0, v1}, Lcom/unitech/api/uapps/TagAccessCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 323
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/unitech/api/uapps/TagAccessCtrl;->ResetReceiveData()V

    .line 325
    sget-object p1, Lcom/unitech/api/uapps/TagAccessCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 326
    iget-object p1, p0, Lcom/unitech/api/uapps/TagAccessCtrl;->mBroadcastHandler:Lcom/unitech/api/util/BroadcastHandler;

    invoke-virtual {p1, v4, v5}, Lcom/unitech/api/util/BroadcastHandler;->releaseTicket(J)Z

    return-object v2
.end method
