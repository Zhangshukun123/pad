.class public Lcom/unitech/api/uapps/ScanBridgeCtrl;
.super Ljava/lang/Object;
.source "ScanBridgeCtrl.java"


# static fields
.field private static ScanBridgeCtrlPkgName:Ljava/lang/String; = "com.unitech.scanbridge"

.field private static mContext:Landroid/content/Context;

.field private static mLocker:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private final BUNDLE_ERROR_CODE:Ljava/lang/String;

.field private final BUNDLE_ERROR_MSG:Ljava/lang/String;

.field private final RESULT_CODE_ERROR:I

.field private final RESULT_CODE_SUCCESS:I

.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UnitechSDK"

    .line 23
    iput-object v0, p0, Lcom/unitech/api/uapps/ScanBridgeCtrl;->TAG:Ljava/lang/String;

    const-string v0, "errorCode"

    .line 24
    iput-object v0, p0, Lcom/unitech/api/uapps/ScanBridgeCtrl;->BUNDLE_ERROR_CODE:Ljava/lang/String;

    const-string v0, "errorMsg"

    .line 25
    iput-object v0, p0, Lcom/unitech/api/uapps/ScanBridgeCtrl;->BUNDLE_ERROR_MSG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 26
    iput v0, p0, Lcom/unitech/api/uapps/ScanBridgeCtrl;->RESULT_CODE_ERROR:I

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/unitech/api/uapps/ScanBridgeCtrl;->RESULT_CODE_SUCCESS:I

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/unitech/api/uapps/ScanBridgeCtrl;->mContext:Landroid/content/Context;

    .line 38
    sget-object p1, Lcom/unitech/api/uapps/ScanBridgeCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    if-nez p1, :cond_0

    .line 39
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object p1, Lcom/unitech/api/uapps/ScanBridgeCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    :cond_0
    return-void
.end method

