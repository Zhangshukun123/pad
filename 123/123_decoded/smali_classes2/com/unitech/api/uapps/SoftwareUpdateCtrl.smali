.class public Lcom/unitech/api/uapps/SoftwareUpdateCtrl;
.super Ljava/lang/Object;
.source "SoftwareUpdateCtrl.java"


# static fields
.field private static final ACTION_USUS_API:Ljava/lang/String; = "usus.API"

.field public static final BUNDLE_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final BUNDLE_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field private static final CLS_USUS_API:Ljava/lang/String; = "com.unitech.usus.ApiReceiver"

.field private static final CONF_FILE:Ljava/lang/String; = "/sdcard/unitech/usus_config.stxt"

.field private static final CONF_KEY_OP_MODE:Ljava/lang/String; = "OperationMode"

.field private static final CONF_KEY_PASSCODE:Ljava/lang/String; = "Passcode"

.field private static final CONF_KEY_POLICY_INSTALLED:Ljava/lang/String; = "AppUpdatesPolicy"

.field private static final CONF_KEY_POLICY_INSTALLED_LIST:Ljava/lang/String; = "SelectedApps"

.field private static final CONF_KEY_POLICY_NEW:Ljava/lang/String; = "NewAppsPolicy"

.field private static final CONF_KEY_SERVER_URL:Ljava/lang/String; = "ServerUrl"

.field private static final CONF_TMP_FILE:Ljava/lang/String; = "/sdcard/temp_usus_config.stxt"

.field static final FUNC_EXPORT:Ljava/lang/String; = "export"

.field static final FUNC_IMPORT:Ljava/lang/String; = "import"

.field static final FUNC_RESET:Ljava/lang/String; = "reset"

.field public static final KEY_ACTION:Ljava/lang/String; = "ususAction"

.field public static final KEY_CONF_FILE_PATH:Ljava/lang/String; = "ususConfFilePath"

.field public static final KEY_OP_MODE:Ljava/lang/String; = "ususOpMode"

.field public static final KEY_PASSCODE:Ljava/lang/String; = "ususPasscode"

.field public static final KEY_POLICY_INSTALLED:Ljava/lang/String; = "ususUpdatePolicyInstalled"

.field public static final KEY_POLICY_INSTALLED_LIST:Ljava/lang/String; = "ususUpdatePolicyInstalledAppList"

.field public static final KEY_POLICY_NEW:Ljava/lang/String; = "ususUpdatePolicyNew"

.field public static final KEY_SERVER_URL:Ljava/lang/String; = "ususServerURL"

.field public static final KEY_STEP:Ljava/lang/String; = "ususStep"

.field private static final PKG_USUS:Ljava/lang/String; = "com.unitech.usus"

.field public static final RESULT_CODE_ERROR:I = 0x1

.field public static final RESULT_CODE_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UnitechSDK"

.field private static final US_HAVE_UpdatePolicy_VersionCode:I = 0x2780

