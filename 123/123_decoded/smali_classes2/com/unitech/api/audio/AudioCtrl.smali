.class public Lcom/unitech/api/audio/AudioCtrl;
.super Ljava/lang/Object;
.source "AudioCtrl.java"


# static fields
.field private static final ACTION_BIND_SERVICE:Ljava/lang/String; = "com.unitech.dmservice.action.audio"

.field private static AudioCtrlAidl:Lcom/unitech/dmservice/IAudioCtrlAidl; = null

.field public static final BUNDLE_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final BUNDLE_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field private static final PKG_API_SERVICE:Ljava/lang/String; = "com.unitech.dmservice"

.field public static final RESULT_CODE_ERROR:I = 0x1

.field public static final RESULT_CODE_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UnitechSDK"

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

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/unitech/api/audio/AudioCtrl;->mContext:Landroid/content/Context;

    .line 45
    sget-object v0, Lcom/unitech/api/audio/AudioCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/unitech/api/util/ServiceHandler;

    .line 47
    invoke-direct {p0}, Lcom/unitech/api/audio/AudioCtrl;->createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v1

    const-string v2, "com.unitech.dmservice"

    const-string v3, "com.unitech.dmservice.action.audio"

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    sput-object v0, Lcom/unitech/api/audio/AudioCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    .line 49
    :cond_0
    sget p1, Lcom/unitech/api/audio/AudioCtrl;->mServiceChecked:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 50
    invoke-direct {p0}, Lcom/unitech/api/audio/AudioCtrl;->checkAudioCtrlService()V

    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/unitech/dmservice/IAudioCtrlAidl;)Lcom/unitech/dmservice/IAudioCtrlAidl;
    .locals 0

    .line 21
    sput-object p0, Lcom/unitech/api/audio/AudioCtrl;->AudioCtrlAidl:Lcom/unitech/dmservice/IAudioCtrlAidl;

    return-object p0
.end method

.method private checkAudioCtrlService()V
    .locals 5

    .line 55
    sget v0, Lcom/unitech/api/audio/AudioCtrl;->mServiceChecked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 62
    :cond_0
    sget-object v0, Lcom/unitech/api/audio/AudioCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 65
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

    .line 66
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

    const-string v0, "AudioCtrl, package com.unitech.dmservice is found."

    .line 73
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sput v3, Lcom/unitech/api/audio/AudioCtrl;->mServiceChecked:I

    goto :goto_1

    :cond_3
    const-string v0, "AudioCtrl, package com.unitech.dmservice is not found"

    .line 76
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sput v1, Lcom/unitech/api/audio/AudioCtrl;->mServiceChecked:I

    :goto_1
    return-void
.end method