.method private CheckInstalledOrNot(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkgName"
        }
    .end annotation

    .line 52
    new-instance p1, Lcom/unitech/api/app/AppManagementCtrl;

    sget-object v0, Lcom/unitech/api/uapps/ScanBridgeCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/unitech/api/app/AppManagementCtrl;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {p1}, Lcom/unitech/api/app/AppManagementCtrl;->getAllPkgNameList()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    .line 54
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "UnitechSDK"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const-string v0, "PkgNameList"

    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "ScanBridgeCtrl, CheckInstalledOrNot(), appManagementCtrl.getAllPkgNameList(), alPkgNames is null"

    .line 57
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 60
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    sget-object v1, Lcom/unitech/api/uapps/ScanBridgeCtrl;->ScanBridgeCtrlPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    const-string p1, "ScanBridgeCtrl, CheckInstalledOrNot(), appManagementCtrl.getAllPkgNameList(), result code is error"

    .line 67
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2
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

    .line 44
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    .line 45
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "errorMsg"

    .line 46
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public exportSettings(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScanBridgeCtrl, exortSetting(), filePath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "invalid parameters"

    .line 142
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/ScanBridgeCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const-string v2, ""

    .line 144
    invoke-direct {p0, v0, v2}, Lcom/unitech/api/uapps/ScanBridgeCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    .line 146
    sget-object v3, Lcom/unitech/api/uapps/ScanBridgeCtrl;->ScanBridgeCtrlPkgName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/unitech/api/uapps/ScanBridgeCtrl;->CheckInstalledOrNot(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string p1, "ScanBridgeCtrl, exortSetting(), ScanBridge was not installed."

    .line 147
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/ScanBridgeCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 151
    :cond_1
    sget-object v3, Lcom/unitech/api/uapps/ScanBridgeCtrl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v3

    .line 152
    invoke-virtual {v3, p1}, Lcom/unitech/api/file/FileCtrl;->pathConverter(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "errorCode"

    .line 153
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    const-string p1, "REAL_PATH"

    .line 154
    invoke-virtual {v4, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 156
    :cond_2
    invoke-virtual {v3, p1}, Lcom/unitech/api/file/FileCtrl;->deleteFile(Ljava/lang/String;)Landroid/os/Bundle;

    .line 157
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.unitech.scanbridge.export"

    .line 158
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "filepath"

    .line 159
    invoke-virtual {v4, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    sget-object v6, Lcom/unitech/api/uapps/ScanBridgeCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "packageName"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v6, 0x20

    .line 161
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 162
    sget-object v6, Lcom/unitech/api/uapps/ScanBridgeCtrl;->ScanBridgeCtrlPkgName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    sget-object v6, Lcom/unitech/api/uapps/ScanBridgeCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v4, 0x1

    :goto_0
    const/16 v6, 0x14

    if-gt v4, v6, :cond_4

    const-wide/16 v6, 0x1f4

    .line 167
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 169
    :goto_1
    invoke-virtual {v3, p1}, Lcom/unitech/api/file/FileCtrl;->exists(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 170
    invoke-virtual {v6, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    .line 171
    invoke-direct {p0, v0, v2}, Lcom/unitech/api/uapps/ScanBridgeCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const-string p1, "export fail"

    .line 175
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/ScanBridgeCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public importSettings(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    const-string v0, "UnitechSDK"

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScanBridgeCtrl, importSettings(), filePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "invalid parameters"

    .line 188
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/ScanBridgeCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const-string v2, ""

    .line 190
    invoke-direct {p0, v0, v2}, Lcom/unitech/api/uapps/ScanBridgeCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 191
    sget-object v2, Lcom/unitech/api/uapps/ScanBridgeCtrl;->ScanBridgeCtrlPkgName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/unitech/api/uapps/ScanBridgeCtrl;->CheckInstalledOrNot(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "ScanBridgeCtrl, importSettings(), ScanBridge was not installed."

    .line 192
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/ScanBridgeCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 194
    :cond_1
    sget-object v2, Lcom/unitech/api/uapps/ScanBridgeCtrl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v2

    .line 195
    invoke-virtual {v2, p1}, Lcom/unitech/api/file/FileCtrl;->pathConverter(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "errorCode"

    .line 196
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    const-string p1, "REAL_PATH"

    .line 197
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 199
    :cond_2
    invoke-virtual {v2, p1}, Lcom/unitech/api/file/FileCtrl;->exists(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "errorCode"

    .line 200
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    const-string p1, "ScanBridgeCtrlScanBridgeCtrl, importSettings() failed: filepath not exist."

    .line 201
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/ScanBridgeCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 203
    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.unitech.scanbridge.import"

    .line 204
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "filepath"

    .line 206
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p1, "packageName"

    .line 208
    sget-object v3, Lcom/unitech/api/uapps/ScanBridgeCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 209
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 210
    sget-object p1, Lcom/unitech/api/uapps/ScanBridgeCtrl;->ScanBridgeCtrlPkgName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    sget-object p1, Lcom/unitech/api/uapps/ScanBridgeCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 212
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 213
    new-instance v2, Lcom/unitech/api/uapps/ScanBridgeCtrl$2;

    invoke-direct {v2, p0, p1}, Lcom/unitech/api/uapps/ScanBridgeCtrl$2;-><init>(Lcom/unitech/api/uapps/ScanBridgeCtrl;Landroid/os/Message;)V

    .line 223
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x22

    if-ge v3, v4, :cond_4

    .line 224
    sget-object v3, Lcom/unitech/api/uapps/ScanBridgeCtrl;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.unitech.scanbridge.import_reply"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 226
    :cond_4
    sget-object v3, Lcom/unitech/api/uapps/ScanBridgeCtrl;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.unitech.scanbridge.import_reply"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x2

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 229
    :goto_0
    monitor-enter p1

    const-wide/16 v3, 0x2710

    .line 231
    :try_start_0
    invoke-virtual {p1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 232
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "result"

    .line 234
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v1, "errorCode"

    const-string v3, "result"

    .line 235
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "message"

    .line 236
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "errorMsg"

    const-string v3, "message"

    .line 237
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v3, "errorCode"

    .line 240
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "errorMsg"

    const-string v3, "import fail"

    .line 241
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_6
    :goto_1
    sget-object v1, Lcom/unitech/api/uapps/ScanBridgeCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 245
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 247
    :goto_2
    monitor-exit p1

    return-object v0

    :goto_3
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public resetSettings()Landroid/os/Bundle;
    .locals 7

    const-string v0, "UnitechSDK"

    const-string v1, "ScanBridgeCtrlScanBridgeCtrl, resetSettings()"

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0, v1, v0}, Lcom/unitech/api/uapps/ScanBridgeCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 80
    sget-object v1, Lcom/unitech/api/uapps/ScanBridgeCtrl;->ScanBridgeCtrlPkgName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/unitech/api/uapps/ScanBridgeCtrl;->CheckInstalledOrNot(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string v0, "ScanBridgeCtrlScanBridgeCtrlPkgName, resetSettings(), ScanBridge was not installed."

    .line 81
    invoke-direct {p0, v2, v0}, Lcom/unitech/api/uapps/ScanBridgeCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 84
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.unitech.scanbridge.reset"

    .line 85
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 87
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v3, "packageName"

    .line 88
    sget-object v4, Lcom/unitech/api/uapps/ScanBridgeCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x20

    .line 89
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 90
    sget-object v3, Lcom/unitech/api/uapps/ScanBridgeCtrl;->ScanBridgeCtrlPkgName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    sget-object v3, Lcom/unitech/api/uapps/ScanBridgeCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 92
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 93
    new-instance v3, Lcom/unitech/api/uapps/ScanBridgeCtrl$1;

    invoke-direct {v3, p0, v1}, Lcom/unitech/api/uapps/ScanBridgeCtrl$1;-><init>(Lcom/unitech/api/uapps/ScanBridgeCtrl;Landroid/os/Message;)V

    .line 104
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x22

    if-ge v4, v5, :cond_1

    .line 105
    sget-object v4, Lcom/unitech/api/uapps/ScanBridgeCtrl;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.unitech.scanbridge.reset_reply"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 107
    :cond_1
    sget-object v4, Lcom/unitech/api/uapps/ScanBridgeCtrl;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.unitech.scanbridge.reset_reply"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x2

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 110
    :goto_0
    monitor-enter v1

    const-wide/16 v4, 0x2710

    .line 112
    :try_start_0
    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 113
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "result"

    .line 115
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v2, "errorCode"

    const-string v4, "result"

    .line 116
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "message"

    .line 117
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "errorMsg"

    const-string v4, "message"

    .line 118
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v4, "errorCode"

    .line 121
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "errorMsg"

    const-string v4, "reset fail"

    .line 122
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_3
    :goto_1
    sget-object v2, Lcom/unitech/api/uapps/ScanBridgeCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v2

    .line 126
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 128
    :goto_2
    monitor-exit v1

    return-object v0

    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
