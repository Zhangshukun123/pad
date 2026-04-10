.class public Lcom/unitech/api/keymap/KeymappingCtrl;
.super Ljava/lang/Object;
.source "KeymappingCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;
    }
.end annotation


# static fields
.field private static final ACTION_BIND_SERVICE:Ljava/lang/String; = "com.unitech.dmservice.action.keymap"

.field private static final ACTION_BIND_SERVICE_NEW:Ljava/lang/String; = "com.unitech.programmablekey.action.bind"

.field public static final ACTION_KEY_EXPORT:Ljava/lang/String; = "export"

.field public static final ACTION_KEY_IMPORT:Ljava/lang/String; = "import"

.field public static final BUNDLE_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final BUNDLE_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field private static final CLS_API_SERVICE_PROGRAMMABLEKEY:Ljava/lang/String; = "com.unitech.programmablekey.ProgrammableKeyService"

.field private static final CLS_API_SERVICE_WD200:Ljava/lang/String; = "com.android.settings.hijack.service.IProgrammableKeyService"

.field private static final FILENAME_DEFAULT_KEYCODES:Ljava/lang/String; = "default_keycodes.txt"

.field private static final FILENAME_KEYS_CONFIG:Ljava/lang/String; = "keys_config.txt"

.field public static final INTENT_RESULT_MESSAGE:Ljava/lang/String; = "ResultMsg"

.field private static Instance:Lcom/unitech/api/keymap/KeymappingCtrl; = null

.field public static final KEY_EXPORT_PROGRAMMABLE_KEYS:Ljava/lang/String; = "ExportProgrammableKeys"

.field public static final KEY_EXPORT_PROGRAMMABLE_KEYS_ENABLE:Ljava/lang/String; = "ExportProgrammableKeysEnable"

.field public static final KEY_EXPORT_PROGRAMMABLE_KEYS_FILE_PATH:Ljava/lang/String; = "ExportProgrammableKeysFilePath"

.field public static final KEY_IMPORT_PROGRAMMABLE_KEYS:Ljava/lang/String; = "ImportProgrammableKeys"

.field public static final KEY_IMPORT_PROGRAMMABLE_KEYS_ENABLE:Ljava/lang/String; = "ImportProgrammableKeysEnable"

.field public static final KEY_IMPORT_PROGRAMMABLE_KEYS_FILE_PATH:Ljava/lang/String; = "ImportProgrammableKeysFilePath"

.field public static final KEY_PROGRAMMABLE_BROADCAST_DOWN:Ljava/lang/String; = "BroadcastKeyDown"

.field public static final KEY_PROGRAMMABLE_BROADCAST_UP:Ljava/lang/String; = "BroadcastKeyUp"

.field public static final KEY_PROGRAMMABLE_DOWN_KEY:Ljava/lang/String; = "DownKey"

.field public static final KEY_PROGRAMMABLE_DOWN_PARAMS:Ljava/lang/String; = "DownParams"

.field public static final KEY_PROGRAMMABLE_DOWN_VALUE:Ljava/lang/String; = "DownValue"

.field public static final KEY_PROGRAMMABLE_KEY:Ljava/lang/String; = "ProgrammableKey"

.field public static final KEY_PROGRAMMABLE_KEYS_SET:Ljava/lang/String; = "ProgrammableKeysSet"

.field public static final KEY_PROGRAMMABLE_KEY_CODE:Ljava/lang/String; = "KeyCode"

.field public static final KEY_PROGRAMMABLE_KEY_NAME:Ljava/lang/String; = "KeyName"

.field public static final KEY_PROGRAMMABLE_PARAMS_KEY:Ljava/lang/String; = "Key"

.field public static final KEY_PROGRAMMABLE_PARAMS_VALUE:Ljava/lang/String; = "Value"

.field public static final KEY_PROGRAMMABLE_START_ACTIVITY_KEY:Ljava/lang/String; = "StartActivityKey"

.field public static final KEY_PROGRAMMABLE_START_ACTIVITY_PARAM:Ljava/lang/String; = "StartActivityParam"

.field public static final KEY_PROGRAMMABLE_START_ACTIVITY_PARAMS:Ljava/lang/String; = "StartActivityParams"

.field public static final KEY_PROGRAMMABLE_START_ACTIVITY_VALUE:Ljava/lang/String; = "StartActivityValue"

.field public static final KEY_PROGRAMMABLE_UP_KEY:Ljava/lang/String; = "UpKey"

.field public static final KEY_PROGRAMMABLE_UP_PARAMS:Ljava/lang/String; = "UpParams"

.field public static final KEY_PROGRAMMABLE_UP_VALUE:Ljava/lang/String; = "UpValue"

.field public static final KEY_PROGRAMMABLE_WAKEUP:Ljava/lang/String; = "Wakeup"

.field public static final KEY_RESET_PROGRAMMABLE_KEYS:Ljava/lang/String; = "ResetProgrammableKeys"

.field private static final PKG_API_SERVICE:Ljava/lang/String; = "com.unitech.dmservice"

.field private static final PKG_API_SERVICE_NEW:Ljava/lang/String; = "com.android.settings"

.field private static final PKG_API_SERVICE_PROGRAMMABLEKEY:Ljava/lang/String; = "com.unitech.programmablekey"

.field private static final PKG_API_SERVICE_WD200:Ljava/lang/String; = "com.android.settings"

.field public static final REQUEST_CODE_EXPORT:I = 0x2711

.field public static final REQUEST_CODE_IMPORT:I = 0x2710

.field public static final RESULT_CODE_ERROR:I = 0x1

.field public static final RESULT_CODE_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SDK.KeymapCtrl"

.field public static final TAG_ACTION:Ljava/lang/String; = "Action"

.field public static final TAG_ACTION_PARAMS:Ljava/lang/String; = "ActionParams"

.field public static final TAG_BROADCAST_KEY_DOWN:Ljava/lang/String; = "BroadcastKeyDown"

.field public static final TAG_BROADCAST_KEY_UP:Ljava/lang/String; = "BroadcastKeyUp"

.field public static final TAG_ENABLED:Ljava/lang/String; = "KeyRemapEnabled"

.field public static final TAG_KEY:Ljava/lang/String; = "Key"

.field public static final TAG_KEY_CODE:Ljava/lang/String; = "KeyCode"

.field public static final TAG_KEY_NAME:Ljava/lang/String; = "KeyName"

.field public static final TAG_PARAM:Ljava/lang/String; = "Param"

.field public static final TAG_START_ACTIVITY_PARAMS:Ljava/lang/String; = "StartActivityParams"

.field public static final TAG_VALUE:Ljava/lang/String; = "Value"

.field public static final TAG_WAKEUP:Ljava/lang/String; = "Wakeup"

.field private static mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

.field public static volatile tmpIntent:Landroid/content/Intent;

.field public static volatile tmpResultCode:Ljava/lang/Integer;


# instance fields
.field NewPackageFlag:Z

.field private configWriter:Lcom/unitech/api/keymap/ConfigWriter;

