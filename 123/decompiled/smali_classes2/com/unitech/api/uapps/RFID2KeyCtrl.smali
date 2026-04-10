.class public Lcom/unitech/api/uapps/RFID2KeyCtrl;
.super Ljava/lang/Object;
.source "RFID2KeyCtrl.java"


# static fields
.field private static ConfigFilePath:Ljava/lang/String; = "/sdcard/RFID2Key.conf"

.field private static ctxPkgName:Ljava/lang/String;

.field private static mCondition:Ljava/util/concurrent/locks/Condition;

.field private static mContext:Landroid/content/Context;

.field private static mLocker:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private final BUNDLE_ERROR_CODE:Ljava/lang/String;

.field private final BUNDLE_ERROR_MSG:Ljava/lang/String;

.field private final RESULT_CODE_ERROR:I

.field private final RESULT_CODE_SUCCESS:I

.field private final RFID2KEY_DATA:Ljava/lang/String;

.field private final RFID2KEY_EXPORT:Ljava/lang/String;

.field private final RFID2KEY_EXPORT_REPLY:Ljava/lang/String;

.field private final RFID2KEY_IMPORT:Ljava/lang/String;

.field private final RFID2KEY_IMPORT_REPLY:Ljava/lang/String;

.field private final RFID2KEY_PACKAGENAME:Ljava/lang/String;

.field private final RFID2KEY_RESET:Ljava/lang/String;

.field private final RFID2KEY_RESET_REPLY:Ljava/lang/String;

.field private final RFID2KEY_SETMODE:Ljava/lang/String;

