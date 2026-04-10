.class public Lcom/unitech/api/wlan/WlanAdvancedCtrl;
.super Ljava/lang/Object;
.source "WlanAdvancedCtrl.java"


# static fields
.field private static final ACTION_BIND_SERVICE:Ljava/lang/String; = "com.unitech.dmservice.action.wlanadvanced"

.field public static final BUNDLE_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final BUNDLE_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field private static Instance:Lcom/unitech/api/wlan/WlanAdvancedCtrl; = null

.field private static final PKG_API_SERVICE:Ljava/lang/String; = "com.unitech.dmservice"

.field public static final RESULT_CODE_ERROR:I = 0x1

.field public static final RESULT_CODE_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UnitechSDK"

.field private static WlanAdvancedCtrlAidl:Lcom/unitech/dmservice/IWlanAdvancedCtrlAidl; = null

.field private static mContext:Landroid/content/Context; = null

.field private static mServiceChecked:I = -0x1

.field private static mServiceHandler:Lcom/unitech/api/util/ServiceHandler;


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

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->mContext:Landroid/content/Context;

    .line 41
    sget-object v0, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/unitech/api/util/ServiceHandler;

    .line 43
    invoke-direct {p0}, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v1

    const-string v2, "com.unitech.dmservice"

    const-string v3, "com.unitech.dmservice.action.wlanadvanced"

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    sput-object v0, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    .line 45
    :cond_0
    sget p1, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->mServiceChecked:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 46
    invoke-direct {p0}, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->checkWlanAdvancedCtrlService()V

    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/unitech/dmservice/IWlanAdvancedCtrlAidl;)Lcom/unitech/dmservice/IWlanAdvancedCtrlAidl;
    .locals 0

    .line 22
    sput-object p0, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->WlanAdvancedCtrlAidl:Lcom/unitech/dmservice/IWlanAdvancedCtrlAidl;

    return-object p0
.end method

.method private checkWlanAdvancedCtrlService()V
    .locals 5

    .line 58
    sget v0, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->mServiceChecked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 65
    :cond_0
    sget-object v0, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 68
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

    .line 69
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

    const-string v0, "WlanAdvancedCtrl, package com.unitech.dmservice is found."

    .line 76
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sput v3, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->mServiceChecked:I

    goto :goto_1

    :cond_3
    const-string v0, "WlanAdvancedCtrl, package com.unitech.dmservice is not found"

    .line 79
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sput v1, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->mServiceChecked:I

    :goto_1
    return-void
.end method

