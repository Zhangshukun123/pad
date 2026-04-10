.class public Lcom/unitech/api/memory/MemoryStorageCtrl;
.super Ljava/lang/Object;
.source "MemoryStorageCtrl.java"


# static fields
.field private static final ACTION_BIND_SERVICE:Ljava/lang/String; = "com.unitech.dmservice.action.memory"

.field private static final PKG_API_SERVICE:Ljava/lang/String; = "com.unitech.dmservice"

.field public static final RESULT_CODE_ERROR:I = 0x1

.field private static iMemoryStorageCtrlAidl:Lcom/unitech/dmservice/IMemoryStorageCtrlAidl; = null

.field private static mServiceChecked:I = -0x1


# instance fields
.field private final BUNDLE_ERROR_CODE:Ljava/lang/String;

.field private final BUNDLE_ERROR_MSG:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field mServiceHandler:Lcom/unitech/api/util/ServiceHandler;


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

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "errorCode"

    .line 21
    iput-object v0, p0, Lcom/unitech/api/memory/MemoryStorageCtrl;->BUNDLE_ERROR_CODE:Ljava/lang/String;

    const-string v0, "errorMsg"

    .line 22
    iput-object v0, p0, Lcom/unitech/api/memory/MemoryStorageCtrl;->BUNDLE_ERROR_MSG:Ljava/lang/String;

    const-string v0, "MemoryStorageCtrl"

    .line 23
    iput-object v0, p0, Lcom/unitech/api/memory/MemoryStorageCtrl;->TAG:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/unitech/api/memory/MemoryStorageCtrl;->mContext:Landroid/content/Context;

    .line 34
    iget-object v0, p0, Lcom/unitech/api/memory/MemoryStorageCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/unitech/api/util/ServiceHandler;

    .line 36
    invoke-direct {p0}, Lcom/unitech/api/memory/MemoryStorageCtrl;->createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v1

    const-string v2, "com.unitech.dmservice"

    const-string v3, "com.unitech.dmservice.action.memory"

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    iput-object v0, p0, Lcom/unitech/api/memory/MemoryStorageCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    .line 38
    :cond_0
    sget p1, Lcom/unitech/api/memory/MemoryStorageCtrl;->mServiceChecked:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 39
    invoke-direct {p0}, Lcom/unitech/api/memory/MemoryStorageCtrl;->checkService()V

    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/unitech/dmservice/IMemoryStorageCtrlAidl;)Lcom/unitech/dmservice/IMemoryStorageCtrlAidl;
    .locals 0

    .line 18
    sput-object p0, Lcom/unitech/api/memory/MemoryStorageCtrl;->iMemoryStorageCtrlAidl:Lcom/unitech/dmservice/IMemoryStorageCtrlAidl;

    return-object p0
.end method

.method private checkService()V
    .locals 5

    .line 49
    sget v0, Lcom/unitech/api/memory/MemoryStorageCtrl;->mServiceChecked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/unitech/api/memory/MemoryStorageCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 59
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

    .line 60
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
    const-string v2, "MemoryStorageCtrl"

    if-eqz v0, :cond_3

    const-string v0, "MemoryStorageCtrl, package com.unitech.dmservice is found."

    .line 67
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    sput v3, Lcom/unitech/api/memory/MemoryStorageCtrl;->mServiceChecked:I

    goto :goto_1

    :cond_3
    const-string v0, "MemoryStorageCtrl, package com.unitech.dmservice is not found"

    .line 70
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    sput v1, Lcom/unitech/api/memory/MemoryStorageCtrl;->mServiceChecked:I

    :goto_1
    return-void
.end method