.field private final RFID2KEY_SETMODE_REPLY:Ljava/lang/String;

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
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UnitechSDK"

    .line 21
    iput-object v0, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->TAG:Ljava/lang/String;

    const-string v0, "errorCode"

    .line 22
    iput-object v0, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->BUNDLE_ERROR_CODE:Ljava/lang/String;

    const-string v0, "errorMsg"

    .line 23
    iput-object v0, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->BUNDLE_ERROR_MSG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 24
    iput v0, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->RESULT_CODE_ERROR:I

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->RESULT_CODE_SUCCESS:I

    const-string v1, "com.unitech.rfid2key"

    .line 27
    iput-object v1, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->RFID2KEY_PACKAGENAME:Ljava/lang/String;

    const-string v1, "com.unitech.rfid2key.export"

    .line 28
    iput-object v1, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->RFID2KEY_EXPORT:Ljava/lang/String;

    const-string v1, "com.unitech.rfid2key.import"

    .line 29
    iput-object v1, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->RFID2KEY_IMPORT:Ljava/lang/String;

    const-string v1, "com.unitech.rfid2key.setmode"

    .line 30
    iput-object v1, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->RFID2KEY_SETMODE:Ljava/lang/String;

    const-string v1, "com.unitech.rfid2key.reset"

    .line 31
    iput-object v1, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->RFID2KEY_RESET:Ljava/lang/String;

    const-string v1, "com.unitech.rfid2key.data"

    .line 33
    iput-object v1, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->RFID2KEY_DATA:Ljava/lang/String;

    const-string v2, "com.unitech.rfid2key.import.reply"

    .line 34
    iput-object v2, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->RFID2KEY_IMPORT_REPLY:Ljava/lang/String;

    const-string v3, "com.unitech.rfid2key.export.reply"

    .line 35
    iput-object v3, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->RFID2KEY_EXPORT_REPLY:Ljava/lang/String;

    const-string v4, "com.unitech.rfid2key.reset.reply"

    .line 36
    iput-object v4, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->RFID2KEY_RESET_REPLY:Ljava/lang/String;

    const-string v5, "com.unitech.rfid2key.setmode.reply"

    .line 37
    iput-object v5, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->RFID2KEY_SETMODE_REPLY:Ljava/lang/String;

    const/4 v6, 0x0

    .line 43
    iput-object v6, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->rsAction:Ljava/lang/String;

    .line 44
    iput v0, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->riResult:I

    .line 45
    iput-object v6, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->rsMessage:Ljava/lang/String;

    .line 46
    iput-object v6, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->rsPkgName:Ljava/lang/String;

    .line 99
    new-instance v0, Lcom/unitech/api/uapps/RFID2KeyCtrl$1;

    invoke-direct {v0, p0}, Lcom/unitech/api/uapps/RFID2KeyCtrl$1;-><init>(Lcom/unitech/api/uapps/RFID2KeyCtrl;)V

    iput-object v0, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->ctxPkgName:Ljava/lang/String;

    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    new-instance v1, Lcom/unitech/api/util/BroadcastHandler;

    iget-object v2, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {v1, p1, v0, v2}, Lcom/unitech/api/util/BroadcastHandler;-><init>(Landroid/content/Context;Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mBroadcastHandler:Lcom/unitech/api/util/BroadcastHandler;

    .line 67
    sget-object p1, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    if-nez p1, :cond_0

    .line 68
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object p1, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    .line 69
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    sput-object p1, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mCondition:Ljava/util/concurrent/locks/Condition;

    :cond_0
    return-void
.end method

.method private ResetReceiveData()V
    .locals 2

    const/4 v0, 0x0

    .line 529
    iput-object v0, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->rsAction:Ljava/lang/String;

    const/4 v1, 0x0

    .line 530
    iput v1, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->riResult:I

    .line 531
    iput-object v0, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->rsMessage:Ljava/lang/String;

    .line 532
    iput-object v0, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->rsPkgName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/unitech/api/uapps/RFID2KeyCtrl;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->rsAction:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/unitech/api/uapps/RFID2KeyCtrl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->rsAction:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/unitech/api/uapps/RFID2KeyCtrl;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->riResult:I

    return p1
.end method

.method static synthetic access$202(Lcom/unitech/api/uapps/RFID2KeyCtrl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->rsMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/unitech/api/uapps/RFID2KeyCtrl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->rsPkgName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 20
    sget-object v0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/concurrent/locks/Condition;
    .locals 1

    .line 20
    sget-object v0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mCondition:Ljava/util/concurrent/locks/Condition;

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

    .line 81
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 83
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

    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    .line 75
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "errorMsg"

    .line 76
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private tryToRegisterBroadcastReciver()Z
    .locals 1

    .line 90
    :try_start_0
    sget-object v0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unitech/api/uapps/RFID2KeyCtrl;->ensureNotOnMainThread(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    iget-object v0, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mBroadcastHandler:Lcom/unitech/api/util/BroadcastHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/BroadcastHandler;->RegisterBroadcastReciver()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public exportSettings(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RFID2KeyCtrl, ExportSettings, filepath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string p1, "RFID2KeyCtrl, ExportSettings failed: filePath cannot be empty."

    .line 226
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/uapps/RFID2KeyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "RFID2KeyCtrl, ExportSettings fail"

    .line 229
    invoke-direct {p0, v2, v0}, Lcom/unitech/api/uapps/RFID2KeyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 230
    sget-object v4, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v4

    .line 231
    invoke-virtual {v4, p1}, Lcom/unitech/api/file/FileCtrl;->pathConverter(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "errorCode"

    .line 232
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    const-string p1, "REAL_PATH"

    .line 233
    invoke-virtual {v4, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v5, "errorMsg"

    .line 235
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "NOT_EXIST"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string p1, "RFID2KeyCtrl, importSettings() failed: filepath not exist."

    .line 236
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/uapps/RFID2KeyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 238
    :cond_2
    :goto_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 240
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/RFID2Key.conf"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 242
    :cond_5
    invoke-direct {p0}, Lcom/unitech/api/uapps/RFID2KeyCtrl;->tryToRegisterBroadcastReciver()Z

    .line 243
    iget-object v4, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mBroadcastHandler:Lcom/unitech/api/util/BroadcastHandler;

    invoke-virtual {v4}, Lcom/unitech/api/util/BroadcastHandler;->getTicket()J

    move-result-wide v4

    .line 244
    sget-object v6, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 247
    :try_start_0
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.unitech.rfid2key.export"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "filepath"

    .line 248
    invoke-virtual {v6, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "packageName"

    .line 249
    sget-object v7, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 250
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 251
    sget-object p1, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 253
    sget-object p1, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v6, 0x1388

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v6, v7, v8}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    const-string p1, "RFID2KeyCtrl, ExportSettings, after await 5000ms"

    .line 254
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object p1, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->rsPkgName:Ljava/lang/String;

    sget-object v1, Lcom/unitech/api/uapps/RFID2KeyCtrl;->ctxPkgName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 262
    iget-object p1, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->rsAction:Ljava/lang/String;

    const-string v1, "com.unitech.rfid2key.export.reply"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 263
    iget p1, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->riResult:I

    if-nez p1, :cond_6

    const/4 p1, 0x0

    const-string v1, "RFID2KeyCtrl, ExportSettings success"

    .line 264
    invoke-direct {p0, p1, v1}, Lcom/unitech/api/uapps/RFID2KeyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_1

    .line 266
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RFID2KeyCtrl, ExportSettings fail, message:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->rsMessage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/uapps/RFID2KeyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 272
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 273
    invoke-direct {p0, v2, v0}, Lcom/unitech/api/uapps/RFID2KeyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 276
    :cond_7
    :goto_1
    invoke-direct {p0}, Lcom/unitech/api/uapps/RFID2KeyCtrl;->ResetReceiveData()V

    .line 278
    sget-object p1, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 279
    iget-object p1, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mBroadcastHandler:Lcom/unitech/api/util/BroadcastHandler;

    invoke-virtual {p1, v4, v5}, Lcom/unitech/api/util/BroadcastHandler;->releaseTicket(J)Z

    return-object v3
.end method

.method public importSettings(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8
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

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RFID2KeyCtrl, ImportSettings, filepath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string p1, "RFID2KeyCtrl, ImportSettings failed: filePath cannot be empty."

    .line 154
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/uapps/RFID2KeyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "RFID2KeyCtrl, ImportSettings fail"

    .line 157
    invoke-direct {p0, v2, v0}, Lcom/unitech/api/uapps/RFID2KeyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 158
    sget-object v4, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v4

    .line 159
    invoke-virtual {v4, p1}, Lcom/unitech/api/file/FileCtrl;->pathConverter(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "errorCode"

    .line 160
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    const-string p1, "REAL_PATH"

    .line 161
    invoke-virtual {v4, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v5, "errorMsg"

    .line 163
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "NOT_EXIST"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string p1, "RFID2KeyCtrl, importSettings() failed: filepath not exist."

    .line 164
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/uapps/RFID2KeyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 168
    :cond_2
    :goto_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 170
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/RFID2Key.conf"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 172
    :cond_5
    invoke-direct {p0}, Lcom/unitech/api/uapps/RFID2KeyCtrl;->tryToRegisterBroadcastReciver()Z

    .line 173
    iget-object v4, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mBroadcastHandler:Lcom/unitech/api/util/BroadcastHandler;

    invoke-virtual {v4}, Lcom/unitech/api/util/BroadcastHandler;->getTicket()J

    move-result-wide v4

    .line 174
    sget-object v6, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 177
    :try_start_0
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.unitech.rfid2key.import"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "filepath"

    .line 178
    invoke-virtual {v6, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "passcode"

    .line 179
    invoke-virtual {v6, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "packageName"

    .line 180
    sget-object p2, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 181
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 182
    sget-object p1, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 184
    sget-object p1, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v6, 0x1388

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v6, v7, p2}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    const-string p1, "RFID2KeyCtrl, ImportSettings, after await 5000ms"

    .line 185
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object p1, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->rsPkgName:Ljava/lang/String;

    sget-object p2, Lcom/unitech/api/uapps/RFID2KeyCtrl;->ctxPkgName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 193
    iget-object p1, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->rsAction:Ljava/lang/String;

    const-string p2, "com.unitech.rfid2key.import.reply"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 194
    iget p1, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->riResult:I

    if-nez p1, :cond_6

    const/4 p1, 0x0

    const-string p2, "RFID2KeyCtrl, ImportSettings success"

    .line 195
    invoke-direct {p0, p1, p2}, Lcom/unitech/api/uapps/RFID2KeyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_1

    .line 197
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RFID2KeyCtrl, ImportSettings fail, message:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->rsMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/uapps/RFID2KeyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 203
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 204
    invoke-direct {p0, v2, v0}, Lcom/unitech/api/uapps/RFID2KeyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 207
    :cond_7
    :goto_1
    invoke-direct {p0}, Lcom/unitech/api/uapps/RFID2KeyCtrl;->ResetReceiveData()V

    .line 209
    sget-object p1, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 210
    iget-object p1, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mBroadcastHandler:Lcom/unitech/api/util/BroadcastHandler;

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

    const-string v1, "RFID2KeyCtrl, ResetSettings fail"

    .line 293
    invoke-direct {p0, v0, v1}, Lcom/unitech/api/uapps/RFID2KeyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "UnitechSDK"

    const-string v4, "RFID2KeyCtrl, ResetSettings"

    .line 295
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-direct {p0}, Lcom/unitech/api/uapps/RFID2KeyCtrl;->tryToRegisterBroadcastReciver()Z

    .line 298
    iget-object v4, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mBroadcastHandler:Lcom/unitech/api/util/BroadcastHandler;

    invoke-virtual {v4}, Lcom/unitech/api/util/BroadcastHandler;->getTicket()J

    move-result-wide v4

    .line 299
    sget-object v6, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 302
    :try_start_0
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.unitech.rfid2key.reset"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "com.unitech.rfid2key"

    .line 303
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "passcode"

    .line 304
    invoke-virtual {v6, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "packageName"

    .line 305
    sget-object v7, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 306
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 307
    sget-object p1, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 309
    sget-object p1, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v6, 0x1388

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v6, v7, v8}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    const-string p1, "RFID2KeyCtrl, ResetSettings, after await 5000ms"

    .line 310
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object p1, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->rsPkgName:Ljava/lang/String;

    sget-object v3, Lcom/unitech/api/uapps/RFID2KeyCtrl;->ctxPkgName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 318
    iget-object p1, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->rsAction:Ljava/lang/String;

    const-string v3, "com.unitech.rfid2key.reset.reply"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 319
    iget p1, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->riResult:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const-string v2, "RFID2KeyCtrl, ResetSettings success"

    .line 320
    invoke-direct {p0, p1, v2}, Lcom/unitech/api/uapps/RFID2KeyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    .line 322
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RFID2KeyCtrl, ResetSettings fail, message:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->rsMessage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unitech/api/uapps/RFID2KeyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 328
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 329
    invoke-direct {p0, v0, v1}, Lcom/unitech/api/uapps/RFID2KeyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 332
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/unitech/api/uapps/RFID2KeyCtrl;->ResetReceiveData()V

    .line 334
    sget-object p1, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 335
    iget-object p1, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mBroadcastHandler:Lcom/unitech/api/util/BroadcastHandler;

    invoke-virtual {p1, v4, v5}, Lcom/unitech/api/util/BroadcastHandler;->releaseTicket(J)Z

    return-object v2
.end method

.method public setMode(Ljava/lang/Boolean;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "passCode"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "RFID2KeyCtrl, SetMode fail"

    .line 350
    invoke-direct {p0, v0, v1}, Lcom/unitech/api/uapps/RFID2KeyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RFID2KeyCtrl, SetMode, mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UnitechSDK"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-direct {p0}, Lcom/unitech/api/uapps/RFID2KeyCtrl;->tryToRegisterBroadcastReciver()Z

    .line 355
    iget-object v3, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mBroadcastHandler:Lcom/unitech/api/util/BroadcastHandler;

    invoke-virtual {v3}, Lcom/unitech/api/util/BroadcastHandler;->getTicket()J

    move-result-wide v5

    .line 356
    sget-object v3, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 359
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.unitech.rfid2key.setmode"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "mode"

    .line 360
    invoke-virtual {v3, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "passcode"

    .line 361
    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "packageName"

    .line 362
    sget-object p2, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 363
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 364
    sget-object p1, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 366
    sget-object p1, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v7, 0x1388

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v7, v8, p2}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    const-string p1, "RFID2KeyCtrl, SetMode, after await 5000ms"

    .line 367
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object p1, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->rsPkgName:Ljava/lang/String;

    sget-object p2, Lcom/unitech/api/uapps/RFID2KeyCtrl;->ctxPkgName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 375
    iget-object p1, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->rsAction:Ljava/lang/String;

    const-string p2, "com.unitech.rfid2key.setmode.reply"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 376
    iget p1, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->riResult:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const-string p2, "RFID2KeyCtrl, SetMode success"

    .line 377
    invoke-direct {p0, p1, p2}, Lcom/unitech/api/uapps/RFID2KeyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    .line 379
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RFID2KeyCtrl, SetMode fail, message:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->rsMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unitech/api/uapps/RFID2KeyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 385
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 386
    invoke-direct {p0, v0, v1}, Lcom/unitech/api/uapps/RFID2KeyCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 389
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/unitech/api/uapps/RFID2KeyCtrl;->ResetReceiveData()V

    .line 391
    sget-object p1, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 392
    iget-object p1, p0, Lcom/unitech/api/uapps/RFID2KeyCtrl;->mBroadcastHandler:Lcom/unitech/api/util/BroadcastHandler;

    invoke-virtual {p1, v5, v6}, Lcom/unitech/api/util/BroadcastHandler;->releaseTicket(J)Z

    return-object v2
.end method
