.class public Lcom/unitech/api/uapps/ElauncherCtrl;
.super Ljava/lang/Object;
.source "ElauncherCtrl.java"


# static fields
.field private static final ACTIVITY_ELAUNCHER:Ljava/lang/String; = "com.ute.eu.ELauncher.Launcher"

.field private static final APP_ACTION:Ljava/lang/String; = "android.intent.action.MAIN"

.field private static final APP_CATEGORY:[Ljava/lang/String;

.field public static final BUNDLE_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final BUNDLE_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field private static ConfigFilePath:Ljava/lang/String; = null

.field private static final ELAUNCHER2_VERSION_CODE:I = 0x4e23

.field private static final ELAUNCHER2_VERSION_CODE_19:I = 0x4e33

.field private static final ELAUNCHER_DEL_SETTING_ACTION:Ljava/lang/String; = "com.ute.eu.ELauncher.action.delete"

.field private static final ELAUNCHER_SETTING_ACTION:Ljava/lang/String; = "com.ute.eu.ELauncher.action.setting"

.field private static final ELAUNCHER_VERSION_CODE_WITH_NEW_CONFIGS:I = 0x28a0

.field private static final FLASH_STORAGE:Ljava/lang/String; = "/storage/FlashStorage"

.field private static final PKG_ELAUNCHER:Ljava/lang/String; = "com.ute.eu.ELauncher"

.field public static final RESULT_CODE_ERROR:I = 0x1

.field public static final RESULT_CODE_SUCCESS:I = 0x0

.field private static final SDCARD_PATH:Ljava/lang/String; = "/storage/sdcard1"

.field private static final TAG:Ljava/lang/String; = "UnitechSDK"

.field private static final USB_PATH:Ljava/lang/String; = "/storage/otgusb"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mAppManagementCtrl:Lcom/unitech/api/app/AppManagementCtrl;

.field private mFileCtrl:Lcom/unitech/api/file/FileCtrl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.intent.category.HOME"

    const-string v1, "android.intent.category.DEFAULT"

    .line 41
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unitech/api/uapps/ElauncherCtrl;->APP_CATEGORY:[Ljava/lang/String;

    const-string v0, "/ELauncherSettings.txt"

    .line 52
    sput-object v0, Lcom/unitech/api/uapps/ElauncherCtrl;->ConfigFilePath:Ljava/lang/String;

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

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/unitech/api/uapps/ElauncherCtrl;->mContext:Landroid/content/Context;

    .line 60
    new-instance p1, Lcom/unitech/api/app/AppManagementCtrl;

    sget-object v0, Lcom/unitech/api/uapps/ElauncherCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/unitech/api/app/AppManagementCtrl;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unitech/api/uapps/ElauncherCtrl;->mAppManagementCtrl:Lcom/unitech/api/app/AppManagementCtrl;

    .line 61
    sget-object p1, Lcom/unitech/api/uapps/ElauncherCtrl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object p1

    iput-object p1, p0, Lcom/unitech/api/uapps/ElauncherCtrl;->mFileCtrl:Lcom/unitech/api/file/FileCtrl;

    return-void
.end method

.method private getSystemPackageInfos()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    sget-object v2, Lcom/unitech/api/uapps/ElauncherCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 174
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 177
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 178
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-nez v5, :cond_0

    const/4 v6, 0x0

    .line 187
    :cond_0
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v7, "/data/app/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    :cond_1
    if-nez v6, :cond_2

    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private isAppInstalled(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1154
    sget-object v0, Lcom/unitech/api/uapps/ElauncherCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    .line 1155
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 1156
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 1157
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isElauncherVersionCodeLessThan(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "versionCode"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1167
    :try_start_0
    iget-object v1, p0, Lcom/unitech/api/uapps/ElauncherCtrl;->mAppManagementCtrl:Lcom/unitech/api/app/AppManagementCtrl;

    const-string v2, "com.ute.eu.ELauncher"

    invoke-virtual {v1, v2}, Lcom/unitech/api/app/AppManagementCtrl;->getAppInfoByPkgName(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "AppInfo"

    .line 1168
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "AppVersionCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1169
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0

    :catch_0
    move-exception p1

    .line 1176
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private isElauncherVersionCodeMoreThan(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "versionCode"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1182
    :try_start_0
    iget-object v1, p0, Lcom/unitech/api/uapps/ElauncherCtrl;->mAppManagementCtrl:Lcom/unitech/api/app/AppManagementCtrl;

    const-string v2, "com.ute.eu.ELauncher"

    invoke-virtual {v1, v2}, Lcom/unitech/api/app/AppManagementCtrl;->getAppInfoByPkgName(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "AppInfo"

    .line 1183
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "AppVersionCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1184
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0

    :catch_0
    move-exception p1

    .line 1191
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private reloadElauncherConfig()V
    .locals 3

    const-string v0, "com.ute.eu.ELauncher"

    .line 1138
    invoke-direct {p0, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->isAppInstalled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1142
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.ute.eu.ELauncher.ReloadConfigActivity"

    .line 1143
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x50818000

    .line 1144
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1150
    sget-object v0, Lcom/unitech/api/uapps/ElauncherCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

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

    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    .line 66
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "errorMsg"

    .line 67
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private startLauncher()V
    .locals 2

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 109
    sget-object v1, Lcom/unitech/api/uapps/ElauncherCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public enableAllowInteractiveNotification(Z)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEnable"
        }
    .end annotation

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ElauncherCtrl, enableAllowInteractiveNotification(), status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x4e33

    .line 904
    invoke-direct {p0, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->isElauncherVersionCodeMoreThan(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 905
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ute.eu.ELauncher.action.setting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "allow_interactive_notification"

    if-eqz p1, :cond_0

    const-string p1, "true"

    .line 907
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p1, "false"

    .line 909
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string p1, "com.ute.eu.ELauncher"

    .line 911
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 912
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 913
    sget-object p1, Lcom/unitech/api/uapps/ElauncherCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x0

    const-string v0, "ElauncherCtrl, enableAllowInteractiveNotification success"

    .line 914
    invoke-direct {p0, p1, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x1

    const-string v0, "ElauncherCtrl, enableAllowInteractiveNotification fail,version not support"

    .line 917
    invoke-direct {p0, p1, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public enableDashboard(Z)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEnable"
        }
    .end annotation

    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ElauncherCtrl, enableDashboard(), status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x4e33

    .line 992
    invoke-direct {p0, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->isElauncherVersionCodeMoreThan(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 993
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ute.eu.ELauncher.action.setting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "enable_dashboard"

    if-eqz p1, :cond_0

    const-string p1, "true"

    .line 995
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p1, "false"

    .line 997
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string p1, "com.ute.eu.ELauncher"

    .line 999
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 1000
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1001
    sget-object p1, Lcom/unitech/api/uapps/ElauncherCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x0

    const-string v0, "ElauncherCtrl, enableDashboard success"

    .line 1002
    invoke-direct {p0, p1, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x1

    const-string v0, "ElauncherCtrl, enableDashboard fail,version not support"

    .line 1005
    invoke-direct {p0, p1, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public enableFloatingNotification(Z)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEnable"
        }
    .end annotation

    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ElauncherCtrl, enableFloatingNotification(), status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x4e33

    .line 933
    invoke-direct {p0, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->isElauncherVersionCodeMoreThan(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 934
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ute.eu.ELauncher.action.setting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "floating_notification"

    if-eqz p1, :cond_0

    const-string p1, "true"

    .line 936
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p1, "false"

    .line 938
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string p1, "com.ute.eu.ELauncher"

    .line 940
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 941
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 942
    sget-object p1, Lcom/unitech/api/uapps/ElauncherCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x0

    const-string v0, "ElauncherCtrl, enableFloatingNotification success"

    .line 943
    invoke-direct {p0, p1, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x1

    const-string v0, "ElauncherCtrl, enableFloatingNotification fail,version not support"

    .line 946
    invoke-direct {p0, p1, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method enableResentApps(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 116
    sget-object v0, Lcom/unitech/api/uapps/ElauncherCtrl;->mContext:Landroid/content/Context;

    const-string v1, "system_launcher"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.android.launcher"

    const-string v3, "\n"

    const-string v4, ""

    const-string v5, "launcher_list"

    if-eqz p1, :cond_3

    .line 119
    iget-object p1, p0, Lcom/unitech/api/uapps/ElauncherCtrl;->mAppManagementCtrl:Lcom/unitech/api/app/AppManagementCtrl;

    const-string v6, "com.ute.eu.ELauncher"

    invoke-virtual {p1, v6}, Lcom/unitech/api/app/AppManagementCtrl;->deactivateApp(Ljava/lang/String;)Landroid/os/Bundle;

    .line 121
    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v6, -0x1

    .line 122
    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 124
    iget-object v3, p0, Lcom/unitech/api/uapps/ElauncherCtrl;->mAppManagementCtrl:Lcom/unitech/api/app/AppManagementCtrl;

    invoke-virtual {v3}, Lcom/unitech/api/app/AppManagementCtrl;->getDisabledPkgNameList()Landroid/os/Bundle;

    move-result-object v3

    const-string v6, "PkgNameList"

    .line 125
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 127
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_1

    .line 128
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 129
    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 131
    iget-object v7, p0, Lcom/unitech/api/uapps/ElauncherCtrl;->mAppManagementCtrl:Lcom/unitech/api/app/AppManagementCtrl;

    invoke-virtual {v7, v6}, Lcom/unitech/api/app/AppManagementCtrl;->enableApp(Ljava/lang/String;)Landroid/os/Bundle;

    .line 132
    iget-object v7, p0, Lcom/unitech/api/uapps/ElauncherCtrl;->mAppManagementCtrl:Lcom/unitech/api/app/AppManagementCtrl;

    invoke-virtual {v7, v6}, Lcom/unitech/api/app/AppManagementCtrl;->enableApp(Ljava/lang/String;)Landroid/os/Bundle;

    goto :goto_0

    .line 137
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    array-length v0, p1

    if-nez v0, :cond_2

    return-void

    .line 143
    :cond_2
    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_8

    aget-object v1, p1, v2

    .line 144
    iget-object v3, p0, Lcom/unitech/api/uapps/ElauncherCtrl;->mAppManagementCtrl:Lcom/unitech/api/app/AppManagementCtrl;

    invoke-virtual {v3, v1}, Lcom/unitech/api/app/AppManagementCtrl;->enableApp(Ljava/lang/String;)Landroid/os/Bundle;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 147
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    invoke-direct {p0}, Lcom/unitech/api/uapps/ElauncherCtrl;->getSystemPackageInfos()Ljava/util/ArrayList;

    move-result-object v2

    .line 150
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 151
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 152
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 158
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 159
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    .line 162
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    move-object v4, v1

    goto :goto_3

    .line 166
    :cond_7
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_8
    return-void
.end method

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

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ElauncherCtrl, exortSetting(), filePath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "invalid parameters"

    .line 799
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const-string v2, ""

    .line 802
    invoke-direct {p0, v0, v2}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/16 v2, 0x4e23

    .line 803
    invoke-direct {p0, v2}, Lcom/unitech/api/uapps/ElauncherCtrl;->isElauncherVersionCodeMoreThan(I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "ElauncherCtrl, resetSettings(), not support."

    .line 804
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 808
    :cond_1
    sget-object v2, Lcom/unitech/api/uapps/ElauncherCtrl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v2

    .line 809
    invoke-virtual {v2, p1}, Lcom/unitech/api/file/FileCtrl;->pathConverter(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "errorCode"

    .line 810
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    const-string p1, "REAL_PATH"

    .line 811
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string v5, "errorMsg"

    .line 813
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "NOT_EXIST"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string p1, "ElauncherCtrl, exportSettings() failed: filepath not exist."

    .line 814
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 817
    :cond_3
    :goto_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 818
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/unitech/api/uapps/ElauncherCtrl;->ConfigFilePath:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 820
    :cond_6
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.ute.eu.ELauncher.action.export"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.ute.eu.ELauncher"

    .line 821
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "path"

    .line 822
    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v5, 0x20

    .line 823
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 824
    sget-object v5, Lcom/unitech/api/uapps/ElauncherCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v3, 0x1

    :goto_1
    const/4 v5, 0x5

    if-gt v3, v5, :cond_9

    const-wide/16 v6, 0x1f4

    .line 828
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 831
    :goto_2
    invoke-virtual {v2, p1}, Lcom/unitech/api/file/FileCtrl;->exists(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 832
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_7

    goto :goto_3

    :cond_7
    if-ne v3, v5, :cond_8

    const-string p1, "exportSettings fail, config file no generate."

    .line 837
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    :goto_3
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

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ElauncherCtrl, importSettings(), filePath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "invalid parameters"

    .line 854
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 857
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v0, 0x4e23

    .line 858
    invoke-direct {p0, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->isElauncherVersionCodeMoreThan(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "ElauncherCtrl, resetSettings(), not support."

    .line 859
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 864
    :cond_1
    sget-object v0, Lcom/unitech/api/uapps/ElauncherCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v0

    .line 866
    invoke-virtual {v0, p1}, Lcom/unitech/api/file/FileCtrl;->pathConverter(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "errorCode"

    .line 867
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    const-string p1, "REAL_PATH"

    .line 868
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string v4, "errorMsg"

    .line 870
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "NOT_EXIST"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p1, "ElauncherCtrl, importSettings() failed: filepath not exist."

    .line 871
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 873
    :cond_3
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 874
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/unitech/api/uapps/ElauncherCtrl;->ConfigFilePath:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 876
    :cond_6
    invoke-virtual {v0, p1}, Lcom/unitech/api/file/FileCtrl;->exists(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 877
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_7

    const-string p1, "ElauncherCtrl, importSetting(), assign file path is not exist."

    .line 878
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 881
    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ute.eu.ELauncher.action.import"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.ute.eu.ELauncher"

    .line 882
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "path"

    .line 883
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 884
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 885
    sget-object p1, Lcom/unitech/api/uapps/ElauncherCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-wide/16 v0, 0x7d0

    .line 887
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    const-string v0, "ElauncherCtrl, importSetting success"

    .line 889
    invoke-direct {p0, p1, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public resetSettings()Landroid/os/Bundle;
    .locals 3

    const-string v0, "UnitechSDK"

    const-string v1, "ElauncherCtrl, resetSettings()"

    .line 775
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v1, ""

    .line 776
    invoke-direct {p0, v0, v1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    const/16 v1, 0x4e23

    .line 777
    invoke-direct {p0, v1}, Lcom/unitech/api/uapps/ElauncherCtrl;->isElauncherVersionCodeMoreThan(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    const-string v1, "ElauncherCtrl, resetSettings(), not support."

    .line 778
    invoke-direct {p0, v0, v1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 781
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.ute.eu.ELauncher.action.reset"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.ute.eu.ELauncher"

    .line 782
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x20

    .line 783
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 784
    sget-object v2, Lcom/unitech/api/uapps/ElauncherCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "ElauncherCtrl, resetSettings success"

    .line 785
    invoke-direct {p0, v0, v1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public setBlackPackageList(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packages"
        }
    .end annotation

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ElauncherCtrl, setBlackPackageList(), packages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x4e23

    .line 637
    invoke-direct {p0, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->isElauncherVersionCodeMoreThan(I)Z

    move-result v0

    const-string v2, "ElauncherCtrl, setBlackPackageList success"

    const-string v3, ","

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 638
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ute.eu.ELauncher.action.setting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v5, "AppBlocker_Blacklist"

    if-nez v1, :cond_0

    .line 640
    new-instance v0, Landroid/content/Intent;

    const-string p1, "com.ute.eu.ELauncher.action.delete"

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "delete"

    .line 641
    invoke-virtual {v0, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 643
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 644
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v3, "append"

    .line 645
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p1, :cond_1

    .line 646
    array-length v3, p1

    if-lez v3, :cond_1

    .line 647
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 649
    :cond_1
    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :goto_0
    const-string p1, "com.ute.eu.ELauncher"

    .line 651
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 652
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 653
    sget-object p1, Lcom/unitech/api/uapps/ElauncherCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 654
    invoke-direct {p0, v4, v2}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 657
    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v6}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "AppBlocker_Blacklist.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x2927

    .line 659
    invoke-direct {p0, v5}, Lcom/unitech/api/uapps/ElauncherCtrl;->isElauncherVersionCodeLessThan(I)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    const-string p1, "setBlackPackageList, ELauncher is not supported"

    .line 660
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "ElauncherCtrl, setBlackPackageList failed, ELauncher is not supported."

    .line 661
    invoke-direct {p0, v6, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 664
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 666
    :try_start_0
    iget-object p1, p0, Lcom/unitech/api/uapps/ElauncherCtrl;->mFileCtrl:Lcom/unitech/api/file/FileCtrl;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/unitech/api/file/FileCtrl;->deleteFile(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p1, "ElauncherCtrl, clear BlackPackageList success"

    .line 669
    invoke-direct {p0, v4, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 672
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    .line 674
    :try_start_1
    iget-object v1, p0, Lcom/unitech/api/uapps/ElauncherCtrl;->mFileCtrl:Lcom/unitech/api/file/FileCtrl;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/unitech/api/file/FileCtrl;->createFile(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 677
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "ElauncherCtrl, setBlackPackageList failed, create new file fail."

    .line 678
    invoke-direct {p0, v6, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 683
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/unitech/api/uapps/ElauncherCtrl;->mFileCtrl:Lcom/unitech/api/file/FileCtrl;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v5, "\r\n"

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/unitech/api/file/FileCtrl;->writeUTF8ToFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    .line 685
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_6

    .line 687
    invoke-direct {p0, v4, v2}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_2

    :cond_6
    const-string p1, "ElauncherCtrl, setBlackPackageList failed"

    .line 689
    invoke-direct {p0, v6, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public setDisplayActionTab(Z)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEnable"
        }
    .end annotation

    .line 1047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ElauncherCtrl, setDisplayActionTab(), status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x4e33

    .line 1050
    invoke-direct {p0, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->isElauncherVersionCodeMoreThan(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1051
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ute.eu.ELauncher.action.setting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "display_action_tab"

    if-eqz p1, :cond_0

    const-string p1, "true"

    .line 1053
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p1, "false"

    .line 1055
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string p1, "com.ute.eu.ELauncher"

    .line 1057
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 1058
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1059
    sget-object p1, Lcom/unitech/api/uapps/ElauncherCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x0

    const-string v0, "ElauncherCtrl, setDisplayActionTab success"

    .line 1060
    invoke-direct {p0, p1, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x1

    const-string v0, "ElauncherCtrl, setDisplayActionTab fail,version not support"

    .line 1063
    invoke-direct {p0, p1, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public setDisplayNotificationTab(Z)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEnable"
        }
    .end annotation

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ElauncherCtrl, setDisplayNotificationTab(), status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x4e33

    .line 1021
    invoke-direct {p0, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->isElauncherVersionCodeMoreThan(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1022
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ute.eu.ELauncher.action.setting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "display_noti_tab"

    if-eqz p1, :cond_0

    const-string p1, "true"

    .line 1024
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p1, "false"

    .line 1026
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string p1, "com.ute.eu.ELauncher"

    .line 1028
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 1029
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1030
    sget-object p1, Lcom/unitech/api/uapps/ElauncherCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x0

    const-string v0, "ElauncherCtrl, setDisplayNotificationTab success"

    .line 1031
    invoke-direct {p0, p1, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x1

    const-string v0, "ElauncherCtrl, setDisplayNotificationTab fail,version not support"

    .line 1034
    invoke-direct {p0, p1, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public setDisplaySettingTab(Z)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEnable"
        }
    .end annotation

    .line 1076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ElauncherCtrl, setDisplaySettingTab(), status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x4e33

    .line 1079
    invoke-direct {p0, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->isElauncherVersionCodeMoreThan(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1080
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ute.eu.ELauncher.action.setting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "display_setting_tab"

    if-eqz p1, :cond_0

    const-string p1, "true"

    .line 1082
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p1, "false"

    .line 1084
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string p1, "com.ute.eu.ELauncher"

    .line 1086
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 1087
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1088
    sget-object p1, Lcom/unitech/api/uapps/ElauncherCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x0

    const-string v0, "ElauncherCtrl, setDisplaySettingTab success"

    .line 1089
    invoke-direct {p0, p1, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x1

    const-string v0, "ElauncherCtrl, setDisplaySettingTab fail,version not support"

    .line 1092
    invoke-direct {p0, p1, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public setDockApps(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apps"
        }
    .end annotation

    .line 1108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ElauncherCtrl, setDockApps(), apps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x4e33

    .line 1110
    invoke-direct {p0, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->isElauncherVersionCodeMoreThan(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ute.eu.ELauncher.action.setting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1113
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "dock_setting"

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1117
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v3, ","

    .line 1118
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1119
    array-length v3, p1

    if-lez v3, :cond_1

    .line 1120
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1122
    :cond_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_1

    .line 1114
    :cond_2
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1115
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :goto_1
    const-string p1, "com.ute.eu.ELauncher"

    .line 1124
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 1125
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1126
    sget-object p1, Lcom/unitech/api/uapps/ElauncherCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x0

    const-string v0, "ElauncherCtrl, setDockApps success"

    .line 1127
    invoke-direct {p0, p1, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x1

    const-string v0, "ElauncherCtrl, setDockApps fail,version not support"

    .line 1130
    invoke-direct {p0, p1, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public setEnabled(Z)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ElauncherCtrl, setEnabled(), enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v0, p1, 0x1

    .line 84
    invoke-virtual {p0, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->enableResentApps(Z)V

    const-string v0, "com.ute.eu.ELauncher"

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/unitech/api/uapps/ElauncherCtrl;->mAppManagementCtrl:Lcom/unitech/api/app/AppManagementCtrl;

    sget-object v1, Lcom/unitech/api/uapps/ElauncherCtrl;->APP_CATEGORY:[Ljava/lang/String;

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {p1, v2, v1}, Lcom/unitech/api/app/AppManagementCtrl;->clearDefaultApps(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    .line 88
    iget-object p1, p0, Lcom/unitech/api/uapps/ElauncherCtrl;->mAppManagementCtrl:Lcom/unitech/api/app/AppManagementCtrl;

    sget-object v1, Lcom/unitech/api/uapps/ElauncherCtrl;->APP_CATEGORY:[Ljava/lang/String;

    const-string v3, "com.ute.eu.ELauncher.Launcher"

    invoke-virtual {p1, v2, v1, v0, v3}, Lcom/unitech/api/app/AppManagementCtrl;->setDefaultApp(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/unitech/api/uapps/ElauncherCtrl;->mAppManagementCtrl:Lcom/unitech/api/app/AppManagementCtrl;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/unitech/api/app/AppManagementCtrl;->clearDefaultApps([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 94
    :goto_0
    invoke-direct {p0}, Lcom/unitech/api/uapps/ElauncherCtrl;->startLauncher()V

    const-string v0, "errorCode"

    .line 96
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    const-string v0, "ElauncherCtrl, setEnabled success"

    .line 98
    invoke-direct {p0, p1, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    const-string v0, "ElauncherCtrl, setEnabled failed"

    .line 100
    invoke-direct {p0, p1, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public setKioskApp(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkg"
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ElauncherCtrl, setKioskApp(), pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "ElauncherCtrl, setKioskApp() failed: pkg cannot be empty."

    .line 216
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const/16 v2, 0x4e23

    .line 221
    invoke-direct {p0, v2}, Lcom/unitech/api/uapps/ElauncherCtrl;->isElauncherVersionCodeMoreThan(I)Z

    move-result v2

    const-string v3, "ElauncherCtrl, setKioskApp success"

    const/4 v4, 0x2

    const-string v5, "packageName"

    const-string v6, "/"

    const/4 v7, 0x0

    if-eqz v2, :cond_a

    .line 222
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.ute.eu.ELauncher.action.setting"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v8, " "

    const-string v9, ""

    .line 224
    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 225
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v4, "\n"

    .line 226
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 227
    array-length v4, p1

    move-object v6, v9

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v4, :cond_3

    aget-object v10, p1, v8

    const-string v11, "="

    .line 228
    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 229
    aget-object v11, v10, v7

    invoke-virtual {v11, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 230
    aget-object v9, v10, v1

    .line 231
    :cond_1
    aget-object v11, v10, v7

    const-string v12, "className"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 232
    aget-object v6, v10, v1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    move-object p1, v9

    move-object v9, v6

    goto :goto_2

    .line 235
    :cond_4
    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 236
    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 237
    aget-object v5, p1, v7

    .line 238
    array-length v6, p1

    if-ne v6, v1, :cond_5

    .line 239
    aget-object p1, p1, v7

    goto :goto_2

    .line 240
    :cond_5
    array-length v6, p1

    if-ne v6, v4, :cond_7

    .line 241
    aget-object v4, p1, v7

    .line 242
    aget-object v5, p1, v1

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 243
    :cond_6
    aget-object p1, p1, v1

    :goto_1
    move-object v9, p1

    move-object p1, v4

    goto :goto_2

    :cond_7
    move-object p1, v5

    .line 248
    :cond_8
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "packageName = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_9

    .line 250
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "className = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    const-string p1, "KioskApp"

    .line 251
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p1, "com.ute.eu.ELauncher"

    .line 252
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 253
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 254
    sget-object p1, Lcom/unitech/api/uapps/ElauncherCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 255
    invoke-direct {p0, v7, v3}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 258
    :cond_a
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "KioskApp.txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x28a0

    .line 260
    invoke-direct {p0, v8}, Lcom/unitech/api/uapps/ElauncherCtrl;->isElauncherVersionCodeLessThan(I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 261
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "ELauncher.ini"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    :cond_b
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_c

    .line 265
    :try_start_0
    iget-object v8, p0, Lcom/unitech/api/uapps/ElauncherCtrl;->mFileCtrl:Lcom/unitech/api/file/FileCtrl;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/unitech/api/file/FileCtrl;->createFile(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v8

    .line 268
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 271
    :cond_c
    :goto_3
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 272
    iget-object v0, p0, Lcom/unitech/api/uapps/ElauncherCtrl;->mFileCtrl:Lcom/unitech/api/file/FileCtrl;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->writeUTF8ToFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_5

    .line 273
    :cond_d
    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v8, "packageName=%s"

    if-eqz v5, :cond_10

    .line 274
    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 275
    array-length v5, p1

    if-ne v5, v1, :cond_e

    .line 276
    iget-object v0, p0, Lcom/unitech/api/uapps/ElauncherCtrl;->mFileCtrl:Lcom/unitech/api/file/FileCtrl;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    aget-object p1, p1, v7

    aput-object p1, v4, v7

    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->writeUTF8ToFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_4

    .line 277
    :cond_e
    array-length v5, p1

    if-ne v5, v4, :cond_f

    .line 278
    iget-object v0, p0, Lcom/unitech/api/uapps/ElauncherCtrl;->mFileCtrl:Lcom/unitech/api/file/FileCtrl;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    aget-object v5, p1, v7

    aput-object v5, v4, v7

    aget-object p1, p1, v1

    aput-object p1, v4, v1

    const-string p1, "packageName=%s\nclassName=%s"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->writeUTF8ToFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :cond_f
    :goto_4
    move-object p1, v0

    goto :goto_5

    .line 281
    :cond_10
    iget-object v0, p0, Lcom/unitech/api/uapps/ElauncherCtrl;->mFileCtrl:Lcom/unitech/api/file/FileCtrl;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->writeUTF8ToFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_5
    const-string v0, "errorCode"

    .line 283
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_11

    .line 285
    invoke-direct {p0, v7, v3}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_6

    :cond_11
    const-string p1, "ElauncherCtrl, setKioskApp failed"

    .line 287
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_6
    return-object p1
.end method

.method public setLauncherAppList(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apps"
        }
    .end annotation

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ElauncherCtrl, setLauncherAppList(), apps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x4e23

    .line 306
    invoke-direct {p0, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->isElauncherVersionCodeMoreThan(I)Z

    move-result v0

    const-string v1, "ElauncherCtrl, setLauncherAppList success"

    const-string v2, ","

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 307
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.ute.eu.ELauncher.action.setting"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 309
    new-instance v0, Landroid/content/Intent;

    const-string p1, "com.ute.eu.ELauncher.action.delete"

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "delete"

    const-string v2, "LauncherAppV2"

    .line 310
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 312
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 313
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 314
    array-length v2, p1

    if-lez v2, :cond_1

    .line 315
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const-string p1, "append"

    .line 317
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "LauncherApp"

    .line 318
    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :goto_0
    const-string p1, "com.ute.eu.ELauncher"

    .line 320
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 321
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 322
    sget-object p1, Lcom/unitech/api/uapps/ElauncherCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 323
    invoke-direct {p0, v3, v1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 327
    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "LauncherApp.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x28a0

    .line 329
    invoke-direct {p0, v4}, Lcom/unitech/api/uapps/ElauncherCtrl;->isElauncherVersionCodeLessThan(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 330
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "12Monitor.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_4

    .line 334
    :try_start_0
    iget-object v4, p0, Lcom/unitech/api/uapps/ElauncherCtrl;->mFileCtrl:Lcom/unitech/api/file/FileCtrl;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/unitech/api/file/FileCtrl;->createFile(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 337
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "ElauncherCtrl, setLauncherAppList failed, create new file fail."

    .line 338
    invoke-direct {p0, v5, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 343
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/unitech/api/uapps/ElauncherCtrl;->mFileCtrl:Lcom/unitech/api/file/FileCtrl;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    const-string v6, "\r\n"

    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    const-string p1, ""

    :goto_2
    invoke-virtual {v4, v0, p1}, Lcom/unitech/api/file/FileCtrl;->writeUTF8ToFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    .line 345
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_6

    .line 347
    invoke-direct {p0, v3, v1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_3

    :cond_6
    const-string p1, "ElauncherCtrl, setLauncherAppList failed"

    .line 349
    invoke-direct {p0, v5, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method public setMode(I)Landroid/os/Bundle;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    const-string v0, "Data"

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ElauncherCtrl, setMode(), mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnitechSDK"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_0

    const-string p1, "ElauncherCtrl, setMode failed: mode is out of range (0 or 1)."

    .line 463
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v3, 0x0

    const/16 v4, 0x4e23

    .line 468
    invoke-direct {p0, v4}, Lcom/unitech/api/uapps/ElauncherCtrl;->isElauncherVersionCodeMoreThan(I)Z

    move-result v4

    const-string v5, "ElauncherCtrl, setMode success"

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    .line 469
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ute.eu.ELauncher.action.setting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string p1, "false"

    goto :goto_0

    :cond_1
    const-string p1, "true"

    :goto_0
    const-string v1, "KioskMode"

    .line 470
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.ute.eu.ELauncher"

    .line 471
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 472
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 473
    sget-object p1, Lcom/unitech/api/uapps/ElauncherCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 476
    invoke-direct {p0, v6, v5}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 479
    :cond_2
    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 480
    new-instance v7, Ljava/io/File;

    const-string v8, "KioskApp.txt"

    invoke-direct {v7, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v8, 0x28a0

    .line 482
    invoke-direct {p0, v8}, Lcom/unitech/api/uapps/ElauncherCtrl;->isElauncherVersionCodeLessThan(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 483
    new-instance v7, Ljava/io/File;

    const-string v8, "ELauncher.ini"

    invoke-direct {v7, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 487
    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    if-nez p1, :cond_4

    const-string p1, "ElauncherCtrl, setMode Launcher mode success"

    .line 489
    invoke-direct {p0, v6, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_1

    :cond_4
    if-ne p1, v1, :cond_5

    const-string p1, "ElauncherCtrl, setMode failed, kioskmode setting file was not existed."

    .line 491
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    :cond_5
    :goto_1
    return-object v3

    .line 501
    :cond_6
    :try_start_0
    iget-object v3, p0, Lcom/unitech/api/uapps/ElauncherCtrl;->mFileCtrl:Lcom/unitech/api/file/FileCtrl;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/unitech/api/file/FileCtrl;->readFromFile(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 502
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string p1, "ElauncherCtrl, setMode: Failed to read kiosk mode settings file"

    .line 503
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "ElauncherCtrl, setMode, Failed to read kiosk mode settings file"

    .line 505
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 509
    :cond_7
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v0, ""

    const/4 v3, 0x1

    .line 518
    :cond_8
    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    goto :goto_3

    .line 522
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    const-string v8, "//"

    if-ne p1, v1, :cond_b

    .line 526
    :try_start_1
    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 527
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 529
    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_b
    if-nez p1, :cond_8

    .line 532
    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 533
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 535
    :cond_c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 540
    :cond_d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 548
    iget-object p1, p0, Lcom/unitech/api/uapps/ElauncherCtrl;->mFileCtrl:Lcom/unitech/api/file/FileCtrl;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Lcom/unitech/api/file/FileCtrl;->writeUTF8ToFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    .line 552
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_e

    .line 554
    invoke-direct {p0, v6, v5}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_4

    :cond_e
    const-string p1, "ElauncherCtrl, setMode failed to write to kioskmode setting file."

    .line 556
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 559
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string p1, "ElauncherCtrl, setMode failed to write to kioskmode setting file. IOException."

    .line 560
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_4
    return-object p1
.end method

.method public setNotificationBubbleDuration(I)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ElauncherCtrl, setNotificationBubbleDuration(), value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x4e33

    .line 962
    invoke-direct {p0, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->isElauncherVersionCodeMoreThan(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 963
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.ute.eu.ELauncher.action.setting"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-lez p1, :cond_0

    const/16 v2, 0xa

    if-gt p1, v2, :cond_0

    const-string v1, "noti_bubble_duration"

    .line 965
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.ute.eu.ELauncher"

    .line 966
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 967
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 968
    sget-object p1, Lcom/unitech/api/uapps/ElauncherCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x0

    const-string v0, "ElauncherCtrl, setNotificationBubbleDuration success"

    .line 969
    invoke-direct {p0, p1, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "ElauncherCtrl, setNotificationBubbleDuration duration value out of the range 1~10"

    .line 971
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    const-string p1, "ElauncherCtrl, setNotificationBubbleDuration fail,version not support"

    .line 976
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public setPINCode(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "PIN"
        }
    .end annotation

    const/16 v0, 0x4e23

    .line 403
    invoke-direct {p0, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->isElauncherVersionCodeMoreThan(I)Z

    move-result v0

    const-string v1, "ElauncherCtrl, setPINCode success"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 404
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.ute.eu.ELauncher.action.setting"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "PinCode"

    if-nez v3, :cond_0

    .line 406
    new-instance v0, Landroid/content/Intent;

    const-string p1, "com.ute.eu.ELauncher.action.delete"

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "delete"

    .line 407
    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 409
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 410
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :goto_0
    const-string p1, "com.ute.eu.ELauncher"

    .line 413
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 414
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 415
    sget-object p1, Lcom/unitech/api/uapps/ElauncherCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 416
    invoke-direct {p0, v2, v1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "UnitechSDK"

    const-string v3, "ElauncherCtrl, setPINCode(), PIN: ****"

    .line 420
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 423
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "PinCode.txt"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x28a0

    .line 424
    invoke-direct {p0, v3}, Lcom/unitech/api/uapps/ElauncherCtrl;->isElauncherVersionCodeLessThan(I)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    const-string p1, "setPINCode, ELauncher is not supported"

    .line 426
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "ElauncherCtrl, setPINCode failed, ELauncher is not supported."

    .line 427
    invoke-direct {p0, v5, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 431
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/uapps/ElauncherCtrl;->mFileCtrl:Lcom/unitech/api/file/FileCtrl;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/unitech/api/file/FileCtrl;->createFile(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 436
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "ElauncherCtrl, setPINCode failed, create new file fail."

    .line 437
    invoke-direct {p0, v5, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 441
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/unitech/api/uapps/ElauncherCtrl;->mFileCtrl:Lcom/unitech/api/file/FileCtrl;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lcom/unitech/api/file/FileCtrl;->writeUTF8ToFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    .line 443
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4

    .line 445
    invoke-direct {p0, v2, v1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_2

    :cond_4
    const-string p1, "ElauncherCtrl, setPINCode failed"

    .line 447
    invoke-direct {p0, v5, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public setRecentKeyLock(Z)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ElauncherCtrl, setRecentKeyLock(), enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x4e23

    .line 577
    invoke-direct {p0, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->isElauncherVersionCodeMoreThan(I)Z

    move-result v0

    const-string v2, "ElauncherCtrl, setRecentKeyLock success"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 578
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ute.eu.ELauncher.action.setting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p1, "false"

    goto :goto_0

    :cond_0
    const-string p1, "true"

    :goto_0
    const-string v1, "EnableRecentApps"

    .line 579
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.ute.eu.ELauncher"

    .line 580
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 581
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 582
    sget-object p1, Lcom/unitech/api/uapps/ElauncherCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 583
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v0, 0x2923

    .line 586
    invoke-direct {p0, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->isElauncherVersionCodeLessThan(I)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    const-string p1, "setRecentKeyLock, ELauncher is not supported"

    .line 587
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "ElauncherCtrl, setRecentKeyLock failed, ELauncher is not supported."

    .line 588
    invoke-direct {p0, v4, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 592
    :cond_2
    :try_start_0
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 593
    new-instance v1, Ljava/io/File;

    const-string v5, "EnableRecentApps.txt"

    invoke-direct {v1, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 594
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_3

    .line 596
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 600
    :cond_3
    iget-object v0, p0, Lcom/unitech/api/uapps/ElauncherCtrl;->mFileCtrl:Lcom/unitech/api/file/FileCtrl;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/unitech/api/file/FileCtrl;->deleteFile(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    .line 603
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    if-nez p1, :cond_6

    .line 608
    iget-object p1, p0, Lcom/unitech/api/uapps/ElauncherCtrl;->mFileCtrl:Lcom/unitech/api/file/FileCtrl;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/unitech/api/file/FileCtrl;->createFile(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :cond_6
    const-string p1, "errorCode"

    .line 610
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_7

    .line 612
    invoke-direct {p0, v3, v2}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_2

    :cond_7
    const-string p1, "ElauncherCtrl, setRecentKeyLock failed to write to kioskmode setting file."

    .line 614
    invoke-direct {p0, v4, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object p1

    :catch_0
    move-exception p1

    .line 617
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ElauncherCtrl, setRecentKeyLock Exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ElauncherCtrl, setWallpaper(), path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "ElauncherCtrl, setWallpaper() failed: path cannot be empty."

    .line 368
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 370
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/download/wallpaper.png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "ElauncherCtrl, setWallpaper() failed: this file path is already in ELauncher wallpaper path."

    .line 371
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 374
    :cond_1
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 375
    new-instance v2, Ljava/io/File;

    const-string v3, "Wallpaper.png"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 377
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 379
    iget-object p1, p0, Lcom/unitech/api/uapps/ElauncherCtrl;->mFileCtrl:Lcom/unitech/api/file/FileCtrl;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/unitech/api/file/FileCtrl;->copyFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    .line 381
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    .line 383
    invoke-direct {p0}, Lcom/unitech/api/uapps/ElauncherCtrl;->reloadElauncherConfig()V

    const/4 p1, 0x0

    const-string v0, "ElauncherCtrl, setWallpaper success"

    .line 384
    invoke-direct {p0, p1, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "ElauncherCtrl, setWallpaper failed"

    .line 386
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public setWhiteAppActivityList(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activities"
        }
    .end annotation

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ElauncherCtrl, setWhiteAppActivityList(), packages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string p1, "ElauncherCtrl, setWhiteAppActivityList() failed: activities cannot be empty."

    .line 707
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0x4e23

    .line 711
    invoke-direct {p0, v0}, Lcom/unitech/api/uapps/ElauncherCtrl;->isElauncherVersionCodeMoreThan(I)Z

    move-result v0

    const-string v3, "ElauncherCtrl, setWhiteAppActivityList success"

    const-string v4, ","

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    .line 712
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ute.eu.ELauncher.action.setting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 713
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "AppBlocker_Whitelist"

    if-nez v1, :cond_1

    .line 714
    new-instance v0, Landroid/content/Intent;

    const-string p1, "com.ute.eu.ELauncher.action.delete"

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "delete"

    .line 715
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 717
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 718
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v4, "append"

    .line 719
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p1, :cond_2

    .line 720
    array-length v4, p1

    if-lez v4, :cond_2

    .line 721
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 723
    :cond_2
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :goto_0
    const-string p1, "com.ute.eu.ELauncher"

    .line 725
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 726
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 727
    sget-object p1, Lcom/unitech/api/uapps/ElauncherCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 728
    invoke-direct {p0, v5, v3}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 731
    :cond_3
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "AppBlocker_Whitelist.txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x2927

    .line 733
    invoke-direct {p0, v6}, Lcom/unitech/api/uapps/ElauncherCtrl;->isElauncherVersionCodeLessThan(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string p1, "setWhiteAppActivityList, ELauncher is not supported"

    .line 734
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "ElauncherCtrl, setWhiteAppActivityList failed, ELauncher is not supported."

    .line 735
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 738
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 740
    :try_start_0
    iget-object p1, p0, Lcom/unitech/api/uapps/ElauncherCtrl;->mFileCtrl:Lcom/unitech/api/file/FileCtrl;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/unitech/api/file/FileCtrl;->deleteFile(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p1, "ElauncherCtrl, clear WhiteAppActivityList success"

    .line 743
    invoke-direct {p0, v5, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 746
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6

    .line 748
    :try_start_1
    iget-object v1, p0, Lcom/unitech/api/uapps/ElauncherCtrl;->mFileCtrl:Lcom/unitech/api/file/FileCtrl;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/unitech/api/file/FileCtrl;->createFile(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 751
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "ElauncherCtrl, setWhiteAppActivityList failed, create new file fail."

    .line 752
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 757
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/unitech/api/uapps/ElauncherCtrl;->mFileCtrl:Lcom/unitech/api/file/FileCtrl;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v6, "\r\n"

    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/unitech/api/file/FileCtrl;->writeUTF8ToFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    .line 759
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_7

    .line 761
    invoke-direct {p0, v5, v3}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_2

    :cond_7
    const-string p1, "ElauncherCtrl, setWhiteAppActivityList failed"

    .line 763
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/uapps/ElauncherCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_2
    return-object p1
.end method
