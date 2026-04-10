.class Lcom/unitech/api/analytics/AnalyticsCtrl;
.super Ljava/lang/Object;
.source "AnalyticsCtrl.java"


# static fields
.field private static final ACTION_BIND_SERVICE:Ljava/lang/String; = "com.unitech.analyticsservice.action.API"

.field public static final BUNDLE_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final BUNDLE_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field private static final EXTRA_HISTORY_DATETIME:Ljava/lang/String; = "DateTime"

.field private static final KEY_HISTORY_LIST:Ljava/lang/String; = "HistoryList"

.field private static final PKG_API_SERVICE:Ljava/lang/String; = "com.unitech.analyticsservice"

.field public static final RESULT_CODE_ERROR:I = 0x1

.field public static final RESULT_CODE_SUCCESS:I = 0x0

.field private static final SPLIT:Ljava/lang/String; = ";"

.field private static final TAG:Ljava/lang/String; = "UnitechSDK"

.field private static mInstance:Lcom/unitech/api/analytics/AnalyticsCtrl;

.field private static mServiceChecked:I

.field private static mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

.field private static final mSimpleDateFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    const/4 v0, -0x1

    .line 45
    sput v0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceChecked:I

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

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mContext:Landroid/content/Context;

    .line 55
    sget-object v0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/unitech/api/util/ServiceHandler;

    .line 57
    invoke-direct {p0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v1

    const-string v2, "com.unitech.analyticsservice"

    const-string v3, "com.unitech.analyticsservice.action.API"

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    sput-object v0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    .line 59
    :cond_0
    sget p1, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceChecked:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 60
    invoke-direct {p0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->checkServiceIsInstalled()V

    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/unitech/api/analytics/AnalyticsCtrl;Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;)Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    return-object p1
.end method

.method private checkServiceIsInstalled()V
    .locals 5

    .line 77
    sget v0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceChecked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 87
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

    .line 88
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.unitech.analyticsservice"

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

    const-string v0, "AnalyticsCtrl, package com.unitech.analyticsservice is found."

    .line 95
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sput v3, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceChecked:I

    goto :goto_1

    :cond_3
    const-string v0, "AnalyticsCtrl, package com.unitech.analyticsservice is not found"

    .line 98
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sput v1, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceChecked:I

    :goto_1
    return-void
.end method

.method private createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
    .locals 1

    .line 136
    new-instance v0, Lcom/unitech/api/analytics/AnalyticsCtrl$1;

    invoke-direct {v0, p0}, Lcom/unitech/api/analytics/AnalyticsCtrl$1;-><init>(Lcom/unitech/api/analytics/AnalyticsCtrl;)V

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

    .line 117
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "calling this from your main thread can lead to deadlock"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/unitech/api/analytics/AnalyticsCtrl;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 70
    sget-object v0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mInstance:Lcom/unitech/api/analytics/AnalyticsCtrl;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/unitech/api/analytics/AnalyticsCtrl;

    invoke-direct {v0, p0}, Lcom/unitech/api/analytics/AnalyticsCtrl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mInstance:Lcom/unitech/api/analytics/AnalyticsCtrl;

    .line 73
    :cond_0
    sget-object p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mInstance:Lcom/unitech/api/analytics/AnalyticsCtrl;

    return-object p0
.end method

.method private processHistoryData(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "folderpath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 905
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v0

    .line 906
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_0

    .line 907
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 909
    :cond_0
    invoke-virtual {v0, p1}, Lcom/unitech/api/file/FileCtrl;->createFile(Ljava/lang/String;)Landroid/os/Bundle;

    .line 911
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    invoke-virtual {p0, v0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->isAnalyticServiceAidlInterfaceAvailable(Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 912
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    iget-object v1, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Battery"

    invoke-interface {v0, v1, v2}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;->QueryHistoryData(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 914
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/battery.csv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->writeHistoryDataToFile(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 917
    :cond_1
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    iget-object v1, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Storage"

    invoke-interface {v0, v1, v2}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;->QueryHistoryData(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 919
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/storage.csv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->writeHistoryDataToFile(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 922
    :cond_2
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    iget-object v1, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Wifi"

    invoke-interface {v0, v1, v2}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;->QueryHistoryData(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 924
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/wifi.csv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->writeHistoryDataToFile(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 927
    :cond_3
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    iget-object v1, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Wwan"

    invoke-interface {v0, v1, v2}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;->QueryHistoryData(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 929
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/wwan.csv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->writeHistoryDataToFile(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 932
    :cond_4
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    iget-object v1, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Drop"

    invoke-interface {v0, v1, v2}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;->QueryHistoryData(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 934
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/drop.csv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->writeHistoryDataToFile(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 937
    :cond_5
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    iget-object v1, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbInsert"

    invoke-interface {v0, v1, v2}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;->QueryHistoryData(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 939
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/usb_insert.csv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->writeHistoryDataToFile(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 942
    :cond_6
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    iget-object v1, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WarmBoot"

    invoke-interface {v0, v1, v2}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;->QueryHistoryData(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 944
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/warm_boot.csv"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->writeHistoryDataToFile(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_7
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

    .line 104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    .line 105
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "errorMsg"

    .line 106
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

    .line 111
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "errorMsg"

    .line 112
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private tryToBindService()Z
    .locals 1

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->ensureNotOnMainThread(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    sget-object v0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method private writeHistoryDataToFile(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filepath",
            "bundle"
        }
    .end annotation

    const-string v0, "\n"

    const-string v1, "DateTime"

    const-string v2, "HistoryList"

    move-object/from16 v3, p2

    .line 950
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v3, p0

    .line 952
    iget-object v4, v3, Lcom/unitech/api/analytics/AnalyticsCtrl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v6, p1

    .line 953
    invoke-virtual {v4, v6, v5}, Lcom/unitech/api/file/FileCtrl;->createFileStream(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "FileStreamID"

    .line 954
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    const-string v9, "ParcelFileDescriptor"

    .line 955
    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    .line 956
    new-instance v9, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v9, v6}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    if-eqz v2, :cond_6

    .line 958
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 960
    :try_start_0
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 962
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 963
    invoke-interface {v6, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, ";"

    if-eqz v11, :cond_0

    .line 964
    :try_start_1
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    :cond_0
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "UnitechSDK"

    .line 968
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeHistoryDataToFile: found key "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 973
    :cond_1
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 976
    :cond_2
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 977
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 978
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 980
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 981
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    .line 982
    invoke-virtual {v10, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 983
    invoke-virtual {v10, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 984
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 985
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    :cond_3
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 988
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    goto :goto_3

    .line 991
    :cond_4
    invoke-virtual {v10, v13}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 992
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 993
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 995
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 996
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 997
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 998
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v5, v11, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1001
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1006
    :cond_6
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 1007
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 1009
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1012
    :goto_4
    invoke-virtual {v4, v7, v8}, Lcom/unitech/api/file/FileCtrl;->closeFileStream(J)Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public GetUnreadData(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestPackage",
            "target"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const-string v3, "AnalyticsCtrl, GetUnreadData(%s, %s)"

    .line 290
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "UnitechSDK"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "AnalyticsCtrl, GetUnreadData failed: requestPackage cannot be empty."

    .line 293
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 294
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "AnalyticsCtrl, GetUnreadData failed: target cannot be empty."

    .line 295
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 299
    :cond_1
    invoke-direct {p0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->tryToBindService()Z

    .line 300
    sget-object v0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v3

    .line 302
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    invoke-virtual {p0, v0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->isAnalyticServiceAidlInterfaceAvailable(Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    invoke-interface {v0, p1, p2}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;->GetUnreadData(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "AnalyticsCtrl, GetUnreadData success"

    .line 307
    invoke-direct {p0, p1, v1, p2}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(Landroid/os/Bundle;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "AnalyticsCtrl, GetUnreadData has null result"

    .line 309
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 312
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    new-array p2, v2, [Ljava/lang/Object;

    .line 313
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "AnalyticsAidl.GetUnreadData RemoteException: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, "AnalyticsCtrlAidl is null"

    .line 316
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 319
    :goto_0
    sget-object p2, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p2, v3, v4}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public QueryPeriodData(Ljava/lang/String;Ljava/lang/String;JJ)Landroid/os/Bundle;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestPackage",
            "target",
            "fromUTCDateTime",
            "toUTCDateTime"
        }
    .end annotation

    move-object v1, p0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 v10, 0x1

    aput-object p2, v0, v10

    .line 340
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v0, v4

    const-string v3, "AnalyticsCtrl, QueryPeriodData(%s, %s,%s, %s)"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "UnitechSDK"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AnalyticsCtrl, QueryPeriodData failed: requestPackage cannot be empty."

    .line 343
    invoke-direct {p0, v10, v0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 344
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AnalyticsCtrl, QueryPeriodData failed: target cannot be empty."

    .line 345
    invoke-direct {p0, v10, v0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 349
    :cond_1
    invoke-direct {p0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->tryToBindService()Z

    .line 350
    sget-object v0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v11

    .line 352
    iget-object v0, v1, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    invoke-virtual {p0, v0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->isAnalyticServiceAidlInterfaceAvailable(Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 354
    :try_start_0
    iget-object v3, v1, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    move-object v4, p1

    move-object v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-interface/range {v3 .. v9}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;->QueryPeriodData(Ljava/lang/String;Ljava/lang/String;JJ)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "AnalyticsCtrl, QueryPeriodData success"

    .line 357
    invoke-direct {p0, v0, v2, v3}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(Landroid/os/Bundle;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "AnalyticsCtrl, QueryPeriodData has null result"

    .line 359
    invoke-direct {p0, v10, v0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 362
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    new-array v3, v10, [Ljava/lang/Object;

    .line 363
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "AnalyticsAidl.QueryPeriodData RemoteException: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v10, v0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "AnalyticsCtrlAidl is null"

    .line 366
    invoke-direct {p0, v10, v0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 369
    :goto_0
    sget-object v2, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v11, v12}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v0
.end method

.method public RollbackDataQueryTime(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestPackage",
            "target"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const-string v3, "AnalyticsCtrl, RollbackDataQueryTime(%s, %s)"

    .line 240
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "UnitechSDK"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "AnalyticsCtrl, RollbackDataQueryTime failed: requestPackage cannot be empty."

    .line 243
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 244
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "AnalyticsCtrl, RollbackDataQueryTime failed: target cannot be empty."

    .line 245
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 249
    :cond_1
    invoke-direct {p0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->tryToBindService()Z

    .line 250
    sget-object v0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v3

    .line 252
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    invoke-virtual {p0, v0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->isAnalyticServiceAidlInterfaceAvailable(Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    invoke-interface {v0, p1, p2}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;->RollbackDataQueryTime(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "AnalyticsCtrl, RollbackDataQueryTime success"

    .line 257
    invoke-direct {p0, p1, v1, p2}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(Landroid/os/Bundle;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "AnalyticsCtrl, RollbackDataQueryTime has null result"

    .line 259
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 262
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    new-array p2, v2, [Ljava/lang/Object;

    .line 263
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "AnalyticsAidl.RollbackDataQueryTime RemoteException: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, "AnalyticsCtrlAidl is null"

    .line 266
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 269
    :goto_0
    sget-object p2, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p2, v3, v4}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public SetDataQueryTime(Ljava/lang/String;JLjava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestPackage",
            "UTCDateTime",
            "target"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 196
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    aput-object p4, v0, v2

    const-string v2, "AnalyticsCtrl, SetDataQueryTime(%s, %s, %s)"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "UnitechSDK"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "AnalyticsCtrl, SetDataQueryTime failed: requestPackage cannot be empty."

    .line 199
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 200
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "AnalyticsCtrl, SetDataQueryTime failed: target cannot be empty."

    .line 201
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 205
    :cond_1
    invoke-direct {p0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->tryToBindService()Z

    .line 206
    sget-object v0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v4

    .line 208
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    invoke-virtual {p0, v0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->isAnalyticServiceAidlInterfaceAvailable(Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;->SetDataQueryTime(Ljava/lang/String;JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "AnalyticsCtrl, SetDataQueryTime success"

    .line 213
    invoke-direct {p0, p1, v1, p2}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(Landroid/os/Bundle;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "AnalyticsCtrl, SetDataQueryTime has null result"

    .line 215
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 218
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    new-array p2, v3, [Ljava/lang/Object;

    .line 219
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "AnalyticsAidl.SetDataQueryTime RemoteException: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, "AnalyticsCtrlAidl is null"

    .line 222
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 225
    :goto_0
    sget-object p2, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p2, v4, v5}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public cleanHistoryData(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestPackage",
            "target"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const-string v3, "AnalyticsCtrl, cleanHistoryData(%s, %s)"

    .line 689
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "UnitechSDK"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "AnalyticsCtrl, cleanHistoryData failed: requestPackage cannot be empty."

    .line 692
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 693
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "AnalyticsCtrl, cleanHistoryData failed: target cannot be empty."

    .line 694
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 698
    :cond_1
    invoke-direct {p0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->tryToBindService()Z

    .line 699
    sget-object v0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v3

    .line 701
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    invoke-virtual {p0, v0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->isAnalyticServiceAidlInterfaceAvailable(Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 703
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    invoke-interface {v0, p1, p2}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;->CleanHistoryData(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "AnalyticsCtrl, cleanHistoryData success"

    .line 706
    invoke-direct {p0, p1, v1, p2}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(Landroid/os/Bundle;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "AnalyticsCtrl, cleanHistoryData has null result"

    .line 708
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 711
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    new-array p2, v2, [Ljava/lang/Object;

    .line 712
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "AnalyticsAidl.CleanHistoryData RemoteException: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, "AnalyticsCtrlAidl is null"

    .line 715
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 718
    :goto_0
    sget-object p2, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p2, v3, v4}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public enableAnalysis(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "target",
            "enabled"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    .line 420
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const-string v3, "AnalyticsCtrl, enableAnalysis(%s, %s, %b)"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "UnitechSDK"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "AnalyticsCtrl, enableAnalysis failed: packageName cannot be empty."

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 423
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "AnalyticsCtrl, enableAnalysis failed: target cannot be empty."

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 427
    :cond_1
    invoke-direct {p0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->tryToBindService()Z

    .line 428
    sget-object v0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v3

    .line 430
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    invoke-virtual {p0, v0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->isAnalyticServiceAidlInterfaceAvailable(Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;->EnableAnalysis(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "AnalyticsCtrl, enableAnalysis success"

    .line 435
    invoke-direct {p0, p1, v1, p2}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(Landroid/os/Bundle;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "AnalyticsCtrl, enableAnalysis has null result"

    .line 437
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 440
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    new-array p2, v2, [Ljava/lang/Object;

    .line 441
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "AnalyticsAidl.EnableAnalysis RemoteException: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, "AnalyticsCtrlAidl is null"

    .line 444
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 447
    :goto_0
    sget-object p2, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p2, v3, v4}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public enableService(Z)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 384
    invoke-direct {p0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->tryToBindService()Z

    .line 385
    sget-object v0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 386
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "AnalyticsCtrl, enableService(%b)"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UnitechSDK"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v3, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    invoke-virtual {p0, v3}, Lcom/unitech/api/analytics/AnalyticsCtrl;->isAnalyticServiceAidlInterfaceAvailable(Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 390
    :try_start_0
    iget-object v3, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    invoke-interface {v3, p1}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;->EnableService(Z)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v3, "AnalyticsCtrl, enableService success"

    .line 393
    invoke-direct {p0, p1, v5, v3}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(Landroid/os/Bundle;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "AnalyticsCtrl, enableService has null result"

    .line 395
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 398
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    new-array v3, v2, [Ljava/lang/Object;

    .line 399
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v5

    const-string p1, "AnalyticsAidl.EnableService RemoteException: %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "AnalyticsCtrlAidl is null"

    .line 402
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 405
    :goto_0
    sget-object v2, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public exportHistoryData(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "folderpath"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "AnalyticsCtrl, exportHistoryData(%s)"

    .line 869
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "UnitechSDK"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "AnalyticsCtrl, registerEvent failed: folderpath cannot be empty."

    .line 872
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 876
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->tryToBindService()Z

    .line 877
    sget-object v1, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getImmortalTicket()J

    move-result-wide v3

    .line 879
    iget-object v1, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    invoke-virtual {p0, v1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->isAnalyticServiceAidlInterfaceAvailable(Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 888
    :try_start_0
    invoke-direct {p0, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->processHistoryData(Ljava/lang/String;)V

    const-string p1, "AnalyticsCtrl, exportHistoryData completed"

    .line 889
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 891
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    new-array v1, v0, [Ljava/lang/Object;

    .line 892
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "AnalyticsAidl.RegisterEvent RemoteException: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "AnalyticsCtrlAidl is null"

    .line 895
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 898
    :goto_0
    sget-object v0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v3, v4}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method isAnalyticServiceAidlInterfaceAvailable(Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "analyticServiceAidlInterface"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 170
    invoke-interface {p1}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    invoke-interface {p1}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1}, Landroid/os/IBinder;->pingBinder()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public queryCount(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestPackage",
            "target"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const-string v3, "AnalyticsCtrl, queryCount(%s, %s)"

    .line 506
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "UnitechSDK"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "AnalyticsCtrl, queryCount failed: requestPackage cannot be empty."

    .line 509
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 510
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "AnalyticsCtrl, queryCount failed: target cannot be empty."

    .line 511
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 515
    :cond_1
    invoke-direct {p0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->tryToBindService()Z

    .line 516
    sget-object v0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v3

    .line 518
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    invoke-virtual {p0, v0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->isAnalyticServiceAidlInterfaceAvailable(Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 520
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    invoke-interface {v0, p1, p2}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;->QueryCount(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "AnalyticsCtrl, queryCount success"

    .line 523
    invoke-direct {p0, p1, v1, p2}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(Landroid/os/Bundle;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "AnalyticsCtrl, queryCount has null result"

    .line 525
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 528
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    new-array p2, v2, [Ljava/lang/Object;

    .line 529
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "AnalyticsAidl.QueryCount RemoteException: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, "AnalyticsCtrlAidl is null"

    .line 532
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 535
    :goto_0
    sget-object p2, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p2, v3, v4}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public queryHistoryData(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestPackage",
            "target"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const-string v3, "AnalyticsCtrl, queryHistoryData(%s, %s)"

    .line 550
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "UnitechSDK"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "AnalyticsCtrl, queryHistoryData failed: requestPackage cannot be empty."

    .line 553
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 554
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "AnalyticsCtrl, queryHistoryData failed: target cannot be empty."

    .line 555
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 559
    :cond_1
    invoke-direct {p0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->tryToBindService()Z

    .line 560
    sget-object v0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v3

    .line 562
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    invoke-virtual {p0, v0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->isAnalyticServiceAidlInterfaceAvailable(Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 564
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    invoke-interface {v0, p1, p2}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;->QueryHistoryData(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "AnalyticsCtrl, queryHistoryData success"

    .line 567
    invoke-direct {p0, p1, v1, p2}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(Landroid/os/Bundle;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "AnalyticsCtrl, queryHistoryData has null result"

    .line 569
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 572
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    new-array p2, v2, [Ljava/lang/Object;

    .line 573
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "AnalyticsAidl.QueryHistoryData RemoteException: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, "AnalyticsCtrlAidl is null"

    .line 576
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 579
    :goto_0
    sget-object p2, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p2, v3, v4}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public queryLatestData(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestPackage",
            "target"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const-string v3, "AnalyticsCtrl, queryLatestData(%s, %s)"

    .line 462
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "UnitechSDK"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "AnalyticsCtrl, queryLatestData failed: requestPackage cannot be empty."

    .line 465
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 466
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "AnalyticsCtrl, queryLatestData failed: target cannot be empty."

    .line 467
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 471
    :cond_1
    invoke-direct {p0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->tryToBindService()Z

    .line 472
    sget-object v0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v3

    .line 474
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    invoke-virtual {p0, v0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->isAnalyticServiceAidlInterfaceAvailable(Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    invoke-interface {v0, p1, p2}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;->QueryLatestData(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "AnalyticsCtrl, queryLatestData success"

    .line 479
    invoke-direct {p0, p1, v1, p2}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(Landroid/os/Bundle;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "AnalyticsCtrl, queryLatestData has null result"

    .line 481
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 484
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    new-array p2, v2, [Ljava/lang/Object;

    .line 485
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "AnalyticsAidl.QueryLatestData RemoteException: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, "AnalyticsCtrlAidl is null"

    .line 488
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 491
    :goto_0
    sget-object p2, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p2, v3, v4}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public registerEvent(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "recipientPackageName",
            "target",
            "registered"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    .line 826
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const-string v3, "AnalyticsCtrl, registerEvent(%s, %s, %b)"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "UnitechSDK"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "AnalyticsCtrl, registerEvent failed: recipientPackageName cannot be empty."

    .line 829
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 830
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "AnalyticsCtrl, registerEvent failed: target cannot be empty."

    .line 831
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 835
    :cond_1
    invoke-direct {p0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->tryToBindService()Z

    .line 836
    sget-object v0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v3

    .line 838
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    invoke-virtual {p0, v0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->isAnalyticServiceAidlInterfaceAvailable(Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 840
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;->RegisterEvent(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "AnalyticsCtrl, registerEvent success"

    .line 843
    invoke-direct {p0, p1, v1, p2}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(Landroid/os/Bundle;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "AnalyticsCtrl, registerEvent has null result"

    .line 845
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 848
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    new-array p2, v2, [Ljava/lang/Object;

    .line 849
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "AnalyticsAidl.RegisterEvent RemoteException: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, "AnalyticsCtrlAidl is null"

    .line 852
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 855
    :goto_0
    sget-object p2, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p2, v3, v4}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public resetCountTo(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestPackage",
            "target",
            "count"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    .line 734
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const-string v3, "AnalyticsCtrl, resetCountTo(%s, %s, %d)"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "UnitechSDK"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "AnalyticsCtrl, resetCountTo failed: requestPackage cannot be empty."

    .line 737
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 738
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "AnalyticsCtrl, resetCountTo failed: target cannot be empty."

    .line 739
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 743
    :cond_1
    invoke-direct {p0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->tryToBindService()Z

    .line 744
    sget-object v0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v3

    .line 746
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    invoke-virtual {p0, v0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->isAnalyticServiceAidlInterfaceAvailable(Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 748
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;->ResetCountTo(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "AnalyticsCtrl, resetCountTo success"

    .line 751
    invoke-direct {p0, p1, v1, p2}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(Landroid/os/Bundle;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "AnalyticsCtrl, resetCountTo has null result"

    .line 753
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 756
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    new-array p2, v2, [Ljava/lang/Object;

    .line 757
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "AnalyticsAidl.ResetCountTo RemoteException: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, "AnalyticsCtrlAidl is null"

    .line 760
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 763
    :goto_0
    sget-object p2, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p2, v3, v4}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public setCriteria(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestPackageName",
            "target",
            "criteria"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v3, 0x2

    aput-object p3, v0, v3

    const-string v3, "AnalyticsCtrl, setCriteria(%s, %s, %s)"

    .line 778
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "UnitechSDK"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "AnalyticsCtrl, setCriteria failed: requestPackageName cannot be empty."

    .line 781
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 782
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "AnalyticsCtrl, setCriteria failed: target cannot be empty."

    .line 783
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 784
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "AnalyticsCtrl, setCriteria failed: criteria cannot be empty."

    .line 785
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 789
    :cond_2
    invoke-direct {p0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->tryToBindService()Z

    .line 790
    sget-object v0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v3

    .line 793
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    invoke-virtual {p0, v0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->isAnalyticServiceAidlInterfaceAvailable(Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 795
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;->SetCriteria(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p2, "AnalyticsCtrl, setCriteria success"

    .line 798
    invoke-direct {p0, p1, v1, p2}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(Landroid/os/Bundle;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, "AnalyticsCtrl, setCriteria has null result"

    .line 800
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 803
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    new-array p2, v2, [Ljava/lang/Object;

    .line 804
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "AnalyticsAidl.SetCriteria RemoteException: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_4
    const-string p1, "AnalyticsCtrlAidl is null"

    .line 807
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 810
    :goto_0
    sget-object p2, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p2, v3, v4}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public setHistoryCap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestPackage",
            "target",
            "historyCap"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v3, 0x2

    aput-object p3, v0, v3

    const-string v3, "AnalyticsCtrl, setHistoryCap(%s, %s, %s)"

    .line 643
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "UnitechSDK"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "AnalyticsCtrl, setHistoryCap failed: requestPackage cannot be empty."

    .line 646
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 647
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "AnalyticsCtrl, setHistoryCap failed: target cannot be empty."

    .line 648
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 649
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "AnalyticsCtrl, setHistoryCap failed: historyCap cannot be empty."

    .line 650
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 654
    :cond_2
    invoke-direct {p0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->tryToBindService()Z

    .line 655
    sget-object v0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v3

    .line 657
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    invoke-virtual {p0, v0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->isAnalyticServiceAidlInterfaceAvailable(Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 659
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;->SetMonitoringInterval(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p2, "AnalyticsCtrl, setHistoryCap success"

    .line 662
    invoke-direct {p0, p1, v1, p2}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(Landroid/os/Bundle;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, "AnalyticsCtrl, setHistoryCap has null result"

    .line 664
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 667
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    new-array p2, v2, [Ljava/lang/Object;

    .line 668
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "AnalyticsAidl.SetMonitoringInterval RemoteException: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_4
    const-string p1, "AnalyticsCtrlAidl is null"

    .line 671
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 674
    :goto_0
    sget-object p2, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p2, v3, v4}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public setMonitoringInterval(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestPackage",
            "target",
            "interval"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v3, 0x2

    aput-object p3, v0, v3

    const-string v3, "AnalyticsCtrl, setMonitoringInterval(%s, %s, %s)"

    .line 596
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "UnitechSDK"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "AnalyticsCtrl, setMonitoringInterval failed: requestPackage cannot be empty."

    .line 599
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 600
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "AnalyticsCtrl, setMonitoringInterval failed: target cannot be empty."

    .line 601
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 602
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "AnalyticsCtrl, setMonitoringInterval failed: interval cannot be empty."

    .line 603
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 607
    :cond_2
    invoke-direct {p0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->tryToBindService()Z

    .line 608
    sget-object v0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v3

    .line 610
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    invoke-virtual {p0, v0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->isAnalyticServiceAidlInterfaceAvailable(Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 612
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/analytics/AnalyticsCtrl;->mAnalyticsAidl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;->SetMonitoringInterval(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p2, "AnalyticsCtrl, setMonitoringInterval success"

    .line 615
    invoke-direct {p0, p1, v1, p2}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(Landroid/os/Bundle;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, "AnalyticsCtrl, setMonitoringInterval has null result"

    .line 617
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 620
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    new-array p2, v2, [Ljava/lang/Object;

    .line 621
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "AnalyticsAidl.SetMonitoringInterval RemoteException: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_4
    const-string p1, "AnalyticsCtrlAidl is null"

    .line 624
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/analytics/AnalyticsCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 627
    :goto_0
    sget-object p2, Lcom/unitech/api/analytics/AnalyticsCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p2, v3, v4}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method