.method private createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
    .locals 1

    .line 92
    new-instance v0, Lcom/unitech/api/wlan/WlanAdvancedCtrl$1;

    invoke-direct {v0, p0}, Lcom/unitech/api/wlan/WlanAdvancedCtrl$1;-><init>(Lcom/unitech/api/wlan/WlanAdvancedCtrl;)V

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

    .line 115
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "calling this from your main thread can lead to deadlock"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/unitech/api/wlan/WlanAdvancedCtrl;
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
    sget-object v0, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->Instance:Lcom/unitech/api/wlan/WlanAdvancedCtrl;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/unitech/api/wlan/WlanAdvancedCtrl;

    invoke-direct {v0, p0}, Lcom/unitech/api/wlan/WlanAdvancedCtrl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->Instance:Lcom/unitech/api/wlan/WlanAdvancedCtrl;

    .line 54
    :cond_0
    sget-object p0, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->Instance:Lcom/unitech/api/wlan/WlanAdvancedCtrl;

    return-object p0
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

    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    .line 86
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "errorMsg"

    .line 87
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private tryToBindService()Z
    .locals 1

    .line 124
    :try_start_0
    sget-object v0, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->ensureNotOnMainThread(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    sget-object v0, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public exportSettings(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "folderPath"
        }
    .end annotation

    const-string v0, "errorCode"

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WlanAdvancedCtrl, exportSettings(), folderPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnitechSDK"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string p1, "WlanAdvancedCtrl, exportSettings failed: folderPath cannot be empty."

    .line 187
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x0

    const-string v3, "Success"

    .line 189
    invoke-direct {p0, v1, v3}, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 191
    invoke-direct {p0}, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->tryToBindService()Z

    .line 192
    sget-object v3, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v3}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v3

    .line 194
    sget-object v5, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->WlanAdvancedCtrlAidl:Lcom/unitech/dmservice/IWlanAdvancedCtrlAidl;

    if-eqz v5, :cond_5

    if-eqz p1, :cond_4

    .line 197
    :try_start_0
    invoke-interface {v5, p1}, Lcom/unitech/dmservice/IWlanAdvancedCtrlAidl;->exportSettings(Ljava/lang/String;)V

    .line 199
    sget-object v5, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v5

    .line 200
    new-instance v6, Ljava/io/File;

    const-string v7, "WlanAdvanced.txt"

    invoke-direct {v6, p1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x1388

    add-long/2addr v7, v9

    :cond_1
    const-wide/16 v9, 0x64

    .line 205
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 206
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/unitech/api/file/FileCtrl;->exists(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 207
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "file not found"

    if-nez v9, :cond_2

    goto :goto_0

    .line 211
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    cmp-long v9, v11, v7

    if-lez v9, :cond_3

    .line 212
    invoke-direct {p0, v2, v10}, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    .line 215
    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v2, :cond_1

    .line 217
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v2, :cond_6

    .line 218
    invoke-direct {p0, v2, v10}, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    :cond_4
    const-string p1, "folderPath is null."

    .line 221
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 225
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "WlanAdvancedCtrlAidl.exportSettings exception."

    .line 226
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    :cond_5
    const-string p1, "WlanAdvancedCtrlAidl is null."

    .line 229
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 232
    :cond_6
    :goto_1
    sget-object p1, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p1, v3, v4}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v1
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

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WlanAdvancedCtrl, importSettings(), folderPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "WlanAdvancedCtrl, importSettings failed: folderPath cannot be empty."

    .line 143
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const-string v2, "Success"

    .line 145
    invoke-direct {p0, v0, v2}, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 147
    invoke-direct {p0}, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->tryToBindService()Z

    .line 148
    sget-object v2, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v2

    .line 150
    sget-object v4, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->WlanAdvancedCtrlAidl:Lcom/unitech/dmservice/IWlanAdvancedCtrlAidl;

    if-eqz v4, :cond_3

    .line 152
    :try_start_0
    sget-object v4, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object v4

    .line 153
    new-instance v5, Ljava/io/File;

    const-string v6, "WlanAdvanced.txt"

    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/unitech/api/file/FileCtrl;->exists(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "errorCode"

    .line 156
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v1, :cond_1

    const-string p1, "file not found"

    .line 157
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 159
    sget-object v4, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->WlanAdvancedCtrlAidl:Lcom/unitech/dmservice/IWlanAdvancedCtrlAidl;

    invoke-interface {v4, p1}, Lcom/unitech/dmservice/IWlanAdvancedCtrlAidl;->importSettings(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "folderPath is null."

    .line 161
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 165
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "WlanAdvancedCtrlAidl.importSettings exception."

    .line 166
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string p1, "WlanAdvancedCtrlAidl is null."

    .line 169
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 172
    :goto_0
    sget-object p1, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p1, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v0
.end method

.method public setNewSetting(IIII)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "powerSaveMode",
            "roamingTrigger",
            "roamingDelta",
            "roamingScanPeriod"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "Success"

    .line 251
    invoke-direct {p0, v0, v1}, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 253
    invoke-direct {p0}, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->tryToBindService()Z

    .line 254
    sget-object v2, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v2

    .line 255
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WlanAdvancedCtrl, setNewSetting(), powerSaveMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", roamingTrigger:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", roamingDelta:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", roamingScanPeriod:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UnitechSDK"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v4, 0x1

    .line 268
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    if-eqz p1, :cond_0

    if-eq p1, v4, :cond_0

    const-string v0, "PowerSaveMode out of range(0 or 1). "

    move-object v6, v5

    goto :goto_0

    :cond_0
    const-string v6, ""

    move-object v8, v6

    move-object v6, v0

    move-object v0, v8

    :goto_0
    const/16 v7, 0xa

    if-lt p2, v7, :cond_1

    const/16 v7, 0x78

    if-le p2, v7, :cond_2

    .line 269
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "roamingTrigger out of range(10 ~ 120). "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v5

    :cond_2
    if-ltz p3, :cond_3

    const/16 v7, 0x1e

    if-le p3, v7, :cond_4

    .line 274
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "roamingDelta out of range(0 ~ 30). "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v5

    :cond_4
    if-ltz p4, :cond_6

    const/16 v7, 0x3c

    if-le p4, v7, :cond_5

    goto :goto_1

    :cond_5
    move-object v5, v6

    goto :goto_2

    .line 279
    :cond_6
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "roamingScanPeriod out of range(0 ~ 60)."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    :goto_2
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-ne v5, v4, :cond_7

    .line 283
    invoke-direct {p0, v4, v0}, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 287
    :cond_7
    sget-object v0, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->WlanAdvancedCtrlAidl:Lcom/unitech/dmservice/IWlanAdvancedCtrlAidl;

    if-eqz v0, :cond_8

    .line 289
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/unitech/dmservice/IWlanAdvancedCtrlAidl;->setNewSetting(IIII)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 292
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "WlanAdvancedCtrlAidl.setNewSetting exception."

    .line 293
    invoke-direct {p0, v4, p1}, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_3

    :cond_8
    const-string p1, "WlanAdvancedCtrlAidl is null."

    .line 296
    invoke-direct {p0, v4, p1}, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 299
    :goto_3
    sget-object p1, Lcom/unitech/api/wlan/WlanAdvancedCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p1, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v1
.end method