.method private createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
    .locals 1

    .line 75
    new-instance v0, Lcom/unitech/api/memory/MemoryStorageCtrl$1;

    invoke-direct {v0, p0}, Lcom/unitech/api/memory/MemoryStorageCtrl$1;-><init>(Lcom/unitech/api/memory/MemoryStorageCtrl;)V

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

    .line 97
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "calling this from your main thread can lead to deadlock"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private execAidl(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "command"
        }
    .end annotation

    .line 116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "MemoryStorageCtrl, execAidl failed: command cannot be empty."

    .line 117
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/memory/MemoryStorageCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/memory/MemoryStorageCtrl;->tryToBindService()Z

    .line 122
    iget-object v0, p0, Lcom/unitech/api/memory/MemoryStorageCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v2

    .line 124
    sget-object v0, Lcom/unitech/api/memory/MemoryStorageCtrl;->iMemoryStorageCtrlAidl:Lcom/unitech/dmservice/IMemoryStorageCtrlAidl;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 127
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v6, "getAvailableInternalStorageSize"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    const-string v6, "getTotalExternalStorageSize"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :sswitch_2
    const-string v6, "getAvailableFlashSize"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x6

    goto :goto_0

    :sswitch_3
    const-string v6, "getAvailableRAMSize"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :sswitch_4
    const-string v6, "getTotalFlashSize"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x7

    goto :goto_0

    :sswitch_5
    const-string v6, "getTotalInternalStorageSize"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x2

    goto :goto_0

    :sswitch_6
    const-string v6, "getAvailableExternalStorageSize"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x5

    goto :goto_0

    :sswitch_7
    const-string v6, "getTotalRAMSize"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x0

    :cond_1
    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 151
    :pswitch_0
    sget-object v0, Lcom/unitech/api/memory/MemoryStorageCtrl;->iMemoryStorageCtrlAidl:Lcom/unitech/dmservice/IMemoryStorageCtrlAidl;

    invoke-interface {v0}, Lcom/unitech/dmservice/IMemoryStorageCtrlAidl;->getTotalFlashSize()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 148
    :pswitch_1
    sget-object v0, Lcom/unitech/api/memory/MemoryStorageCtrl;->iMemoryStorageCtrlAidl:Lcom/unitech/dmservice/IMemoryStorageCtrlAidl;

    invoke-interface {v0}, Lcom/unitech/dmservice/IMemoryStorageCtrlAidl;->getAvailableFlashSize()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 145
    :pswitch_2
    sget-object v0, Lcom/unitech/api/memory/MemoryStorageCtrl;->iMemoryStorageCtrlAidl:Lcom/unitech/dmservice/IMemoryStorageCtrlAidl;

    invoke-interface {v0}, Lcom/unitech/dmservice/IMemoryStorageCtrlAidl;->getAvailableExternalStorageSize()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 142
    :pswitch_3
    sget-object v0, Lcom/unitech/api/memory/MemoryStorageCtrl;->iMemoryStorageCtrlAidl:Lcom/unitech/dmservice/IMemoryStorageCtrlAidl;

    invoke-interface {v0}, Lcom/unitech/dmservice/IMemoryStorageCtrlAidl;->getTotalExternalStorageSize()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 139
    :pswitch_4
    sget-object v0, Lcom/unitech/api/memory/MemoryStorageCtrl;->iMemoryStorageCtrlAidl:Lcom/unitech/dmservice/IMemoryStorageCtrlAidl;

    invoke-interface {v0}, Lcom/unitech/dmservice/IMemoryStorageCtrlAidl;->getAvailableInternalStorageSize()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 136
    :pswitch_5
    sget-object v0, Lcom/unitech/api/memory/MemoryStorageCtrl;->iMemoryStorageCtrlAidl:Lcom/unitech/dmservice/IMemoryStorageCtrlAidl;

    invoke-interface {v0}, Lcom/unitech/dmservice/IMemoryStorageCtrlAidl;->getTotalInternalStorageSize()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 133
    :pswitch_6
    sget-object v0, Lcom/unitech/api/memory/MemoryStorageCtrl;->iMemoryStorageCtrlAidl:Lcom/unitech/dmservice/IMemoryStorageCtrlAidl;

    invoke-interface {v0}, Lcom/unitech/dmservice/IMemoryStorageCtrlAidl;->getAvailableRAMSize()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 130
    :pswitch_7
    sget-object v0, Lcom/unitech/api/memory/MemoryStorageCtrl;->iMemoryStorageCtrlAidl:Lcom/unitech/dmservice/IMemoryStorageCtrlAidl;

    invoke-interface {v0}, Lcom/unitech/dmservice/IMemoryStorageCtrlAidl;->getTotalRAMSize()Landroid/os/Bundle;

    move-result-object v0

    :goto_1
    const-string v4, "errorCode"

    .line 156
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v6, "errorMsg"

    .line 157
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 158
    invoke-direct {p0, v4, v6}, Lcom/unitech/api/memory/MemoryStorageCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 159
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MemoryStorageCtrl."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " exception: %s"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/memory/MemoryStorageCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_2

    :cond_2
    const-string p1, "MemoryStorageCtrl is null."

    .line 166
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/memory/MemoryStorageCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 169
    :goto_2
    iget-object p1, p0, Lcom/unitech/api/memory/MemoryStorageCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p1, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c225c2f -> :sswitch_7
        -0x6be362c2 -> :sswitch_6
        -0x6570564f -> :sswitch_5
        -0x24e6b5dd -> :sswitch_4
        0xf8239ac -> :sswitch_3
        0xfefd53e -> :sswitch_2
        0x1198f7e3 -> :sswitch_1
        0x1d134f0c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    .line 44
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "errorMsg"

    .line 45
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private tryToBindService()Z
    .locals 1

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/memory/MemoryStorageCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unitech/api/memory/MemoryStorageCtrl;->ensureNotOnMainThread(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    iget-object v0, p0, Lcom/unitech/api/memory/MemoryStorageCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getAvailableExternalStorageSize()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getAvailableExternalStorageSize"

    .line 231
    invoke-direct {p0, v0}, Lcom/unitech/api/memory/MemoryStorageCtrl;->execAidl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableFlashSize()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getAvailableFlashSize"

    .line 241
    invoke-direct {p0, v0}, Lcom/unitech/api/memory/MemoryStorageCtrl;->execAidl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableInternalStorageSize()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getAvailableInternalStorageSize"

    .line 211
    invoke-direct {p0, v0}, Lcom/unitech/api/memory/MemoryStorageCtrl;->execAidl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableRAMSize()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getAvailableRAMSize"

    .line 191
    invoke-direct {p0, v0}, Lcom/unitech/api/memory/MemoryStorageCtrl;->execAidl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getTotalExternalStorageSize()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getTotalExternalStorageSize"

    .line 221
    invoke-direct {p0, v0}, Lcom/unitech/api/memory/MemoryStorageCtrl;->execAidl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getTotalFlashSize()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getTotalFlashSize"

    .line 251
    invoke-direct {p0, v0}, Lcom/unitech/api/memory/MemoryStorageCtrl;->execAidl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getTotalInternalStorageSize()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getTotalInternalStorageSize"

    .line 201
    invoke-direct {p0, v0}, Lcom/unitech/api/memory/MemoryStorageCtrl;->execAidl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getTotalRAMSize()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getTotalRAMSize"

    .line 181
    invoke-direct {p0, v0}, Lcom/unitech/api/memory/MemoryStorageCtrl;->execAidl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