.method private createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
    .locals 1

    .line 89
    new-instance v0, Lcom/unitech/api/audio/AudioCtrl$1;

    invoke-direct {v0, p0}, Lcom/unitech/api/audio/AudioCtrl$1;-><init>(Lcom/unitech/api/audio/AudioCtrl;)V

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

    .line 112
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "calling this from your main thread can lead to deadlock"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
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

    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    .line 83
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "errorMsg"

    .line 84
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private tryToBindService()Z
    .locals 1

    .line 121
    :try_start_0
    sget-object v0, Lcom/unitech/api/audio/AudioCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unitech/api/audio/AudioCtrl;->ensureNotOnMainThread(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    sget-object v0, Lcom/unitech/api/audio/AudioCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public setDefaultNotificationSound(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioCtrl, setDefaultNotificationSound(), data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "AudioCtrl, setDefaultNotificationSound failed: data cannot be empty."

    .line 141
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/audio/AudioCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/audio/AudioCtrl;->tryToBindService()Z

    .line 146
    sget-object v0, Lcom/unitech/api/audio/AudioCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v2

    .line 148
    sget-object v0, Lcom/unitech/api/audio/AudioCtrl;->AudioCtrlAidl:Lcom/unitech/dmservice/IAudioCtrlAidl;

    if-eqz v0, :cond_1

    .line 151
    :try_start_0
    invoke-interface {v0, p1}, Lcom/unitech/dmservice/IAudioCtrlAidl;->setDefaultNotificationSound(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    .line 153
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v4, "errorMsg"

    .line 154
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/audio/AudioCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 158
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 159
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "AudioCtrlAidl.setDefaultNotificationSound exception: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/audio/AudioCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "AudioCtrlAidl is null."

    .line 162
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/audio/AudioCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 165
    :goto_0
    sget-object v0, Lcom/unitech/api/audio/AudioCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public setDialPadTouchTones(Z)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 221
    invoke-direct {p0}, Lcom/unitech/api/audio/AudioCtrl;->tryToBindService()Z

    .line 222
    sget-object v0, Lcom/unitech/api/audio/AudioCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioCtrl, setDialPadTouchTones(), enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UnitechSDK"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    sget-object v2, Lcom/unitech/api/audio/AudioCtrl;->AudioCtrlAidl:Lcom/unitech/dmservice/IAudioCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 229
    :try_start_0
    invoke-interface {v2, p1}, Lcom/unitech/dmservice/IAudioCtrlAidl;->setDialPadTouchTones(Z)Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "errorCode"

    .line 231
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v4, "errorMsg"

    .line 232
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 233
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/audio/AudioCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 236
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 237
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "AudioCtrlAidl.setDialPadTouchTones exception: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/audio/AudioCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "AudioCtrlAidl is null."

    .line 240
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/audio/AudioCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 243
    :goto_0
    sget-object v2, Lcom/unitech/api/audio/AudioCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public setRingtoneSound(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioCtrl, setRingtoneSound(), data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "AudioCtrl, setRingtoneSound failed: data cannot be empty."

    .line 181
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/audio/AudioCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 185
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/audio/AudioCtrl;->tryToBindService()Z

    .line 186
    sget-object v0, Lcom/unitech/api/audio/AudioCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v2

    .line 188
    sget-object v0, Lcom/unitech/api/audio/AudioCtrl;->AudioCtrlAidl:Lcom/unitech/dmservice/IAudioCtrlAidl;

    if-eqz v0, :cond_1

    .line 191
    :try_start_0
    invoke-interface {v0, p1}, Lcom/unitech/dmservice/IAudioCtrlAidl;->setRingtoneSound(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    .line 193
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v4, "errorMsg"

    .line 194
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 195
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/audio/AudioCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 198
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 199
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "AudioCtrlAidl.setRingtoneSound exception: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/audio/AudioCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "AudioCtrlAidl is null."

    .line 202
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/audio/AudioCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 205
    :goto_0
    sget-object v0, Lcom/unitech/api/audio/AudioCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public setTouchSound(Z)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 259
    invoke-direct {p0}, Lcom/unitech/api/audio/AudioCtrl;->tryToBindService()Z

    .line 260
    sget-object v0, Lcom/unitech/api/audio/AudioCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioCtrl, setTouchSound(), enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UnitechSDK"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    sget-object v2, Lcom/unitech/api/audio/AudioCtrl;->AudioCtrlAidl:Lcom/unitech/dmservice/IAudioCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 267
    :try_start_0
    invoke-interface {v2, p1}, Lcom/unitech/dmservice/IAudioCtrlAidl;->setTouchSound(Z)Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "errorCode"

    .line 269
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v4, "errorMsg"

    .line 270
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 271
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/audio/AudioCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 274
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 275
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "AudioCtrlAidl.setTouchSound exception: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/audio/AudioCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "AudioCtrlAidl is null."

    .line 278
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/audio/AudioCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 281
    :goto_0
    sget-object v2, Lcom/unitech/api/audio/AudioCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public setVibrateOnTouch(Z)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 297
    invoke-direct {p0}, Lcom/unitech/api/audio/AudioCtrl;->tryToBindService()Z

    .line 298
    sget-object v0, Lcom/unitech/api/audio/AudioCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v0

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioCtrl, setVibrateOnTouch(), enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UnitechSDK"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    sget-object v2, Lcom/unitech/api/audio/AudioCtrl;->AudioCtrlAidl:Lcom/unitech/dmservice/IAudioCtrlAidl;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 305
    :try_start_0
    invoke-interface {v2, p1}, Lcom/unitech/dmservice/IAudioCtrlAidl;->setVibrateOnTouch(Z)Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "errorCode"

    .line 307
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v4, "errorMsg"

    .line 308
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 309
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/audio/AudioCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 312
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 313
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "AudioCtrlAidl.setVibrateOnTouch exception: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/audio/AudioCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "AudioCtrlAidl is null."

    .line 316
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/audio/AudioCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 319
    :goto_0
    sget-object v2, Lcom/unitech/api/audio/AudioCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public setVolume(II)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "volumeValue"
        }
    .end annotation

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioCtrl, setVolume(), type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", volumeValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitechSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-lt p1, v1, :cond_4

    const/4 v1, 0x4

    if-le p1, v1, :cond_0

    goto :goto_2

    :cond_0
    if-ltz p2, :cond_3

    const/16 v1, 0x64

    if-le p2, v1, :cond_1

    goto :goto_1

    .line 344
    :cond_1
    invoke-direct {p0}, Lcom/unitech/api/audio/AudioCtrl;->tryToBindService()Z

    .line 345
    sget-object v1, Lcom/unitech/api/audio/AudioCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v1

    .line 347
    sget-object v3, Lcom/unitech/api/audio/AudioCtrl;->AudioCtrlAidl:Lcom/unitech/dmservice/IAudioCtrlAidl;

    if-eqz v3, :cond_2

    .line 350
    :try_start_0
    invoke-interface {v3, p1, p2}, Lcom/unitech/dmservice/IAudioCtrlAidl;->setVolume(II)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "errorCode"

    .line 352
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string v3, "errorMsg"

    .line 353
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 354
    invoke-direct {p0, p2, p1}, Lcom/unitech/api/audio/AudioCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 357
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array p2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 358
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v3

    const-string p1, "AudioCtrlAidl.setVolume exception: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unitech/api/audio/AudioCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "AudioCtrlAidl is null."

    .line 361
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/audio/AudioCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 364
    :goto_0
    sget-object p2, Lcom/unitech/api/audio/AudioCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p2, v1, v2}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1

    :cond_3
    :goto_1
    const-string p1, "AudioCtrl, setVolume failed: volumeValue is out of range (0-100)."

    .line 340
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/audio/AudioCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_2
    const-string p1, "AudioCtrl, setVolume failed: type is out of range (2, 3, 4)."

    .line 338
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/audio/AudioCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
