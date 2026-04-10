.class public Lcom/unitech/api/scanner/ScannerCtrl;
.super Ljava/lang/Object;
.source "ScannerCtrl.java"


# static fields
.field private static final A10_SYS_PROFILE_FOLDER_PATH:Ljava/lang/String; = "/sdcard/Android/data/com.unitech.scanservice/files/profile/"

.field private static final A11_A12_SYS_PROFILE_FOLDER_PATH:Ljava/lang/String; = "/sdcard/USSExport/Profile/"

.field private static final ACTION_BIND_SERVICE:Ljava/lang/String; = "com.unitech.dmservice.action.scanner"

.field private static final ACTION_EXPORT_ALL_PROFILE:Ljava/lang/String; = "com.unitech.scanservice.action.EXPORT_ALL_PROFILES"

.field private static final ACTION_FACTORY_RESET_PROFILE:Ljava/lang/String; = "com.unitech.scanservice.action.FACTORY_RESET"

.field private static final ACTION_IMPORT_PROFILE:Ljava/lang/String; = "com.unitech.scanservice.action.IMPORT_PROFILE"

.field public static final BUNDLE_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final BUNDLE_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field private static final EXTRA_PTAH:Ljava/lang/String; = "com.unitech.scanservice.extra.PATH"

.field private static final PKG_API_SERVICE:Ljava/lang/String; = "com.unitech.dmservice"

.field public static final RESULT_CODE_ERROR:I = 0x1

.field public static final RESULT_CODE_SUCCESS:I = 0x0

.field private static final SCANSERVICE_PACKAGENAME:Ljava/lang/String; = "com.unitech.scanservice"

.field private static ScannerCtrlAidl:Lcom/unitech/dmservice/IScannerCtrlAidl; = null

.field private static final TAG:Ljava/lang/String; = "UnitechSDK"

.field private static mContext:Landroid/content/Context; = null

.field private static mServiceChecked:I = -0x1

.field private static mServiceHandler:Lcom/unitech/api/util/ServiceHandler;


# instance fields
.field android10:Z


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

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/unitech/api/scanner/ScannerCtrl;->android10:Z

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/unitech/api/scanner/ScannerCtrl;->mContext:Landroid/content/Context;

    .line 63
    sget-object v0, Lcom/unitech/api/scanner/ScannerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    if-nez v0, :cond_1

    .line 64
    new-instance v0, Lcom/unitech/api/util/ServiceHandler;

    .line 65
    invoke-direct {p0}, Lcom/unitech/api/scanner/ScannerCtrl;->createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v1

    const-string v2, "com.unitech.dmservice"

    const-string v3, "com.unitech.dmservice.action.scanner"

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    sput-object v0, Lcom/unitech/api/scanner/ScannerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    .line 67
    :cond_1
    sget p1, Lcom/unitech/api/scanner/ScannerCtrl;->mServiceChecked:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 68
    invoke-direct {p0}, Lcom/unitech/api/scanner/ScannerCtrl;->checkScannerCtrlService()V

    :cond_2
    return-void
.end method

