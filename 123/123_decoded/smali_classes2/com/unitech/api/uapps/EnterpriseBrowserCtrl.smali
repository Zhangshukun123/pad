.class public Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;
.super Ljava/lang/Object;
.source "EnterpriseBrowserCtrl.java"


# static fields
.field private static EnterpriseBrowserCtrlPkgName:Ljava/lang/String; = "com.unitech.enterprisebrowser"

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
    iput-object v0, p0, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->TAG:Ljava/lang/String;

    const-string v0, "errorCode"

    .line 24
    iput-object v0, p0, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->BUNDLE_ERROR_CODE:Ljava/lang/String;

    const-string v0, "errorMsg"

    .line 25
    iput-object v0, p0, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->BUNDLE_ERROR_MSG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 26
    iput v0, p0, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->RESULT_CODE_ERROR:I

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->RESULT_CODE_SUCCESS:I

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->mContext:Landroid/content/Context;

    .line 38
    sget-object p1, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    if-nez p1, :cond_0

    .line 39
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object p1, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

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

    sget-object v0, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->mContext:Landroid/content/Context;

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

    const-string p1, "EnterpriseBrowserCtrl, CheckInstalledOrNot(), appManagementCtrl.getAllPkgNameList(), alPkgNames is null"

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
    sget-object v1, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->EnterpriseBrowserCtrlPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    const-string p1, "EnterpriseBrowserCtrl, CheckInstalledOrNot(), appManagementCtrl.getAllPkgNameList(), result code is error"

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

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnterpriseBrowserCtrl, exortSetting(), filePath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "invalid parameters"

    .line 104
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const-string v2, ""

    .line 106
    invoke-direct {p0, v0, v2}, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 108
    sget-object v2, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->EnterpriseBrowserCtrlPkgName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->CheckInstalledOrNot(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "EnterpriseBrowserCtrl, exortSetting(), EnterpriseBrowser was not installed."

    .line 109
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 113
    :cond_1
    sget-object v2, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v2

    .line 114
    invoke-virtual {v2, p1}, Lcom/unitech/api/file/FileCtrl;->pathConverter(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "errorCode"

    .line 115
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    const-string p1, "REAL_PATH"

    .line 116
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 118
    :cond_2
    invoke-virtual {v2, p1}, Lcom/unitech/api/file/FileCtrl;->exists(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 119
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 120
    invoke-virtual {v2, p1}, Lcom/unitech/api/file/FileCtrl;->deleteFile(Ljava/lang/String;)Landroid/os/Bundle;

    .line 121
    :cond_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v5, "setting.api.action"

    .line 122
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "method"

    const-string v6, "exportSettings"

    .line 123
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "FilePath"

    .line 124
    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    sget-object v5, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "pkgName"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v5, 0x20

    .line 126
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 127
    sget-object v5, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->EnterpriseBrowserCtrlPkgName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    sget-object v5, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v3, 0x1

    :goto_0
    const/4 v5, 0x5

    if-gt v3, v5, :cond_6

    const-wide/16 v6, 0x1f4

    .line 132
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 135
    :goto_1
    invoke-virtual {v2, p1}, Lcom/unitech/api/file/FileCtrl;->exists(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 136
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    if-ne v3, v5, :cond_5

    const-string p1, "exportSettings fail, config file no generate."

    .line 140
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return-object v0
.end method

.method public importSettings(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    const-string v0, "UnitechSDK"

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EnterpriseBrowserCtrl, importSettings(), filePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "invalid parameters"

    .line 157
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const-string v2, ""

    .line 159
    invoke-direct {p0, v0, v2}, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 160
    sget-object v2, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->EnterpriseBrowserCtrlPkgName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->CheckInstalledOrNot(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "EnterpriseBrowserCtrl, importSettings(), EnterpriseBrowser was not installed."

    .line 161
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 163
    :cond_1
    sget-object v2, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v2

    .line 164
    invoke-virtual {v2, p1}, Lcom/unitech/api/file/FileCtrl;->pathConverter(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "errorCode"

    .line 165
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    const-string p1, "REAL_PATH"

    .line 166
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 168
    :cond_2
    invoke-virtual {v2, p1}, Lcom/unitech/api/file/FileCtrl;->exists(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "errorCode"

    .line 169
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    const-string p1, "EnterpriseBrowserCtrl, importSettings() failed: filepath not exist."

    .line 170
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 172
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "setting.api.action"

    .line 173
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "method"

    const-string v3, "importSettings"

    .line 174
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "FilePath"

    .line 175
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "pkgName"

    .line 176
    sget-object v2, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 177
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 178
    sget-object p1, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->EnterpriseBrowserCtrlPkgName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    sget-object p1, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 180
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 181
    new-instance v1, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl$1;

    invoke-direct {v1, p0, p1}, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl$1;-><init>(Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;Landroid/os/Message;)V

    .line 191
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-ge v2, v3, :cond_4

    .line 192
    sget-object v2, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "setting.api.action.result"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 194
    :cond_4
    sget-object v2, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "setting.api.action.result"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 197
    :goto_0
    monitor-enter p1

    const-wide/16 v2, 0x2710

    .line 199
    :try_start_0
    invoke-virtual {p1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 200
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "errorCode"

    .line 202
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "errorCode"

    .line 203
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int v2, v2

    const-string v3, "errorCode"

    .line 204
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 206
    :cond_5
    sget-object v2, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 208
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 210
    :goto_1
    monitor-exit p1

    return-object v0

    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public licenseActivate(Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyid",
            "enable"
        }
    .end annotation

    const-string v0, "UnitechSDK"

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EnterpriseBrowserCtrl, licenseActivate(), keyid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "invalid parameters"

    .line 255
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const-string v2, ""

    .line 257
    invoke-direct {p0, v0, v2}, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 258
    sget-object v2, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->EnterpriseBrowserCtrlPkgName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->CheckInstalledOrNot(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "EnterpriseBrowserCtrl, licenseActivate(), EnterpriseBrowser was not installed."

    .line 259
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 261
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "setting.api.action"

    .line 262
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "method"

    const-string v3, "licenseActivateSettings"

    .line 263
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",enable:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "keySetString"

    .line 266
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "pkgName"

    .line 267
    sget-object p2, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 268
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 269
    sget-object p1, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->EnterpriseBrowserCtrlPkgName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    sget-object p1, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 271
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 272
    new-instance p2, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl$2;

    invoke-direct {p2, p0, p1}, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl$2;-><init>(Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;Landroid/os/Message;)V

    .line 282
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-ge v1, v2, :cond_2

    .line 283
    sget-object v1, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "setting.api.action.result"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 285
    :cond_2
    sget-object v1, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "setting.api.action.result"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v1, p2, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 287
    :goto_0
    monitor-enter p1

    const-wide/16 v1, 0x2710

    .line 289
    :try_start_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 290
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "errorCode"

    .line 292
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "errorCode"

    .line 293
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-int v1, v1

    const-string v2, "errorCode"

    .line 294
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 296
    :cond_3
    sget-object v1, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    .line 298
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 300
    :goto_1
    monitor-exit p1

    return-object v0

    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public resetSettings()Landroid/os/Bundle;
    .locals 4

    const-string v0, "UnitechSDK"

    const-string v1, "EnterpriseBrowserCtrl, resetSettings()"

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v1, ""

    .line 79
    invoke-direct {p0, v0, v1}, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 80
    sget-object v1, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->EnterpriseBrowserCtrlPkgName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->CheckInstalledOrNot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    const-string v1, "EnterpriseBrowserCtrlPkgName, resetSettings(), EnterpriseBrowser was not installed."

    .line 81
    invoke-direct {p0, v0, v1}, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 84
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "setting.api.action"

    .line 85
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "method"

    const-string v3, "resetSettings"

    .line 86
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    sget-object v2, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pkgName"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x20

    .line 88
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 89
    sget-object v2, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->EnterpriseBrowserCtrlPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    sget-object v2, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-object v0
.end method

.method public startURLSettings(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keySetString"
        }
    .end annotation

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnterpriseBrowserCtrl, startURLSettings(), keySetString:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "invalid parameters"

    .line 225
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const-string v2, ""

    .line 227
    invoke-direct {p0, v0, v2}, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 228
    sget-object v3, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->EnterpriseBrowserCtrlPkgName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->CheckInstalledOrNot(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string p1, "EnterpriseBrowserCtrl, startURLSettings(), EnterpriseBrowser was not installed."

    .line 229
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 231
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "setting.api.action"

    .line 232
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "method"

    const-string v4, "startURLSettings"

    .line 233
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "\\s"

    .line 235
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "keySetString"

    .line 236
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    sget-object p1, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "pkgName"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 238
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 239
    sget-object p1, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->EnterpriseBrowserCtrlPkgName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    sget-object p1, Lcom/unitech/api/uapps/EnterpriseBrowserCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-object v0
.end method