.field private context:Landroid/content/Context;

.field private isProgrammableKeyAidl:Z

.field private keyremapCtrlAidl:Lcom/unitech/dmservice/IKeyremapCtrlAidl;

.field programmableKeyAIDL:Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;

.field private tmpFilePath:Ljava/lang/String;


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

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->configWriter:Lcom/unitech/api/keymap/ConfigWriter;

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->NewPackageFlag:Z

    const/4 v1, 0x1

    .line 130
    iput-boolean v1, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->isProgrammableKeyAidl:Z

    .line 728
    new-instance v2, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;

    invoke-direct {v2, p0}, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;-><init>(Lcom/unitech/api/keymap/KeymappingCtrl;)V

    iput-object v2, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->programmableKeyAIDL:Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->context:Landroid/content/Context;

    .line 139
    iget-object v3, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->configWriter:Lcom/unitech/api/keymap/ConfigWriter;

    if-nez v3, :cond_0

    .line 140
    invoke-static {v2}, Lcom/unitech/api/keymap/ConfigWriter;->getInstance(Landroid/content/Context;)Lcom/unitech/api/keymap/ConfigWriter;

    move-result-object v2

    iput-object v2, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->configWriter:Lcom/unitech/api/keymap/ConfigWriter;

    :cond_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "%s/"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->tmpFilePath:Ljava/lang/String;

    .line 143
    sget-object v0, Lcom/unitech/api/keymap/KeymappingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    if-nez v0, :cond_4

    .line 144
    sget-boolean v0, Lcom/unitech/api/machine/Machine;->HT730:Z

    const-string v1, "com.unitech.programmablekey.action.bind"

    const-string v2, "com.android.settings"

    if-eqz v0, :cond_1

    .line 145
    new-instance v0, Lcom/unitech/api/util/ServiceHandler;

    .line 146
    invoke-direct {p0}, Lcom/unitech/api/keymap/KeymappingCtrl;->createProgrammableKeyAidlServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v3

    invoke-direct {v0, p1, v2, v1, v3}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    sput-object v0, Lcom/unitech/api/keymap/KeymappingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    goto :goto_0

    .line 147
    :cond_1
    sget-boolean v0, Lcom/unitech/api/machine/Machine;->WD200:Z

    if-eqz v0, :cond_2

    .line 148
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings.hijack.service.IProgrammableKeyService"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v1, Lcom/unitech/api/util/ServiceHandler;

    .line 150
    invoke-direct {p0}, Lcom/unitech/api/keymap/KeymappingCtrl;->createWD200ProgrammableKeyAidlServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    sput-object v1, Lcom/unitech/api/keymap/KeymappingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    goto :goto_0

    :cond_2
    const-string v0, "com.unitech.programmablekey"

    .line 152
    invoke-direct {p0, v0}, Lcom/unitech/api/keymap/KeymappingCtrl;->checkPkgExist(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->NewPackageFlag:Z

    if-eqz v2, :cond_3

    const-string v2, "SDK.KeymapCtrl"

    const-string v3, "KeymappingCtrl, com.unitech.programmablekey is Exist..."

    .line 154
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.unitech.programmablekey.ProgrammableKeyService"

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v0, Lcom/unitech/api/util/ServiceHandler;

    .line 158
    invoke-direct {p0}, Lcom/unitech/api/keymap/KeymappingCtrl;->createProgrammableKeyApiAidlServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v3

    invoke-direct {v0, p1, v2, v1, v3}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    sput-object v0, Lcom/unitech/api/keymap/KeymappingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    goto :goto_0

    .line 160
    :cond_3
    new-instance v0, Lcom/unitech/api/util/ServiceHandler;

    .line 161
    invoke-direct {p0}, Lcom/unitech/api/keymap/KeymappingCtrl;->createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v1

    const-string v2, "com.unitech.dmservice"

    const-string v3, "com.unitech.dmservice.action.keymap"

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    sput-object v0, Lcom/unitech/api/keymap/KeymappingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic access$002(Lcom/unitech/api/keymap/KeymappingCtrl;Lcom/unitech/dmservice/IKeyremapCtrlAidl;)Lcom/unitech/dmservice/IKeyremapCtrlAidl;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->keyremapCtrlAidl:Lcom/unitech/dmservice/IKeyremapCtrlAidl;

    return-object p1
.end method

.method private activityExists(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "activityName"
        }
    .end annotation

    .line 892
    iget-object v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 893
    iget-object v1, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->context:Landroid/content/Context;

    const-string v2, "android.permission.QUERY_ALL_PACKAGES"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 895
    :try_start_0
    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 896
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v4, v4

    if-lez v4, :cond_1

    .line 897
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v1, v5

    .line 898
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_0

    return v3

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 903
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 906
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 907
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.category.LAUNCHER"

    .line 908
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x20000

    .line 909
    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 911
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 912
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 913
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    return v3

    .line 919
    :cond_3
    invoke-virtual {v1, v4}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    const-string v6, "android.intent.category.DEFAULT"

    .line 920
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 921
    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 923
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 924
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 925
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v3

    .line 931
    :cond_5
    new-instance v0, Lcom/unitech/api/app/AppManagementCtrl;

    iget-object v1, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/unitech/api/app/AppManagementCtrl;-><init>(Landroid/content/Context;)V

    .line 933
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v1

    const-string v4, "android.intent.action.MAIN"

    .line 934
    invoke-virtual {v0, v4, v1, p1}, Lcom/unitech/api/app/AppManagementCtrl;->resolveActivity(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "errorCode"

    .line 935
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "ResolveInfo_ActivityInfoName"

    if-nez v7, :cond_6

    .line 936
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 937
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v3

    .line 939
    :cond_6
    new-instance v0, Lcom/unitech/api/app/AppManagementCtrl;

    iget-object v7, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->context:Landroid/content/Context;

    invoke-direct {v0, v7}, Lcom/unitech/api/app/AppManagementCtrl;-><init>(Landroid/content/Context;)V

    .line 940
    aput-object v6, v1, v2

    .line 941
    invoke-virtual {v0, v4, v1, p1}, Lcom/unitech/api/app/AppManagementCtrl;->resolveActivity(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 942
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 943
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 944
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    return v3

    :cond_7
    return v2
.end method

.method private checkPkgExist(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkgApiServiceProgrammablekey"
        }
    .end annotation

    .line 170
    invoke-direct {p0}, Lcom/unitech/api/keymap/KeymappingCtrl;->getAllInstalledPkgNameList()Ljava/util/List;

    move-result-object v0

    .line 171
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private createProgrammableKeyAidlServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
    .locals 1

    .line 753
    new-instance v0, Lcom/unitech/api/keymap/KeymappingCtrl$2;

    invoke-direct {v0, p0}, Lcom/unitech/api/keymap/KeymappingCtrl$2;-><init>(Lcom/unitech/api/keymap/KeymappingCtrl;)V

    return-object v0
.end method

.method private createProgrammableKeyApiAidlServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
    .locals 1

    .line 776
    new-instance v0, Lcom/unitech/api/keymap/KeymappingCtrl$3;

    invoke-direct {v0, p0}, Lcom/unitech/api/keymap/KeymappingCtrl$3;-><init>(Lcom/unitech/api/keymap/KeymappingCtrl;)V

    return-object v0
.end method

.method private createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
    .locals 1

    .line 730
    new-instance v0, Lcom/unitech/api/keymap/KeymappingCtrl$1;

    invoke-direct {v0, p0}, Lcom/unitech/api/keymap/KeymappingCtrl$1;-><init>(Lcom/unitech/api/keymap/KeymappingCtrl;)V

    return-object v0
.end method

.method private createWD200ProgrammableKeyAidlServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
    .locals 1

    .line 802
    new-instance v0, Lcom/unitech/api/keymap/KeymappingCtrl$4;

    invoke-direct {v0, p0}, Lcom/unitech/api/keymap/KeymappingCtrl$4;-><init>(Lcom/unitech/api/keymap/KeymappingCtrl;)V

    return-object v0
.end method

.method private enableKeymapping(Z)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1387
    sget-object v0, Lcom/unitech/api/keymap/KeymappingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string p1, "Bind KeymapService failed"

    .line 1388
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 1392
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/keymap/KeymappingCtrl;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1394
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->programmableKeyAIDL:Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->enableKeymapping([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    const/4 v2, -0x1

    .line 1395
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "errorMsg"

    .line 1396
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1397
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1399
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1400
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "AIDL is null"

    .line 1403
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private exportSettings(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "folderPath"
        }
    .end annotation

    .line 1000
    iget-object v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->keyremapCtrlAidl:Lcom/unitech/dmservice/IKeyremapCtrlAidl;

    if-eqz v0, :cond_0

    .line 1002
    :try_start_0
    invoke-interface {v0, p1}, Lcom/unitech/dmservice/IKeyremapCtrlAidl;->exportSettings(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1004
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 1007
    iget-object p1, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/unitech/api/keymap/KeyAPI;->exportSettings(Landroid/content/Context;)V

    goto :goto_0

    .line 1009
    :cond_1
    iget-object v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/unitech/api/keymap/KeyAPI;->exportSettings(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private exportSettingsByAidl(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "folderPath"
        }
    .end annotation

    .line 1211
    sget-object v0, Lcom/unitech/api/keymap/KeymappingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string p1, "Bind KeymapService failed"

    .line 1212
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 1217
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/keymap/KeymappingCtrl;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1219
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->programmableKeyAIDL:Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->exportSettings([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    const/4 v2, -0x1

    .line 1220
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "errorMsg"

    .line 1221
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1222
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1224
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1225
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "AIDL is null"

    .line 1228
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private generateProgramKeyEntity(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;[Landroid/os/Bundle;Ljava/lang/String;[Landroid/os/Bundle;[Landroid/os/Bundle;)Lcom/unitech/api/keymap/ProgramKeyEntity;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyName",
            "keyCode",
            "wakeup",
            "broadcastDownAction",
            "broadcastDownParams",
            "broadcastUpAction",
            "broadcastUpParams",
            "startActivityParams"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const-string v3, "generateProgramKeyEntity %s - %s"

    .line 1041
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "SDK.KeymapCtrl"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    new-instance v0, Lcom/unitech/api/keymap/ProgramKeyEntity;

    invoke-direct {v0}, Lcom/unitech/api/keymap/ProgramKeyEntity;-><init>()V

    .line 1043
    invoke-virtual {v0, p1}, Lcom/unitech/api/keymap/ProgramKeyEntity;->setKeyName(Ljava/lang/String;)V

    .line 1044
    invoke-virtual {v0, p2}, Lcom/unitech/api/keymap/ProgramKeyEntity;->setKeyCode(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 1047
    invoke-virtual {v0, v2}, Lcom/unitech/api/keymap/ProgramKeyEntity;->setWakeUp(I)V

    goto :goto_0

    .line 1049
    :cond_0
    invoke-virtual {v0, v1}, Lcom/unitech/api/keymap/ProgramKeyEntity;->setWakeUp(I)V

    :goto_0
    const/4 p1, 0x0

    if-eqz p4, :cond_3

    .line 1053
    new-instance p2, Lcom/unitech/api/keymap/BroadcastKeyDownEntity;

    invoke-direct {p2}, Lcom/unitech/api/keymap/BroadcastKeyDownEntity;-><init>()V

    .line 1054
    invoke-virtual {p2, p4}, Lcom/unitech/api/keymap/BroadcastKeyDownEntity;->setActionName(Ljava/lang/String;)V

    if-eqz p5, :cond_1

    .line 1055
    array-length p3, p5

    if-lez p3, :cond_1

    .line 1056
    invoke-direct {p0, p2, p5}, Lcom/unitech/api/keymap/KeymappingCtrl;->parseDownKeyEntity(Lcom/unitech/api/keymap/BroadcastKeyDownEntity;[Landroid/os/Bundle;)Lcom/unitech/api/keymap/BroadcastKeyDownEntity;

    move-result-object p2

    :cond_1
    if-nez p2, :cond_2

    return-object p1

    .line 1063
    :cond_2
    invoke-virtual {v0, p2}, Lcom/unitech/api/keymap/ProgramKeyEntity;->setKeyDownEntity(Lcom/unitech/api/keymap/BroadcastKeyDownEntity;)V

    :cond_3
    if-eqz p6, :cond_6

    .line 1067
    new-instance p2, Lcom/unitech/api/keymap/BroadcastKeyUpEntity;

    invoke-direct {p2}, Lcom/unitech/api/keymap/BroadcastKeyUpEntity;-><init>()V

    .line 1068
    invoke-virtual {p2, p6}, Lcom/unitech/api/keymap/BroadcastKeyUpEntity;->setActionName(Ljava/lang/String;)V

    if-eqz p7, :cond_4

    .line 1069
    array-length p3, p7

    if-lez p3, :cond_4

    .line 1070
    invoke-direct {p0, p2, p7}, Lcom/unitech/api/keymap/KeymappingCtrl;->parseUpKeyEntity(Lcom/unitech/api/keymap/BroadcastKeyUpEntity;[Landroid/os/Bundle;)Lcom/unitech/api/keymap/BroadcastKeyUpEntity;

    move-result-object p2

    :cond_4
    if-nez p2, :cond_5

    return-object p1

    .line 1077
    :cond_5
    invoke-virtual {v0, p2}, Lcom/unitech/api/keymap/ProgramKeyEntity;->setKeyUpEntity(Lcom/unitech/api/keymap/BroadcastKeyUpEntity;)V

    :cond_6
    if-eqz p8, :cond_7

    .line 1080
    array-length p1, p8

    if-lez p1, :cond_7

    .line 1081
    invoke-direct {p0, v0, p8}, Lcom/unitech/api/keymap/KeymappingCtrl;->parseStartActivityParams(Lcom/unitech/api/keymap/ProgramKeyEntity;[Landroid/os/Bundle;)Lcom/unitech/api/keymap/ProgramKeyEntity;

    move-result-object v0

    :cond_7
    return-object v0
.end method

.method private getAllInstalledPkgNameList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 180
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 186
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v4, 0x80

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    .line 188
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    :cond_0
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_1

    .line 194
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 202
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 205
    :try_start_0
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 206
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 210
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private getDefaultKeymapping(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyName"
        }
    .end annotation

    const-string v0, "Parsing default keycode fail"

    .line 1297
    sget-boolean v1, Lcom/unitech/api/machine/Machine;->TB85Plus:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string p1, "device not supported"

    .line 1298
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 1301
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v1

    const-string v3, "/sdcard/unitech/KeySharp/default_keycodes.txt"

    .line 1303
    invoke-virtual {v1, v3}, Lcom/unitech/api/file/FileCtrl;->exists(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "errorCode"

    .line 1304
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "/sdcard/unitech/KeySharp/"

    .line 1305
    invoke-virtual {p0, v4}, Lcom/unitech/api/keymap/KeymappingCtrl;->exportKeyMappings(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1306
    :cond_1
    invoke-virtual {v1, v3}, Lcom/unitech/api/file/FileCtrl;->readFromFile(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "Data"

    .line 1307
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 1308
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 1309
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 1310
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 1311
    new-instance v4, Lorg/xml/sax/InputSource;

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 1312
    invoke-virtual {v1, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 1313
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Element;->normalize()V

    const-string v3, "DefaultKeyCodes"

    .line 1314
    invoke-interface {v1, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1315
    invoke-direct {p0, v2, v0}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v3, 0x0

    .line 1316
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 1317
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v4, v2, :cond_4

    .line 1318
    check-cast v1, Lorg/w3c/dom/Element;

    const-string v4, "KeyName"

    .line 1319
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/4 v5, 0x0

    .line 1321
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 1322
    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 1323
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string p1, "KeyCode"

    .line 1324
    invoke-interface {v1, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p1

    const-string v1, "%s key code"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v3

    .line 1325
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "DefaultKeyCode"

    .line 1326
    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1332
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1334
    :cond_4
    invoke-direct {p0, v2, v0}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/unitech/api/keymap/KeymappingCtrl;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 224
    sget-object v0, Lcom/unitech/api/keymap/KeymappingCtrl;->Instance:Lcom/unitech/api/keymap/KeymappingCtrl;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lcom/unitech/api/keymap/KeymappingCtrl;

    invoke-direct {v0, p0}, Lcom/unitech/api/keymap/KeymappingCtrl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/unitech/api/keymap/KeymappingCtrl;->Instance:Lcom/unitech/api/keymap/KeymappingCtrl;

    .line 227
    :cond_0
    sget-object p0, Lcom/unitech/api/keymap/KeymappingCtrl;->Instance:Lcom/unitech/api/keymap/KeymappingCtrl;

    return-object p0
.end method

.method private getKeymapping(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyName"
        }
    .end annotation

    .line 1337
    sget-boolean v0, Lcom/unitech/api/machine/Machine;->TB85Plus:Z

    const-string v1, "device not supported"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1338
    invoke-direct {p0, v2, v1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 1341
    :cond_0
    sget-object v0, Lcom/unitech/api/keymap/KeymappingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "Bind KeymapService failed"

    .line 1342
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 1346
    :cond_1
    invoke-direct {p0}, Lcom/unitech/api/keymap/KeymappingCtrl;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1348
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->programmableKeyAIDL:Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->getKeymapping([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1351
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1352
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    .line 1355
    :cond_2
    invoke-direct {p0, v2, v1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getKeymappingEnabled()Landroid/os/Bundle;
    .locals 4

    .line 1410
    sget-object v0, Lcom/unitech/api/keymap/KeymappingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "Bind KeymapService failed"

    .line 1411
    invoke-direct {p0, v1, v0}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "device not supported"

    .line 1413
    invoke-direct {p0, v1, v0}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1415
    invoke-direct {p0}, Lcom/unitech/api/keymap/KeymappingCtrl;->isAidl()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1417
    :try_start_0
    iget-object v2, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->programmableKeyAIDL:Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->getKeymappingEnabled([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    return-object v1

    :catch_0
    move-exception v0

    .line 1420
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1421
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private importSettings(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "folderPath"
        }
    .end annotation

    .line 1014
    iget-object v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->keyremapCtrlAidl:Lcom/unitech/dmservice/IKeyremapCtrlAidl;

    if-eqz v0, :cond_0

    .line 1016
    :try_start_0
    invoke-interface {v0, p1}, Lcom/unitech/dmservice/IKeyremapCtrlAidl;->importSettings(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1018
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 1021
    iget-object p1, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/unitech/api/keymap/KeyAPI;->importSettings(Landroid/content/Context;)V

    goto :goto_0

    .line 1023
    :cond_1
    iget-object v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/unitech/api/keymap/KeyAPI;->importSettings(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private importSettingsByAidl(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "folderPath"
        }
    .end annotation

    .line 1188
    sget-object v0, Lcom/unitech/api/keymap/KeymappingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string p1, "Bind KeymapService failed"

    .line 1189
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 1193
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/keymap/KeymappingCtrl;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1195
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->programmableKeyAIDL:Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->importSettings([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    const/4 v2, -0x1

    .line 1196
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "errorMsg"

    .line 1197
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1198
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1200
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1201
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "AIDL is null"

    .line 1204
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private isAidl()Z
    .locals 1

    .line 1180
    iget-object v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->programmableKeyAIDL:Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isValidKeyOrValue(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyOrValue"
        }
    .end annotation

    .line 1168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, " "

    .line 1171
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private parseDownKeyEntity(Lcom/unitech/api/keymap/BroadcastKeyDownEntity;[Landroid/os/Bundle;)Lcom/unitech/api/keymap/BroadcastKeyDownEntity;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downEntity",
            "params"
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 1088
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_2

    .line 1092
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p2, v1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "Key"

    .line 1097
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Value"

    .line 1098
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1100
    invoke-direct {p0, v3}, Lcom/unitech/api/keymap/KeymappingCtrl;->isValidKeyOrValue(Ljava/lang/String;)Z

    move-result v4

    .line 1101
    invoke-direct {p0, v2}, Lcom/unitech/api/keymap/KeymappingCtrl;->isValidKeyOrValue(Ljava/lang/String;)Z

    move-result v5

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    .line 1104
    invoke-virtual {p1, v3, v2}, Lcom/unitech/api/keymap/BroadcastKeyDownEntity;->addDownParams(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :cond_3
    :goto_2
    return-object p1
.end method

.method private parseKeyCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyCode"
        }
    .end annotation

    const-string v0, "^\\d+$"

    .line 835
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const-string v0, "/"

    .line 837
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "SDK.KeymapCtrl"

    const-string v4, " "

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v1, :cond_4

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 873
    :cond_1
    iget-object v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 874
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 875
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "android.intent.category.LAUNCHER"

    .line 876
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v7, 0x20000

    .line 877
    invoke-virtual {v0, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 878
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v6, :cond_2

    goto :goto_0

    .line 882
    :cond_2
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 883
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 884
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parseKeyCode: resolve - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :goto_0
    new-array v0, v6, [Ljava/lang/Object;

    aput-object p1, v0, v5

    const-string p1, "Didn\'t find Launcher activity in %s"

    .line 879
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v2

    .line 839
    :cond_4
    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 843
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto :goto_3

    .line 847
    :cond_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 854
    :goto_3
    array-length v9, v1

    const/4 v10, 0x2

    if-ne v9, v10, :cond_9

    aget-object v9, v1, v5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_9

    aget-object v9, v1, v6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_9

    .line 855
    aget-object v7, v1, v7

    .line 856
    aget-object v1, v1, v8

    .line 862
    invoke-direct {p0, v7, v1}, Lcom/unitech/api/keymap/KeymappingCtrl;->activityExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 863
    sget-boolean v9, Lcom/unitech/api/machine/Machine;->HT730:Z

    if-nez v9, :cond_6

    iget-boolean v9, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->NewPackageFlag:Z

    if-eqz v9, :cond_7

    .line 864
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    if-eqz v8, :cond_8

    .line 866
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    new-array v0, v6, [Ljava/lang/Object;

    aput-object p1, v0, v5

    const-string p1, "the activity not found: %s"

    .line 869
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_9
    new-array v0, v6, [Ljava/lang/Object;

    aput-object p1, v0, v5

    const-string p1, "The format of keyCode is wrong: %s"

    .line 858
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private parseKeyCodeNew(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyCode"
        }
    .end annotation

    const-string v0, "\\d+(?:\\.\\d+)?"

    .line 952
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const-string v0, "/"

    .line 954
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    :cond_1
    const-string v1, " "

    .line 956
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "SDK.KeymapCtrl"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    .line 957
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 958
    array-length v2, v1

    const/4 v6, 0x2

    if-ne v2, v6, :cond_2

    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    aget-object v2, v1, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 959
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v1, v5

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v1, v4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_2
    new-array v0, v5, [Ljava/lang/Object;

    aput-object p1, v0, v4

    const-string v1, "The format of keyCode is wrong: %s"

    .line 961
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 965
    :cond_3
    iget-object v1, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 966
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 967
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "android.intent.category.LAUNCHER"

    .line 968
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x20000

    .line 969
    invoke-virtual {v1, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    const-string v2, "Didn\'t find Launcher activity in %s"

    if-nez v1, :cond_4

    new-array v0, v5, [Ljava/lang/Object;

    aput-object p1, v0, v4

    .line 971
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 972
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v5, :cond_5

    new-array v0, v5, [Ljava/lang/Object;

    aput-object p1, v0, v4

    .line 973
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 975
    :cond_5
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 976
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseKeyCode: resolve - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p1
.end method

.method private parseStartActivityParams(Lcom/unitech/api/keymap/ProgramKeyEntity;[Landroid/os/Bundle;)Lcom/unitech/api/keymap/ProgramKeyEntity;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entity",
            "params"
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 1142
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_2

    .line 1146
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p2, v1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "Key"

    .line 1151
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Value"

    .line 1152
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1154
    invoke-direct {p0, v3}, Lcom/unitech/api/keymap/KeymappingCtrl;->isValidKeyOrValue(Ljava/lang/String;)Z

    move-result v4

    .line 1155
    invoke-direct {p0, v2}, Lcom/unitech/api/keymap/KeymappingCtrl;->isValidKeyOrValue(Ljava/lang/String;)Z

    move-result v5

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    .line 1158
    invoke-virtual {p1, v3, v2}, Lcom/unitech/api/keymap/ProgramKeyEntity;->addStartActivityParamEntities(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :cond_3
    :goto_2
    return-object p1
.end method

.method private parseUpKeyEntity(Lcom/unitech/api/keymap/BroadcastKeyUpEntity;[Landroid/os/Bundle;)Lcom/unitech/api/keymap/BroadcastKeyUpEntity;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "upEntity",
            "params"
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 1115
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_2

    .line 1119
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p2, v1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "Key"

    .line 1124
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Value"

    .line 1125
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1127
    invoke-direct {p0, v3}, Lcom/unitech/api/keymap/KeymappingCtrl;->isValidKeyOrValue(Ljava/lang/String;)Z

    move-result v4

    .line 1128
    invoke-direct {p0, v2}, Lcom/unitech/api/keymap/KeymappingCtrl;->isValidKeyOrValue(Ljava/lang/String;)Z

    move-result v5

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    .line 1131
    invoke-virtual {p1, v3, v2}, Lcom/unitech/api/keymap/BroadcastKeyUpEntity;->addUpParams(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :cond_3
    :goto_2
    return-object p1
.end method

.method private resetKeymapping(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyName"
        }
    .end annotation

    .line 1362
    sget-boolean v0, Lcom/unitech/api/machine/Machine;->TB85Plus:Z

    const-string v1, "device not supported"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1363
    invoke-direct {p0, v2, v1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 1366
    :cond_0
    sget-object v0, Lcom/unitech/api/keymap/KeymappingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "Bind KeymapService failed"

    .line 1367
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 1371
    :cond_1
    invoke-direct {p0}, Lcom/unitech/api/keymap/KeymappingCtrl;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1373
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->programmableKeyAIDL:Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->resetKeymapping([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1376
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1377
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    .line 1380
    :cond_2
    invoke-direct {p0, v2, v1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private resetSetting()V
    .locals 1

    .line 1028
    iget-object v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->keyremapCtrlAidl:Lcom/unitech/dmservice/IKeyremapCtrlAidl;

    if-eqz v0, :cond_0

    .line 1030
    :try_start_0
    invoke-interface {v0}, Lcom/unitech/dmservice/IKeyremapCtrlAidl;->resetSettings()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1032
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/unitech/api/keymap/KeyAPI;->resetSettings(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private resetSettingsByAidl()Landroid/os/Bundle;
    .locals 4

    .line 1235
    sget-object v0, Lcom/unitech/api/keymap/KeymappingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "Bind KeymapService failed"

    .line 1236
    invoke-direct {p0, v1, v0}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 1241
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/keymap/KeymappingCtrl;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1243
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->programmableKeyAIDL:Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->resetSettings([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "errorCode"

    const/4 v3, -0x1

    .line 1244
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "errorMsg"

    .line 1245
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1246
    invoke-direct {p0, v2, v0}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1248
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1249
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "AIDL is null"

    .line 1252
    invoke-direct {p0, v1, v0}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private runProgrammableKeySettingActivity(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "runProgrammableKeySettingActivity %s"

    .line 985
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "SDK.KeymapCtrl"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "export"

    .line 986
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 988
    iget-object p1, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->tmpFilePath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->exportSettings(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "import"

    .line 989
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 991
    iget-object p1, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->tmpFilePath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->importSettings(Ljava/lang/String;)V

    :goto_0
    const/16 p1, 0x1f4

    .line 995
    invoke-direct {p0, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->sleep(I)V

    return v0

    :cond_1
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

    .line 593
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    .line 594
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "errorMsg"

    .line 595
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private setKeymappingByAidl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyName",
            "keyCode",
            "wakeup",
            "broadcastDownAction",
            "broadcastDownParams",
            "broadcastUpAction",
            "broadcastUpParams",
            "startActivityParams"
        }
    .end annotation

    .line 1261
    sget-object v0, Lcom/unitech/api/keymap/KeymappingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string p1, "Bind KeymapService failed"

    .line 1262
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 1269
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/keymap/KeymappingCtrl;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 1271
    :try_start_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    move-object p4, v0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p6, :cond_2

    .line 1272
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    move-object p6, v0

    .line 1278
    :cond_2
    iget-object v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->programmableKeyAIDL:Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v1

    const/4 p1, 0x2

    .line 1279
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    aput-object p4, v2, p1

    const/4 p1, 0x4

    aput-object p5, v2, p1

    const/4 p1, 0x5

    aput-object p6, v2, p1

    const/4 p1, 0x6

    aput-object p7, v2, p1

    const/4 p1, 0x7

    aput-object p8, v2, p1

    .line 1278
    invoke-virtual {v0, v2}, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->setKeymapping([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "errorCode"

    const/4 p3, -0x1

    .line 1282
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    const-string p3, "errorMsg"

    .line 1283
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1284
    invoke-direct {p0, p2, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1286
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1287
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_2

    :cond_3
    const-string p1, "AIDL is null"

    .line 1290
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method private sleep(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "milliSecond"
        }
    .end annotation

    int-to-long v0, p1

    .line 586
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 588
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public addKeyMappings(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;[Landroid/os/Bundle;Ljava/lang/String;[Landroid/os/Bundle;[Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyName",
            "keyCode",
            "wakeup",
            "broadcastDownAction",
            "broadcastDownParams",
            "broadcastUpAction",
            "broadcastUpParams",
            "startActivityParams"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p2

    move-object/from16 v5, p5

    move-object/from16 v7, p7

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v1, v10

    const/4 v11, 0x1

    aput-object v0, v1, v11

    const-string v2, "addKeyMappings %s - %s"

    .line 312
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SDK.KeymapCtrl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    sget-boolean v1, Lcom/unitech/api/machine/Machine;->TB85Plus:Z

    if-eqz v1, :cond_0

    const-string v0, "device not supported"

    .line 315
    invoke-direct {v9, v11, v0}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 318
    :cond_0
    sget-object v1, Lcom/unitech/api/keymap/KeymappingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "Bind KeymapService failed"

    .line 319
    invoke-direct {v9, v11, v0}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz p1, :cond_12

    if-nez v0, :cond_2

    goto/16 :goto_9

    .line 328
    :cond_2
    invoke-direct {v9, v0}, Lcom/unitech/api/keymap/KeymappingCtrl;->parseKeyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v0, "invalid Key Code"

    .line 331
    invoke-direct {v9, v11, v0}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v0, "^\\d+$"

    .line 334
    invoke-virtual {v2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    move-object v8, v1

    goto :goto_0

    :cond_4
    move-object/from16 v8, p8

    .line 338
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/unitech/api/keymap/KeymappingCtrl;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "Value"

    const-string v3, "Key"

    if-eqz v5, :cond_8

    .line 340
    array-length v4, v5

    if-lez v4, :cond_8

    .line 341
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 342
    array-length v6, v5

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v6, :cond_7

    aget-object v13, v5, v12

    if-nez v13, :cond_5

    goto :goto_2

    .line 347
    :cond_5
    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 348
    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 350
    invoke-direct {v9, v14}, Lcom/unitech/api/keymap/KeymappingCtrl;->isValidKeyOrValue(Ljava/lang/String;)Z

    move-result v15

    .line 351
    invoke-direct {v9, v13}, Lcom/unitech/api/keymap/KeymappingCtrl;->isValidKeyOrValue(Ljava/lang/String;)Z

    move-result v16

    if-eqz v15, :cond_6

    if-eqz v16, :cond_6

    .line 354
    invoke-virtual {v4, v14, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_6
    const-string v0, "invalid Broadcast Down Parameters"

    .line 356
    invoke-direct {v9, v11, v0}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_7
    move-object v5, v4

    goto :goto_3

    :cond_8
    move-object v5, v1

    :goto_3
    if-eqz v7, :cond_c

    .line 362
    array-length v4, v7

    if-lez v4, :cond_c

    .line 363
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 364
    array-length v6, v7

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v6, :cond_b

    aget-object v13, v7, v12

    if-nez v13, :cond_9

    goto :goto_5

    .line 369
    :cond_9
    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 370
    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 372
    invoke-direct {v9, v14}, Lcom/unitech/api/keymap/KeymappingCtrl;->isValidKeyOrValue(Ljava/lang/String;)Z

    move-result v15

    .line 373
    invoke-direct {v9, v13}, Lcom/unitech/api/keymap/KeymappingCtrl;->isValidKeyOrValue(Ljava/lang/String;)Z

    move-result v16

    if-eqz v15, :cond_a

    if-eqz v16, :cond_a

    .line 376
    invoke-virtual {v4, v14, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_a
    const-string v0, "invalid Broadcast Up Parameters"

    .line 378
    invoke-direct {v9, v11, v0}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_b
    move-object v7, v4

    goto :goto_6

    :cond_c
    move-object v7, v1

    :goto_6
    if-eqz v8, :cond_f

    .line 384
    array-length v4, v8

    if-lez v4, :cond_f

    .line 385
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 386
    array-length v4, v8

    :goto_7
    if-ge v10, v4, :cond_f

    aget-object v6, v8, v10

    if-nez v6, :cond_d

    goto :goto_8

    .line 391
    :cond_d
    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 392
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 394
    invoke-direct {v9, v12}, Lcom/unitech/api/keymap/KeymappingCtrl;->isValidKeyOrValue(Ljava/lang/String;)Z

    move-result v13

    .line 395
    invoke-direct {v9, v6}, Lcom/unitech/api/keymap/KeymappingCtrl;->isValidKeyOrValue(Ljava/lang/String;)Z

    move-result v14

    if-eqz v13, :cond_e

    if-eqz v14, :cond_e

    .line 398
    invoke-virtual {v1, v12, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_e
    const-string v0, "invalid Start Activity Parameters"

    .line 400
    invoke-direct {v9, v11, v0}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_f
    move-object v8, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p6

    .line 405
    invoke-direct/range {v0 .. v8}, Lcom/unitech/api/keymap/KeymappingCtrl;->setKeymappingByAidl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 410
    :cond_10
    sget-object v0, Lcom/unitech/api/keymap/KeymappingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getImmortalTicket()J

    move-result-wide v12

    const-string v0, "export"

    .line 412
    invoke-direct {v9, v0}, Lcom/unitech/api/keymap/KeymappingCtrl;->runProgrammableKeySettingActivity(Ljava/lang/String;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 413
    invoke-direct/range {v0 .. v8}, Lcom/unitech/api/keymap/KeymappingCtrl;->generateProgramKeyEntity(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;[Landroid/os/Bundle;Ljava/lang/String;[Landroid/os/Bundle;[Landroid/os/Bundle;)Lcom/unitech/api/keymap/ProgramKeyEntity;

    move-result-object v0

    if-nez v0, :cond_11

    .line 417
    sget-object v0, Lcom/unitech/api/keymap/KeymappingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v12, v13}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    const-string v0, "invalid Parameters"

    .line 418
    invoke-direct {v9, v11, v0}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 421
    :cond_11
    iget-object v1, v9, Lcom/unitech/api/keymap/KeymappingCtrl;->configWriter:Lcom/unitech/api/keymap/ConfigWriter;

    invoke-virtual {v1, v0}, Lcom/unitech/api/keymap/ConfigWriter;->writeProgramKeyEntityToXml(Lcom/unitech/api/keymap/ProgramKeyEntity;)Z

    const-string v0, "import"

    .line 422
    invoke-direct {v9, v0}, Lcom/unitech/api/keymap/KeymappingCtrl;->runProgrammableKeySettingActivity(Ljava/lang/String;)Z

    const-string v0, "Success"

    .line 424
    invoke-direct {v9, v10, v0}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/16 v1, 0x64

    .line 425
    invoke-direct {v9, v1}, Lcom/unitech/api/keymap/KeymappingCtrl;->sleep(I)V

    .line 427
    sget-object v1, Lcom/unitech/api/keymap/KeymappingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1, v12, v13}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    goto :goto_a

    :cond_12
    :goto_9
    const-string v0, "Key Name and Key Code shouldn\'t be null"

    .line 326
    invoke-direct {v9, v11, v0}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method convertToAIDLFunc(Landroid/os/IBinder;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iBinder"
        }
    .end annotation

    const/4 v0, 0x0

    .line 701
    :try_start_0
    invoke-interface {p1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 704
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 705
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Stub"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v2, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v1, "asInterface"

    .line 711
    invoke-virtual {p0, v2, v1}, Lcom/unitech/api/keymap/KeymappingCtrl;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 713
    iget-object v3, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->programmableKeyAIDL:Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v0

    invoke-virtual {v1, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IInterface;

    iput-object p1, v3, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->programmableInterface:Landroid/os/IInterface;

    .line 714
    iget-object p1, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->programmableKeyAIDL:Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;

    iget-object v1, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->programmableKeyAIDL:Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;

    iget-object v1, v1, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->programmableInterface:Landroid/os/IInterface;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "resetSettings"

    invoke-virtual {p0, v1, v2}, Lcom/unitech/api/keymap/KeymappingCtrl;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p1, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->resetSettings:Ljava/lang/reflect/Method;

    .line 715
    iget-object p1, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->programmableKeyAIDL:Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;

    iget-object v1, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->programmableKeyAIDL:Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;

    iget-object v1, v1, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->programmableInterface:Landroid/os/IInterface;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setKeymapping"

    invoke-virtual {p0, v1, v2}, Lcom/unitech/api/keymap/KeymappingCtrl;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p1, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->setKeymapping:Ljava/lang/reflect/Method;

    .line 716
    iget-object p1, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->programmableKeyAIDL:Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;

    iget-object v1, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->programmableKeyAIDL:Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;

    iget-object v1, v1, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->programmableInterface:Landroid/os/IInterface;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getKeymapping"

    invoke-virtual {p0, v1, v2}, Lcom/unitech/api/keymap/KeymappingCtrl;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p1, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->getKeymapping:Ljava/lang/reflect/Method;

    .line 717
    iget-object p1, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->programmableKeyAIDL:Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;

    iget-object v1, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->programmableKeyAIDL:Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;

    iget-object v1, v1, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->programmableInterface:Landroid/os/IInterface;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "exportSettings"

    invoke-virtual {p0, v1, v2}, Lcom/unitech/api/keymap/KeymappingCtrl;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p1, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->exportSettings:Ljava/lang/reflect/Method;

    .line 718
    iget-object p1, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->programmableKeyAIDL:Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;

    iget-object v1, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->programmableKeyAIDL:Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;

    iget-object v1, v1, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->programmableInterface:Landroid/os/IInterface;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "importSettings"

    invoke-virtual {p0, v1, v2}, Lcom/unitech/api/keymap/KeymappingCtrl;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p1, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->importSettings:Ljava/lang/reflect/Method;

    .line 719
    iget-object p1, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->programmableKeyAIDL:Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;

    iget-object v1, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->programmableKeyAIDL:Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;

    iget-object v1, v1, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->programmableInterface:Landroid/os/IInterface;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "resetKeymapping"

    invoke-virtual {p0, v1, v2}, Lcom/unitech/api/keymap/KeymappingCtrl;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p1, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->resetKeymapping:Ljava/lang/reflect/Method;

    .line 720
    iget-object p1, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->programmableKeyAIDL:Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;

    iget-object v1, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->programmableKeyAIDL:Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;

    iget-object v1, v1, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->programmableInterface:Landroid/os/IInterface;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "enableKeymapping"

    invoke-virtual {p0, v1, v2}, Lcom/unitech/api/keymap/KeymappingCtrl;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p1, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->enableKeymapping:Ljava/lang/reflect/Method;

    .line 721
    iget-object p1, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->programmableKeyAIDL:Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;

    iget-object v1, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->programmableKeyAIDL:Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;

    iget-object v1, v1, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->programmableInterface:Landroid/os/IInterface;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getKeymappingEnabled"

    invoke-virtual {p0, v1, v2}, Lcom/unitech/api/keymap/KeymappingCtrl;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p1, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->getKeymappingEnabled:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p1

    .line 724
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public enableKeyMapping(Z)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 252
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "enableKeyMapping %b"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SDK.KeymapCtrl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    sget-boolean v1, Lcom/unitech/api/machine/Machine;->TB85Plus:Z

    if-eqz v1, :cond_0

    const-string p1, "device not supported"

    .line 255
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 260
    :cond_0
    sget-object v1, Lcom/unitech/api/keymap/KeymappingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "Bind KeymapService failed"

    .line 261
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 264
    :cond_1
    invoke-direct {p0}, Lcom/unitech/api/keymap/KeymappingCtrl;->isAidl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 265
    invoke-direct {p0, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->enableKeymapping(Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz p1, :cond_3

    const-string v1, "Enable"

    goto :goto_0

    :cond_3
    const-string v1, "Disable"

    .line 274
    :goto_0
    sget-object v2, Lcom/unitech/api/keymap/KeymappingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2}, Lcom/unitech/api/util/ServiceHandler;->getImmortalTicket()J

    move-result-wide v4

    :try_start_0
    const-string v2, "export"

    .line 277
    invoke-direct {p0, v2}, Lcom/unitech/api/keymap/KeymappingCtrl;->runProgrammableKeySettingActivity(Ljava/lang/String;)Z

    .line 279
    iget-object v2, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->configWriter:Lcom/unitech/api/keymap/ConfigWriter;

    invoke-virtual {v2, p1}, Lcom/unitech/api/keymap/ConfigWriter;->writeProgramKeyEnabledToXml(Z)Z

    const-string p1, "import"

    .line 280
    invoke-direct {p0, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->runProgrammableKeySettingActivity(Ljava/lang/String;)Z

    const-string p1, "%s key remap success"

    new-array v2, v0, [Ljava/lang/Object;

    aput-object v1, v2, v3

    .line 281
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 283
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array p1, v0, [Ljava/lang/Object;

    aput-object v1, p1, v3

    const-string v0, "%s key remap failed"

    .line 284
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 287
    :goto_1
    sget-object v0, Lcom/unitech/api/keymap/KeymappingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v4, v5}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public exportKeyMappings(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "folderPath"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "exportKeyMappings %s"

    .line 514
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "SDK.KeymapCtrl"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "KeymappingCtrl, exportKeyMappings failed: folderPath cannot be empty."

    .line 517
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 519
    :cond_0
    sget-boolean v1, Lcom/unitech/api/machine/Machine;->TB85Plus:Z

    if-eqz v1, :cond_1

    const-string p1, "device not supported"

    .line 520
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 523
    :cond_1
    sget-object v1, Lcom/unitech/api/keymap/KeymappingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "Bind KeymapService failed"

    .line 524
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 527
    :cond_2
    iget-object v1, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v1

    .line 528
    invoke-static {v1, p1, v0}, Lcom/unitech/api/file/helper/FileHelper;->isValidFolderPath(Lcom/unitech/api/file/FileCtrl;Ljava/lang/String;Z)Z

    move-result v1

    .line 529
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "/"

    .line 533
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 534
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 537
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-direct {p0}, Lcom/unitech/api/keymap/KeymappingCtrl;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 539
    invoke-direct {p0, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->exportSettingsByAidl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v0, "Success"

    .line 541
    invoke-direct {p0, v2, v0}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 542
    sget-object v1, Lcom/unitech/api/keymap/KeymappingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getImmortalTicket()J

    move-result-wide v1

    .line 543
    invoke-direct {p0, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->exportSettings(Ljava/lang/String;)V

    .line 544
    sget-object p1, Lcom/unitech/api/keymap/KeymappingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p1, v1, v2}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v0

    :cond_6
    :goto_0
    const-string p1, "invalid parameters"

    .line 530
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "manager",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 600
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    .line 601
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 603
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public getDefaultKeyCode(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyName"
        }
    .end annotation

    .line 568
    invoke-direct {p0, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->getDefaultKeymapping(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getKeyMapping(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyName"
        }
    .end annotation

    .line 557
    invoke-direct {p0, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->getKeymapping(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getKeyMappingEnabled()Landroid/os/Bundle;
    .locals 2

    .line 238
    :try_start_0
    invoke-direct {p0}, Lcom/unitech/api/keymap/KeymappingCtrl;->getKeymappingEnabled()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x1

    const-string v1, "Not Support getKeymappingEnabled function"

    .line 241
    invoke-direct {p0, v0, v1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public importKeyMappings(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "folderPath"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "importKeyMappings %s"

    .line 471
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "SDK.KeymapCtrl"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "KeymappingCtrl, importKeyMappings failed: folderPath cannot be empty."

    .line 474
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 476
    :cond_0
    sget-boolean v1, Lcom/unitech/api/machine/Machine;->TB85Plus:Z

    if-eqz v1, :cond_1

    const-string p1, "device not supported"

    .line 477
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 480
    :cond_1
    sget-object v1, Lcom/unitech/api/keymap/KeymappingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "Bind KeymapService failed"

    .line 481
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 484
    :cond_2
    iget-object v1, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v1

    .line 485
    invoke-static {v1, p1, v2}, Lcom/unitech/api/file/helper/FileHelper;->isValidFolderPath(Lcom/unitech/api/file/FileCtrl;Ljava/lang/String;Z)Z

    move-result v1

    .line 486
    new-instance v3, Lcom/unitech/api/file/helper/FileCtrlHelper;

    iget-object v4, p0, Lcom/unitech/api/keymap/KeymappingCtrl;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/unitech/api/file/helper/FileCtrlHelper;-><init>(Landroid/content/Context;)V

    const-string v4, "keys_config.txt"

    .line 487
    invoke-static {p1, v4}, Lcom/unitech/api/file/helper/FileHelper;->getFullFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "default_keycodes.txt"

    .line 488
    invoke-static {p1, v5}, Lcom/unitech/api/file/helper/FileHelper;->getFullFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 489
    invoke-virtual {v3, v4}, Lcom/unitech/api/file/helper/FileCtrlHelper;->exists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v5}, Lcom/unitech/api/file/helper/FileCtrlHelper;->exists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 491
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    if-eqz v1, :cond_6

    if-nez v3, :cond_4

    goto :goto_1

    .line 495
    :cond_4
    invoke-direct {p0}, Lcom/unitech/api/keymap/KeymappingCtrl;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 496
    invoke-direct {p0, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->importSettingsByAidl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v0, "Success"

    .line 498
    invoke-direct {p0, v2, v0}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 499
    sget-object v1, Lcom/unitech/api/keymap/KeymappingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getImmortalTicket()J

    move-result-wide v1

    .line 500
    invoke-direct {p0, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->importSettings(Ljava/lang/String;)V

    .line 501
    sget-object p1, Lcom/unitech/api/keymap/KeymappingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p1, v1, v2}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v0

    :cond_6
    :goto_1
    const-string p1, "invalid parameters"

    .line 492
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public resetKeyMapping(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyName"
        }
    .end annotation

    .line 581
    invoke-direct {p0, p1}, Lcom/unitech/api/keymap/KeymappingCtrl;->resetKeymapping(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public resetKeyMappings()Landroid/os/Bundle;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "resetKeyMappings"

    .line 441
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SDK.KeymapCtrl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    sget-boolean v1, Lcom/unitech/api/machine/Machine;->TB85Plus:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v0, "device not supported"

    .line 444
    invoke-direct {p0, v2, v0}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 447
    :cond_0
    sget-object v1, Lcom/unitech/api/keymap/KeymappingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "Bind KeymapService failed"

    .line 448
    invoke-direct {p0, v2, v0}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 451
    :cond_1
    invoke-direct {p0}, Lcom/unitech/api/keymap/KeymappingCtrl;->isAidl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 452
    invoke-direct {p0}, Lcom/unitech/api/keymap/KeymappingCtrl;->resetSettingsByAidl()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v1, "Success"

    .line 454
    invoke-direct {p0, v0, v1}, Lcom/unitech/api/keymap/KeymappingCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 456
    sget-object v1, Lcom/unitech/api/keymap/KeymappingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getImmortalTicket()J

    move-result-wide v1

    .line 457
    invoke-direct {p0}, Lcom/unitech/api/keymap/KeymappingCtrl;->resetSetting()V

    .line 458
    sget-object v3, Lcom/unitech/api/keymap/KeymappingCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v3, v1, v2}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v0
.end method