.field private static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->mContext:Landroid/content/Context;

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

    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    .line 71
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "errorMsg"

    .line 72
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public exportSettings(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filepath"
        }
    .end annotation

    const-string v0, "errorCode"

    const-string v1, "/sdcard/temp_usus_config.stxt"

    .line 593
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoftwareUpdateCtrl, exportSettings(), filepath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UnitechSDK"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const-string p1, "SoftwareUpdateCtrl, exportSettings() failed: filepath cannot be empty."

    .line 595
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v2, 0x0

    const-string v4, "SoftwareUpdateCtrl, exportSettings success"

    .line 597
    invoke-direct {p0, v2, v4}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 600
    :try_start_0
    sget-object v5, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v5

    .line 601
    invoke-virtual {v5, p1}, Lcom/unitech/api/file/FileCtrl;->pathConverter(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 602
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    const-string p1, "REAL_PATH"

    .line 603
    invoke-virtual {v6, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v7, "errorMsg"

    .line 605
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "NOT_EXIST"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string p1, "SoftwareUpdateCtrl, exportSettings() failed: filepath not exist."

    .line 606
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 609
    :cond_2
    :goto_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 610
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/usus_config.stxt"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 611
    :cond_5
    invoke-virtual {v5, v1}, Lcom/unitech/api/file/FileCtrl;->deleteFile(Ljava/lang/String;)Landroid/os/Bundle;

    .line 612
    new-instance v6, Landroid/content/Intent;

    const-string v7, "usus.API"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "function"

    const-string v8, "export"

    .line 613
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "path"

    .line 614
    invoke-virtual {v6, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v7, 0x20

    .line 615
    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v7, "com.unitech.usus"

    const-string v8, "com.unitech.usus.ApiReceiver"

    .line 616
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    sget-object v7, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 618
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x1388

    add-long/2addr v6, v8

    :cond_6
    const-wide/16 v8, 0x64

    .line 623
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 624
    invoke-virtual {v5, v1}, Lcom/unitech/api/file/FileCtrl;->exists(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 625
    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_7

    .line 626
    invoke-virtual {v5, v1, p1}, Lcom/unitech/api/file/FileCtrl;->copyFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 627
    invoke-virtual {v5, v1}, Lcom/unitech/api/file/FileCtrl;->deleteFile(Ljava/lang/String;)Landroid/os/Bundle;

    goto :goto_1

    .line 631
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v11, v9, v6

    if-lez v11, :cond_8

    const-string p1, "SoftwareUpdateCtrl, exportSettings failed"

    .line 632
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_1

    .line 635
    :cond_8
    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v8, v3, :cond_6

    goto :goto_1

    :catch_0
    move-exception p1

    .line 638
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v3, [Ljava/lang/Object;

    .line 639
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "SoftwareUpdateCtrl, exportSettings Exception: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    :goto_1
    return-object v4
.end method

.method public importSettings(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filepath"
        }
    .end annotation

    const-string v0, "errorCode"

    .line 654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SoftwareUpdateCtrl, importSettings(), filepath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnitechSDK"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string p1, "SoftwareUpdateCtrl, importSettings() failed: filepath cannot be empty."

    .line 656
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x0

    const-string v3, "SoftwareUpdateCtrl, importSettings success"

    .line 659
    invoke-direct {p0, v1, v3}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 662
    :try_start_0
    sget-object v4, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v4

    .line 663
    invoke-virtual {v4, p1}, Lcom/unitech/api/file/FileCtrl;->pathConverter(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 664
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    const-string p1, "REAL_PATH"

    .line 665
    invoke-virtual {v5, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v6, "errorMsg"

    .line 667
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "NOT_EXIST"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string p1, "SoftwareUpdateCtrl, importSettings() failed: filepath not exist."

    .line 668
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 670
    :cond_2
    :goto_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 671
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

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

    const-string p1, "/usus_config.stxt"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 673
    :cond_5
    invoke-virtual {v4, p1}, Lcom/unitech/api/file/FileCtrl;->exists(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 674
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_6

    const-string p1, "SoftwareUpdateCtrl, importSettings failed"

    .line 675
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 678
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v4, "usus.API"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "function"

    const-string v5, "import"

    .line 679
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "path"

    .line 680
    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 681
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "com.unitech.usus"

    const-string v4, "com.unitech.usus.ApiReceiver"

    .line 682
    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 683
    sget-object p1, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 685
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v2, [Ljava/lang/Object;

    .line 686
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "SoftwareUpdateCtrl, importSettings Exception: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    :goto_1
    return-object v3
.end method

.method public resetSettings()Landroid/os/Bundle;
    .locals 5

    const/4 v0, 0x0

    const-string v1, "SoftwareUpdateCtrl, resetSettings success"

    .line 701
    invoke-direct {p0, v0, v1}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "UnitechSDK"

    const-string v3, "SoftwareUpdateCtrl, resetSettings()"

    .line 702
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "usus.API"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "function"

    const-string v4, "reset"

    .line 705
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.unitech.usus"

    const-string v4, "com.unitech.usus.ApiReceiver"

    .line 706
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x20

    .line 707
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 708
    sget-object v3, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 710
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 711
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "SoftwareUpdateCtrl, resetSettings Exception: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public updateConfig(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "serverUrl",
            "opmode",
            "policyInstalled",
            "selectedApps",
            "policyNew",
            "passcode"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    const-string v7, "UTF-8"

    .line 389
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SoftwareUpdateCtrl, updateConfig(), serverUrl:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", opmode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", policyInstalled:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", selectedApps:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", policyNew:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", passcode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UnitechSDK"

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_0

    const-string v0, "SoftwareUpdateCtrl, updateConfig() failed: serverUrl cannot be empty."

    .line 397
    invoke-direct {v1, v9, v0}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v8, "SoftwareUpdateCtrl, updateConfig failed"

    const/4 v10, 0x2

    if-eqz v2, :cond_1

    if-eq v2, v9, :cond_1

    if-eq v2, v10, :cond_1

    const/4 v11, 0x3

    if-eq v2, v11, :cond_1

    .line 411
    invoke-direct {v1, v9, v8}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz v3, :cond_2

    if-eq v3, v9, :cond_2

    if-eq v3, v10, :cond_2

    .line 421
    invoke-direct {v1, v9, v8}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_2
    if-eqz v5, :cond_3

    if-eq v5, v9, :cond_3

    .line 430
    invoke-direct {v1, v9, v8}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v11, "/sdcard/unitech/usus_config.stxt"

    .line 436
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 440
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 443
    :cond_4
    invoke-virtual {v1, v11}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->exportSettings(Ljava/lang/String;)Landroid/os/Bundle;

    const/4 v14, 0x0

    .line 449
    :goto_0
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_5

    goto :goto_2

    :cond_5
    const-wide/16 v15, 0x64

    .line 453
    :try_start_0
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :goto_1
    add-int/2addr v14, v9

    const/16 v15, 0xa

    if-le v14, v15, :cond_16

    .line 461
    :goto_2
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_6

    const-string v0, "SoftwareUpdateCtrl, updateConfig failed, Export config fail."

    .line 462
    invoke-direct {v1, v9, v0}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 466
    :cond_6
    sget-object v14, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v14

    .line 469
    :try_start_1
    invoke-virtual {v14, v11}, Lcom/unitech/api/file/FileCtrl;->readFromFile(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v15

    const-string v13, "Data"

    .line 470
    invoke-virtual {v15, v13}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v13

    .line 472
    new-instance v15, Ljava/lang/String;

    invoke-static {v13}, Lcom/unitech/api/util/Encryption;->Decrypt([B)[B

    move-result-object v13

    invoke-direct {v15, v13, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    const-string v13, "\n"

    .line 486
    invoke-virtual {v15, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 489
    :try_start_2
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v17, v12

    const/4 v10, 0x1

    goto :goto_3

    :catch_1
    move-object/from16 v17, v12

    const/4 v10, 0x0

    :goto_3
    const-string v12, "Passcode"

    move-object/from16 v18, v8

    const-string v8, "OperationMode"

    move-object/from16 v19, v11

    const-string v11, "SelectedApps"

    move-object/from16 v20, v14

    const-string v14, "ServerUrl"

    if-eqz v10, :cond_a

    .line 496
    :try_start_3
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v9, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 499
    invoke-virtual {v9, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 501
    invoke-virtual {v9, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 503
    invoke-virtual {v9, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "UpdatePolicy"

    .line 506
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v2, 0x2

    if-ne v3, v2, :cond_7

    const/4 v2, 0x0

    :goto_4
    const/4 v3, 0x0

    goto :goto_6

    :cond_7
    if-nez v3, :cond_8

    if-nez v5, :cond_8

    const/4 v2, 0x1

    goto :goto_4

    :cond_8
    const/4 v2, 0x1

    if-ne v3, v2, :cond_9

    if-ne v5, v2, :cond_9

    const/4 v2, 0x0

    goto :goto_5

    :cond_9
    const/4 v2, 0x1

    :goto_5
    const/4 v3, 0x1

    :goto_6
    const-string v4, "InstalledApp"

    .line 518
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "NewApp"

    .line 520
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 521
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    .line 523
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v0, ""

    :goto_7
    move-object/from16 v21, v7

    goto/16 :goto_d

    :cond_a
    const/4 v10, 0x0

    .line 528
    :goto_8
    array-length v15, v9

    if-ge v10, v15, :cond_11

    .line 529
    aget-object v15, v9, v10

    invoke-virtual {v15, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    const-string v5, "%s=%s"

    if-eqz v15, :cond_b

    if-eqz v0, :cond_b

    move-object/from16 v21, v7

    const/4 v15, 0x2

    new-array v7, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v14, v7, v15

    const/4 v15, 0x1

    aput-object v0, v7, v15

    .line 530
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v10

    :goto_9
    const/4 v0, 0x2

    const/4 v7, 0x1

    goto/16 :goto_b

    :cond_b
    move-object/from16 v21, v7

    .line 531
    aget-object v7, v9, v10

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const/4 v15, -0x1

    const-string v0, "%s=%d"

    if-eqz v7, :cond_c

    if-eq v2, v15, :cond_c

    const/4 v7, 0x2

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v8, v5, v7

    .line 532
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v15, 0x1

    aput-object v7, v5, v15

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    goto :goto_9

    .line 533
    :cond_c
    aget-object v7, v9, v10

    const-string v15, "AppUpdatesPolicy"

    invoke-virtual {v7, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    const/4 v7, -0x1

    if-eq v3, v7, :cond_d

    const/4 v7, 0x2

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v15, v5, v7

    .line 534
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v15, 0x1

    aput-object v7, v5, v15

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    goto :goto_9

    .line 535
    :cond_d
    aget-object v7, v9, v10

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    if-eqz v4, :cond_e

    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v11, v0, v7

    const/4 v7, 0x1

    aput-object v4, v0, v7

    .line 536
    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    goto :goto_9

    .line 537
    :cond_e
    aget-object v7, v9, v10

    const-string v15, "NewAppsPolicy"

    invoke-virtual {v7, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    const/4 v7, 0x2

    new-array v5, v7, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v15, v5, v16

    .line 538
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/4 v7, 0x1

    aput-object v15, v5, v7

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    goto :goto_a

    :cond_f
    const/4 v7, 0x1

    const/16 v16, 0x0

    .line 539
    aget-object v0, v9, v10

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x2

    new-array v15, v0, [Ljava/lang/Object;

    aput-object v12, v15, v16

    aput-object v6, v15, v7

    .line 540
    invoke-static {v5, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v10

    goto :goto_b

    :cond_10
    :goto_a
    const/4 v0, 0x2

    :goto_b
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p1

    move/from16 v5, p5

    move-object/from16 v7, v21

    goto/16 :goto_8

    :cond_11
    move-object/from16 v21, v7

    const/4 v7, 0x1

    .line 544
    array-length v0, v9

    if-ge v0, v7, :cond_12

    const-string v0, "SoftwareUpdateCtrl, updateConfig failed. config is empty"

    .line 545
    invoke-direct {v1, v7, v0}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 548
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v3, v9, v2

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 549
    array-length v2, v9

    if-le v2, v7, :cond_13

    const/4 v2, 0x1

    .line 550
    :goto_c
    array-length v3, v9

    if-ge v2, v3, :cond_13

    .line 551
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    aget-object v3, v9, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 555
    :cond_13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d
    move-object/from16 v5, v21

    .line 560
    :try_start_4
    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/unitech/api/util/Encryption;->Encrypt([B)[B

    move-result-object v0

    move-object/from16 v7, v19

    move-object/from16 v2, v20

    .line 561
    invoke-virtual {v2, v7, v0}, Lcom/unitech/api/file/FileCtrl;->writeToFile(Ljava/lang/String;[B)Landroid/os/Bundle;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 569
    invoke-virtual {v1, v7}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->importSettings(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "errorCode"

    .line 570
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "SoftwareUpdateCtrl, updateConfig success"

    const/4 v2, 0x0

    .line 572
    invoke-direct {v1, v2, v0}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_e

    :cond_14
    move-object/from16 v8, v18

    const/4 v2, 0x1

    .line 574
    invoke-direct {v1, v2, v8}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 578
    :goto_e
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 579
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    :cond_15
    return-object v0

    :catch_3
    move-exception v0

    .line 564
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 565
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "SoftwareUpdateCtrl, updateConfig Exception: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :catch_4
    move-exception v0

    .line 475
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v9, 0x1

    new-array v2, v9, [Ljava/lang/Object;

    .line 476
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    aput-object v0, v2, v10

    const-string v0, "SoftwareUpdateCtrl, updateConfig IOException: %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v9, v0}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_16
    move-object/from16 v0, p1

    move/from16 v5, p5

    goto/16 :goto_0
.end method

.method public updateConfig(Ljava/util/ArrayList;IILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "repository",
            "opmode",
            "updatePolicy",
            "selectedApps",
            "passcode"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const-string v6, "UTF-8"

    .line 125
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SoftwareUpdateCtrl, updateConfig(), opmode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", updatePolicy:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", selectedApps:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", passcode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UnitechSDK"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v9, 0x1

    if-nez v7, :cond_0

    const-string v0, "SoftwareUpdateCtrl, updateConfig failed, respository size is zero."

    .line 135
    invoke-direct {v1, v9, v0}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v7, ""

    const/4 v10, 0x0

    move-object v12, v7

    const/4 v11, 0x0

    .line 137
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    const-string v14, ","

    const/4 v15, 0x2

    if-ge v11, v13, :cond_5

    .line 138
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 140
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1

    const-string v0, "SoftwareUpdateCtrl, updateConfig failed, respository data no contain separation sign."

    .line 141
    invoke-direct {v1, v9, v0}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 143
    :cond_1
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    .line 145
    aget-object v14, v13, v10

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_4

    aget-object v14, v13, v9

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_2

    goto :goto_1

    .line 148
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SoftwareUpdateCtrl, updateConfig(), name:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v13, v10

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", url:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v13, v9

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v11, :cond_3

    .line 150
    aget-object v12, v13, v9

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    const-string v0, "SoftwareUpdateCtrl, updateConfig failed, respository contain empty data."

    .line 146
    invoke-direct {v1, v9, v0}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_5
    const/4 v8, 0x3

    if-eqz v2, :cond_6

    if-eq v2, v9, :cond_6

    if-eq v2, v15, :cond_6

    if-eq v2, v8, :cond_6

    const-string v0, "SoftwareUpdateCtrl, updateConfig failed, opmode out of range."

    .line 162
    invoke-direct {v1, v9, v0}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_6
    if-eqz v3, :cond_a

    if-eq v3, v9, :cond_9

    if-eq v3, v15, :cond_8

    if-eq v3, v8, :cond_7

    const-string v0, "SoftwareUpdateCtrl, updateConfig failed, updatePolicy out of range."

    .line 194
    invoke-direct {v1, v9, v0}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_7
    const/4 v3, 0x2

    const/4 v8, 0x0

    const/4 v11, 0x0

    goto :goto_2

    :cond_8
    const/4 v3, 0x1

    const/4 v8, 0x1

    const/4 v11, 0x0

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x1

    :goto_2
    const/4 v13, 0x0

    goto :goto_4

    :cond_a
    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x1

    :goto_3
    const/4 v13, 0x1

    :goto_4
    const-string v15, "/sdcard/unitech/usus_config.stxt"

    .line 200
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 204
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 207
    :cond_b
    invoke-virtual {v1, v15}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->exportSettings(Ljava/lang/String;)Landroid/os/Bundle;

    const/16 v17, 0x0

    .line 213
    :goto_5
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_c

    move-object/from16 v18, v7

    goto :goto_6

    :cond_c
    const-wide/16 v18, 0x64

    .line 217
    :try_start_0
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-object/from16 v18, v7

    add-int/lit8 v7, v17, 0x1

    const/16 v9, 0xa

    if-le v7, v9, :cond_21

    .line 225
    :goto_6
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_d

    const-string v0, "SoftwareUpdateCtrl, updateConfig failed, Export config fail."

    const/4 v2, 0x1

    .line 226
    invoke-direct {v1, v2, v0}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 230
    :cond_d
    sget-object v7, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v7

    .line 233
    :try_start_1
    invoke-virtual {v7, v15}, Lcom/unitech/api/file/FileCtrl;->readFromFile(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    move-object/from16 p3, v10

    const-string v10, "Data"

    .line 234
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    .line 236
    new-instance v10, Ljava/lang/String;

    invoke-static {v9}, Lcom/unitech/api/util/Encryption;->Decrypt([B)[B

    move-result-object v9

    invoke-direct {v10, v9, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    const-string v9, "\n"

    move-object/from16 v19, v7

    .line 250
    invoke-virtual {v10, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object/from16 v20, v15

    .line 253
    :try_start_2
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v15, 0x1

    goto :goto_7

    :catch_1
    const/4 v15, 0x0

    .line 261
    :goto_7
    sget-object v21, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->mContext:Landroid/content/Context;

    move-object/from16 v22, v6

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    move-object/from16 v21, v9

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v6

    .line 262
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_10

    .line 263
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v9, 0x0

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v24, v6

    move-object/from16 v6, v23

    check-cast v6, Landroid/content/pm/PackageInfo;

    move/from16 v23, v9

    .line 264
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.unitech.usus"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 265
    iget v1, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v6, 0x2780

    if-lt v1, v6, :cond_e

    const/4 v9, 0x1

    goto :goto_9

    :cond_e
    move/from16 v9, v23

    :goto_9
    move-object/from16 v1, p0

    move-object/from16 v6, v24

    goto :goto_8

    :cond_f
    move/from16 v23, v9

    goto :goto_a

    :cond_10
    const/16 v23, 0x0

    :goto_a
    const-string v1, "Passcode"

    const-string v6, "OperationMode"

    const-string v9, "SelectedApps"

    move/from16 v24, v8

    const-string v8, "ServerUrl"

    if-eqz v15, :cond_15

    .line 273
    :try_start_3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v3, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    invoke-virtual {v3, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 276
    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "UpdatePolicy"

    .line 278
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "InstalledApp"

    .line 279
    invoke-virtual {v1, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "NewApp"

    .line 280
    invoke-virtual {v1, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-nez v23, :cond_11

    .line 283
    invoke-virtual {v3, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d

    :cond_11
    const-string v1, "Repositories"

    .line 285
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 287
    :goto_b
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_14

    .line 289
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x2

    .line 290
    invoke-virtual {v4, v14, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 292
    aget-object v6, v4, v5

    const/4 v5, 0x1

    .line 293
    aget-object v4, v4, v5

    const/4 v5, 0x0

    .line 296
    :goto_c
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    const-string v8, "Name"

    if-ge v5, v7, :cond_13

    .line 297
    :try_start_4
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 299
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 302
    :cond_13
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "Enabled"

    const/4 v9, 0x1

    .line 303
    invoke-virtual {v5, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 304
    invoke-virtual {v5, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "URL"

    .line 305
    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 309
    :cond_14
    :goto_d
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v1, p0

    goto/16 :goto_13

    :catch_2
    move-exception v0

    .line 312
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object/from16 v1, p0

    move-object/from16 v7, v18

    goto/16 :goto_13

    :cond_15
    const/4 v0, 0x0

    .line 317
    :goto_e
    array-length v10, v7

    if-ge v0, v10, :cond_1c

    .line 318
    aget-object v10, v7, v0

    invoke-virtual {v10, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    const-string v11, "%s=%s"

    if-eqz v10, :cond_16

    if-eqz v12, :cond_16

    const/4 v10, 0x2

    new-array v13, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v8, v13, v10

    const/4 v10, 0x1

    aput-object v12, v13, v10

    .line 319
    invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v0

    :goto_f
    const/4 v10, 0x2

    :goto_10
    const/4 v15, 0x1

    goto/16 :goto_11

    .line 320
    :cond_16
    aget-object v10, v7, v0

    invoke-virtual {v10, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    const-string v13, "%s=%d"

    if-eqz v10, :cond_17

    const/4 v10, -0x1

    if-eq v2, v10, :cond_17

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v11, v10

    .line 321
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v14, 0x1

    aput-object v10, v11, v14

    invoke-static {v13, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v0

    goto :goto_f

    .line 322
    :cond_17
    aget-object v10, v7, v0

    const-string v14, "AppUpdatesPolicy"

    invoke-virtual {v10, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_18

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v14, v11, v15

    .line 323
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x1

    aput-object v14, v11, v17

    invoke-static {v13, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v0

    goto :goto_10

    :cond_18
    const/4 v10, 0x2

    const/4 v15, 0x0

    const/16 v17, 0x1

    .line 324
    aget-object v14, v7, v0

    invoke-virtual {v14, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_19

    if-eqz v4, :cond_19

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v9, v13, v15

    aput-object v4, v13, v17

    .line 325
    invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v0

    goto :goto_f

    .line 326
    :cond_19
    aget-object v10, v7, v0

    const-string v14, "NewAppsPolicy"

    invoke-virtual {v10, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1a

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v14, v11, v15

    .line 327
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v11, v15

    invoke-static {v13, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v0

    goto :goto_11

    :cond_1a
    const/4 v10, 0x2

    const/4 v15, 0x1

    .line 328
    aget-object v13, v7, v0

    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1b

    new-array v13, v10, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v1, v13, v14

    aput-object v5, v13, v15

    .line 329
    invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v0

    :cond_1b
    :goto_11
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e

    :cond_1c
    const/4 v15, 0x1

    .line 333
    array-length v0, v7

    if-ge v0, v15, :cond_1d

    const-string v0, "SoftwareUpdateCtrl, updateConfig failed. config is empty"

    move-object/from16 v1, p0

    .line 334
    invoke-direct {v1, v15, v0}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1d
    move-object/from16 v1, p0

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v3, v7, v2

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    array-length v2, v7

    if-le v2, v15, :cond_1e

    const/4 v2, 0x1

    .line 339
    :goto_12
    array-length v3, v7

    if-ge v2, v3, :cond_1e

    move-object/from16 v3, v21

    .line 340
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    aget-object v4, v7, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 344
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_13
    move-object/from16 v6, v22

    .line 349
    :try_start_5
    invoke-virtual {v7, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/unitech/api/util/Encryption;->Encrypt([B)[B

    move-result-object v0

    move-object/from16 v2, v19

    move-object/from16 v8, v20

    .line 350
    invoke-virtual {v2, v8, v0}, Lcom/unitech/api/file/FileCtrl;->writeToFile(Ljava/lang/String;[B)Landroid/os/Bundle;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 358
    invoke-virtual {v1, v8}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->importSettings(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "errorCode"

    .line 359
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "SoftwareUpdateCtrl, updateConfig success"

    const/4 v2, 0x0

    .line 361
    invoke-direct {v1, v2, v0}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_14

    :cond_1f
    const-string v0, "SoftwareUpdateCtrl, updateConfig failed"

    const/4 v2, 0x1

    .line 363
    invoke-direct {v1, v2, v0}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 367
    :goto_14
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 368
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->delete()Z

    :cond_20
    return-object v0

    :catch_3
    move-exception v0

    .line 353
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 354
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "SoftwareUpdateCtrl, updateConfig Exception: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :catch_4
    move-exception v0

    .line 239
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v9, 0x1

    new-array v2, v9, [Ljava/lang/Object;

    .line 240
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x0

    aput-object v0, v2, v15

    const-string v0, "SoftwareUpdateCtrl, updateConfig IOException: %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v9, v0}, Lcom/unitech/api/uapps/SoftwareUpdateCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_21
    move-object/from16 p3, v10

    move/from16 v17, v7

    move-object/from16 v7, v18

    const/4 v9, 0x1

    goto/16 :goto_5
.end method
