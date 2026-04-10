.class public Lcom/unitech/api/uapps/LoggerCtrl;
.super Ljava/lang/Object;
.source "LoggerCtrl.java"


# static fields
.field private static final CONFIG_FILE:Ljava/lang/String; = "/LoggerSetting.txt"

.field private static final LOGGER_PACKAGE_NAME:Ljava/lang/String; = "com.unitech.logger"

.field private static final LOGGER_SERVICE_CLASS_NAME:Ljava/lang/String; = "com.unitech.logger.LoggerAPIAIDLService"

.field private static mInstance:Lcom/unitech/api/uapps/LoggerCtrl; = null

.field private static mServiceChecked:I = -0x1

.field private static mServiceHandler:Lcom/unitech/api/util/ServiceHandler;


# instance fields
.field private final BUNDLE_ERROR_CODE:Ljava/lang/String;

.field private final BUNDLE_ERROR_MSG:Ljava/lang/String;

.field private final RESULT_CODE_ERROR:I

.field private final RESULT_CODE_SUCCESS:I

.field private final TAG:Ljava/lang/String;

.field private componentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private mErrorCode:I

.field private mErrorMsg:Ljava/lang/String;

.field private mLoggerAPIAidl:Lcom/unitech/logger/ILoggerAPI;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UnitechSDK"

    .line 23
    iput-object v0, p0, Lcom/unitech/api/uapps/LoggerCtrl;->TAG:Ljava/lang/String;

    const-string v0, "errorCode"

    .line 37
    iput-object v0, p0, Lcom/unitech/api/uapps/LoggerCtrl;->BUNDLE_ERROR_CODE:Ljava/lang/String;

    const-string v0, "errorMsg"

    .line 38
    iput-object v0, p0, Lcom/unitech/api/uapps/LoggerCtrl;->BUNDLE_ERROR_MSG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 39
    iput v0, p0, Lcom/unitech/api/uapps/LoggerCtrl;->RESULT_CODE_ERROR:I

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/unitech/api/uapps/LoggerCtrl;->RESULT_CODE_SUCCESS:I

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/unitech/api/uapps/LoggerCtrl;->mErrorCode:I

    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/unitech/api/uapps/LoggerCtrl;->mErrorMsg:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/unitech/api/uapps/LoggerCtrl;->mContext:Landroid/content/Context;

    .line 65
    sget-object p1, Lcom/unitech/api/uapps/LoggerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    if-nez p1, :cond_0

    .line 66
    new-instance p1, Landroid/content/ComponentName;

    const-string v1, "com.unitech.logger"

    const-string v2, "com.unitech.logger.LoggerAPIAIDLService"

    invoke-direct {p1, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/unitech/api/uapps/LoggerCtrl;->componentName:Landroid/content/ComponentName;

    .line 67
    :cond_0
    new-instance p1, Lcom/unitech/api/util/ServiceHandler;

    iget-object v1, p0, Lcom/unitech/api/uapps/LoggerCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/unitech/api/uapps/LoggerCtrl;->componentName:Landroid/content/ComponentName;

    invoke-direct {p0}, Lcom/unitech/api/uapps/LoggerCtrl;->createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v3

    invoke-direct {p1, v1, v2, v3}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    sput-object p1, Lcom/unitech/api/uapps/LoggerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    .line 69
    sget p1, Lcom/unitech/api/uapps/LoggerCtrl;->mServiceChecked:I

    if-ne p1, v0, :cond_1

    .line 70
    invoke-direct {p0}, Lcom/unitech/api/uapps/LoggerCtrl;->checkServiceIsInstalled()V

    :cond_1
    return-void
.end method

.method private varargs LogE(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "arguments"
        }
    .end annotation

    .line 451
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "UnitechSDK"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private varargs LogI(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "arguments"
        }
    .end annotation

    .line 447
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "UnitechSDK"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private ResetReceiveData()V
    .locals 1

    const/4 v0, -0x1

    .line 442
    iput v0, p0, Lcom/unitech/api/uapps/LoggerCtrl;->mErrorCode:I

    const/4 v0, 0x0

    .line 443
    iput-object v0, p0, Lcom/unitech/api/uapps/LoggerCtrl;->mErrorMsg:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/unitech/api/uapps/LoggerCtrl;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/unitech/api/uapps/LoggerCtrl;->LogI(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$102(Lcom/unitech/api/uapps/LoggerCtrl;Lcom/unitech/logger/ILoggerAPI;)Lcom/unitech/logger/ILoggerAPI;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/unitech/api/uapps/LoggerCtrl;->mLoggerAPIAidl:Lcom/unitech/logger/ILoggerAPI;

    return-object p1
.end method

.method private checkServiceIsInstalled()V
    .locals 5

    .line 75
    sget v0, Lcom/unitech/api/uapps/LoggerCtrl;->mServiceChecked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/unitech/api/uapps/LoggerCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "com.unitech.logger"

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 86
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v3, v0, v1

    const-string v1, "LoggerCtrl, package %s is found."

    .line 93
    invoke-direct {p0, v1, v0}, Lcom/unitech/api/uapps/LoggerCtrl;->LogI(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    sput v4, Lcom/unitech/api/uapps/LoggerCtrl;->mServiceChecked:I

    goto :goto_1

    :cond_3
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v3, v0, v1

    const-string v2, "LoggerCtrl, package %s is not found."

    .line 96
    invoke-direct {p0, v2, v0}, Lcom/unitech/api/uapps/LoggerCtrl;->LogE(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    sput v1, Lcom/unitech/api/uapps/LoggerCtrl;->mServiceChecked:I

    :goto_1
    return-void
.end method

.method private createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
    .locals 1

    .line 120
    new-instance v0, Lcom/unitech/api/uapps/LoggerCtrl$1;

    invoke-direct {v0, p0}, Lcom/unitech/api/uapps/LoggerCtrl$1;-><init>(Lcom/unitech/api/uapps/LoggerCtrl;)V

    return-object v0
.end method

.method private deleteFile(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lcom/unitech/api/uapps/LoggerCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v0

    .line 434
    invoke-virtual {v0, p1}, Lcom/unitech/api/file/FileCtrl;->exists(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "errorCode"

    .line 436
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 437
    invoke-virtual {v0, p1}, Lcom/unitech/api/file/FileCtrl;->deleteFile(Ljava/lang/String;)Landroid/os/Bundle;

    :cond_0
    return-void
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

    .line 102
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "calling this from your main thread can lead to deadlock"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/unitech/api/uapps/LoggerCtrl;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 51
    sget-object v0, Lcom/unitech/api/uapps/LoggerCtrl;->mInstance:Lcom/unitech/api/uapps/LoggerCtrl;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/unitech/api/uapps/LoggerCtrl;

    invoke-direct {v0, p0}, Lcom/unitech/api/uapps/LoggerCtrl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/unitech/api/uapps/LoggerCtrl;->mInstance:Lcom/unitech/api/uapps/LoggerCtrl;

    .line 54
    :cond_0
    sget-object p0, Lcom/unitech/api/uapps/LoggerCtrl;->mInstance:Lcom/unitech/api/uapps/LoggerCtrl;

    return-object p0
.end method

.method private invokeLoggerServiceAPI(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "command",
            "filePath"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const-string v7, "LoggerCtrl, %s "

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "ImportSettings"

    .line 233
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, ""

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x4

    const-string v12, "/LoggerSetting.txt"

    const-string v13, "ExportSettings"

    if-nez v7, :cond_1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    move-object v7, v8

    goto :goto_1

    .line 234
    :cond_1
    :goto_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v0, "failed: filePath cannot be empty."

    .line 235
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lcom/unitech/api/uapps/LoggerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 237
    :cond_2
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    const-string v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_5
    const/16 v7, 0x2f

    .line 241
    :try_start_0
    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    invoke-virtual {v2, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 242
    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 247
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-array v15, v11, [Ljava/lang/Object;

    aput-object v3, v15, v6

    aput-object v8, v15, v4

    aput-object v7, v15, v10

    aput-object v14, v15, v9

    const-string v7, "%sfolder=[%s]; fileName=[%s]; configFilePath=[%s]"

    .line 248
    invoke-direct {v1, v7, v15}, Lcom/unitech/api/uapps/LoggerCtrl;->LogI(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v7, v8

    move-object v8, v14

    :goto_1
    if-eqz v2, :cond_6

    .line 250
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    const/4 v12, 0x1

    goto :goto_2

    :cond_6
    const/4 v12, 0x0

    .line 255
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v4, v14}, Lcom/unitech/api/uapps/LoggerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    .line 257
    invoke-direct/range {p0 .. p0}, Lcom/unitech/api/uapps/LoggerCtrl;->tryToBindService()Z

    move-result v15

    if-nez v15, :cond_7

    const-string v0, "failed: cannot bind LoggerAPIAIDLService"

    .line 258
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v14, v4, v0}, Lcom/unitech/api/uapps/LoggerCtrl;->setBundleResult(Landroid/os/Bundle;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 261
    :cond_7
    sget-object v14, Lcom/unitech/api/uapps/LoggerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v14}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v14

    .line 263
    iget-object v6, v1, Lcom/unitech/api/uapps/LoggerCtrl;->mLoggerAPIAidl:Lcom/unitech/logger/ILoggerAPI;

    if-eqz v6, :cond_16

    const-string v6, "errorCode"

    if-eqz v12, :cond_8

    .line 265
    iget-object v11, v1, Lcom/unitech/api/uapps/LoggerCtrl;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v11

    .line 266
    invoke-virtual {v11, v8}, Lcom/unitech/api/file/FileCtrl;->exists(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 267
    invoke-virtual {v11, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_8

    .line 269
    invoke-direct {v1, v8}, Lcom/unitech/api/uapps/LoggerCtrl;->preExportCopy(Ljava/lang/String;)Landroid/os/Bundle;

    const/4 v11, 0x1

    goto :goto_3

    :cond_8
    const/4 v11, 0x0

    :goto_3
    const/16 v16, 0x0

    const/16 v17, -0x1

    .line 277
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v5, "ResetSettings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x2

    goto :goto_5

    :sswitch_1
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x0

    goto :goto_5

    :sswitch_2
    const-string v5, "StopLogging"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x4

    goto :goto_5

    :sswitch_3
    const-string v5, "StartLogging"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x3

    goto :goto_5

    :sswitch_4
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v5, -0x1

    :goto_5
    if-eqz v5, :cond_10

    if-eq v5, v4, :cond_e

    if-eq v5, v10, :cond_d

    if-eq v5, v9, :cond_c

    const/4 v7, 0x4

    if-eq v5, v7, :cond_b

    :cond_a
    :goto_6
    move-object/from16 v5, v16

    goto :goto_7

    .line 316
    :cond_b
    iget-object v5, v1, Lcom/unitech/api/uapps/LoggerCtrl;->mLoggerAPIAidl:Lcom/unitech/logger/ILoggerAPI;

    invoke-interface {v5}, Lcom/unitech/logger/ILoggerAPI;->stopLogging()Landroid/os/Bundle;

    move-result-object v16

    goto :goto_6

    .line 312
    :cond_c
    iget-object v5, v1, Lcom/unitech/api/uapps/LoggerCtrl;->mLoggerAPIAidl:Lcom/unitech/logger/ILoggerAPI;

    invoke-interface {v5}, Lcom/unitech/logger/ILoggerAPI;->startLogging()Landroid/os/Bundle;

    move-result-object v16

    goto :goto_6

    .line 308
    :cond_d
    iget-object v5, v1, Lcom/unitech/api/uapps/LoggerCtrl;->mLoggerAPIAidl:Lcom/unitech/logger/ILoggerAPI;

    invoke-interface {v5}, Lcom/unitech/logger/ILoggerAPI;->resetSettings()Landroid/os/Bundle;

    move-result-object v16

    goto :goto_6

    :cond_e
    if-eqz v12, :cond_f

    .line 300
    invoke-direct {v1, v8}, Lcom/unitech/api/uapps/LoggerCtrl;->deleteFile(Ljava/lang/String;)V

    .line 302
    :cond_f
    invoke-direct {v1, v2}, Lcom/unitech/api/uapps/LoggerCtrl;->deleteFile(Ljava/lang/String;)V

    .line 304
    iget-object v5, v1, Lcom/unitech/api/uapps/LoggerCtrl;->mLoggerAPIAidl:Lcom/unitech/logger/ILoggerAPI;

    invoke-interface {v5, v7}, Lcom/unitech/logger/ILoggerAPI;->exportSettings(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v16

    goto :goto_6

    :cond_10
    if-eqz v12, :cond_12

    .line 281
    invoke-direct {v1, v2, v8}, Lcom/unitech/api/uapps/LoggerCtrl;->preImporting(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 284
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_12

    .line 285
    sget-object v0, Lcom/unitech/api/uapps/LoggerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v14, v15}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    .line 286
    invoke-direct {v1, v8}, Lcom/unitech/api/uapps/LoggerCtrl;->deleteFile(Ljava/lang/String;)V

    .line 287
    invoke-direct/range {p0 .. p0}, Lcom/unitech/api/uapps/LoggerCtrl;->ResetReceiveData()V

    if-eqz v11, :cond_11

    .line 288
    invoke-direct {v1, v8}, Lcom/unitech/api/uapps/LoggerCtrl;->postExportCopy(Ljava/lang/String;)Landroid/os/Bundle;

    :cond_11
    return-object v5

    .line 294
    :cond_12
    iget-object v5, v1, Lcom/unitech/api/uapps/LoggerCtrl;->mLoggerAPIAidl:Lcom/unitech/logger/ILoggerAPI;

    invoke-interface {v5, v7}, Lcom/unitech/logger/ILoggerAPI;->importSettings(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v16

    if-eqz v12, :cond_a

    .line 295
    invoke-direct {v1, v8}, Lcom/unitech/api/uapps/LoggerCtrl;->deleteFile(Ljava/lang/String;)V

    goto :goto_6

    :goto_7
    if-eqz v5, :cond_14

    .line 321
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v1, Lcom/unitech/api/uapps/LoggerCtrl;->mErrorCode:I

    const-string v7, "errorMsg"

    .line 322
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/unitech/api/uapps/LoggerCtrl;->mErrorMsg:Ljava/lang/String;

    .line 324
    iget v5, v1, Lcom/unitech/api/uapps/LoggerCtrl;->mErrorCode:I

    if-nez v5, :cond_13

    const-string v5, "success"

    .line 325
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct {v1, v7, v5}, Lcom/unitech/api/uapps/LoggerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 327
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    if-eqz v12, :cond_15

    .line 330
    invoke-direct {v1, v8, v2}, Lcom/unitech/api/uapps/LoggerCtrl;->postExporting(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 332
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_15

    move-object v5, v0

    goto :goto_8

    :cond_13
    const-string v0, "fail, message:"

    .line 345
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/unitech/api/uapps/LoggerCtrl;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lcom/unitech/api/uapps/LoggerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    goto :goto_8

    :cond_14
    const-string v0, "has null result"

    .line 348
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lcom/unitech/api/uapps/LoggerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    .line 351
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v2, "RemoteException: "

    .line 352
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lcom/unitech/api/uapps/LoggerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    :cond_15
    :goto_8
    move v6, v11

    goto :goto_9

    :cond_16
    const/4 v7, 0x0

    const-string v0, "ILoggerAPI is null"

    .line 355
    invoke-direct {v1, v4, v0}, Lcom/unitech/api/uapps/LoggerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    const/4 v6, 0x0

    :goto_9
    if-eqz v6, :cond_17

    .line 357
    invoke-direct {v1, v8}, Lcom/unitech/api/uapps/LoggerCtrl;->postExportCopy(Ljava/lang/String;)Landroid/os/Bundle;

    .line 358
    :cond_17
    sget-object v0, Lcom/unitech/api/uapps/LoggerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v14, v15}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    .line 359
    invoke-direct/range {p0 .. p0}, Lcom/unitech/api/uapps/LoggerCtrl;->ResetReceiveData()V

    return-object v5

    :catch_1
    const-string v0, "failed: invalid file path."

    .line 244
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lcom/unitech/api/uapps/LoggerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x13d7f3e9 -> :sswitch_4
        0x162ea0bd -> :sswitch_3
        0x2b3c5cdd -> :sswitch_2
        0x33fdeb08 -> :sswitch_1
        0x3b23ae72 -> :sswitch_0
    .end sparse-switch
.end method

.method private postExportCopy(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configFilePath"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/unitech/api/uapps/LoggerCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v0

    const-string v1, ".txt"

    const-string v2, ".tx0"

    .line 380
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 381
    invoke-virtual {v0, v1, p1}, Lcom/unitech/api/file/FileCtrl;->copyFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 382
    invoke-virtual {v0, v1}, Lcom/unitech/api/file/FileCtrl;->deleteFile(Ljava/lang/String;)Landroid/os/Bundle;

    const-string v0, "errorCode"

    .line 383
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "importSettings fail, assigned file path copy to config path fail."

    .line 384
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/uapps/LoggerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private postExporting(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "configFilePath",
            "filePath"
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/unitech/api/uapps/LoggerCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    const-string v3, "errorCode"

    const/4 v4, 0x5

    if-gt v2, v4, :cond_2

    const-wide/16 v5, 0x1f4

    .line 408
    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 412
    :goto_1
    invoke-virtual {v0, p1}, Lcom/unitech/api/file/FileCtrl;->exists(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 413
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    if-ne v2, v4, :cond_1

    const-string p1, "exportSettings fail, config file not generated."

    .line 418
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/LoggerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 424
    :cond_2
    :goto_2
    invoke-virtual {v0, p1, p2}, Lcom/unitech/api/file/FileCtrl;->copyFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 425
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v1, :cond_3

    const-string p2, "exportSettings fail, config file was generated, rename fail."

    .line 426
    invoke-direct {p0, v1, p2}, Lcom/unitech/api/uapps/LoggerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    goto :goto_3

    :cond_3
    const/4 p2, 0x0

    .line 428
    :goto_3
    invoke-direct {p0, p1}, Lcom/unitech/api/uapps/LoggerCtrl;->deleteFile(Ljava/lang/String;)V

    return-object p2
.end method

.method private preExportCopy(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configFilePath"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/unitech/api/uapps/LoggerCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v0

    const-string v1, ".txt"

    const-string v2, ".tx0"

    .line 368
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 369
    invoke-virtual {v0, v1}, Lcom/unitech/api/file/FileCtrl;->deleteFile(Ljava/lang/String;)Landroid/os/Bundle;

    .line 370
    invoke-virtual {v0, p1, v1}, Lcom/unitech/api/file/FileCtrl;->copyFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    .line 371
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "importSettings fail, assigned file path copy to config path fail."

    .line 372
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/uapps/LoggerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private preImporting(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filePath",
            "configFilePath"
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/unitech/api/uapps/LoggerCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v0

    .line 393
    invoke-virtual {v0, p1, p2}, Lcom/unitech/api/file/FileCtrl;->copyFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "errorCode"

    .line 394
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const-string p1, "importSettings fail, assigned file path copy to config path fail."

    .line 395
    invoke-direct {p0, p2, p1}, Lcom/unitech/api/uapps/LoggerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
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

    .line 213
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    .line 214
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "errorMsg"

    .line 215
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
            "source",
            "errorCode",
            "errorMsg"
        }
    .end annotation

    const-string v0, "errorCode"

    .line 220
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "errorMsg"

    .line 221
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private tryToBindService()Z
    .locals 1

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/uapps/LoggerCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unitech/api/uapps/LoggerCtrl;->ensureNotOnMainThread(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    sget-object v0, Lcom/unitech/api/uapps/LoggerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public exportSettings(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/unitech/api/uapps/LoggerCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v0

    .line 191
    invoke-virtual {v0, p1}, Lcom/unitech/api/file/FileCtrl;->pathConverter(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "errorCode"

    .line 192
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "REAL_PATH"

    .line 193
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v1, "errorMsg"

    .line 195
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NOT_EXIST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    const-string v0, "LoggerCtrl, exportSettings() failed: filepath not exist."

    .line 196
    invoke-direct {p0, p1, v0}, Lcom/unitech/api/uapps/LoggerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string v0, "ExportSettings"

    .line 198
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/uapps/LoggerCtrl;->invokeLoggerServiceAPI(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public importSettings(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/unitech/api/uapps/LoggerCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v0

    .line 171
    invoke-virtual {v0, p1}, Lcom/unitech/api/file/FileCtrl;->pathConverter(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "errorCode"

    .line 172
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "REAL_PATH"

    .line 173
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v1, "errorMsg"

    .line 175
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NOT_EXIST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    const-string v0, "LoggerCtrl, importSettings() failed: filepath not exist."

    .line 176
    invoke-direct {p0, p1, v0}, Lcom/unitech/api/uapps/LoggerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string v0, "ImportSettings"

    .line 178
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/uapps/LoggerCtrl;->invokeLoggerServiceAPI(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public resetSettings()Landroid/os/Bundle;
    .locals 2

    const-string v0, "ResetSettings"

    const/4 v1, 0x0

    .line 209
    invoke-direct {p0, v0, v1}, Lcom/unitech/api/uapps/LoggerCtrl;->invokeLoggerServiceAPI(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public startLogging()Landroid/os/Bundle;
    .locals 2

    const-string v0, "StartLogging"

    const/4 v1, 0x0

    .line 147
    invoke-direct {p0, v0, v1}, Lcom/unitech/api/uapps/LoggerCtrl;->invokeLoggerServiceAPI(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public stopLogging()Landroid/os/Bundle;
    .locals 2

    const-string v0, "StopLogging"

    const/4 v1, 0x0

    .line 158
    invoke-direct {p0, v0, v1}, Lcom/unitech/api/uapps/LoggerCtrl;->invokeLoggerServiceAPI(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