.method private DeleteFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetPath"
        }
    .end annotation

    .line 496
    sget-object v0, Lcom/unitech/api/scanner/ScannerCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v0

    .line 498
    invoke-virtual {v0, p1}, Lcom/unitech/api/file/FileCtrl;->exists(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "errorCode"

    .line 499
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const-string p1, "PASS"

    return-object p1

    .line 502
    :cond_0
    invoke-virtual {v0, p1}, Lcom/unitech/api/file/FileCtrl;->list(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "List"

    .line 503
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 505
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v1, v5

    .line 507
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/unitech/api/file/FileCtrl;->isDirectory(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 508
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v3, :cond_1

    .line 509
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/unitech/api/file/FileCtrl;->deleteFile(Ljava/lang/String;)Landroid/os/Bundle;

    goto :goto_1

    .line 511
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/unitech/api/scanner/ScannerCtrl;->DeleteFolder(Ljava/lang/String;)Ljava/lang/String;

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 516
    :cond_2
    invoke-virtual {v0, p1}, Lcom/unitech/api/file/FileCtrl;->deleteFile(Ljava/lang/String;)Landroid/os/Bundle;

    const-string p1, "Pass"

    return-object p1
.end method

.method static synthetic access$002(Lcom/unitech/dmservice/IScannerCtrlAidl;)Lcom/unitech/dmservice/IScannerCtrlAidl;
    .locals 0

    .line 27
    sput-object p0, Lcom/unitech/api/scanner/ScannerCtrl;->ScannerCtrlAidl:Lcom/unitech/dmservice/IScannerCtrlAidl;

    return-object p0
.end method

.method private checkFileExist(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetPath"
        }
    .end annotation

    .line 486
    sget-object v0, Lcom/unitech/api/scanner/ScannerCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v0

    .line 487
    invoke-virtual {v0, p1}, Lcom/unitech/api/file/FileCtrl;->exists(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    .line 488
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "FAIL"

    return-object p1

    :cond_0
    const-string p1, "PASS"

    return-object p1
.end method

.method private checkScannerCtrlService()V
    .locals 5

    .line 73
    sget v0, Lcom/unitech/api/scanner/ScannerCtrl;->mServiceChecked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 80
    :cond_0
    sget-object v0, Lcom/unitech/api/scanner/ScannerCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 83
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

    .line 84
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

    const-string v0, "ScannerCtrl, package com.unitech.dmservice is found."

    .line 91
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sput v3, Lcom/unitech/api/scanner/ScannerCtrl;->mServiceChecked:I

    goto :goto_1

    :cond_3
    const-string v0, "ScannerCtrl, package com.unitech.dmservice is not found"

    .line 94
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sput v1, Lcom/unitech/api/scanner/ScannerCtrl;->mServiceChecked:I

    :goto_1
    return-void
.end method

.method private static copyFolder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sourceFolderPath",
            "targetFolderPath"
        }
    .end annotation

    .line 521
    sget-object v0, Lcom/unitech/api/scanner/ScannerCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v0

    .line 522
    invoke-virtual {v0, p0}, Lcom/unitech/api/file/FileCtrl;->list(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "List"

    .line 523
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 524
    array-length v2, v1

    if-lez v2, :cond_1

    .line 525
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 527
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lcom/unitech/api/file/FileCtrl;->copyFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "errorCode"

    .line 528
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const-string p0, "FAIL"

    return-object p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "PASS"

    return-object p0
.end method

.method private createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
    .locals 1

    .line 107
    new-instance v0, Lcom/unitech/api/scanner/ScannerCtrl$1;

    invoke-direct {v0, p0}, Lcom/unitech/api/scanner/ScannerCtrl$1;-><init>(Lcom/unitech/api/scanner/ScannerCtrl;)V

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

    .line 130
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "calling this from your main thread can lead to deadlock"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private isScanserviceInstalled()Ljava/lang/String;
    .locals 3

    .line 569
    sget-object v0, Lcom/unitech/api/scanner/ScannerCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 570
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 571
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 572
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.unitech.scanservice"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "PASS"

    return-object v0

    :cond_1
    const-string v0, "FAIL"

    return-object v0
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

    .line 100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    .line 101
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "errorMsg"

    .line 102
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private tryToBindService()Z
    .locals 1

    .line 139
    :try_start_0
    sget-object v0, Lcom/unitech/api/scanner/ScannerCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unitech/api/scanner/ScannerCtrl;->ensureNotOnMainThread(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    sget-object v0, Lcom/unitech/api/scanner/ScannerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public exportEaSeriesSettings(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScannerCtrl, exportEaSeriesSettings(), filePath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "ScannerCtrl, exportEaSeriesSettings failed: filePath cannot be empty."

    .line 318
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 321
    :cond_0
    sget-object v0, Lcom/unitech/api/scanner/ScannerCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v0

    .line 322
    invoke-virtual {v0, p1}, Lcom/unitech/api/file/FileCtrl;->pathConverter(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "errorCode"

    .line 323
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "errorMsg"

    if-nez v3, :cond_1

    const-string p1, "REAL_PATH"

    .line 324
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 326
    :cond_1
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "NOT_EXIST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "ScannerCtrl, exportEaSeriesSettings() failed: filepath not exist."

    .line 327
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 329
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/unitech/api/scanner/ScannerCtrl;->tryToBindService()Z

    .line 330
    sget-object v0, Lcom/unitech/api/scanner/ScannerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v5

    .line 332
    sget-object v0, Lcom/unitech/api/scanner/ScannerCtrl;->ScannerCtrlAidl:Lcom/unitech/dmservice/IScannerCtrlAidl;

    if-eqz v0, :cond_3

    .line 335
    :try_start_0
    invoke-interface {v0, p1}, Lcom/unitech/dmservice/IScannerCtrlAidl;->exportEaSeriesSettings(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 337
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 338
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 339
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 342
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 343
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "ScannerCtrlAidl.exportEaSeriesSettings exception: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string p1, "ScannerCtrlAidl is null."

    .line 346
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 349
    :goto_1
    sget-object v0, Lcom/unitech/api/scanner/ScannerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v5, v6}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public exportSettings(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "folderPath"
        }
    .end annotation

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScannerCtrl, exportSettings(), filePath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "ScannerCtrl, exportSettings failed: folderPath cannot be empty."

    .line 215
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 218
    :cond_0
    sget-object v0, Lcom/unitech/api/scanner/ScannerCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v0

    .line 219
    invoke-virtual {v0, p1}, Lcom/unitech/api/file/FileCtrl;->pathConverter(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "errorCode"

    .line 220
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errorMsg"

    if-nez v4, :cond_1

    const-string p1, "REAL_PATH"

    .line 221
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "NOT_EXIST"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "ScannerCtrl, exportSettings() failed: filepath not exist."

    .line 224
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 226
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/unitech/api/scanner/ScannerCtrl;->tryToBindService()Z

    .line 227
    sget-object v2, Lcom/unitech/api/scanner/ScannerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v6

    .line 229
    sget-object v2, Lcom/unitech/api/scanner/ScannerCtrl;->ScannerCtrlAidl:Lcom/unitech/dmservice/IScannerCtrlAidl;

    if-eqz v2, :cond_5

    .line 232
    :try_start_0
    sget-boolean v2, Lcom/unitech/api/machine/Machine;->EA300:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/unitech/api/machine/Machine;->EA320:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/unitech/api/machine/Machine;->EA500:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/unitech/api/machine/Machine;->EA500Plus:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/unitech/api/machine/Machine;->EA510:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/unitech/api/machine/Machine;->EA602:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/unitech/api/machine/Machine;->HT510:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/unitech/api/machine/Machine;->HT380:Z

    if-eqz v2, :cond_3

    goto :goto_1

    .line 239
    :cond_3
    sget-object v0, Lcom/unitech/api/scanner/ScannerCtrl;->ScannerCtrlAidl:Lcom/unitech/dmservice/IScannerCtrlAidl;

    invoke-interface {v0, p1}, Lcom/unitech/dmservice/IScannerCtrlAidl;->exportSettings(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_2

    .line 236
    :cond_4
    :goto_1
    invoke-virtual {v0, p1}, Lcom/unitech/api/file/FileCtrl;->createFile(Ljava/lang/String;)Landroid/os/Bundle;

    .line 237
    sget-object v0, Lcom/unitech/api/scanner/ScannerCtrl;->ScannerCtrlAidl:Lcom/unitech/dmservice/IScannerCtrlAidl;

    invoke-interface {v0, p1}, Lcom/unitech/dmservice/IScannerCtrlAidl;->exportEaSeriesSettings(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 242
    :goto_2
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 243
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 244
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 247
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 248
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "ScannerCtrlAidl.exportSettings exception: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_3

    :cond_5
    const-string p1, "ScannerCtrlAidl is null."

    .line 251
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 254
    :goto_3
    sget-object v0, Lcom/unitech/api/scanner/ScannerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v6, v7}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public exportUSSProfile(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "folderPath"
        }
    .end annotation

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScannerCtrl, exportUSSProfile(), filePath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-direct {p0}, Lcom/unitech/api/scanner/ScannerCtrl;->isScanserviceInstalled()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string p1, "Not Support."

    .line 417
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 420
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "ScannerCtrl, exportUSSProfile failed: folderPath cannot be empty."

    .line 421
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 423
    :cond_1
    sget-object v0, Lcom/unitech/api/scanner/ScannerCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v0

    .line 424
    invoke-virtual {v0, p1}, Lcom/unitech/api/file/FileCtrl;->pathConverter(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "errorCode"

    .line 425
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    const-string p1, "REAL_PATH"

    .line 426
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string v3, "errorMsg"

    .line 428
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "NOT_EXIST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "ScannerCtrl, exportUSSProfile() failed: filepath not exist."

    .line 429
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 431
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/unitech/api/scanner/ScannerCtrl;->tryToBindService()Z

    .line 432
    sget-object v0, Lcom/unitech/api/scanner/ScannerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v3

    const/4 v0, 0x0

    const-string v5, ""

    .line 434
    invoke-direct {p0, v0, v5}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 438
    iget-boolean v6, p0, Lcom/unitech/api/scanner/ScannerCtrl;->android10:Z

    if-eqz v6, :cond_4

    const-string v6, "/sdcard/Android/data/com.unitech.scanservice/files/profile/"

    goto :goto_1

    :cond_4
    const-string v6, "/sdcard/USSExport/Profile/"

    .line 444
    :goto_1
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v8, "com.unitech.scanservice"

    .line 445
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "com.unitech.scanservice.action.EXPORT_ALL_PROFILES"

    .line 446
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v8, 0x20

    .line 447
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 449
    :try_start_0
    sget-object v8, Lcom/unitech/api/scanner/ScannerCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_5
    const-wide/16 v7, 0x3e8

    .line 458
    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    nop

    :goto_2
    add-int/2addr v0, v2

    const/4 v7, 0x6

    if-le v0, v7, :cond_6

    const-string p1, "USS profile Export function fail, USS profile default folder no data."

    .line 463
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 466
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "default_uss_profile.profile"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/unitech/api/scanner/ScannerCtrl;->checkFileExist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "PASS"

    .line 467
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 476
    invoke-static {v6, p1}, Lcom/unitech/api/scanner/ScannerCtrl;->copyFolder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 477
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "copy data to new folder fail."

    .line 478
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 480
    :cond_7
    sget-object p1, Lcom/unitech/api/scanner/ScannerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p1, v3, v4}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v5

    :catch_1
    const-string p1, "Fail to sendbroadcast to com.unitech.scanservice"

    .line 451
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public importEaSeriesSettings(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScannerCtrl, importEaSeriesSettings(), filePath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "ScannerCtrl, importEaSeriesSettings failed: filePath cannot be empty."

    .line 271
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 274
    :cond_0
    sget-object v0, Lcom/unitech/api/scanner/ScannerCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v0

    .line 275
    invoke-virtual {v0, p1}, Lcom/unitech/api/file/FileCtrl;->pathConverter(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "errorCode"

    .line 276
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "errorMsg"

    if-nez v3, :cond_1

    const-string p1, "REAL_PATH"

    .line 277
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 279
    :cond_1
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "NOT_EXIST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "ScannerCtrl, importEaSeriesSettings() failed: filepath not exist."

    .line 280
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 282
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/unitech/api/scanner/ScannerCtrl;->tryToBindService()Z

    .line 283
    sget-object v0, Lcom/unitech/api/scanner/ScannerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v5

    .line 285
    sget-object v0, Lcom/unitech/api/scanner/ScannerCtrl;->ScannerCtrlAidl:Lcom/unitech/dmservice/IScannerCtrlAidl;

    if-eqz v0, :cond_3

    .line 288
    :try_start_0
    invoke-interface {v0, p1}, Lcom/unitech/dmservice/IScannerCtrlAidl;->importEaSeriesSettings(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 290
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 291
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 292
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 295
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 296
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "ScannerCtrlAidl.importEaSeriesSettings exception: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string p1, "ScannerCtrlAidl is null."

    .line 299
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 302
    :goto_1
    sget-object v0, Lcom/unitech/api/scanner/ScannerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v5, v6}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public importSettings(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "folderPath"
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScannerCtrl, importSettings(), folderPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "ScannerCtrl, importSettings failed: folderPath cannot be empty."

    .line 159
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 162
    :cond_0
    sget-object v0, Lcom/unitech/api/scanner/ScannerCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v0

    .line 163
    invoke-virtual {v0, p1}, Lcom/unitech/api/file/FileCtrl;->pathConverter(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "errorCode"

    .line 164
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "errorMsg"

    if-nez v3, :cond_1

    const-string p1, "REAL_PATH"

    .line 165
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "NOT_EXIST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "ScannerCtrl, importSettings() failed: filepath not exist."

    .line 168
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 170
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/unitech/api/scanner/ScannerCtrl;->tryToBindService()Z

    .line 171
    sget-object v0, Lcom/unitech/api/scanner/ScannerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v5

    .line 173
    sget-object v0, Lcom/unitech/api/scanner/ScannerCtrl;->ScannerCtrlAidl:Lcom/unitech/dmservice/IScannerCtrlAidl;

    if-eqz v0, :cond_5

    .line 177
    :try_start_0
    sget-boolean v0, Lcom/unitech/api/machine/Machine;->EA300:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/unitech/api/machine/Machine;->EA320:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/unitech/api/machine/Machine;->EA500:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/unitech/api/machine/Machine;->EA500Plus:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/unitech/api/machine/Machine;->EA510:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/unitech/api/machine/Machine;->EA602:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/unitech/api/machine/Machine;->HT510:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/unitech/api/machine/Machine;->HT380:Z

    if-eqz v0, :cond_3

    goto :goto_1

    .line 183
    :cond_3
    sget-object v0, Lcom/unitech/api/scanner/ScannerCtrl;->ScannerCtrlAidl:Lcom/unitech/dmservice/IScannerCtrlAidl;

    invoke-interface {v0, p1}, Lcom/unitech/dmservice/IScannerCtrlAidl;->importSettings(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_2

    .line 181
    :cond_4
    :goto_1
    sget-object v0, Lcom/unitech/api/scanner/ScannerCtrl;->ScannerCtrlAidl:Lcom/unitech/dmservice/IScannerCtrlAidl;

    invoke-interface {v0, p1}, Lcom/unitech/dmservice/IScannerCtrlAidl;->importEaSeriesSettings(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 186
    :goto_2
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 187
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 188
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 191
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 192
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "ScannerCtrlAidl.importSettings exception: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_3

    :cond_5
    const-string p1, "ScannerCtrlAidl is null."

    .line 195
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 198
    :goto_3
    sget-object v0, Lcom/unitech/api/scanner/ScannerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v5, v6}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public importUSSProfile(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScannerCtrl, importUSSProfile(), filePath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-direct {p0}, Lcom/unitech/api/scanner/ScannerCtrl;->isScanserviceInstalled()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "Not Support."

    .line 366
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 369
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "ScannerCtrl, importUSSProfile failed: filePath cannot be empty."

    .line 370
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 372
    :cond_1
    sget-object v0, Lcom/unitech/api/scanner/ScannerCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v0

    .line 373
    invoke-virtual {v0, p1}, Lcom/unitech/api/file/FileCtrl;->pathConverter(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "errorCode"

    .line 374
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    const-string p1, "REAL_PATH"

    .line 375
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string v4, "errorMsg"

    .line 377
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "NOT_EXIST"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p1, "ScannerCtrl, importUSSProfile() failed: filepath not exist."

    .line 378
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 380
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/unitech/api/scanner/ScannerCtrl;->tryToBindService()Z

    .line 381
    sget-object v2, Lcom/unitech/api/scanner/ScannerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v4

    const/4 v2, 0x0

    const-string v6, ""

    .line 383
    invoke-direct {p0, v2, v6}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 385
    invoke-virtual {v0, p1}, Lcom/unitech/api/file/FileCtrl;->exists(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 386
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_4

    const-string p1, "target file is not exist."

    .line 387
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 390
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.unitech.scanservice"

    .line 391
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.unitech.scanservice.action.IMPORT_PROFILE"

    .line 392
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.unitech.scanservice.extra.PATH"

    .line 393
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 394
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 396
    :try_start_0
    sget-object p1, Lcom/unitech/api/scanner/ScannerCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    sget-object p1, Lcom/unitech/api/scanner/ScannerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p1, v4, v5}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v2

    :catch_0
    const-string p1, "Fail to sendbroadcast to com.unitech.scanservice"

    .line 398
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public resetUSSProfile()Landroid/os/Bundle;
    .locals 6

    const-string v0, "UnitechSDK"

    const-string v1, "ScannerCtrl, resetUSSProfile()"

    .line 544
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-direct {p0}, Lcom/unitech/api/scanner/ScannerCtrl;->isScanserviceInstalled()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "Not Support."

    .line 546
    invoke-direct {p0, v1, v0}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 549
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/scanner/ScannerCtrl;->tryToBindService()Z

    .line 550
    sget-object v0, Lcom/unitech/api/scanner/ScannerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v2

    const/4 v0, 0x0

    const-string v4, ""

    .line 552
    invoke-direct {p0, v0, v4}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 554
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.unitech.scanservice"

    .line 555
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "com.unitech.scanservice.action.FACTORY_RESET"

    .line 556
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v5, 0x20

    .line 557
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 559
    :try_start_0
    sget-object v5, Lcom/unitech/api/scanner/ScannerCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    sget-object v1, Lcom/unitech/api/scanner/ScannerCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v0

    :catch_0
    const-string v0, "Fail to sendbroadcast to com.unitech.scanservice"

    .line 561
    invoke-direct {p0, v1, v0}, Lcom/unitech/api/scanner/ScannerCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
