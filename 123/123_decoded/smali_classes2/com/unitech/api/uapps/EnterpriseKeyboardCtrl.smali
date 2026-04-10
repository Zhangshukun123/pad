.class public Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;
.super Ljava/lang/Object;
.source "EnterpriseKeyboardCtrl.java"


# static fields
.field private static ConfigFilePath:Ljava/lang/String; = "/sdcard/unitech/EnterpriseKeyboard/settings.conf"

.field private static EnterprisekeyboardCtrlPkgName:Ljava/lang/String; = "com.unitech.enterprisekeyboard"

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

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UnitechSDK"

    .line 24
    iput-object v0, p0, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->TAG:Ljava/lang/String;

    const-string v0, "errorCode"

    .line 25
    iput-object v0, p0, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->BUNDLE_ERROR_CODE:Ljava/lang/String;

    const-string v0, "errorMsg"

    .line 26
    iput-object v0, p0, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->BUNDLE_ERROR_MSG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->RESULT_CODE_ERROR:I

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->RESULT_CODE_SUCCESS:I

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->ctxPkgName:Ljava/lang/String;

    .line 45
    sget-object p1, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    if-nez p1, :cond_0

    .line 46
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object p1, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    .line 47
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    sput-object p1, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->mCondition:Ljava/util/concurrent/locks/Condition;

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

    .line 86
    new-instance p1, Lcom/unitech/api/app/AppManagementCtrl;

    sget-object v0, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/unitech/api/app/AppManagementCtrl;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-virtual {p1}, Lcom/unitech/api/app/AppManagementCtrl;->getAllPkgNameList()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    .line 88
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "UnitechSDK"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const-string v0, "PkgNameList"

    .line 90
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "EnterpriseKeyboardCtrl, CheckInstalledOrNot(), appManagementCtrl.getAllPkgNameList(), alPkgNames is null"

    .line 92
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 96
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

    .line 97
    sget-object v1, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->EnterprisekeyboardCtrlPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    const-string p1, "EnterpriseKeyboardCtrl, CheckInstalledOrNot(), appManagementCtrl.getAllPkgNameList(), result code is error"

    .line 103
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

    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    .line 53
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "errorMsg"

    .line 54
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

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnterpriseKeyboardCtrl, exortSetting(), filePath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "invalid parameters"

    .line 120
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const-string v2, ""

    .line 123
    invoke-direct {p0, v0, v2}, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 125
    sget-object v2, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->EnterprisekeyboardCtrlPkgName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->CheckInstalledOrNot(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "EnterpriseKeyboardCtrl, exortSetting(), EnterpriseKeyboard was not installed."

    .line 126
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 131
    :cond_1
    sget-object v2, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v2

    .line 132
    invoke-virtual {v2, p1}, Lcom/unitech/api/file/FileCtrl;->pathConverter(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "errorCode"

    .line 133
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    const-string p1, "REAL_PATH"

    .line 134
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string v5, "errorMsg"

    .line 136
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "NOT_EXIST"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string p1, "EnterpriseKeyboardCtrl, exportSettings() failed: filepath not exist."

    .line 137
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 139
    :cond_3
    :goto_0
    sget-object v3, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->ConfigFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/unitech/api/file/FileCtrl;->exists(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 140
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    .line 141
    sget-object v3, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->ConfigFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/unitech/api/file/FileCtrl;->deleteFile(Ljava/lang/String;)Landroid/os/Bundle;

    .line 143
    :cond_4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v5, "unitech.service.keyboard.settingbyintent"

    .line 144
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.unitech.enterprisekeyboard"

    const-string v7, "com.unitech.enterprisekeyboard.service.SettingsByIntentActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v5, 0x10000000

    .line 147
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v5, "Request"

    const-string v6, "export"

    .line 148
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    sget-object v5, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v3, 0x1

    :goto_1
    const/4 v5, 0x5

    if-gt v3, v5, :cond_7

    const-wide/16 v6, 0x1f4

    .line 155
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 158
    :goto_2
    sget-object v6, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->ConfigFilePath:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/unitech/api/file/FileCtrl;->exists(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 159
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    if-ne v3, v5, :cond_6

    const-string p1, "exportSettings fail, config file no generate."

    .line 164
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 170
    :cond_7
    :goto_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/settings.conf"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 173
    :cond_a
    sget-object v3, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->ConfigFilePath:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 174
    invoke-virtual {v2, p1}, Lcom/unitech/api/file/FileCtrl;->exists(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 175
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_b

    .line 176
    invoke-virtual {v2, p1}, Lcom/unitech/api/file/FileCtrl;->deleteFile(Ljava/lang/String;)Landroid/os/Bundle;

    .line 178
    :cond_b
    sget-object v3, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->ConfigFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Lcom/unitech/api/file/FileCtrl;->copyFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 179
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_c

    const-string p1, "exportSettings fail, config file was generated, copy to assign path fail."

    .line 180
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :cond_c
    return-object v0
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

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnterpriseKeyboardCtrl, importSettings(), filePath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "invalid parameters"

    .line 196
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const-string v2, ""

    .line 199
    invoke-direct {p0, v0, v2}, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 201
    sget-object v2, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->EnterprisekeyboardCtrlPkgName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->CheckInstalledOrNot(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "EnterpriseKeyboardCtrl, importSettings(), EnterpriseKeyboard was not installed."

    .line 202
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 206
    :cond_1
    sget-object v2, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v2

    .line 207
    sget-object v3, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->ConfigFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/unitech/api/file/FileCtrl;->exists(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "errorCode"

    .line 209
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 210
    sget-object v3, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->ConfigFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/unitech/api/file/FileCtrl;->deleteFile(Ljava/lang/String;)Landroid/os/Bundle;

    .line 212
    :cond_2
    invoke-virtual {v2, p1}, Lcom/unitech/api/file/FileCtrl;->pathConverter(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 213
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    const-string p1, "REAL_PATH"

    .line 214
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string v5, "errorMsg"

    .line 216
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "NOT_EXIST"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string p1, "EnterpriseKeyboardCtrl, importSettings() failed: filepath not exist."

    .line 217
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 219
    :cond_4
    :goto_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/settings.conf"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 222
    :cond_7
    invoke-virtual {v2, p1}, Lcom/unitech/api/file/FileCtrl;->exists(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 223
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_8

    const-string p1, "EnterpriseKeyboardCtrl, importSetting(), assign file path is not exist."

    .line 224
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 226
    :cond_8
    sget-object v3, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->ConfigFilePath:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/unitech/api/file/FileCtrl;->copyFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 227
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_9

    const-string p1, "EnterpriseKeyboardCtrl, importSetting(), asign file path copy to config path was fail."

    .line 228
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 234
    :cond_9
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "unitech.service.keyboard.settingbyintent"

    .line 235
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.unitech.enterprisekeyboard"

    const-string v3, "com.unitech.enterprisekeyboard.service.SettingsByIntentActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 238
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "Request"

    const-string v2, "import"

    .line 239
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    sget-object v1, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-object v0
.end method

.method public resetSettings()Landroid/os/Bundle;
    .locals 5

    const-string v0, "UnitechSDK"

    const-string v1, "EnterpriseKeyboardCtrl, resetSettings()"

    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v1, ""

    .line 65
    invoke-direct {p0, v0, v1}, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 67
    sget-object v1, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->EnterprisekeyboardCtrlPkgName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->CheckInstalledOrNot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    const-string v1, "EnterpriseKeyboardCtrl, resetSettings(), EnterpriseKeyboard was not installed."

    .line 68
    invoke-direct {p0, v0, v1}, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 72
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "unitech.service.keyboard.settingbyintent"

    .line 73
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.unitech.enterprisekeyboard"

    const-string v4, "com.unitech.enterprisekeyboard.service.SettingsByIntentActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 76
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "Request"

    const-string v3, "reset"

    .line 77
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    sget-object v2, Lcom/unitech/api/uapps/EnterpriseKeyboardCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-object v0
.end method
